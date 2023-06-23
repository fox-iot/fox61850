# importing the required modules
from lxml import etree
import os
import argparse
import csv
import subprocess

from tabulate import tabulate

# parameters names
svParamNames = ["IED Name","APPID","MAC Address","VLAN ID","VLAN priority"]
goParamNames = ["APPID","MAC Address","VLANID","VLANpriority","ControlBlock","ID","DataSet"]

# error messages
INVALID_FILETYPE_MSG = "Error: Invalid file format. %s must be a .txt file."
INVALID_PATH_MSG = "Error: Invalid file path/name. Path %s does not exist."

def parseSV():
	scdFiles = []
	svIDs = []
	svAPPIDs = []
	svMACs = []
	svVLANs = []
	svVLANPRIOs = []
	namespace = "http://www.iec.ch/61850/2003/SCL"
	for f in os.listdir("./scd"):
		if f.endswith("scd"): scdFiles.append("scd/"+f)
	for file in scdFiles:
		root = etree.parse(file).getroot()
		iedName = root.xpath('//n:ConnectedAP/n:SMV/n:Address/n:P[@type="MAC-Address"]/ancestor-or-self::n:ConnectedAP/@iedName', namespaces={'n': namespace})
		for index in iedName:
			#svID
			elem_svIDs = root.xpath(".//n:IED[@desc='"+str(index)+"']/n:AccessPoint/n:Server/n:LDevice/n:LN0/n:SampledValueControl/@smvID", namespaces={'n': namespace})
			svIDs.extend(elem_svIDs)

			#APPID
			elem_svAPPIDs = root.xpath(".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='APPID']", namespaces={'n': namespace})
			for item in elem_svAPPIDs:
				svAPPIDs.append(item.text)

			#MACs
			elem_svMACs = root.xpath(".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='MAC-Address']", namespaces={'n': namespace})
			for item in elem_svMACs:
				svMACs.append(item.text)

			#VLANs
			elem_svVLANs = root.xpath(".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='VLAN-ID']", namespaces={'n': namespace})
			for item in elem_svVLANs:
				svVLANs.append(item.text)

			#VLAN PRIOs
			elem_svVLANPRIOs = root.xpath(".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='VLAN-PRIORITY']", namespaces={'n': namespace})
			for item in elem_svVLANPRIOs:
				svVLANPRIOs.append(item.text)
	
	f = open('parameters/svParameters_new.csv', 'w')
	writer = csv.writer(f)
	for index in range(len(svIDs)):
		row = svIDs[index],svAPPIDs[index],svMACs[index],svVLANs[index],svVLANPRIOs[index]
		writer.writerow(row)
	f.close()

def validate_file(file_name):
	'''
	validate file name and path.
	'''
	if not valid_path(file_name):
		print(INVALID_PATH_MSG%(file_name))
		quit()
	elif not valid_filetype(file_name):
		print(INVALID_FILETYPE_MSG%(file_name))
		quit()
	return

def valid_filetype(file_name):
	# validate file type
	return file_name.endswith('.txt')

def valid_path(path):
	# validate file path
	return os.path.exists(path)

def read(args):
	# get the file name/path
	file_name = args.read[0]

	# validate the file name/path
	validate_file(file_name)

	# read and print the file content
	with open(file_name, 'r') as f:
		print(f.read())

def show(args):
	# get path to directory
	dir_path = args.show[0]

	# validate path
	if not valid_path(dir_path):
		print("Error: No such directory found.")
		exit()

	# get text files in directory
	files = [f for f in os.listdir(dir_path) if valid_filetype(f)]
	print("{} text files found.".format(len(files)))
	print('\n'.join(f for f in files))

def update(args):
        # read .scd files and update parameters
	# open parameters file
	with open('parameters/svParameters2.csv', mode ='r')as svFile:
		csvFile = csv.reader(svFile)
		print("\nCurrent SV Parameters:\n")
		print (tabulate(csvFile, headers=svParamNames))

	print("\nNew SV Parameters:\n")
	parseSV()
	with open('parameters/svParameters_new.csv', mode ='r')as svFile:
		csvFile = csv.reader(svFile)
		print (tabulate(csvFile, headers=svParamNames))
	confirm = (input("\nConfirm changes? (y/n): "))
	
	if(confirm == "y" or confirm == "Y" or confirm == "yes"):
		os.remove('parameters/svParameters2.csv')
		os.rename('parameters/svParameters_new.csv','parameters/svParameters2.csv')
	elif(confirm == "n" or confirm == "N" or confirm == "no"):
		os.remove('parameters/svParameters_new.csv')

	with open('parameters/goParameters2.csv', mode ='r')as svFile:
		csvFile = csv.reader(svFile)
		print("\nCurrent SV Parameters:\n")
		print (tabulate(csvFile, headers=svParamNames))

	with open('parameters/goParameters2.csv', mode ='r')as goFile:
		csvFile = csv.reader(goFile)
		print("\nCurrent GOOSE Parameters:\n")
		print (tabulate(csvFile, headers=goParamNames))

def run(args):
	svIDs = []
	svAPPIDs = []
	svMACs = []
	svVLANs = []
	svVLANPRIOs = []
	with open('parameters/svParameters2.csv', mode ='r')as svFile:
		csvFile = csv.reader(svFile)
		for lines in csvFile:
			svIDs.append(lines[0])
			svAPPIDs.append(lines[1])
			svMACs.append(lines[2])
			svVLANs.append(lines[3])
			svVLANPRIOs.append(lines[4])
	arguments = ['sudo', './smart_substation', 'enp2s0']
	arguments.append(str(len(svIDs)))
	arguments.append(','.join(svAPPIDs))
	arguments.append(','.join(svMACs))
	arguments.append(','.join(svVLANs))
	arguments.append(','.join(svVLANPRIOs))
	arguments.append(','.join(svIDs))
	
	goAPPID = []
	goMAC = []
	goVLAN = []
	goVLANPRIO = []
	goCB = []
	goDataset = []
	goID = []
	with open('parameters/goParameters2.csv', mode ='r')as goFile:
		csvFile = csv.reader(goFile)
		for lines in csvFile:
			goAPPID.append(lines[0])
			goMAC.append(lines[1])
			goVLAN.append(lines[2])
			goVLANPRIO.append(lines[3])
			goCB.append(lines[4])
			goDataset.append(lines[5])
			goID.append(lines[6])
	arguments.append(','.join(goAPPID))
	arguments.append(','.join(goMAC))
	arguments.append(','.join(goVLAN))
	arguments.append(','.join(goVLANPRIO))
	arguments.append(','.join(goCB))
	arguments.append(','.join(goDataset))
	arguments.append(','.join(goID))
	print(arguments)
	subprocess.call(arguments)

def list(args):
        # list all parameters
	# open parameters file
	#row = 0

	print("--------------------------------SV--------------------------------")

	with open('parameters/svParameters2.csv', mode ='r')as file:
		csvFile = csv.reader(file)
		##format_row = "{:>20}" * (len(svParamNames) + 1)
		#print(format_row.format("", *svParamNames))

		#for lines in csvFile:
		#	print(paramNames[row],": "
		#	print(*lines, sep=", ")
		#	row=row+1
		##for line, row in zip(svParamNames, csvFile):
		##	print(format_row.format(line, *row))
		
		#ids = [line[0] for line in csvFile]
		#svParamNames.extend(ids)
		print (tabulate(csvFile, headers=svParamNames))

	print("\n---------------------------------------------------------GOOSE--------------------------------------------------------")
	with open('parameters/goParameters2.csv', mode ='r')as file:
		csvFile = csv.reader(file)
		print (tabulate(csvFile, headers=goParamNames))


def observe(args):
        # run SV subscriber without goose trips
	svIDs = []
	svAPPIDs = []
	svMACs = []
	svVLANs = []
	svVLANPRIOs = []
	with open('parameters/svParameters2.csv', mode ='r')as svFile:
		csvFile = csv.reader(svFile)
		for lines in csvFile:
			svIDs.append(lines[0])
			svAPPIDs.append(lines[1])
			svMACs.append(lines[2])
			svVLANs.append(lines[3])
			svVLANPRIOs.append(lines[4])
	arguments = ['sudo', './smart_substation', 'enp2s0']
	arguments.append(str(len(svIDs)))
	arguments.append(','.join(svAPPIDs))
	arguments.append(','.join(svMACs))
	arguments.append(','.join(svVLANs))
	arguments.append(','.join(svVLANPRIOs))
	arguments.append(','.join(svIDs))

	subprocess.call(arguments)

def main():
	# create parser object
	parser = argparse.ArgumentParser(description = "Smart Substation")

	# defining arguments for parser object
	parser.add_argument("-u", "--update", action="store_const", const=True,
						metavar = "file_name", default = None,
						help = "read .scd files and update parameters.")

	parser.add_argument("-r", "--run", action="store_const", const=True,
						metavar = "path", default = None,
						help = "run SV subscriber with GOOSE trips")

	parser.add_argument("-o", "--observe", action="store_const", const=True, default = None,
						help = "run SV subscriber without GOOSE trips.")

	parser.add_argument("-l", "--list", action="store_const", const=True,
						metavar = "file_name", default = None,
						help = "list all parameters.")

	# parse the arguments from standard input
	args = parser.parse_args()

	# calling functions depending on type of argument
	if args.update != None:
		update(args)
	elif args.run != None:
		run(args)
	elif args.observe !=None:
		observe(args)
	elif args.list != None:
		list(args)
	else:
		subprocess.call(["python3","CLI.py","-h"])


if __name__ == "__main__":
	# calling the main function
	main()

