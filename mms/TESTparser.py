import subprocess
from lxml import etree
root = etree.parse("scd/SE_SOUZA_SIEMENS_20221030.scd").getroot()

namespace = "http://www.iec.ch/61850/2003/SCL"
#e = element.findall('{0}Communication/{0}SubNetwork/{0}ConnectedAP/{0}GSE/{0}Address/{0}P[@type]'.format(namespace))

arguments = ["sudo", "./sv_subscriber", "enp0s25"]

# Define master MU (iedName)
iedName = root.xpath(
    '//n:ConnectedAP/n:SMV/n:Address/n:P[@type="MAC-Address"]/ancestor-or-self::n:ConnectedAP/@iedName', namespaces={'n': namespace})

# User input Master MU
print("Available MUs: ")
for i in range(len(iedName)):
    print(str(i) + ": " + str(iedName[i]))
masterMUindex = int(input("Select Master MU: "))

# ------------------------------------------------------------SV------------------------------------------------------------
# Count SMV elements
e = root.xpath(
    '//n:SMV/n:Address/n:P[@type="MAC-Address"]', namespaces={'n': namespace})
countSMV = 0
for i in e:
    countSMV = countSMV + 1
    # print i.text
arguments.append(str(countSMV))

# Identify APPIDs
# e = root.xpath(
#     '//n:SMV/n:Address/n:P[@type="APPID"]', namespaces={'n': namespace})
# e[0], e[masterMUindex] = e[masterMUindex], e[0]
# APPIDs = ""
# for i in e:
#     APPIDs = APPIDs+str(int((i.text), 16))+","
# arguments.append(APPIDs[:len(APPIDs)-1])

# Identify MACs
# e = root.xpath(
#     './/n:SMV/n:Address/n:P[@type="MAC-Address"]', namespaces={'n': namespace})
# e[0], e[masterMUindex] = e[masterMUindex], e[0]
# MACs = ""
# for i in e:
#     MACs = MACs+str(i.text)+","
# arguments.append(MACs[:len(MACs)-1])

# Identify VLANIDs
# e = root.xpath(
#     './/n:SMV/n:Address/n:P[@type="VLAN-ID"]', namespaces={'n': namespace})
# e[0], e[masterMUindex] = e[masterMUindex], e[0]
# VLANIDs = ""
# for i in e:
#     VLANIDs = VLANIDs+str(int((i.text), 16))+","
# arguments.append(VLANIDs[:len(VLANIDs)-1])

# Identify VLANPRIOs
# e = root.xpath(
#     './/n:SMV/n:Address/n:P[@type="VLAN-PRIORITY"]', namespaces={'n': namespace})
# e[0], e[masterMUindex] = e[masterMUindex], e[0]
# VLANPRIOs = ""
# for i in e:
#     VLANPRIOs = VLANPRIOs+str(i.text)+","
# arguments.append(VLANPRIOs[:len(VLANPRIOs)-1])

# Identify svIDs
svAPPIDs = []
svMACs = []
svVLANs = []
svVLANPRIOs = []
svIDs = []
for index in iedName:
    #APPID
    svAPPIDs_str = ""
    e = root.xpath(
        ".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='APPID']", namespaces={'n': namespace})
    if(len(e)>1):
        for i in e:
            svAPPIDs_str = svAPPIDs_str+str(i.text)+"$"
        svAPPIDs_str = svAPPIDs_str[:len(svAPPIDs_str)-1] + ","
    else:
        for i in e:
            svAPPIDs_str = svAPPIDs_str+str(i.text)+","
    svAPPIDs.append(svAPPIDs_str[:len(svAPPIDs_str)-1])

    #MACs
    svMACs_str = ""
    e = root.xpath(
        ".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='MAC-Address']", namespaces={'n': namespace})
    if(len(e)>1):
        for i in e:
            svMACs_str = svMACs_str+str(i.text)+"$"
        svMACs_str = svMACs_str[:len(svMACs_str)-1] + ","
    else:
        for i in e:
            svMACs_str = svMACs_str+str(i.text)+","
    svMACs.append(svMACs_str[:len(svMACs_str)-1])

    #VLANs
    svVLANs_str = ""
    e = root.xpath(
        ".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='VLAN-ID']", namespaces={'n': namespace})
    if(len(e)>1):
        for i in e:
            svVLANs_str = svVLANs_str+str(i.text)+"$"
        svVLANs_str = svVLANs_str[:len(svVLANs_str)-1] + ","
    else:
        for i in e:
            svVLANs_str = svVLANs_str+str(i.text)+","
    svVLANs.append(svVLANs_str[:len(svVLANs_str)-1])

    #VLAN PRIOs
    svVLANPRIOs_str = ""
    e = root.xpath(
        ".//n:ConnectedAP[@iedName='"+str(index)+"']/n:SMV/n:Address/n:P[@type='VLAN-PRIORITY']", namespaces={'n': namespace})
    if(len(e)>1):
        for i in e:
            svVLANPRIOs_str = svVLANPRIOs_str+str(i.text)+"$"
        svVLANPRIOs_str = svVLANPRIOs_str[:len(svVLANPRIOs_str)-1] + ","
    else:
        for i in e:
            svVLANPRIOs_str = svVLANPRIOs_str+str(i.text)+","
    svVLANPRIOs.append(svVLANPRIOs_str[:len(svVLANPRIOs_str)-1])

    #svID
    svIDs_str = ""
    e = root.xpath(
        ".//n:IED[@desc='"+str(index)+"']/n:AccessPoint/n:Server/n:LDevice/n:LN0/n:SampledValueControl/@smvID", namespaces={'n': namespace})
    if(len(e)>1):
        arguments[3] = str(int(arguments[3])-1)
        for i in e:
            svIDs_str = svIDs_str+str(i)+"$"
        svIDs_str = svIDs_str[:len(svIDs_str)-1] + ","
    else:
        for i in e:
            svIDs_str = svIDs_str+str(e[0])+","
    svIDs.append(svIDs_str[:len(svIDs_str)-1])

#Swap
svAPPIDs[0], svAPPIDs[masterMUindex] = svAPPIDs[masterMUindex], svAPPIDs[0]
svMACs[0], svMACs[masterMUindex] = svMACs[masterMUindex], svMACs[0]
svVLANs[0], svVLANs[masterMUindex] = svVLANs[masterMUindex], svVLANs[0]
svVLANPRIOs[0], svVLANPRIOs[masterMUindex] = svVLANPRIOs[masterMUindex], svVLANPRIOs[0]
svIDs[0], svIDs[masterMUindex] = svIDs[masterMUindex], svIDs[0]

to_string = ','
to_string = ','.join(str(x) for x in svAPPIDs)
arguments.append(to_string)
to_string = ','.join(str(x) for x in svMACs)
arguments.append(to_string)
to_string = ','.join(str(x) for x in svVLANs)
arguments.append(to_string)
to_string = ','.join(str(x) for x in svVLANPRIOs)
arguments.append(to_string)
to_string = ','.join(str(x) for x in svIDs)
arguments.append(to_string)

svIDs = ""
# for i in svID:
#     svIDs = svIDs+str(i[0])+","
# arguments.append(svIDs[:len(svIDs)-1])

# Swap MUs
iedName[0], iedName[masterMUindex] = iedName[masterMUindex], iedName[0]
muNames = ""
for i in iedName:
    muNames = muNames+str(i)+","
#arguments.append(muNames[:len(muNames)-1])

arguments = ['sudo', './sv_subscriber', 'enp0s25', '1', '4000', '01-0C-CD-04-00-02', '001', '4', 'OPALRT_MU_BT']

# ------------------------------------------------------------GOOSE------------------------------------------------------------
root = etree.parse("scd/P444_MCL02.CID").getroot()

# Identify APPIDs
e = root.xpath(
    '//n:GSE/n:Address/n:P[@type="APPID"]', namespaces={'n': namespace})
#APPIDs = str(int((e[0].text), 16))
APPIDs = str(e[0].text)
arguments.append(APPIDs[:len(APPIDs)])

# Identify MACs
e = root.xpath(
    './/n:GSE/n:Address/n:P[@type="MAC-Address"]', namespaces={'n': namespace})
MACs = str(e[0].text)
arguments.append(MACs[:len(MACs)])

# Identify VLANIDs
e = root.xpath(
    './/n:GSE/n:Address/n:P[@type="VLAN-ID"]', namespaces={'n': namespace})
#VLANIDs = str(int((e[0].text), 16))
VLANIDs = str(e[0].text)
arguments.append(VLANIDs[:len(VLANIDs)])

# Identify VLANPRIOs
e = root.xpath(
    './/n:GSE/n:Address/n:P[@type="VLAN-PRIORITY"]', namespaces={'n': namespace})
VLANPRIOs = str(e[0].text)
arguments.append(VLANPRIOs[:len(VLANPRIOs)])

# Identify IED Name
e = root.xpath(
    '//n:ConnectedAP/n:GSE/n:Address/n:P[@type="MAC-Address"]/ancestor-or-self::n:ConnectedAP/@iedName', namespaces={'n': namespace})
iedName = str(e[0])

e = root.xpath(
    '//n:ConnectedAP/n:GSE/n:Address/n:P[@type="MAC-Address"]/ancestor-or-self::n:GSE/@ldInst', namespaces={'n': namespace})
iedName = iedName+str(e[0])+"/"
e = root.xpath(
    '//n:AccessPoint/n:Server/n:LDevice/n:LN0/@lnClass', namespaces={'n': namespace})
iedName = iedName+str(e[0])+"$GO$"
e = root.xpath(
    '//n:LDevice/n:LN0/n:GSEControl/@name', namespaces={'n': namespace})
iedName = iedName+str(e[0])

arguments.append(iedName[:len(iedName)])

e = root.xpath(
    '//n:LDevice/n:LN0/n:GSEControl/@appID', namespaces={'n': namespace})
iedName = str(e[0])
arguments.append(iedName[:len(iedName)])

# Dataset

e = root.xpath(
    '//n:ConnectedAP/n:GSE/n:Address/n:P[@type="MAC-Address"]/ancestor-or-self::n:ConnectedAP/@iedName', namespaces={'n': namespace})
iedName = str(e[0])
e = root.xpath(
    '//n:ConnectedAP/n:GSE/n:Address/n:P[@type="MAC-Address"]/ancestor-or-self::n:GSE/@ldInst', namespaces={'n': namespace})
iedName = iedName+str(e[0])+"/"
e = root.xpath(
    '//n:AccessPoint/n:Server/n:LDevice/n:LN0/@lnClass', namespaces={'n': namespace})
iedName = iedName+str(e[0])+"$"
e = root.xpath(
    '//n:LDevice/n:LN0/n:GSEControl/@datSet', namespaces={'n': namespace})
iedName = iedName+str(e[0])
arguments.append(iedName[:len(iedName)])

#arguments = ['sudo', './sv_subscriber', 'enp0s25', '7', '4000$4BCA,4C31,4001,4002,4BCE,4BE3,4BE4', '01-0C-CD-04-00-00$01-0C-CD-04-00-2A,01-0C-CD-04-00-79,01-0C-CD-04-00-01,01-0C-CD-04-00-3D,01-0C-CD-04-00-16,01-0C-CD-04-00-2B,01-0C-CD-04-00-2C', '001$BE2,C31,BB9,BF5,BCE,BE3,BE4', '4$4,4,4,4,4,4,4', 'TKVLMU0101$SV42,SV121,SV1,SV61,SV22,SV43,SV44', '0475', '01-0C-CD-01-00-8D', '475', '5', 'PROT_BARCFG/LLN0$GO$GOOSEPB', 'GOOSE141', 'PROT_BARCFG/LLN0$GPDSet01']

#arguments = ['sudo', './sv_subscriber', 'enp0s25', '1', '4000', '01-0C-CD-04-00-02', '001', '4', 'OPALRT_MU_BT', '0475', '01-0C-CD-01-00-8D', '475', '5', 'PROT_BARCFG/LLN0$GO$GOOSEPB', 'GOOSE141', 'PROT_BARCFG/LLN0$GPDSet01']

arguments = ['sudo', './smart_substation', 'eth0', '1', '4000', '01-0C-CD-04-00-02', '001', '4', 'OPALRT_MU_BT', '0001', '01-0C-CD-01-00-01', '001', '4', 'P444System/LLN0$GO$gcb01', 'P444System/LLN0$GO$gcb01', 'P444System/LLN0$Dataset1']


print(arguments)

subprocess.call(arguments)
