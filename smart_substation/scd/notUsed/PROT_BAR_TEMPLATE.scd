<?xml version="1.0" encoding="utf-8"?>
<SCL xmlns:esel="http://www.selinc.com/2006/61850" version="2007" revision="B" xmlns="http://www.iec.ch/61850/2003/SCL">
  <Private type="SEL_ProjectProperties">
    <esel:EnforceUniquenessMacAppId>True</esel:EnforceUniquenessMacAppId>
  </Private>
  <Header id="PROT_BAR" version="5" revision="1.0" toolID="AcSELerator Architect 2.3.8.1743" nameStructure="IEDName" />
  <Communication>
    <SubNetwork name="W01">
      <ConnectedAP iedName="PROT_BAR" apName="S1">
        <Address>
          <P type="IP">10.228.1.20</P>
          <P type="IP-SUBNET">255.255.255.192</P>
          <P type="OSI-TSEL">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
        </Address>
        <GSE ldInst="CFG" cbName="PROT_BAR">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-8D</P>
            <P type="APPID">475</P>
            <P type="VLAN-PRIORITY">5</P>
            <P type="VLAN-ID">475</P>
          </Address>
          <MinTime unit="s" multiplier="m">4</MinTime>
          <MaxTime unit="s" multiplier="m">1000</MaxTime>
        </GSE>
      </ConnectedAP>
    </SubNetwork>
  </Communication>
  <IED desc="Protection Control - Fox IoT" name="PROT_BAR" type="FOXIOT" manufacturer="FOXIOT" configVersion="V0" originalSclVersion="2007" originalSclRevision="B">
    <Services nameLength="64">
      <DynAssociation max="7" />
      <SettingGroups />
      <GetDirectory />
      <GetDataObjectDefinition />
      <DataObjectDirectory />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="22" maxAttributes="200" />
      <ReadWrite />
      <ConfReportControl max="14" bufMode="both" bufConf="true" />
      <GetCBValues />
      <ReportSettings cbName="Conf" datSet="Conf" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GSESettings cbName="Conf" datSet="Conf" appID="Conf" />
      <SMVSettings cbName="Conf" datSet="Conf" svID="Conf">
        <SmpRate>80</SmpRate>
      </SMVSettings>
      <GOOSE max="8" />
      <SMVsc max="0" />
      <FileHandling ftp="true" />
      <ConfLNs />
      <ClientServices goose="true" sv="true" supportsLdName="true" maxGOOSE="128" maxSMV="7">
        <TimeSyncProt c37_238="true" other="true" />
      </ClientServices>
      <ConfLdName />
      <SupSubscription maxGo="64" maxSv="7" />
      <RedProt prp="true" />
    </Services>
    <AccessPoint name="S1">
      <Server>
        <Authentication />
        <LDevice desc="Data Sets, Control Blocks, and Supervision Logical Nodes" inst="CFG">
          <LN0 lnType="LN0_Root_Cmb" lnClass="LLN0" inst="">
            <DataSet desc="Metered Values" name="BRDSet01">
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="TotVAr" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="TotPF" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="A" fc="MX" />
              <FCDA ldInst="MET" prefix="METBK1" lnClass="MMXU" lnInst="1" doName="A" fc="MX" />
              <FCDA ldInst="MET" prefix="METBK2" lnClass="MMXU" lnInst="2" doName="A" fc="MX" />
            </DataSet>
            <DataSet desc="Metered Values" name="URDSet01">
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="TotVAr" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="TotPF" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX" />
              <FCDA ldInst="MET" prefix="MET3P" lnClass="MMXU" lnInst="1" doName="A" fc="MX" />
              <FCDA ldInst="MET" prefix="METBK1" lnClass="MMXU" lnInst="1" doName="A" fc="MX" />
              <FCDA ldInst="MET" prefix="METBK2" lnClass="MMXU" lnInst="2" doName="A" fc="MX" />
            </DataSet>
            <DataSet desc="Control and Annunciation" name="DATASET">
              <FCDA ldInst="ANN" prefix="PSV" lnClass="GGIO" lnInst="1" doName="Ind01" daName="stVal" fc="ST" />
            </DataSet>
            <ReportControl desc="Predefined Buffered Report 01" name="BRep01" datSet="BRDSet01" rptID="BRep01" confRev="1" buffered="true" bufTime="500" indexed="false">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" entryID="true" />
              <RptEnabled />
            </ReportControl>
            <ReportControl desc="Predefined Unbuffered Report 01" name="URep01" datSet="URDSet01" rptID="URep01" confRev="1" bufTime="250" indexed="false">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" />
              <RptEnabled max="7" />
            </ReportControl>
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Config</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOC" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <SDI name="Oper">
                <DAI esel:datasrc="db:LOCSTA" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="MltLev">
              <DAI esel:datasrc="db:MLTLEV" name="setVal" />
            </DOI>
            <Inputs>
              <ExtRef desc="IAW" intAddr="IAW" serviceType="SMV" />
              <ExtRef desc="IAW sum = IAW + IAW_2 + IAW_3" intAddr="IAW_2" serviceType="SMV" />
              <ExtRef desc="IAW sum = IAW + IAW_2 + IAW_3" intAddr="IAW_3" serviceType="SMV" />
              <ExtRef desc="IBW" intAddr="IBW" serviceType="SMV" />
              <ExtRef desc="IBW sum = IBW + IBW_2 + IBW_3" intAddr="IBW_2" serviceType="SMV" />
              <ExtRef desc="IBW sum = IBW + IBW_2 + IBW_3" intAddr="IBW_3" serviceType="SMV" />
              <ExtRef desc="ICW" intAddr="ICW" serviceType="SMV" />
              <ExtRef desc="ICW sum = ICW + ICW_2 + ICW_3" intAddr="ICW_2" serviceType="SMV" />
              <ExtRef desc="ICW sum = ICW + ICW_2 + ICW_3" intAddr="ICW_3" serviceType="SMV" />
              <ExtRef desc="IAX" intAddr="IAX" serviceType="SMV" />
              <ExtRef desc="IAX sum = IAX + IAX_2 + IAX_3" intAddr="IAX_2" serviceType="SMV" />
              <ExtRef desc="IAX sum = IAX + IAX_2 + IAX_3" intAddr="IAX_3" serviceType="SMV" />
              <ExtRef desc="IBX" intAddr="IBX" serviceType="SMV" />
              <ExtRef desc="IBX sum = IBX + IBX_2 + IBX_3" intAddr="IBX_2" serviceType="SMV" />
              <ExtRef desc="IBX sum = IBX + IBX_2 + IBX_3" intAddr="IBX_3" serviceType="SMV" />
              <ExtRef desc="ICX" intAddr="ICX" serviceType="SMV" />
              <ExtRef desc="ICX sum = ICX + ICX_2 + ICX_3" intAddr="ICX_2" serviceType="SMV" />
              <ExtRef desc="ICX sum = ICX + ICX_2 + ICX_3" intAddr="ICX_3" serviceType="SMV" />
              <ExtRef desc="VAY" intAddr="VAY" serviceType="SMV" />
              <ExtRef desc="VBY" intAddr="VBY" serviceType="SMV" />
              <ExtRef desc="VCY" intAddr="VCY" serviceType="SMV" />
              <ExtRef desc="VAZ" intAddr="VAZ" serviceType="SMV" />
              <ExtRef desc="VBZ" intAddr="VBZ" serviceType="SMV" />
              <ExtRef desc="VCZ" intAddr="VCZ" serviceType="SMV" />
            </Inputs>
            <GSEControl desc="GOOSE PROT_BAR" name="GOOSEPB" datSet="DATASET" confRev="1" appID="GOOSE141">
              <Private type="SEL_GOOSETXAddress">
                <esel:Address>
                  <esel:P type="MAC-Address">01-0C-CD-01-00-8D</esel:P>
                  <esel:P type="APPID">475</esel:P>
                  <esel:P type="VLAN-ID">475</esel:P>
                  <esel:P type="VLAN-PRIORITY">5</esel:P>
                </esel:Address>
              </Private>
              <Private type="SEL_GOOSETXMinTime">
                <esel:MinTime>4</esel:MinTime>
              </Private>
              <Private type="SEL_GOOSETXMaxTime">
                <esel:MaxTime>1000</esel:MaxTime>
              </Private>
            </GSEControl>
            <SettingControl esel:activeGroupLabel="ACTGRP" esel:numberOfSettingGroupsLabel="MAXGRP" numOfSGs="6" />
          </LN0>
          <LN lnType="LPHD2" prefix="DevID" lnClass="LPHD" inst="1">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Sim">
              <SDI name="Oper">
                <DAI esel:datasrc="db:LPHDSIM" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:LPHDSIM" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LCCH1" prefix="IP" lnClass="LCCH" inst="1">
            <DOI name="ChLiv">
              <DAI esel:datasrc="db:IPCH" name="stVal" />
            </DOI>
            <DOI name="RedChLiv">
              <DAI esel:datasrc="db:IPRCH" name="stVal" />
            </DOI>
            <DOI name="RxCnt">
              <DAI esel:datasrc="db:IPRX" name="actVal" />
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="RedRxCnt">
              <DAI esel:datasrc="db:IPRRX" name="actVal" />
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="TxCnt">
              <DAI esel:datasrc="db:IPTX" name="actVal" />
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="FerCh">
              <DAI esel:datasrc="db:IPFER" name="stVal" />
            </DOI>
            <DOI name="RedFerCh">
              <DAI esel:datasrc="db:IPRFER" name="stVal" />
            </DOI>
            <DOI name="RsStat">
              <SDI name="Oper">
                <DAI esel:datasrc="db:IPRST" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:IPRST" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="NetMod">
              <DAI esel:datasrc="db:NETMOD" name="setVal" />
            </DOI>
          </LN>
          <LN lnType="LCCH1" prefix="GO" lnClass="LCCH" inst="2">
            <DOI name="ChLiv">
              <DAI esel:datasrc="db:GOCH" name="stVal" />
            </DOI>
            <DOI name="RedChLiv">
              <DAI esel:datasrc="db:GORCH" name="stVal" />
            </DOI>
            <DOI name="RxCnt">
              <DAI esel:datasrc="db:GORX" name="actVal" />
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="RedRxCnt">
              <DAI esel:datasrc="db:GORRX" name="actVal" />
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="TxCnt">
              <DAI esel:datasrc="db:GOTX" name="actVal" />
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="FerCh">
              <DAI esel:datasrc="db:GOFER" name="stVal" />
            </DOI>
            <DOI name="RedFerCh">
              <DAI esel:datasrc="db:GORFER" name="stVal" />
            </DOI>
            <DOI name="RsStat">
              <SDI name="Oper">
                <DAI esel:datasrc="db:GORST" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:GORST" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="NetMod">
              <DAI esel:datasrc="db:NETMOD" name="setVal" />
            </DOI>
          </LN>
          <LN lnType="LGOS1" lnClass="LGOS" inst="1">
            <DOI name="NdsCom">
              <DAI esel:datasrc="db:GNCM1" name="stVal" />
            </DOI>
            <DOI name="St">
              <DAI esel:datasrc="db:GST1" name="stVal" />
            </DOI>
            <DOI name="SimSt">
              <DAI esel:datasrc="db:GSIM1" name="stVal" />
            </DOI>
            <DOI name="LastStNum">
              <DAI esel:datasrc="db:GLST1" name="stVal" />
            </DOI>
            <DOI name="LastSqNum">
              <DAI esel:datasrc="db:GLSQ1" name="stVal" />
            </DOI>
            <DOI name="LastTal">
              <DAI esel:datasrc="db:GTAL1" name="stVal" />
            </DOI>
            <DOI name="ConfRevNum">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="RxConfRevNum">
              <DAI esel:datasrc="db:GCNF1" name="stVal" />
            </DOI>
            <DOI name="ErrSt">
              <DAI esel:datasrc="db:GERR1" name="stVal" />
            </DOI>
            <DOI name="OosCnt">
              <DAI esel:datasrc="db:GOOS1" name="stVal" />
            </DOI>
            <DOI name="TalCnt">
              <DAI esel:datasrc="db:GTLC1" name="stVal" />
            </DOI>
            <DOI name="DecErrCnt">
              <DAI esel:datasrc="db:GDER1" name="stVal" />
            </DOI>
            <DOI name="BufOvflCnt">
              <DAI esel:datasrc="db:GBFO1" name="stVal" />
            </DOI>
            <DOI name="MsgLosCnt">
              <DAI esel:datasrc="db:GMSL1" name="stVal" />
            </DOI>
            <DOI name="MaxMsgLos">
              <DAI esel:datasrc="db:GMXM1" name="stVal" />
            </DOI>
            <DOI name="TotDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:GDWT1" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>s</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="InvQualCnt">
              <DAI esel:datasrc="db:GIDQ1" name="stVal" />
            </DOI>
            <DOI name="MaxDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:GMXD1" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>s</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="RsStat">
              <SDI name="Oper">
                <DAI esel:datasrc="db:GRST1" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:GRST1" name="stVal" />
              <DAI esel:datasrc="db:GQUAL" name="q" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val />
              </DAI>
            </DOI>
            <DOI name="DatSet">
              <DAI name="setSrcRef">
                <Val />
              </DAI>
            </DOI>
            <DOI name="GoID">
              <DAI name="setVal">
                <Val />
              </DAI>
            </DOI>
            <DOI name="Addr">
              <DAI name="setVal">
                <Val />
              </DAI>
            </DOI>
            <DOI name="VlanID">
              <DAI name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="VlanPri">
              <DAI name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="AppID">
              <DAI name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LSVS1" lnClass="LSVS" inst="1">
            <DOI name="NdsCom">
              <DAI esel:datasrc="db:SNCM1" name="stVal" />
            </DOI>
            <DOI name="St">
              <DAI esel:datasrc="db:SST1" name="stVal" />
            </DOI>
            <DOI name="SimSt">
              <DAI esel:datasrc="db:SSIM1" name="stVal" />
            </DOI>
            <DOI name="ConfRevNum">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="RxConfRevNum">
              <DAI esel:datasrc="db:SCNF1" name="stVal" />
            </DOI>
            <DOI name="SmpSynch">
              <DAI esel:datasrc="db:SSMP1" name="stVal" />
            </DOI>
            <DOI name="ErrSt">
              <DAI esel:datasrc="db:SERR1" name="stVal" />
            </DOI>
            <DOI name="NetwDly">
              <SDI name="instMag">
                <DAI esel:datasrc="db:SNET1" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>s</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>m</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="OosCnt">
              <DAI esel:datasrc="db:SOOS1" name="stVal" />
            </DOI>
            <DOI name="DscdCnt">
              <DAI esel:datasrc="db:SDIS1" name="stVal" />
            </DOI>
            <DOI name="IntpCnt">
              <DAI esel:datasrc="db:SINT1" name="stVal" />
            </DOI>
            <DOI name="TotDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:SDWT1" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>s</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="MaxDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:SMXD1" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>s</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="RsStat">
              <SDI name="Oper">
                <DAI esel:datasrc="db:SRST1" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:SRST1" name="stVal" />
              <DAI esel:datasrc="db:SVQUAL" name="q" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SvCBRef">
              <DAI name="setSrcRef">
                <Val />
              </DAI>
            </DOI>
            <DOI name="DatSet">
              <DAI name="setSrcRef">
                <Val />
              </DAI>
            </DOI>
            <DOI name="SvID">
              <DAI name="setVal">
                <Val />
              </DAI>
            </DOI>
            <DOI name="Addr">
              <DAI name="setVal">
                <Val />
              </DAI>
            </DOI>
            <DOI name="VlanID">
              <DAI name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="VlanPri">
              <DAI name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="AppID">
              <DAI name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LTIM1" lnClass="LTIM" inst="1">
            <DOI name="TmDT">
              <DAI esel:datasrc="db:TMDT" name="stVal" />
            </DOI>
            <DOI name="TmOfsTmm">
              <DAI esel:datasrc="db:TMOFFS" name="setVal" />
            </DOI>
            <DOI name="TmUseDT">
              <DAI esel:datasrc="db:TMUSEDT" name="setVal" />
            </DOI>
            <DOI name="TmChgDT">
              <DAI esel:datasrc="db:TMCHGDT" name="setTm" />
            </DOI>
            <DOI name="TmChgST">
              <DAI esel:datasrc="db:TMCHGST" name="setTm" />
            </DOI>
          </LN>
          <LN lnType="LTMS1" lnClass="LTMS" inst="1">
            <DOI name="TmAcc">
              <DAI esel:datasrc="db:TSACC" name="stVal" />
            </DOI>
            <DOI name="TmSrc">
              <DAI esel:datasrc="db:TSSRC" name="stVal" />
            </DOI>
            <DOI name="SelTmSrcTyp">
              <DAI esel:datasrc="db:TSTYPE" name="stVal" />
            </DOI>
            <DOI name="SelTmSyn">
              <DAI esel:datasrc="db:TSSYN" name="stVal" />
            </DOI>
            <DOI name="SelTmSynLkd">
              <DAI esel:datasrc="db:TSSYNLK" name="stVal" />
            </DOI>
            <DOI name="SelTmTosPer">
              <SDI name="instMag">
                <DAI esel:datasrc="db:TSPER" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>s</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>m</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LTRK1" lnClass="LTRK" inst="1" />
        </LDevice>
        <LDevice desc="Protection" inst="PRO">
          <LN0 lnType="LN0" lnClass="LLN0" inst="">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Protection</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOC" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>PROT_BARCFG</Val>
              </DAI>
            </DOI>
            <DOI name="MltLev">
              <DAI esel:datasrc="db:MLTLEV" name="setVal" />
            </DOI>
          </LN0>
          <LN lnType="LPHD1" prefix="PRO" lnClass="LPHD" inst="1">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="P1" lnClass="PIOC" inst="1">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P1" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="G1" lnClass="PIOC" inst="2">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G1" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="Q1" lnClass="PIOC" inst="3">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q1" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="P2" lnClass="PIOC" inst="4">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="G2" lnClass="PIOC" inst="5">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="Q2" lnClass="PIOC" inst="6">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="P3" lnClass="PIOC" inst="7">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P3" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="G3" lnClass="PIOC" inst="8">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G3" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="Q3" lnClass="PIOC" inst="9">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q3" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="P4" lnClass="PIOC" inst="10">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P4" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="G4" lnClass="PIOC" inst="11">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G4" name="general" />
            </DOI>
          </LN>
          <LN lnType="PIOC1" prefix="Q4" lnClass="PIOC" inst="12">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q4" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="P1" lnClass="PTOC" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="G1" lnClass="PTOC" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G1" name="general" />
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="Q1" lnClass="PTOC" inst="3">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q1" name="general" />
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="P2" lnClass="PTOC" inst="4">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P2T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="G2" lnClass="PTOC" inst="5">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G2" name="general" />
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G2T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="Q2" lnClass="PTOC" inst="6">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q2" name="general" />
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q2T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="P3" lnClass="PTOC" inst="7">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P3" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P3T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="G3" lnClass="PTOC" inst="8">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G3" name="general" />
              <DAI esel:datasrc="db:RVRS3?1:2" name="dirGeneral" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G3T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="Q3" lnClass="PTOC" inst="9">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q3" name="general" />
              <DAI esel:datasrc="db:RVRS3?1:2" name="dirGeneral" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q3T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="P4" lnClass="PTOC" inst="10">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P4" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P4T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="G4" lnClass="PTOC" inst="11">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G4" name="general" />
              <DAI esel:datasrc="db:RVRS4?1:2" name="dirGeneral" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G4T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="Q4" lnClass="PTOC" inst="12">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q4" name="general" />
              <DAI esel:datasrc="db:RVRS4?1:2" name="dirGeneral" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q4T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="S1" lnClass="PTOC" inst="13">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="S2" lnClass="PTOC" inst="14">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S2T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="S3" lnClass="PTOC" inst="15">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S3" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S3T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="S4" lnClass="PTOC" inst="16">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S4" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S4T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="S5" lnClass="PTOC" inst="17">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S5" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S5T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOC1" prefix="S6" lnClass="PTOC" inst="18">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S6" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S6T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U1P1" lnClass="PTUV" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:271P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:271P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U1P2" lnClass="PTUV" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:271P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:271P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U2P1" lnClass="PTUV" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:272P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:272P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U2P2" lnClass="PTUV" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:272P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:272P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U3P1" lnClass="PTUV" inst="3">
            <DOI name="Str">
              <DAI esel:datasrc="db:273P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:273P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U3P2" lnClass="PTUV" inst="3">
            <DOI name="Str">
              <DAI esel:datasrc="db:273P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:273P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U4P1" lnClass="PTUV" inst="4">
            <DOI name="Str">
              <DAI esel:datasrc="db:274P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:274P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U4P2" lnClass="PTUV" inst="4">
            <DOI name="Str">
              <DAI esel:datasrc="db:274P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:274P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U5P1" lnClass="PTUV" inst="5">
            <DOI name="Str">
              <DAI esel:datasrc="db:275P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:275P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U5P2" lnClass="PTUV" inst="5">
            <DOI name="Str">
              <DAI esel:datasrc="db:275P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:275P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U6P1" lnClass="PTUV" inst="6">
            <DOI name="Str">
              <DAI esel:datasrc="db:276P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:276P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="U6P2" lnClass="PTUV" inst="6">
            <DOI name="Str">
              <DAI esel:datasrc="db:276P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:276P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV1" prefix="O1P1" lnClass="PTOV" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:591P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:591P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV2" prefix="O1P2" lnClass="PTOV" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:591P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1" prefix="O2P1" lnClass="PTOV" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:592P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:592P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV2" prefix="O2P2" lnClass="PTOV" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:592P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1" prefix="O3P1" lnClass="PTOV" inst="3">
            <DOI name="Str">
              <DAI esel:datasrc="db:593P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:593P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV2" prefix="O3P2" lnClass="PTOV" inst="3">
            <DOI name="Str">
              <DAI esel:datasrc="db:593P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1" prefix="O4P1" lnClass="PTOV" inst="4">
            <DOI name="Str">
              <DAI esel:datasrc="db:594P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:594P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV2" prefix="O4P2" lnClass="PTOV" inst="4">
            <DOI name="Str">
              <DAI esel:datasrc="db:594P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1" prefix="O5P1" lnClass="PTOV" inst="5">
            <DOI name="Str">
              <DAI esel:datasrc="db:595P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:595P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV2" prefix="O5P2" lnClass="PTOV" inst="5">
            <DOI name="Str">
              <DAI esel:datasrc="db:595P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1" prefix="O6P1" lnClass="PTOV" inst="6">
            <DOI name="Str">
              <DAI esel:datasrc="db:596P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:596P1T" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTOV2" prefix="O6P2" lnClass="PTOV" inst="6">
            <DOI name="Str">
              <DAI esel:datasrc="db:596P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PHIZ1" prefix="HIZ" lnClass="PHIZ" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:CSV07" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:CSV04" name="general" />
              <DAI esel:datasrc="db:HIF1_A" name="phsA" />
              <DAI esel:datasrc="db:HIF1_B" name="phsB" />
              <DAI esel:datasrc="db:HIF1_C" name="phsC" />
            </DOI>
          </LN>
          <LN lnType="PHIZ1" prefix="HIZ" lnClass="PHIZ" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:CSV07" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:CSV05" name="general" />
              <DAI esel:datasrc="db:HIF2_A" name="phsA" />
              <DAI esel:datasrc="db:HIF2_B" name="phsB" />
              <DAI esel:datasrc="db:HIF2_C" name="phsC" />
            </DOI>
          </LN>
          <LN lnType="PHIZ2" prefix="HIZ" lnClass="PHIZ" inst="3">
            <DOI name="Str">
              <DAI esel:datasrc="db:50GHIZ" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:50GHIZA" name="general" />
            </DOI>
          </LN>
          <LN lnType="PSCH1" prefix="POTT" lnClass="PSCH" inst="1">
            <DOI name="TxPrm">
              <DAI esel:datasrc="db:KEY" name="general" />
            </DOI>
            <DOI name="RxPrm1">
              <DAI esel:datasrc="db:PTRX" name="general" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:RXPRM" name="general" />
            </DOI>
            <DOI name="EchoWei">
              <DAI esel:datasrc="db:EKEY" name="stVal" />
            </DOI>
            <DOI name="EchoWeiOp">
              <DAI esel:datasrc="db:ECTT" name="stVal" />
            </DOI>
            <DOI name="TxBlk">
              <DAI esel:datasrc="db:Z3RB" name="general" />
            </DOI>
          </LN>
          <LN lnType="PSCH2" prefix="DCB" lnClass="PSCH" inst="2">
            <DOI name="TxPrm">
              <DAI esel:datasrc="db:CSV01" name="general" />
            </DOI>
            <DOI name="RxPrm1">
              <DAI esel:datasrc="db:BTX" name="general" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:RXPRM" name="general" />
            </DOI>
            <DOI name="TxBlk">
              <DAI esel:datasrc="db:Z3RB" name="general" />
            </DOI>
          </LN>
          <LN lnType="PSCH1" prefix="DCUB" lnClass="PSCH" inst="3">
            <DOI name="TxPrm">
              <DAI esel:datasrc="db:KEY" name="general" />
            </DOI>
            <DOI name="RxPrm1">
              <DAI esel:datasrc="db:PTRX" name="general" />
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:RXPRM" name="general" />
            </DOI>
            <DOI name="EchoWei">
              <DAI esel:datasrc="db:EKEY" name="stVal" />
            </DOI>
            <DOI name="EchoWeiOp">
              <DAI esel:datasrc="db:ECTT" name="stVal" />
            </DOI>
            <DOI name="TxBlk">
              <DAI esel:datasrc="db:Z3RB" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTRC1" prefix="TRIP" lnClass="PTRC" inst="1">
            <DOI name="Tr">
              <DAI esel:datasrc="db:TRIP" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTRC1" prefix="BKR1" lnClass="PTRC" inst="2">
            <DOI name="Tr">
              <DAI esel:datasrc="db:T3P1" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTRC1" prefix="BKR2" lnClass="PTRC" inst="3">
            <DOI name="Tr">
              <DAI esel:datasrc="db:T3P2" name="general" />
            </DOI>
          </LN>
          <LN lnType="RDIR1" prefix="F32G" lnClass="RDIR" inst="1">
            <DOI name="Dir">
              <DAI esel:datasrc="db:32GF" name="general" />
              <DAI esel:datasrc="db:32GF?0:1" name="dirGeneral" />
            </DOI>
          </LN>
          <LN lnType="RDIR1" prefix="R32G" lnClass="RDIR" inst="2">
            <DOI name="Dir">
              <DAI esel:datasrc="db:32GR" name="general" />
              <DAI esel:datasrc="db:32GR?0:2" name="dirGeneral" />
            </DOI>
          </LN>
          <LN lnType="RDIR1" prefix="F32Q" lnClass="RDIR" inst="3">
            <DOI name="Dir">
              <DAI esel:datasrc="db:F32Q" name="general" />
              <DAI esel:datasrc="db:F32Q?0:1" name="dirGeneral" />
            </DOI>
          </LN>
          <LN lnType="RDIR1" prefix="R32Q" lnClass="RDIR" inst="4">
            <DOI name="Dir">
              <DAI esel:datasrc="db:R32Q" name="general" />
              <DAI esel:datasrc="db:R32Q?0:2" name="dirGeneral" />
            </DOI>
          </LN>
          <LN lnType="RDIR1" prefix="F32P" lnClass="RDIR" inst="5">
            <DOI name="Dir">
              <DAI esel:datasrc="db:F32P" name="general" />
              <DAI esel:datasrc="db:F32P?0:1" name="dirGeneral" />
            </DOI>
          </LN>
          <LN lnType="RDIR1" prefix="R32P" lnClass="RDIR" inst="6">
            <DOI name="Dir">
              <DAI esel:datasrc="db:R32P" name="general" />
              <DAI esel:datasrc="db:R32P?0:2" name="dirGeneral" />
            </DOI>
          </LN>
          <LN lnType="RBRF1" prefix="BFR1" lnClass="RBRF" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:BFI3P1" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="OpEx">
              <DAI esel:datasrc="db:FBF1" name="general" />
              <DAI esel:datasrc="db:FBFA1" name="phsA" />
              <DAI esel:datasrc="db:FBFB1" name="phsB" />
              <DAI esel:datasrc="db:FBFC1" name="phsC" />
            </DOI>
            <DOI name="OpIn">
              <DAI esel:datasrc="db:RT1" name="general" />
            </DOI>
          </LN>
          <LN lnType="RBRF1" prefix="BFR2" lnClass="RBRF" inst="2">
            <DOI name="Str">
              <DAI esel:datasrc="db:BFI3P2" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="OpEx">
              <DAI esel:datasrc="db:FBF2" name="general" />
              <DAI esel:datasrc="db:FBFA2" name="phsA" />
              <DAI esel:datasrc="db:FBFB2" name="phsB" />
              <DAI esel:datasrc="db:FBFC2" name="phsC" />
            </DOI>
            <DOI name="OpIn">
              <DAI esel:datasrc="db:RT2" name="general" />
            </DOI>
          </LN>
          <LN lnType="XCBR1" prefix="BK1" lnClass="XCBR" inst="1">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="TukRackPos">
              <DAI esel:datasrc="db:521RACK" name="stVal" />
            </DOI>
            <DOI name="TukTestPos">
              <DAI esel:datasrc="db:521TEST" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:52ACL1?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CBOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XCBR1" prefix="BK2" lnClass="XCBR" inst="2">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="TukRackPos">
              <DAI esel:datasrc="db:522RACK" name="stVal" />
            </DOI>
            <DOI name="TukTestPos">
              <DAI esel:datasrc="db:522TEST" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:52ACL2?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CBOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC1" lnClass="XSWI" inst="1">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL01" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL01?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC2" lnClass="XSWI" inst="2">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL02" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL02?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC3" lnClass="XSWI" inst="3">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL03" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL03?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC4" lnClass="XSWI" inst="4">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL04" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL04?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC5" lnClass="XSWI" inst="5">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL05" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL05?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC6" lnClass="XSWI" inst="6">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL06" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL06?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC7" lnClass="XSWI" inst="7">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL07" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL07?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC8" lnClass="XSWI" inst="8">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL08" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL08?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC9" lnClass="XSWI" inst="9">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL09" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL09?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC10" lnClass="XSWI" inst="10">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL10" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL10?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC11" lnClass="XSWI" inst="11">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL11" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL11?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC12" lnClass="XSWI" inst="12">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL12" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL12?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC13" lnClass="XSWI" inst="13">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL13" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL13?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC14" lnClass="XSWI" inst="14">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL14" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL14?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC15" lnClass="XSWI" inst="15">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL15" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL15?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC16" lnClass="XSWI" inst="16">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL16" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL16?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC17" lnClass="XSWI" inst="17">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL17" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL17?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC18" lnClass="XSWI" inst="18">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL18" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL18?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC19" lnClass="XSWI" inst="19">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL19" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL19?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" prefix="DC20" lnClass="XSWI" inst="20">
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL20" name="stVal" />
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL20?1:2" name="stVal" />
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="BKR1" lnClass="CILO" inst="1">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:BKENO1" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:BKENC1" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="BKR2" lnClass="CILO" inst="2">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:BKENO2" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:BKENC2" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC1" lnClass="CILO" inst="1">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO01" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC01" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC2" lnClass="CILO" inst="2">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO02" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC02" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC3" lnClass="CILO" inst="3">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO03" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC03" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC4" lnClass="CILO" inst="4">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO04" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC04" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC5" lnClass="CILO" inst="5">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO05" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC05" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC6" lnClass="CILO" inst="6">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO06" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC06" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC7" lnClass="CILO" inst="7">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO07" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC07" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC8" lnClass="CILO" inst="8">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO08" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC08" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC9" lnClass="CILO" inst="9">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO09" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC09" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC10" lnClass="CILO" inst="10">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO10" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC10" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC11" lnClass="CILO" inst="11">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO11" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC11" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC12" lnClass="CILO" inst="12">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO12" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC12" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC13" lnClass="CILO" inst="13">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO13" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC13" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC14" lnClass="CILO" inst="14">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO14" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC14" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC15" lnClass="CILO" inst="15">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO15" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC15" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC16" lnClass="CILO" inst="16">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO16" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC16" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC17" lnClass="CILO" inst="17">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO17" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC17" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC18" lnClass="CILO" inst="18">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO18" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC18" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC19" lnClass="CILO" inst="19">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO19" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC19" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CILO1" prefix="DC20" lnClass="CILO" inst="20">
            <DOI name="EnaOpn">
              <DAI esel:datasrc="db:89ENO20" name="stVal" />
            </DOI>
            <DOI name="EnaCls">
              <DAI esel:datasrc="db:89ENC20" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="BKR1" lnClass="CSWI" inst="1">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:CC1:OC1" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$BK1XCBR1" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:52ACL1?1:2" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:OC1" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:CC1" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/BKR1CILO1.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/BKR1CILO1.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="BKR2" lnClass="CSWI" inst="2">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:CC2:OC2" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$BK2XCBR2" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:52ACL2?1:2" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:OC2" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:CC2" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/BKR2CILO2.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/BKR2CILO2.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC1" lnClass="CSWI" inst="1">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC01:89OC01" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC1XSWI1" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL01|89OPN01?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE01" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS01" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC1CILO1.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC1CILO1.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC2" lnClass="CSWI" inst="2">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC02:89OC02" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC2XSWI2" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL02|89OPN02?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE02" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS02" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC2CILO2.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC2CILO2.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC3" lnClass="CSWI" inst="3">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC03:89OC03" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC3XSWI3" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL03|89OPN03?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE03" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS03" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC3CILO3.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC3CILO3.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC4" lnClass="CSWI" inst="4">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC04:89OC04" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC4XSWI4" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL04|89OPN04?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE04" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS04" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC4CILO4.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC4CILO4.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC5" lnClass="CSWI" inst="5">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC05:89OC05" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC5XSWI5" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL05|89OPN05?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE05" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS05" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC5CILO5.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC5CILO5.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC6" lnClass="CSWI" inst="6">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC06:89OC06" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC6XSWI6" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL06|89OPN06?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE06" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS06" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC6CILO6.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC6CILO6.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC7" lnClass="CSWI" inst="7">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC07:89OC07" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC7XSWI7" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL07|89OPN07?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE07" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS07" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC7CILO7.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC7CILO7.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC8" lnClass="CSWI" inst="8">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC08:89OC08" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC8XSWI8" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL08|89OPN08?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE08" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS08" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC8CILO8.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC8CILO8.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC9" lnClass="CSWI" inst="9">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC09:89OC09" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC9XSWI9" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL09|89OPN09?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE09" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS09" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC9CILO9.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC9CILO9.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC10" lnClass="CSWI" inst="10">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC10:89OC10" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC10XSWI10" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL10|89OPN10?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE10" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS10" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC10CILO10.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC10CILO10.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC11" lnClass="CSWI" inst="11">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC11:89OC11" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC11XSWI11" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL11|89OPN11?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE11" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS11" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC11CILO11.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC11CILO11.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC12" lnClass="CSWI" inst="12">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC12:89OC12" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC12XSWI12" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL12|89OPN12?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE12" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS12" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC12CILO12.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC12CILO12.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC13" lnClass="CSWI" inst="13">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC13:89OC13" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC13XSWI13" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL13|89OPN13?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE13" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS13" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC13CILO13.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC13CILO13.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC14" lnClass="CSWI" inst="14">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC14:89OC14" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC14XSWI14" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL14|89OPN14?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE14" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS14" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC14CILO14.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC14CILO14.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC15" lnClass="CSWI" inst="15">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC15:89OC15" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC15XSWI15" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL15|89OPN15?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE15" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS15" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC15CILO15.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC15CILO15.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC16" lnClass="CSWI" inst="16">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC16:89OC16" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC16XSWI16" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL16|89OPN16?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE16" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS16" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC16CILO16.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC16CILO16.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC17" lnClass="CSWI" inst="17">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC17:89OC17" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC17XSWI17" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL17|89OPN17?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE17" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS17" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC17CILO17.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC17CILO17.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC18" lnClass="CSWI" inst="18">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC18:89OC18" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC18XSWI18" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL18|89OPN18?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE18" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS18" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC18CILO18.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC18CILO18.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC19" lnClass="CSWI" inst="19">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC19:89OC19" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC19XSWI19" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL19|89OPN19?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE19" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS19" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC19CILO19.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC19CILO19.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1" prefix="DC20" lnClass="CSWI" inst="20">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC20:89OC20" name="ctlVal" />
                <SDI name="origin">
                  <DAI esel:datasrc="processLN:PRO$DC20XSWI20" name="orCat" />
                </SDI>
              </SDI>
              <DAI esel:datasrc="db:89CL20|89OPN20?0:1:2:3" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:CSV08" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE20" name="general" />
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS20" name="general" />
            </DOI>
            <DOI name="InRef1">
              <DAI name="setSrcRef">
                <Val>PRO/DC20CILO20.EnaOpn.stVal</Val>
              </DAI>
            </DOI>
            <DOI name="InRef2">
              <DAI name="setSrcRef">
                <Val>PRO/DC20CILO20.EnaCls.stVal</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="RFLO1" prefix="FLT" lnClass="RFLO" inst="1">
            <DOI name="FltZ">
              <SDI name="instCVal">
                <SDI name="mag">
                  <DAI esel:datasrc="db:FLZMAG" name="f" />
                </SDI>
                <SDI name="ang">
                  <DAI esel:datasrc="db:FLZANG" name="f" />
                </SDI>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>ohm</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
              <DAI esel:datasrc="imm:360" name="dbAng">
                <Val>100</Val>
              </DAI>
            </DOI>
            <DOI name="FltDiskm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:FLDIST" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>m</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>k</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>5</Val>
              </DAI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIB" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIC" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="res">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIG" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="Anseq">
              <SDI name="instCVal">
                <SDI name="mag">
                  <DAI esel:datasrc="db:FLIQ" name="f" />
                </SDI>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>A</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>100</Val>
              </DAI>
            </DOI>
            <DOI name="FltTyp">
              <DAI esel:datasrc="db:FLTYPE" name="stVal" />
            </DOI>
            <DOI name="FltCaus">
              <DAI esel:datasrc="db:FLTCAUS" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="RDRE1" prefix="FLT" lnClass="RDRE" inst="1">
            <DOI name="RcdMade">
              <DAI esel:datasrc="db:FLREP" name="stVal" />
            </DOI>
            <DOI name="FltNum">
              <DAI esel:datasrc="db:FLRNUM" name="stVal" />
            </DOI>
            <DOI name="FltTyp">
              <DAI esel:datasrc="db:FLTYPE" name="stVal" />
            </DOI>
            <DOI name="FltCaus">
              <DAI esel:datasrc="db:FLTCAUS" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="PTUV1" prefix="LOP" lnClass="PTUV" inst="1">
            <DOI name="Str">
              <DAI esel:datasrc="db:LOP" name="general" />
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:LOP" name="general" />
            </DOI>
          </LN>
          <LN lnType="PTTR1" prefix="TH1" lnClass="PTTR" inst="1">
            <DOI name="Op">
              <DAI esel:datasrc="db:THRLT1" name="general" />
            </DOI>
            <DOI name="AlmThm">
              <DAI esel:datasrc="db:THRLA1" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="PTTR1" prefix="TH2" lnClass="PTTR" inst="2">
            <DOI name="Op">
              <DAI esel:datasrc="db:THRLT2" name="general" />
            </DOI>
            <DOI name="AlmThm">
              <DAI esel:datasrc="db:THRLA2" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="PTTR1" prefix="TH3" lnClass="PTTR" inst="3">
            <DOI name="Op">
              <DAI esel:datasrc="db:THRLT3" name="general" />
            </DOI>
            <DOI name="AlmThm">
              <DAI esel:datasrc="db:THRLA3" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="SCBR1" prefix="BS1A" lnClass="SCBR" inst="1">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC1" name="stVal" />
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B1BCWAL" name="stVal" />
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B1MSOAL" name="stVal" />
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B1ESOAL" name="stVal" />
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B1BCWPA" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" prefix="BS1B" lnClass="SCBR" inst="2">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC1" name="stVal" />
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B1BCWAL" name="stVal" />
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B1MSOAL" name="stVal" />
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B1ESOAL" name="stVal" />
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B1BCWPB" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" prefix="BS1C" lnClass="SCBR" inst="3">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC1" name="stVal" />
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B1BCWAL" name="stVal" />
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B1MSOAL" name="stVal" />
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B1ESOAL" name="stVal" />
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B1BCWPC" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" prefix="BS2A" lnClass="SCBR" inst="4">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC2" name="stVal" />
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B2BCWAL" name="stVal" />
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B2MSOAL" name="stVal" />
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B2ESOAL" name="stVal" />
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B2BCWPA" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" prefix="BS2B" lnClass="SCBR" inst="5">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC2" name="stVal" />
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B2BCWAL" name="stVal" />
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B2MSOAL" name="stVal" />
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B2ESOAL" name="stVal" />
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B2BCWPB" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" prefix="BS2C" lnClass="SCBR" inst="6">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC2" name="stVal" />
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B2BCWAL" name="stVal" />
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B2MSOAL" name="stVal" />
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B2ESOAL" name="stVal" />
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B2BCWPC" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Metering" inst="MET">
          <LN0 lnType="LN0" lnClass="LLN0" inst="">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Metering</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOC" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>PROT_BARCFG</Val>
              </DAI>
            </DOI>
            <DOI name="MltLev">
              <DAI esel:datasrc="db:MLTLEV" name="setVal" />
            </DOI>
          </LN0>
          <LN lnType="LPHD1" prefix="MET" lnClass="LPHD" inst="1">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="MMXU1" prefix="MET3P" lnClass="MMXU" inst="1">
            <DOI name="TotW">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3P_F" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Watts</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVAr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3Q_F" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VAr</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVA">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3S_F" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VA</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotPF">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3DPF" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:1" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="Hz">
              <SDI name="instMag">
                <DAI esel:datasrc="db:FREQ" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Hz</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="PhV">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:VAFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:VAFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:VBFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:VBFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:VCFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:VCFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LIAFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LIAFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LIBFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LIBFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LICFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LICFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="W">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PA_F" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PB_F" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PC_F" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VAr">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QA_F" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QB_F" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QC_F" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="PF">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:DPFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val />
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:1" name="db">
                  <Val>5000</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:DPFB" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val />
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:1" name="db">
                  <Val>5000</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:DPFC" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val />
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:1" name="db">
                  <Val>5000</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="MMXU2" prefix="METBK1" lnClass="MMXU" inst="1">
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B1IAFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B1IAFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B1IBFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B1IBFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B1ICFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B1ICFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="MMXU2" prefix="METBK2" lnClass="MMXU" inst="2">
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B2IAFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B2IAFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B2IBFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B2IBFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B2ICFM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B2ICFA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="MSQI1" prefix="SEQ" lnClass="MSQI" inst="1">
            <DOI name="SeqA">
              <SDI name="c1">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LI1M" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LI1A" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:L3I2M" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:L3I2A" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LIGM" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LIGA" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
            <DOI name="SeqV">
              <SDI name="c1">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:V1M" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:V1A" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:3V2M" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:3V2A" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:3V0M" name="f" />
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:3V0A" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="ZBAT1" prefix="DC" lnClass="ZBAT" inst="1">
            <DOI name="Vol">
              <SDI name="instMag">
                <DAI esel:datasrc="db:DC1" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>V</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:250" name="db">
                <Val>800</Val>
              </DAI>
            </DOI>
            <DOI name="BatWrn">
              <DAI esel:datasrc="db:DC1W" name="stVal" />
            </DOI>
            <DOI name="BatFail">
              <DAI esel:datasrc="db:DC1F" name="stVal" />
            </DOI>
            <DOI name="BatGndFlt">
              <DAI esel:datasrc="db:DC1G" name="stVal" />
            </DOI>
            <DOI name="BatDvAlm">
              <DAI esel:datasrc="db:DC1R" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="ZBAT1" prefix="DC" lnClass="ZBAT" inst="2">
            <DOI name="Vol">
              <SDI name="instMag">
                <DAI esel:datasrc="db:DC2" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>V</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:250" name="db">
                <Val>800</Val>
              </DAI>
            </DOI>
            <DOI name="BatWrn">
              <DAI esel:datasrc="db:DC2W" name="stVal" />
            </DOI>
            <DOI name="BatFail">
              <DAI esel:datasrc="db:DC2F" name="stVal" />
            </DOI>
            <DOI name="BatGndFlt">
              <DAI esel:datasrc="db:DC2G" name="stVal" />
            </DOI>
            <DOI name="BatDvAlm">
              <DAI esel:datasrc="db:DC2R" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="MDST1" prefix="DMD" lnClass="MDST" inst="1">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Demand values</Val>
              </DAI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IAD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IBD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:ICD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="W">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PAD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PBD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PCD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VAr">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QAD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QBD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QCD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VA">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UAD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UBD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UCD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="SeqA">
              <SDI name="c1">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:CSV06" name="f" />
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:3I2D" name="f" />
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:IGD" name="f" />
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
            <DOI name="TotW">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3PD" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Watts</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVAr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3QD" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VAr</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVA">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3UD" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VA</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:25000" name="db">
                <Val>400</Val>
              </DAI>
            </DOI>
            <DOI name="SupWh">
              <DAI esel:datasrc="db:3MWHOUT" name="actVal" />
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Wh</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="DmdWh">
              <DAI esel:datasrc="db:3MWHIN" name="actVal" />
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Wh</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI name="pulsQty">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="MDST2" prefix="PKDMD" lnClass="MDST" inst="1">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Peak Demand values</Val>
              </DAI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IAPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IBPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:ICPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="W">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PAPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PBPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PCPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VAr">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QAPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QBPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QCPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VA">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UAPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UBPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UCPKD" name="f" />
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="SeqA">
              <SDI name="c1">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:3I2PKD" name="f" />
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:3I2PKD" name="f" />
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:IGPKD" name="f" />
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val />
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
            <DOI name="TotW">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3PPKD" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Watts</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVAr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3QPKD" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VAr</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVA">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3UPKD" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VA</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:25000" name="db">
                <Val>400</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Remote Control" inst="CON">
          <LN0 lnType="LN0" lnClass="LLN0" inst="">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Control</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOC" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>PROT_BARCFG</Val>
              </DAI>
            </DOI>
            <DOI name="MltLev">
              <DAI esel:datasrc="db:MLTLEV" name="setVal" />
            </DOI>
          </LN0>
          <LN lnType="LPHD1" prefix="CTRL" lnClass="LPHD" inst="1">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC01_08" prefix="RB" lnClass="GGIO" inst="1">
            <DOI name="SPCSO01">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB01" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB01" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO02">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB02" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB02" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO03">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB03" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB03" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO04">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB04" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB04" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO05">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB05" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB05" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO06">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB06" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB06" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO07">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB07" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB07" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO08">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB08" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB08" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC09_16" prefix="RB" lnClass="GGIO" inst="2">
            <DOI name="SPCSO09">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB09" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB09" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO10">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB10" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB10" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO11">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB11" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB11" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO12">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB12" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB12" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO13">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB13" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB13" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO14">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB14" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB14" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO15">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB15" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB15" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO16">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB16" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB16" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC17_24" prefix="RB" lnClass="GGIO" inst="3">
            <DOI name="SPCSO17">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB17" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB17" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO18">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB18" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB18" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO19">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB19" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB19" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO20">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB20" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB20" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO21">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB21" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB21" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO22">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB22" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB22" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO23">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB23" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB23" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO24">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB24" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB24" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC25_32" prefix="RB" lnClass="GGIO" inst="4">
            <DOI name="SPCSO25">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB25" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB25" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO26">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB26" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB26" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO27">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB27" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB27" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO28">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB28" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB28" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO29">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB29" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB29" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO30">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB30" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB30" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO31">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB31" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB31" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO32">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB32" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB32" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC33_40" prefix="RB" lnClass="GGIO" inst="5">
            <DOI name="SPCSO33">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB33" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB33" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO34">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB34" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB34" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO35">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB35" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB35" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO36">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB36" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB36" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO37">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB37" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB37" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO38">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB38" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB38" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO39">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB39" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB39" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO40">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB40" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB40" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC41_48" prefix="RB" lnClass="GGIO" inst="6">
            <DOI name="SPCSO41">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB41" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB41" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO42">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB42" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB42" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO43">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB43" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB43" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO44">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB44" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB44" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO45">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB45" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB45" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO46">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB46" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB46" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO47">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB47" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB47" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO48">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB48" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB48" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC49_56" prefix="RB" lnClass="GGIO" inst="7">
            <DOI name="SPCSO49">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB49" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB49" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO50">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB50" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB50" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO51">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB51" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB51" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO52">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB52" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB52" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO53">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB53" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB53" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO54">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB54" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB54" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO55">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB55" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB55" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO56">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB56" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB56" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC57_64" prefix="RB" lnClass="GGIO" inst="8">
            <DOI name="SPCSO57">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB57" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB57" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO58">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB58" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB58" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO59">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB59" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB59" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO60">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB60" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB60" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO61">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB61" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB61" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO62">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB62" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB62" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO63">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB63" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB63" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO64">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB64" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB64" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC01_08" prefix="PRB" lnClass="GGIO" inst="1">
            <DOI name="SPCSO01">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB01:RB01" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB01" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO02">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB02:RB02" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB02" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO03">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB03:RB03" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB03" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO04">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB04:RB04" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB04" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO05">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB05:RB05" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB05" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO06">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB06:RB06" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB06" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO07">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB07:RB07" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB07" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO08">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB08:RB08" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB08" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC09_16" prefix="PRB" lnClass="GGIO" inst="2">
            <DOI name="SPCSO09">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB09:RB09" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB09" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO10">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB10:RB10" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB10" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO11">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB11:RB11" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB11" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO12">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB12:RB12" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB12" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO13">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB13:RB13" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB13" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO14">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB14:RB14" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB14" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO15">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB15:RB15" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB15" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO16">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB16:RB16" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB16" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC17_24" prefix="PRB" lnClass="GGIO" inst="3">
            <DOI name="SPCSO17">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB17:RB17" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB17" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO18">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB18:RB18" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB18" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO19">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB19:RB19" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB19" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO20">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB20:RB20" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB20" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO21">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB21:RB21" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB21" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO22">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB22:RB22" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB22" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO23">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB23:RB23" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB23" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO24">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB24:RB24" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB24" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC25_32" prefix="PRB" lnClass="GGIO" inst="4">
            <DOI name="SPCSO25">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB25:RB25" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB25" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO26">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB26:RB26" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB26" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO27">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB27:RB27" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB27" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO28">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB28:RB28" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB28" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO29">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB29:RB29" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB29" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO30">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB30:RB30" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB30" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO31">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB31:RB31" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB31" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO32">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB32:RB32" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB32" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC33_40" prefix="PRB" lnClass="GGIO" inst="5">
            <DOI name="SPCSO33">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB33:RB33" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB33" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO34">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB34:RB34" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB34" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO35">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB35:RB35" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB35" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO36">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB36:RB36" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB36" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO37">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB37:RB37" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB37" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO38">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB38:RB38" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB38" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO39">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB39:RB39" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB39" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO40">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB40:RB40" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB40" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC41_48" prefix="PRB" lnClass="GGIO" inst="6">
            <DOI name="SPCSO41">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB41:RB41" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB41" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO42">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB42:RB42" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB42" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO43">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB43:RB43" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB43" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO44">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB44:RB44" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB44" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO45">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB45:RB45" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB45" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO46">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB46:RB46" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB46" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO47">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB47:RB47" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB47" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO48">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB48:RB48" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB48" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC49_56" prefix="PRB" lnClass="GGIO" inst="7">
            <DOI name="SPCSO49">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB49:RB49" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB49" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO50">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB50:RB50" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB50" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO51">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB51:RB51" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB51" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO52">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB52:RB52" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB52" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO53">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB53:RB53" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB53" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO54">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB54:RB54" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB54" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO55">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB55:RB55" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB55" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO56">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB56:RB56" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB56" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC57_64" prefix="PRB" lnClass="GGIO" inst="8">
            <DOI name="SPCSO57">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB57:RB57" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB57" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO58">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB58:RB58" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB58" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO59">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB59:RB59" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB59" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO60">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB60:RB60" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB60" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO61">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB61:RB61" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB61" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO62">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB62:RB62" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB62" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO63">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB63:RB63" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB63" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO64">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB64:RB64" name="ctlVal" />
              </SDI>
              <DAI esel:datasrc="db:RB64" name="stVal" />
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Annunciation" inst="ANN">
          <LN0 lnType="LN0" lnClass="LLN0" inst="">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Annunciation</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOC" name="stVal" />
            </DOI>
            <DOI name="LocSta">
              <DAI esel:datasrc="db:LOCSTA" name="stVal" />
            </DOI>
            <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>PROT_BARCFG</Val>
              </DAI>
            </DOI>
            <DOI name="MltLev">
              <DAI esel:datasrc="db:MLTLEV" name="setVal" />
            </DOI>
          </LN0>
          <LN lnType="LPHD1" prefix="STA" lnClass="LPHD" inst="1">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS64" prefix="PSV" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:PSV01" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:PSV02" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:PSV03" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:PSV04" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PSV05" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:PSV06" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PSV07" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:PSV08" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:PSV09" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:PSV10" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:PSV11" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:PSV12" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:PSV13" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:PSV14" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:PSV15" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:PSV16" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:PSV17" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:PSV18" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:PSV19" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:PSV20" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:PSV21" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:PSV22" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:PSV23" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:PSV24" name="stVal" />
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:PSV25" name="stVal" />
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:PSV26" name="stVal" />
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:PSV27" name="stVal" />
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:PSV28" name="stVal" />
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:PSV29" name="stVal" />
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:PSV30" name="stVal" />
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:PSV31" name="stVal" />
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:PSV32" name="stVal" />
            </DOI>
            <DOI name="Ind33">
              <DAI esel:datasrc="db:PSV33" name="stVal" />
            </DOI>
            <DOI name="Ind34">
              <DAI esel:datasrc="db:PSV34" name="stVal" />
            </DOI>
            <DOI name="Ind35">
              <DAI esel:datasrc="db:PSV35" name="stVal" />
            </DOI>
            <DOI name="Ind36">
              <DAI esel:datasrc="db:PSV36" name="stVal" />
            </DOI>
            <DOI name="Ind37">
              <DAI esel:datasrc="db:PSV37" name="stVal" />
            </DOI>
            <DOI name="Ind38">
              <DAI esel:datasrc="db:PSV38" name="stVal" />
            </DOI>
            <DOI name="Ind39">
              <DAI esel:datasrc="db:PSV39" name="stVal" />
            </DOI>
            <DOI name="Ind40">
              <DAI esel:datasrc="db:PSV40" name="stVal" />
            </DOI>
            <DOI name="Ind41">
              <DAI esel:datasrc="db:PSV41" name="stVal" />
            </DOI>
            <DOI name="Ind42">
              <DAI esel:datasrc="db:PSV42" name="stVal" />
            </DOI>
            <DOI name="Ind43">
              <DAI esel:datasrc="db:PSV43" name="stVal" />
            </DOI>
            <DOI name="Ind44">
              <DAI esel:datasrc="db:PSV44" name="stVal" />
            </DOI>
            <DOI name="Ind45">
              <DAI esel:datasrc="db:PSV45" name="stVal" />
            </DOI>
            <DOI name="Ind46">
              <DAI esel:datasrc="db:PSV46" name="stVal" />
            </DOI>
            <DOI name="Ind47">
              <DAI esel:datasrc="db:PSV47" name="stVal" />
            </DOI>
            <DOI name="Ind48">
              <DAI esel:datasrc="db:PSV48" name="stVal" />
            </DOI>
            <DOI name="Ind49">
              <DAI esel:datasrc="db:PSV49" name="stVal" />
            </DOI>
            <DOI name="Ind50">
              <DAI esel:datasrc="db:PSV50" name="stVal" />
            </DOI>
            <DOI name="Ind51">
              <DAI esel:datasrc="db:PSV51" name="stVal" />
            </DOI>
            <DOI name="Ind52">
              <DAI esel:datasrc="db:PSV52" name="stVal" />
            </DOI>
            <DOI name="Ind53">
              <DAI esel:datasrc="db:PSV53" name="stVal" />
            </DOI>
            <DOI name="Ind54">
              <DAI esel:datasrc="db:PSV54" name="stVal" />
            </DOI>
            <DOI name="Ind55">
              <DAI esel:datasrc="db:PSV55" name="stVal" />
            </DOI>
            <DOI name="Ind56">
              <DAI esel:datasrc="db:PSV56" name="stVal" />
            </DOI>
            <DOI name="Ind57">
              <DAI esel:datasrc="db:PSV57" name="stVal" />
            </DOI>
            <DOI name="Ind58">
              <DAI esel:datasrc="db:PSV58" name="stVal" />
            </DOI>
            <DOI name="Ind59">
              <DAI esel:datasrc="db:PSV59" name="stVal" />
            </DOI>
            <DOI name="Ind60">
              <DAI esel:datasrc="db:PSV60" name="stVal" />
            </DOI>
            <DOI name="Ind61">
              <DAI esel:datasrc="db:PSV61" name="stVal" />
            </DOI>
            <DOI name="Ind62">
              <DAI esel:datasrc="db:PSV62" name="stVal" />
            </DOI>
            <DOI name="Ind63">
              <DAI esel:datasrc="db:PSV63" name="stVal" />
            </DOI>
            <DOI name="Ind64">
              <DAI esel:datasrc="db:PSV64" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS32" prefix="PLT" lnClass="GGIO" inst="2">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:PLT01" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:PLT02" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:PLT03" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:PLT04" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PLT05" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:PLT06" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PLT07" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:PLT08" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:PLT09" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:PLT10" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:PLT11" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:PLT12" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:PLT13" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:PLT14" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:PLT15" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:PLT16" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:PLT17" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:PLT18" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:PLT19" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:PLT20" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:PLT21" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:PLT22" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:PLT23" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:PLT24" name="stVal" />
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:PLT25" name="stVal" />
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:PLT26" name="stVal" />
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:PLT27" name="stVal" />
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:PLT28" name="stVal" />
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:PLT29" name="stVal" />
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:PLT30" name="stVal" />
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:PLT31" name="stVal" />
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:PLT32" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_AS64" prefix="PMV" lnClass="GGIO" inst="3">
            <DOI name="AnIn01">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV01" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn02">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV02" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn03">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV03" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn04">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV04" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn05">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV05" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn06">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV06" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn07">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV07" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn08">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV08" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn09">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV09" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn10">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV10" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn11">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV11" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn12">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV12" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn13">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV13" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn14">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV14" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn15">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV15" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn16">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV16" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn17">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV17" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn18">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV18" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn19">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV19" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn20">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV20" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn21">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV21" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn22">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV22" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn23">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV23" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn24">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV24" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn25">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV25" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn26">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV26" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn27">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV27" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn28">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV28" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn29">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV29" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn30">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV30" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn31">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV31" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn32">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV32" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn33">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV33" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn34">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV34" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn35">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV35" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn36">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV36" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn37">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV37" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn38">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV38" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn39">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV39" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn40">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV40" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn41">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV41" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn42">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV42" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn43">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV43" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn44">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV44" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn45">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV45" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn46">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV46" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn47">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV47" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn48">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV48" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn49">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV49" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn50">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV50" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn51">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV51" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn52">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV52" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn53">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV53" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn54">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV54" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn55">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV55" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn56">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV56" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn57">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV57" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn58">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV58" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn59">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV59" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn60">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV60" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn61">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV61" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn62">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV62" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn63">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV63" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn64">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV64" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS128" prefix="ASV" lnClass="GGIO" inst="4">
            <DOI name="Ind001">
              <DAI esel:datasrc="db:ASV001" name="stVal" />
            </DOI>
            <DOI name="Ind002">
              <DAI esel:datasrc="db:ASV002" name="stVal" />
            </DOI>
            <DOI name="Ind003">
              <DAI esel:datasrc="db:ASV003" name="stVal" />
            </DOI>
            <DOI name="Ind004">
              <DAI esel:datasrc="db:ASV004" name="stVal" />
            </DOI>
            <DOI name="Ind005">
              <DAI esel:datasrc="db:ASV005" name="stVal" />
            </DOI>
            <DOI name="Ind006">
              <DAI esel:datasrc="db:ASV006" name="stVal" />
            </DOI>
            <DOI name="Ind007">
              <DAI esel:datasrc="db:ASV007" name="stVal" />
            </DOI>
            <DOI name="Ind008">
              <DAI esel:datasrc="db:ASV008" name="stVal" />
            </DOI>
            <DOI name="Ind009">
              <DAI esel:datasrc="db:ASV009" name="stVal" />
            </DOI>
            <DOI name="Ind010">
              <DAI esel:datasrc="db:ASV010" name="stVal" />
            </DOI>
            <DOI name="Ind011">
              <DAI esel:datasrc="db:ASV011" name="stVal" />
            </DOI>
            <DOI name="Ind012">
              <DAI esel:datasrc="db:ASV012" name="stVal" />
            </DOI>
            <DOI name="Ind013">
              <DAI esel:datasrc="db:ASV013" name="stVal" />
            </DOI>
            <DOI name="Ind014">
              <DAI esel:datasrc="db:ASV014" name="stVal" />
            </DOI>
            <DOI name="Ind015">
              <DAI esel:datasrc="db:ASV015" name="stVal" />
            </DOI>
            <DOI name="Ind016">
              <DAI esel:datasrc="db:ASV016" name="stVal" />
            </DOI>
            <DOI name="Ind017">
              <DAI esel:datasrc="db:ASV017" name="stVal" />
            </DOI>
            <DOI name="Ind018">
              <DAI esel:datasrc="db:ASV018" name="stVal" />
            </DOI>
            <DOI name="Ind019">
              <DAI esel:datasrc="db:ASV019" name="stVal" />
            </DOI>
            <DOI name="Ind020">
              <DAI esel:datasrc="db:ASV020" name="stVal" />
            </DOI>
            <DOI name="Ind021">
              <DAI esel:datasrc="db:ASV021" name="stVal" />
            </DOI>
            <DOI name="Ind022">
              <DAI esel:datasrc="db:ASV022" name="stVal" />
            </DOI>
            <DOI name="Ind023">
              <DAI esel:datasrc="db:ASV023" name="stVal" />
            </DOI>
            <DOI name="Ind024">
              <DAI esel:datasrc="db:ASV024" name="stVal" />
            </DOI>
            <DOI name="Ind025">
              <DAI esel:datasrc="db:ASV025" name="stVal" />
            </DOI>
            <DOI name="Ind026">
              <DAI esel:datasrc="db:ASV026" name="stVal" />
            </DOI>
            <DOI name="Ind027">
              <DAI esel:datasrc="db:ASV027" name="stVal" />
            </DOI>
            <DOI name="Ind028">
              <DAI esel:datasrc="db:ASV028" name="stVal" />
            </DOI>
            <DOI name="Ind029">
              <DAI esel:datasrc="db:ASV029" name="stVal" />
            </DOI>
            <DOI name="Ind030">
              <DAI esel:datasrc="db:ASV030" name="stVal" />
            </DOI>
            <DOI name="Ind031">
              <DAI esel:datasrc="db:ASV031" name="stVal" />
            </DOI>
            <DOI name="Ind032">
              <DAI esel:datasrc="db:ASV032" name="stVal" />
            </DOI>
            <DOI name="Ind033">
              <DAI esel:datasrc="db:ASV033" name="stVal" />
            </DOI>
            <DOI name="Ind034">
              <DAI esel:datasrc="db:ASV034" name="stVal" />
            </DOI>
            <DOI name="Ind035">
              <DAI esel:datasrc="db:ASV035" name="stVal" />
            </DOI>
            <DOI name="Ind036">
              <DAI esel:datasrc="db:ASV036" name="stVal" />
            </DOI>
            <DOI name="Ind037">
              <DAI esel:datasrc="db:ASV037" name="stVal" />
            </DOI>
            <DOI name="Ind038">
              <DAI esel:datasrc="db:ASV038" name="stVal" />
            </DOI>
            <DOI name="Ind039">
              <DAI esel:datasrc="db:ASV039" name="stVal" />
            </DOI>
            <DOI name="Ind040">
              <DAI esel:datasrc="db:ASV040" name="stVal" />
            </DOI>
            <DOI name="Ind041">
              <DAI esel:datasrc="db:ASV041" name="stVal" />
            </DOI>
            <DOI name="Ind042">
              <DAI esel:datasrc="db:ASV042" name="stVal" />
            </DOI>
            <DOI name="Ind043">
              <DAI esel:datasrc="db:ASV043" name="stVal" />
            </DOI>
            <DOI name="Ind044">
              <DAI esel:datasrc="db:ASV044" name="stVal" />
            </DOI>
            <DOI name="Ind045">
              <DAI esel:datasrc="db:ASV045" name="stVal" />
            </DOI>
            <DOI name="Ind046">
              <DAI esel:datasrc="db:ASV046" name="stVal" />
            </DOI>
            <DOI name="Ind047">
              <DAI esel:datasrc="db:ASV047" name="stVal" />
            </DOI>
            <DOI name="Ind048">
              <DAI esel:datasrc="db:ASV048" name="stVal" />
            </DOI>
            <DOI name="Ind049">
              <DAI esel:datasrc="db:ASV049" name="stVal" />
            </DOI>
            <DOI name="Ind050">
              <DAI esel:datasrc="db:ASV050" name="stVal" />
            </DOI>
            <DOI name="Ind051">
              <DAI esel:datasrc="db:ASV051" name="stVal" />
            </DOI>
            <DOI name="Ind052">
              <DAI esel:datasrc="db:ASV052" name="stVal" />
            </DOI>
            <DOI name="Ind053">
              <DAI esel:datasrc="db:ASV053" name="stVal" />
            </DOI>
            <DOI name="Ind054">
              <DAI esel:datasrc="db:ASV054" name="stVal" />
            </DOI>
            <DOI name="Ind055">
              <DAI esel:datasrc="db:ASV055" name="stVal" />
            </DOI>
            <DOI name="Ind056">
              <DAI esel:datasrc="db:ASV056" name="stVal" />
            </DOI>
            <DOI name="Ind057">
              <DAI esel:datasrc="db:ASV057" name="stVal" />
            </DOI>
            <DOI name="Ind058">
              <DAI esel:datasrc="db:ASV058" name="stVal" />
            </DOI>
            <DOI name="Ind059">
              <DAI esel:datasrc="db:ASV059" name="stVal" />
            </DOI>
            <DOI name="Ind060">
              <DAI esel:datasrc="db:ASV060" name="stVal" />
            </DOI>
            <DOI name="Ind061">
              <DAI esel:datasrc="db:ASV061" name="stVal" />
            </DOI>
            <DOI name="Ind062">
              <DAI esel:datasrc="db:ASV062" name="stVal" />
            </DOI>
            <DOI name="Ind063">
              <DAI esel:datasrc="db:ASV063" name="stVal" />
            </DOI>
            <DOI name="Ind064">
              <DAI esel:datasrc="db:ASV064" name="stVal" />
            </DOI>
            <DOI name="Ind065">
              <DAI esel:datasrc="db:ASV065" name="stVal" />
            </DOI>
            <DOI name="Ind066">
              <DAI esel:datasrc="db:ASV066" name="stVal" />
            </DOI>
            <DOI name="Ind067">
              <DAI esel:datasrc="db:ASV067" name="stVal" />
            </DOI>
            <DOI name="Ind068">
              <DAI esel:datasrc="db:ASV068" name="stVal" />
            </DOI>
            <DOI name="Ind069">
              <DAI esel:datasrc="db:ASV069" name="stVal" />
            </DOI>
            <DOI name="Ind070">
              <DAI esel:datasrc="db:ASV070" name="stVal" />
            </DOI>
            <DOI name="Ind071">
              <DAI esel:datasrc="db:ASV071" name="stVal" />
            </DOI>
            <DOI name="Ind072">
              <DAI esel:datasrc="db:ASV072" name="stVal" />
            </DOI>
            <DOI name="Ind073">
              <DAI esel:datasrc="db:ASV073" name="stVal" />
            </DOI>
            <DOI name="Ind074">
              <DAI esel:datasrc="db:ASV074" name="stVal" />
            </DOI>
            <DOI name="Ind075">
              <DAI esel:datasrc="db:ASV075" name="stVal" />
            </DOI>
            <DOI name="Ind076">
              <DAI esel:datasrc="db:ASV076" name="stVal" />
            </DOI>
            <DOI name="Ind077">
              <DAI esel:datasrc="db:ASV077" name="stVal" />
            </DOI>
            <DOI name="Ind078">
              <DAI esel:datasrc="db:ASV078" name="stVal" />
            </DOI>
            <DOI name="Ind079">
              <DAI esel:datasrc="db:ASV079" name="stVal" />
            </DOI>
            <DOI name="Ind080">
              <DAI esel:datasrc="db:ASV080" name="stVal" />
            </DOI>
            <DOI name="Ind081">
              <DAI esel:datasrc="db:ASV081" name="stVal" />
            </DOI>
            <DOI name="Ind082">
              <DAI esel:datasrc="db:ASV082" name="stVal" />
            </DOI>
            <DOI name="Ind083">
              <DAI esel:datasrc="db:ASV083" name="stVal" />
            </DOI>
            <DOI name="Ind084">
              <DAI esel:datasrc="db:ASV084" name="stVal" />
            </DOI>
            <DOI name="Ind085">
              <DAI esel:datasrc="db:ASV085" name="stVal" />
            </DOI>
            <DOI name="Ind086">
              <DAI esel:datasrc="db:ASV086" name="stVal" />
            </DOI>
            <DOI name="Ind087">
              <DAI esel:datasrc="db:ASV087" name="stVal" />
            </DOI>
            <DOI name="Ind088">
              <DAI esel:datasrc="db:ASV088" name="stVal" />
            </DOI>
            <DOI name="Ind089">
              <DAI esel:datasrc="db:ASV089" name="stVal" />
            </DOI>
            <DOI name="Ind090">
              <DAI esel:datasrc="db:ASV090" name="stVal" />
            </DOI>
            <DOI name="Ind091">
              <DAI esel:datasrc="db:ASV091" name="stVal" />
            </DOI>
            <DOI name="Ind092">
              <DAI esel:datasrc="db:ASV092" name="stVal" />
            </DOI>
            <DOI name="Ind093">
              <DAI esel:datasrc="db:ASV093" name="stVal" />
            </DOI>
            <DOI name="Ind094">
              <DAI esel:datasrc="db:ASV094" name="stVal" />
            </DOI>
            <DOI name="Ind095">
              <DAI esel:datasrc="db:ASV095" name="stVal" />
            </DOI>
            <DOI name="Ind096">
              <DAI esel:datasrc="db:ASV096" name="stVal" />
            </DOI>
            <DOI name="Ind097">
              <DAI esel:datasrc="db:ASV097" name="stVal" />
            </DOI>
            <DOI name="Ind098">
              <DAI esel:datasrc="db:ASV098" name="stVal" />
            </DOI>
            <DOI name="Ind099">
              <DAI esel:datasrc="db:ASV099" name="stVal" />
            </DOI>
            <DOI name="Ind100">
              <DAI esel:datasrc="db:ASV100" name="stVal" />
            </DOI>
            <DOI name="Ind101">
              <DAI esel:datasrc="db:ASV101" name="stVal" />
            </DOI>
            <DOI name="Ind102">
              <DAI esel:datasrc="db:ASV102" name="stVal" />
            </DOI>
            <DOI name="Ind103">
              <DAI esel:datasrc="db:ASV103" name="stVal" />
            </DOI>
            <DOI name="Ind104">
              <DAI esel:datasrc="db:ASV104" name="stVal" />
            </DOI>
            <DOI name="Ind105">
              <DAI esel:datasrc="db:ASV105" name="stVal" />
            </DOI>
            <DOI name="Ind106">
              <DAI esel:datasrc="db:ASV106" name="stVal" />
            </DOI>
            <DOI name="Ind107">
              <DAI esel:datasrc="db:ASV107" name="stVal" />
            </DOI>
            <DOI name="Ind108">
              <DAI esel:datasrc="db:ASV108" name="stVal" />
            </DOI>
            <DOI name="Ind109">
              <DAI esel:datasrc="db:ASV109" name="stVal" />
            </DOI>
            <DOI name="Ind110">
              <DAI esel:datasrc="db:ASV110" name="stVal" />
            </DOI>
            <DOI name="Ind111">
              <DAI esel:datasrc="db:ASV111" name="stVal" />
            </DOI>
            <DOI name="Ind112">
              <DAI esel:datasrc="db:ASV112" name="stVal" />
            </DOI>
            <DOI name="Ind113">
              <DAI esel:datasrc="db:ASV113" name="stVal" />
            </DOI>
            <DOI name="Ind114">
              <DAI esel:datasrc="db:ASV114" name="stVal" />
            </DOI>
            <DOI name="Ind115">
              <DAI esel:datasrc="db:ASV115" name="stVal" />
            </DOI>
            <DOI name="Ind116">
              <DAI esel:datasrc="db:ASV116" name="stVal" />
            </DOI>
            <DOI name="Ind117">
              <DAI esel:datasrc="db:ASV117" name="stVal" />
            </DOI>
            <DOI name="Ind118">
              <DAI esel:datasrc="db:ASV118" name="stVal" />
            </DOI>
            <DOI name="Ind119">
              <DAI esel:datasrc="db:ASV119" name="stVal" />
            </DOI>
            <DOI name="Ind120">
              <DAI esel:datasrc="db:ASV120" name="stVal" />
            </DOI>
            <DOI name="Ind121">
              <DAI esel:datasrc="db:ASV121" name="stVal" />
            </DOI>
            <DOI name="Ind122">
              <DAI esel:datasrc="db:ASV122" name="stVal" />
            </DOI>
            <DOI name="Ind123">
              <DAI esel:datasrc="db:ASV123" name="stVal" />
            </DOI>
            <DOI name="Ind124">
              <DAI esel:datasrc="db:ASV124" name="stVal" />
            </DOI>
            <DOI name="Ind125">
              <DAI esel:datasrc="db:ASV125" name="stVal" />
            </DOI>
            <DOI name="Ind126">
              <DAI esel:datasrc="db:ASV126" name="stVal" />
            </DOI>
            <DOI name="Ind127">
              <DAI esel:datasrc="db:ASV127" name="stVal" />
            </DOI>
            <DOI name="Ind128">
              <DAI esel:datasrc="db:ASV128" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS32" prefix="ALT" lnClass="GGIO" inst="5">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:ALT01" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:ALT02" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:ALT03" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:ALT04" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:ALT05" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:ALT06" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:ALT07" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:ALT08" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:ALT09" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:ALT10" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:ALT11" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:ALT12" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:ALT13" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:ALT14" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:ALT15" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:ALT16" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:ALT17" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:ALT18" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:ALT19" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:ALT20" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:ALT21" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:ALT22" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:ALT23" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:ALT24" name="stVal" />
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:ALT25" name="stVal" />
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:ALT26" name="stVal" />
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:ALT27" name="stVal" />
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:ALT28" name="stVal" />
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:ALT29" name="stVal" />
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:ALT30" name="stVal" />
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:ALT31" name="stVal" />
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:ALT32" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS26" prefix="TLED" lnClass="GGIO" inst="7">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:EN" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TRIPLED" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:TLED_1" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:TLED_2" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:TLED_3" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TLED_4" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TLED_5" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TLED_6" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:TLED_7" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:TLED_8" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:TLED_9" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:TLED_10" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:TLED_11" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:TLED_12" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:TLED_13" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:TLED_14" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:TLED_15" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:TLED_16" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:TLED_17" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:TLED_18" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:TLED_19" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:TLED_20" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:TLED_21" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:TLED_22" name="stVal" />
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:TLED_23" name="stVal" />
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:TLED_24" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS12" prefix="PBLED" lnClass="GGIO" inst="8">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:PB1_LED" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:PB2_LED" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:PB3_LED" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:PB4_LED" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PB5_LED" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:PB6_LED" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PB7_LED" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:PB8_LED" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:PB9_LED" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:PB10LED" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:PB11LED" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:PB12LED" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" prefix="RMBA" lnClass="GGIO" inst="9">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RMB1A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RMB2A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RMB3A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RMB4A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RMB5A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RMB6A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RMB7A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RMB8A" name="stVal" />
              <DAI esel:datasrc="db:CSV02" name="q" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" prefix="TMBA" lnClass="GGIO" inst="10">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:TMB1A" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TMB2A" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:TMB3A" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:TMB4A" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:TMB5A" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TMB6A" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TMB7A" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TMB8A" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" prefix="RMBB" lnClass="GGIO" inst="11">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RMB1B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RMB2B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RMB3B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RMB4B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RMB5B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RMB6B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RMB7B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RMB8B" name="stVal" />
              <DAI esel:datasrc="db:CSV03" name="q" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" prefix="TMBB" lnClass="GGIO" inst="12">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:TMB1B" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TMB2B" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:TMB3B" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:TMB4B" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:TMB5B" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TMB6B" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TMB7B" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TMB8B" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS12" prefix="MBOK" lnClass="GGIO" inst="13">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:ROKA" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RBADA" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:CBADA" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:LBOKA" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:ANOKA" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:DOKA" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:ROKB" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RBADB" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:CBADB" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:LBOKB" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:ANOKB" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:DOKB" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" prefix="IN2" lnClass="GGIO" inst="14">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN201" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN202" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN203" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN204" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN205" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN206" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN207" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN208" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN209" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN210" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN211" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN212" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN213" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN214" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN215" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN216" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN217" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN218" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN219" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN220" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN221" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN222" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN223" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN224" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" prefix="IN3" lnClass="GGIO" inst="15">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN301" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN302" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN303" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN304" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN305" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN306" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN307" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN308" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN309" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN310" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN311" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN312" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN313" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN314" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN315" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN316" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN317" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN318" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN319" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN320" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN321" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN322" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN323" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN324" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" prefix="IN4" lnClass="GGIO" inst="16">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN401" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN402" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN403" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN404" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN405" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN406" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN407" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN408" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN409" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN410" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN411" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN412" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN413" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN414" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN415" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN416" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN417" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN418" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN419" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN420" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN421" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN422" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN423" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN424" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" prefix="IN5" lnClass="GGIO" inst="17">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN501" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN502" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN503" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN504" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN505" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN506" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN507" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN508" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN509" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN510" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN511" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN512" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN513" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN514" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN515" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN516" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN517" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN518" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN519" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN520" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN521" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN522" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN523" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN524" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" prefix="OUT2" lnClass="GGIO" inst="18">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT201" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT202" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT203" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT204" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT205" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT206" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT207" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT208" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT209" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT210" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT211" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT212" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT213" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT214" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT215" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT216" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" prefix="OUT3" lnClass="GGIO" inst="19">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT301" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT302" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT303" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT304" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT305" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT306" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT307" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT308" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT309" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT310" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT311" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT312" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT313" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT314" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT315" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT316" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" prefix="OUT4" lnClass="GGIO" inst="20">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT401" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT402" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT403" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT404" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT405" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT406" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT407" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT408" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT409" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT410" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT411" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT412" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT413" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT414" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT415" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT416" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" prefix="OUT5" lnClass="GGIO" inst="21">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT501" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT502" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT503" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT504" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT505" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT506" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT507" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT508" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT509" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT510" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT511" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT512" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT513" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT514" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT515" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT516" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_AS001_064" prefix="AMV" lnClass="GGIO" inst="1">
            <DOI name="AnIn001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV001" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV002" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV003" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV004" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV005" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV006" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV007" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV008" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV009" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV010" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV011" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV012" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV013" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV014" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV015" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV016" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn017">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV017" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn018">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV018" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn019">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV019" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn020">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV020" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn021">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV021" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn022">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV022" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn023">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV023" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn024">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV024" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn025">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV025" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn026">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV026" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn027">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV027" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn028">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV028" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn029">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV029" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn030">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV030" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn031">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV031" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn032">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV032" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn033">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV033" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn034">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV034" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn035">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV035" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn036">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV036" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn037">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV037" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn038">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV038" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn039">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV039" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn040">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV040" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn041">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV041" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn042">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV042" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn043">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV043" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn044">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV044" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn045">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV045" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn046">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV046" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn047">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV047" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn048">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV048" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn049">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV049" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn050">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV050" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn051">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV051" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn052">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV052" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn053">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV053" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn054">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV054" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn055">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV055" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn056">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV056" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn057">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV057" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn058">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV058" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn059">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV059" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn060">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV060" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn061">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV061" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn062">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV062" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn063">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV063" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn064">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV064" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS065_128" prefix="AMV" lnClass="GGIO" inst="2">
            <DOI name="AnIn065">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV065" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn066">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV066" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn067">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV067" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn068">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV068" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn069">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV069" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn070">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV070" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn071">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV071" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn072">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV072" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn073">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV073" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn074">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV074" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn075">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV075" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn076">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV076" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn077">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV077" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn078">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV078" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn079">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV079" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn080">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV080" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn081">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV081" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn082">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV082" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn083">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV083" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn084">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV084" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn085">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV085" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn086">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV086" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn087">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV087" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn088">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV088" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn089">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV089" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn090">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV090" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn091">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV091" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn092">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV092" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn093">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV093" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn094">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV094" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn095">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV095" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn096">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV096" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn097">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV097" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn098">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV098" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn099">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV099" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn100">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV100" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn101">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV101" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn102">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV102" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn103">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV103" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn104">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV104" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn105">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV105" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn106">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV106" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn107">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV107" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn108">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV108" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn109">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV109" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn110">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV110" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn111">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV111" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn112">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV112" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn113">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV113" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn114">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV114" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn115">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV115" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn116">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV116" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn117">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV117" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn118">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV118" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn119">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV119" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn120">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV120" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn121">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV121" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn122">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV122" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn123">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV123" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn124">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV124" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn125">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV125" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn126">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV126" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn127">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV127" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn128">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV128" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS016" prefix="PCN" lnClass="GGIO" inst="1">
            <DOI name="AnIn001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN01CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN02CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN03CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN04CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN05CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN06CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN07CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN08CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN09CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN10CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN11CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN12CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN13CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN14CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN15CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN16CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS016" prefix="ACN" lnClass="GGIO" inst="2">
            <DOI name="AnIn001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN01CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN02CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN03CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN04CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN05CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN06CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN07CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN08CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN09CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN10CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN11CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN12CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN13CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN14CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN15CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN16CV" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS64" prefix="LB" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:LB01" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:LB02" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:LB03" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:LB04" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:LB05" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:LB06" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:LB07" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:LB08" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:LB09" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:LB10" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:LB11" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:LB12" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:LB13" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:LB14" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:LB15" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:LB16" name="stVal" />
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:LB17" name="stVal" />
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:LB18" name="stVal" />
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:LB19" name="stVal" />
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:LB20" name="stVal" />
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:LB21" name="stVal" />
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:LB22" name="stVal" />
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:LB23" name="stVal" />
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:LB24" name="stVal" />
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:LB25" name="stVal" />
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:LB26" name="stVal" />
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:LB27" name="stVal" />
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:LB28" name="stVal" />
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:LB29" name="stVal" />
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:LB30" name="stVal" />
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:LB31" name="stVal" />
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:LB32" name="stVal" />
            </DOI>
            <DOI name="Ind33">
              <DAI esel:datasrc="db:LB33" name="stVal" />
            </DOI>
            <DOI name="Ind34">
              <DAI esel:datasrc="db:LB34" name="stVal" />
            </DOI>
            <DOI name="Ind35">
              <DAI esel:datasrc="db:LB35" name="stVal" />
            </DOI>
            <DOI name="Ind36">
              <DAI esel:datasrc="db:LB36" name="stVal" />
            </DOI>
            <DOI name="Ind37">
              <DAI esel:datasrc="db:LB37" name="stVal" />
            </DOI>
            <DOI name="Ind38">
              <DAI esel:datasrc="db:LB38" name="stVal" />
            </DOI>
            <DOI name="Ind39">
              <DAI esel:datasrc="db:LB39" name="stVal" />
            </DOI>
            <DOI name="Ind40">
              <DAI esel:datasrc="db:LB40" name="stVal" />
            </DOI>
            <DOI name="Ind41">
              <DAI esel:datasrc="db:LB41" name="stVal" />
            </DOI>
            <DOI name="Ind42">
              <DAI esel:datasrc="db:LB42" name="stVal" />
            </DOI>
            <DOI name="Ind43">
              <DAI esel:datasrc="db:LB43" name="stVal" />
            </DOI>
            <DOI name="Ind44">
              <DAI esel:datasrc="db:LB44" name="stVal" />
            </DOI>
            <DOI name="Ind45">
              <DAI esel:datasrc="db:LB45" name="stVal" />
            </DOI>
            <DOI name="Ind46">
              <DAI esel:datasrc="db:LB46" name="stVal" />
            </DOI>
            <DOI name="Ind47">
              <DAI esel:datasrc="db:LB47" name="stVal" />
            </DOI>
            <DOI name="Ind48">
              <DAI esel:datasrc="db:LB48" name="stVal" />
            </DOI>
            <DOI name="Ind49">
              <DAI esel:datasrc="db:LB49" name="stVal" />
            </DOI>
            <DOI name="Ind50">
              <DAI esel:datasrc="db:LB50" name="stVal" />
            </DOI>
            <DOI name="Ind51">
              <DAI esel:datasrc="db:LB51" name="stVal" />
            </DOI>
            <DOI name="Ind52">
              <DAI esel:datasrc="db:LB52" name="stVal" />
            </DOI>
            <DOI name="Ind53">
              <DAI esel:datasrc="db:LB53" name="stVal" />
            </DOI>
            <DOI name="Ind54">
              <DAI esel:datasrc="db:LB54" name="stVal" />
            </DOI>
            <DOI name="Ind55">
              <DAI esel:datasrc="db:LB55" name="stVal" />
            </DOI>
            <DOI name="Ind56">
              <DAI esel:datasrc="db:LB56" name="stVal" />
            </DOI>
            <DOI name="Ind57">
              <DAI esel:datasrc="db:LB57" name="stVal" />
            </DOI>
            <DOI name="Ind58">
              <DAI esel:datasrc="db:LB58" name="stVal" />
            </DOI>
            <DOI name="Ind59">
              <DAI esel:datasrc="db:LB59" name="stVal" />
            </DOI>
            <DOI name="Ind60">
              <DAI esel:datasrc="db:LB60" name="stVal" />
            </DOI>
            <DOI name="Ind61">
              <DAI esel:datasrc="db:LB61" name="stVal" />
            </DOI>
            <DOI name="Ind62">
              <DAI esel:datasrc="db:LB62" name="stVal" />
            </DOI>
            <DOI name="Ind63">
              <DAI esel:datasrc="db:LB63" name="stVal" />
            </DOI>
            <DOI name="Ind64">
              <DAI esel:datasrc="db:LB64" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS128" prefix="VB" lnClass="GGIO" inst="1">
            <DOI name="Ind001">
              <DAI esel:datasrc="db:VB001" name="stVal" />
            </DOI>
            <DOI name="Ind002">
              <DAI esel:datasrc="db:VB002" name="stVal" />
            </DOI>
            <DOI name="Ind003">
              <DAI esel:datasrc="db:VB003" name="stVal" />
            </DOI>
            <DOI name="Ind004">
              <DAI esel:datasrc="db:VB004" name="stVal" />
            </DOI>
            <DOI name="Ind005">
              <DAI esel:datasrc="db:VB005" name="stVal" />
            </DOI>
            <DOI name="Ind006">
              <DAI esel:datasrc="db:VB006" name="stVal" />
            </DOI>
            <DOI name="Ind007">
              <DAI esel:datasrc="db:VB007" name="stVal" />
            </DOI>
            <DOI name="Ind008">
              <DAI esel:datasrc="db:VB008" name="stVal" />
            </DOI>
            <DOI name="Ind009">
              <DAI esel:datasrc="db:VB009" name="stVal" />
            </DOI>
            <DOI name="Ind010">
              <DAI esel:datasrc="db:VB010" name="stVal" />
            </DOI>
            <DOI name="Ind011">
              <DAI esel:datasrc="db:VB011" name="stVal" />
            </DOI>
            <DOI name="Ind012">
              <DAI esel:datasrc="db:VB012" name="stVal" />
            </DOI>
            <DOI name="Ind013">
              <DAI esel:datasrc="db:VB013" name="stVal" />
            </DOI>
            <DOI name="Ind014">
              <DAI esel:datasrc="db:VB014" name="stVal" />
            </DOI>
            <DOI name="Ind015">
              <DAI esel:datasrc="db:VB015" name="stVal" />
            </DOI>
            <DOI name="Ind016">
              <DAI esel:datasrc="db:VB016" name="stVal" />
            </DOI>
            <DOI name="Ind017">
              <DAI esel:datasrc="db:VB017" name="stVal" />
            </DOI>
            <DOI name="Ind018">
              <DAI esel:datasrc="db:VB018" name="stVal" />
            </DOI>
            <DOI name="Ind019">
              <DAI esel:datasrc="db:VB019" name="stVal" />
            </DOI>
            <DOI name="Ind020">
              <DAI esel:datasrc="db:VB020" name="stVal" />
            </DOI>
            <DOI name="Ind021">
              <DAI esel:datasrc="db:VB021" name="stVal" />
            </DOI>
            <DOI name="Ind022">
              <DAI esel:datasrc="db:VB022" name="stVal" />
            </DOI>
            <DOI name="Ind023">
              <DAI esel:datasrc="db:VB023" name="stVal" />
            </DOI>
            <DOI name="Ind024">
              <DAI esel:datasrc="db:VB024" name="stVal" />
            </DOI>
            <DOI name="Ind025">
              <DAI esel:datasrc="db:VB025" name="stVal" />
            </DOI>
            <DOI name="Ind026">
              <DAI esel:datasrc="db:VB026" name="stVal" />
            </DOI>
            <DOI name="Ind027">
              <DAI esel:datasrc="db:VB027" name="stVal" />
            </DOI>
            <DOI name="Ind028">
              <DAI esel:datasrc="db:VB028" name="stVal" />
            </DOI>
            <DOI name="Ind029">
              <DAI esel:datasrc="db:VB029" name="stVal" />
            </DOI>
            <DOI name="Ind030">
              <DAI esel:datasrc="db:VB030" name="stVal" />
            </DOI>
            <DOI name="Ind031">
              <DAI esel:datasrc="db:VB031" name="stVal" />
            </DOI>
            <DOI name="Ind032">
              <DAI esel:datasrc="db:VB032" name="stVal" />
            </DOI>
            <DOI name="Ind033">
              <DAI esel:datasrc="db:VB033" name="stVal" />
            </DOI>
            <DOI name="Ind034">
              <DAI esel:datasrc="db:VB034" name="stVal" />
            </DOI>
            <DOI name="Ind035">
              <DAI esel:datasrc="db:VB035" name="stVal" />
            </DOI>
            <DOI name="Ind036">
              <DAI esel:datasrc="db:VB036" name="stVal" />
            </DOI>
            <DOI name="Ind037">
              <DAI esel:datasrc="db:VB037" name="stVal" />
            </DOI>
            <DOI name="Ind038">
              <DAI esel:datasrc="db:VB038" name="stVal" />
            </DOI>
            <DOI name="Ind039">
              <DAI esel:datasrc="db:VB039" name="stVal" />
            </DOI>
            <DOI name="Ind040">
              <DAI esel:datasrc="db:VB040" name="stVal" />
            </DOI>
            <DOI name="Ind041">
              <DAI esel:datasrc="db:VB041" name="stVal" />
            </DOI>
            <DOI name="Ind042">
              <DAI esel:datasrc="db:VB042" name="stVal" />
            </DOI>
            <DOI name="Ind043">
              <DAI esel:datasrc="db:VB043" name="stVal" />
            </DOI>
            <DOI name="Ind044">
              <DAI esel:datasrc="db:VB044" name="stVal" />
            </DOI>
            <DOI name="Ind045">
              <DAI esel:datasrc="db:VB045" name="stVal" />
            </DOI>
            <DOI name="Ind046">
              <DAI esel:datasrc="db:VB046" name="stVal" />
            </DOI>
            <DOI name="Ind047">
              <DAI esel:datasrc="db:VB047" name="stVal" />
            </DOI>
            <DOI name="Ind048">
              <DAI esel:datasrc="db:VB048" name="stVal" />
            </DOI>
            <DOI name="Ind049">
              <DAI esel:datasrc="db:VB049" name="stVal" />
            </DOI>
            <DOI name="Ind050">
              <DAI esel:datasrc="db:VB050" name="stVal" />
            </DOI>
            <DOI name="Ind051">
              <DAI esel:datasrc="db:VB051" name="stVal" />
            </DOI>
            <DOI name="Ind052">
              <DAI esel:datasrc="db:VB052" name="stVal" />
            </DOI>
            <DOI name="Ind053">
              <DAI esel:datasrc="db:VB053" name="stVal" />
            </DOI>
            <DOI name="Ind054">
              <DAI esel:datasrc="db:VB054" name="stVal" />
            </DOI>
            <DOI name="Ind055">
              <DAI esel:datasrc="db:VB055" name="stVal" />
            </DOI>
            <DOI name="Ind056">
              <DAI esel:datasrc="db:VB056" name="stVal" />
            </DOI>
            <DOI name="Ind057">
              <DAI esel:datasrc="db:VB057" name="stVal" />
            </DOI>
            <DOI name="Ind058">
              <DAI esel:datasrc="db:VB058" name="stVal" />
            </DOI>
            <DOI name="Ind059">
              <DAI esel:datasrc="db:VB059" name="stVal" />
            </DOI>
            <DOI name="Ind060">
              <DAI esel:datasrc="db:VB060" name="stVal" />
            </DOI>
            <DOI name="Ind061">
              <DAI esel:datasrc="db:VB061" name="stVal" />
            </DOI>
            <DOI name="Ind062">
              <DAI esel:datasrc="db:VB062" name="stVal" />
            </DOI>
            <DOI name="Ind063">
              <DAI esel:datasrc="db:VB063" name="stVal" />
            </DOI>
            <DOI name="Ind064">
              <DAI esel:datasrc="db:VB064" name="stVal" />
            </DOI>
            <DOI name="Ind065">
              <DAI esel:datasrc="db:VB065" name="stVal" />
            </DOI>
            <DOI name="Ind066">
              <DAI esel:datasrc="db:VB066" name="stVal" />
            </DOI>
            <DOI name="Ind067">
              <DAI esel:datasrc="db:VB067" name="stVal" />
            </DOI>
            <DOI name="Ind068">
              <DAI esel:datasrc="db:VB068" name="stVal" />
            </DOI>
            <DOI name="Ind069">
              <DAI esel:datasrc="db:VB069" name="stVal" />
            </DOI>
            <DOI name="Ind070">
              <DAI esel:datasrc="db:VB070" name="stVal" />
            </DOI>
            <DOI name="Ind071">
              <DAI esel:datasrc="db:VB071" name="stVal" />
            </DOI>
            <DOI name="Ind072">
              <DAI esel:datasrc="db:VB072" name="stVal" />
            </DOI>
            <DOI name="Ind073">
              <DAI esel:datasrc="db:VB073" name="stVal" />
            </DOI>
            <DOI name="Ind074">
              <DAI esel:datasrc="db:VB074" name="stVal" />
            </DOI>
            <DOI name="Ind075">
              <DAI esel:datasrc="db:VB075" name="stVal" />
            </DOI>
            <DOI name="Ind076">
              <DAI esel:datasrc="db:VB076" name="stVal" />
            </DOI>
            <DOI name="Ind077">
              <DAI esel:datasrc="db:VB077" name="stVal" />
            </DOI>
            <DOI name="Ind078">
              <DAI esel:datasrc="db:VB078" name="stVal" />
            </DOI>
            <DOI name="Ind079">
              <DAI esel:datasrc="db:VB079" name="stVal" />
            </DOI>
            <DOI name="Ind080">
              <DAI esel:datasrc="db:VB080" name="stVal" />
            </DOI>
            <DOI name="Ind081">
              <DAI esel:datasrc="db:VB081" name="stVal" />
            </DOI>
            <DOI name="Ind082">
              <DAI esel:datasrc="db:VB082" name="stVal" />
            </DOI>
            <DOI name="Ind083">
              <DAI esel:datasrc="db:VB083" name="stVal" />
            </DOI>
            <DOI name="Ind084">
              <DAI esel:datasrc="db:VB084" name="stVal" />
            </DOI>
            <DOI name="Ind085">
              <DAI esel:datasrc="db:VB085" name="stVal" />
            </DOI>
            <DOI name="Ind086">
              <DAI esel:datasrc="db:VB086" name="stVal" />
            </DOI>
            <DOI name="Ind087">
              <DAI esel:datasrc="db:VB087" name="stVal" />
            </DOI>
            <DOI name="Ind088">
              <DAI esel:datasrc="db:VB088" name="stVal" />
            </DOI>
            <DOI name="Ind089">
              <DAI esel:datasrc="db:VB089" name="stVal" />
            </DOI>
            <DOI name="Ind090">
              <DAI esel:datasrc="db:VB090" name="stVal" />
            </DOI>
            <DOI name="Ind091">
              <DAI esel:datasrc="db:VB091" name="stVal" />
            </DOI>
            <DOI name="Ind092">
              <DAI esel:datasrc="db:VB092" name="stVal" />
            </DOI>
            <DOI name="Ind093">
              <DAI esel:datasrc="db:VB093" name="stVal" />
            </DOI>
            <DOI name="Ind094">
              <DAI esel:datasrc="db:VB094" name="stVal" />
            </DOI>
            <DOI name="Ind095">
              <DAI esel:datasrc="db:VB095" name="stVal" />
            </DOI>
            <DOI name="Ind096">
              <DAI esel:datasrc="db:VB096" name="stVal" />
            </DOI>
            <DOI name="Ind097">
              <DAI esel:datasrc="db:VB097" name="stVal" />
            </DOI>
            <DOI name="Ind098">
              <DAI esel:datasrc="db:VB098" name="stVal" />
            </DOI>
            <DOI name="Ind099">
              <DAI esel:datasrc="db:VB099" name="stVal" />
            </DOI>
            <DOI name="Ind100">
              <DAI esel:datasrc="db:VB100" name="stVal" />
            </DOI>
            <DOI name="Ind101">
              <DAI esel:datasrc="db:VB101" name="stVal" />
            </DOI>
            <DOI name="Ind102">
              <DAI esel:datasrc="db:VB102" name="stVal" />
            </DOI>
            <DOI name="Ind103">
              <DAI esel:datasrc="db:VB103" name="stVal" />
            </DOI>
            <DOI name="Ind104">
              <DAI esel:datasrc="db:VB104" name="stVal" />
            </DOI>
            <DOI name="Ind105">
              <DAI esel:datasrc="db:VB105" name="stVal" />
            </DOI>
            <DOI name="Ind106">
              <DAI esel:datasrc="db:VB106" name="stVal" />
            </DOI>
            <DOI name="Ind107">
              <DAI esel:datasrc="db:VB107" name="stVal" />
            </DOI>
            <DOI name="Ind108">
              <DAI esel:datasrc="db:VB108" name="stVal" />
            </DOI>
            <DOI name="Ind109">
              <DAI esel:datasrc="db:VB109" name="stVal" />
            </DOI>
            <DOI name="Ind110">
              <DAI esel:datasrc="db:VB110" name="stVal" />
            </DOI>
            <DOI name="Ind111">
              <DAI esel:datasrc="db:VB111" name="stVal" />
            </DOI>
            <DOI name="Ind112">
              <DAI esel:datasrc="db:VB112" name="stVal" />
            </DOI>
            <DOI name="Ind113">
              <DAI esel:datasrc="db:VB113" name="stVal" />
            </DOI>
            <DOI name="Ind114">
              <DAI esel:datasrc="db:VB114" name="stVal" />
            </DOI>
            <DOI name="Ind115">
              <DAI esel:datasrc="db:VB115" name="stVal" />
            </DOI>
            <DOI name="Ind116">
              <DAI esel:datasrc="db:VB116" name="stVal" />
            </DOI>
            <DOI name="Ind117">
              <DAI esel:datasrc="db:VB117" name="stVal" />
            </DOI>
            <DOI name="Ind118">
              <DAI esel:datasrc="db:VB118" name="stVal" />
            </DOI>
            <DOI name="Ind119">
              <DAI esel:datasrc="db:VB119" name="stVal" />
            </DOI>
            <DOI name="Ind120">
              <DAI esel:datasrc="db:VB120" name="stVal" />
            </DOI>
            <DOI name="Ind121">
              <DAI esel:datasrc="db:VB121" name="stVal" />
            </DOI>
            <DOI name="Ind122">
              <DAI esel:datasrc="db:VB122" name="stVal" />
            </DOI>
            <DOI name="Ind123">
              <DAI esel:datasrc="db:VB123" name="stVal" />
            </DOI>
            <DOI name="Ind124">
              <DAI esel:datasrc="db:VB124" name="stVal" />
            </DOI>
            <DOI name="Ind125">
              <DAI esel:datasrc="db:VB125" name="stVal" />
            </DOI>
            <DOI name="Ind126">
              <DAI esel:datasrc="db:VB126" name="stVal" />
            </DOI>
            <DOI name="Ind127">
              <DAI esel:datasrc="db:VB127" name="stVal" />
            </DOI>
            <DOI name="Ind128">
              <DAI esel:datasrc="db:VB128" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS129_BS256" prefix="VB" lnClass="GGIO" inst="2">
            <DOI name="Ind129">
              <DAI esel:datasrc="db:VB129" name="stVal" />
            </DOI>
            <DOI name="Ind130">
              <DAI esel:datasrc="db:VB130" name="stVal" />
            </DOI>
            <DOI name="Ind131">
              <DAI esel:datasrc="db:VB131" name="stVal" />
            </DOI>
            <DOI name="Ind132">
              <DAI esel:datasrc="db:VB132" name="stVal" />
            </DOI>
            <DOI name="Ind133">
              <DAI esel:datasrc="db:VB133" name="stVal" />
            </DOI>
            <DOI name="Ind134">
              <DAI esel:datasrc="db:VB134" name="stVal" />
            </DOI>
            <DOI name="Ind135">
              <DAI esel:datasrc="db:VB135" name="stVal" />
            </DOI>
            <DOI name="Ind136">
              <DAI esel:datasrc="db:VB136" name="stVal" />
            </DOI>
            <DOI name="Ind137">
              <DAI esel:datasrc="db:VB137" name="stVal" />
            </DOI>
            <DOI name="Ind138">
              <DAI esel:datasrc="db:VB138" name="stVal" />
            </DOI>
            <DOI name="Ind139">
              <DAI esel:datasrc="db:VB139" name="stVal" />
            </DOI>
            <DOI name="Ind140">
              <DAI esel:datasrc="db:VB140" name="stVal" />
            </DOI>
            <DOI name="Ind141">
              <DAI esel:datasrc="db:VB141" name="stVal" />
            </DOI>
            <DOI name="Ind142">
              <DAI esel:datasrc="db:VB142" name="stVal" />
            </DOI>
            <DOI name="Ind143">
              <DAI esel:datasrc="db:VB143" name="stVal" />
            </DOI>
            <DOI name="Ind144">
              <DAI esel:datasrc="db:VB144" name="stVal" />
            </DOI>
            <DOI name="Ind145">
              <DAI esel:datasrc="db:VB145" name="stVal" />
            </DOI>
            <DOI name="Ind146">
              <DAI esel:datasrc="db:VB146" name="stVal" />
            </DOI>
            <DOI name="Ind147">
              <DAI esel:datasrc="db:VB147" name="stVal" />
            </DOI>
            <DOI name="Ind148">
              <DAI esel:datasrc="db:VB148" name="stVal" />
            </DOI>
            <DOI name="Ind149">
              <DAI esel:datasrc="db:VB149" name="stVal" />
            </DOI>
            <DOI name="Ind150">
              <DAI esel:datasrc="db:VB150" name="stVal" />
            </DOI>
            <DOI name="Ind151">
              <DAI esel:datasrc="db:VB151" name="stVal" />
            </DOI>
            <DOI name="Ind152">
              <DAI esel:datasrc="db:VB152" name="stVal" />
            </DOI>
            <DOI name="Ind153">
              <DAI esel:datasrc="db:VB153" name="stVal" />
            </DOI>
            <DOI name="Ind154">
              <DAI esel:datasrc="db:VB154" name="stVal" />
            </DOI>
            <DOI name="Ind155">
              <DAI esel:datasrc="db:VB155" name="stVal" />
            </DOI>
            <DOI name="Ind156">
              <DAI esel:datasrc="db:VB156" name="stVal" />
            </DOI>
            <DOI name="Ind157">
              <DAI esel:datasrc="db:VB157" name="stVal" />
            </DOI>
            <DOI name="Ind158">
              <DAI esel:datasrc="db:VB158" name="stVal" />
            </DOI>
            <DOI name="Ind159">
              <DAI esel:datasrc="db:VB159" name="stVal" />
            </DOI>
            <DOI name="Ind160">
              <DAI esel:datasrc="db:VB160" name="stVal" />
            </DOI>
            <DOI name="Ind161">
              <DAI esel:datasrc="db:VB161" name="stVal" />
            </DOI>
            <DOI name="Ind162">
              <DAI esel:datasrc="db:VB162" name="stVal" />
            </DOI>
            <DOI name="Ind163">
              <DAI esel:datasrc="db:VB163" name="stVal" />
            </DOI>
            <DOI name="Ind164">
              <DAI esel:datasrc="db:VB164" name="stVal" />
            </DOI>
            <DOI name="Ind165">
              <DAI esel:datasrc="db:VB165" name="stVal" />
            </DOI>
            <DOI name="Ind166">
              <DAI esel:datasrc="db:VB166" name="stVal" />
            </DOI>
            <DOI name="Ind167">
              <DAI esel:datasrc="db:VB167" name="stVal" />
            </DOI>
            <DOI name="Ind168">
              <DAI esel:datasrc="db:VB168" name="stVal" />
            </DOI>
            <DOI name="Ind169">
              <DAI esel:datasrc="db:VB169" name="stVal" />
            </DOI>
            <DOI name="Ind170">
              <DAI esel:datasrc="db:VB170" name="stVal" />
            </DOI>
            <DOI name="Ind171">
              <DAI esel:datasrc="db:VB171" name="stVal" />
            </DOI>
            <DOI name="Ind172">
              <DAI esel:datasrc="db:VB172" name="stVal" />
            </DOI>
            <DOI name="Ind173">
              <DAI esel:datasrc="db:VB173" name="stVal" />
            </DOI>
            <DOI name="Ind174">
              <DAI esel:datasrc="db:VB174" name="stVal" />
            </DOI>
            <DOI name="Ind175">
              <DAI esel:datasrc="db:VB175" name="stVal" />
            </DOI>
            <DOI name="Ind176">
              <DAI esel:datasrc="db:VB176" name="stVal" />
            </DOI>
            <DOI name="Ind177">
              <DAI esel:datasrc="db:VB177" name="stVal" />
            </DOI>
            <DOI name="Ind178">
              <DAI esel:datasrc="db:VB178" name="stVal" />
            </DOI>
            <DOI name="Ind179">
              <DAI esel:datasrc="db:VB179" name="stVal" />
            </DOI>
            <DOI name="Ind180">
              <DAI esel:datasrc="db:VB180" name="stVal" />
            </DOI>
            <DOI name="Ind181">
              <DAI esel:datasrc="db:VB181" name="stVal" />
            </DOI>
            <DOI name="Ind182">
              <DAI esel:datasrc="db:VB182" name="stVal" />
            </DOI>
            <DOI name="Ind183">
              <DAI esel:datasrc="db:VB183" name="stVal" />
            </DOI>
            <DOI name="Ind184">
              <DAI esel:datasrc="db:VB184" name="stVal" />
            </DOI>
            <DOI name="Ind185">
              <DAI esel:datasrc="db:VB185" name="stVal" />
            </DOI>
            <DOI name="Ind186">
              <DAI esel:datasrc="db:VB186" name="stVal" />
            </DOI>
            <DOI name="Ind187">
              <DAI esel:datasrc="db:VB187" name="stVal" />
            </DOI>
            <DOI name="Ind188">
              <DAI esel:datasrc="db:VB188" name="stVal" />
            </DOI>
            <DOI name="Ind189">
              <DAI esel:datasrc="db:VB189" name="stVal" />
            </DOI>
            <DOI name="Ind190">
              <DAI esel:datasrc="db:VB190" name="stVal" />
            </DOI>
            <DOI name="Ind191">
              <DAI esel:datasrc="db:VB191" name="stVal" />
            </DOI>
            <DOI name="Ind192">
              <DAI esel:datasrc="db:VB192" name="stVal" />
            </DOI>
            <DOI name="Ind193">
              <DAI esel:datasrc="db:VB193" name="stVal" />
            </DOI>
            <DOI name="Ind194">
              <DAI esel:datasrc="db:VB194" name="stVal" />
            </DOI>
            <DOI name="Ind195">
              <DAI esel:datasrc="db:VB195" name="stVal" />
            </DOI>
            <DOI name="Ind196">
              <DAI esel:datasrc="db:VB196" name="stVal" />
            </DOI>
            <DOI name="Ind197">
              <DAI esel:datasrc="db:VB197" name="stVal" />
            </DOI>
            <DOI name="Ind198">
              <DAI esel:datasrc="db:VB198" name="stVal" />
            </DOI>
            <DOI name="Ind199">
              <DAI esel:datasrc="db:VB199" name="stVal" />
            </DOI>
            <DOI name="Ind200">
              <DAI esel:datasrc="db:VB200" name="stVal" />
            </DOI>
            <DOI name="Ind201">
              <DAI esel:datasrc="db:VB201" name="stVal" />
            </DOI>
            <DOI name="Ind202">
              <DAI esel:datasrc="db:VB202" name="stVal" />
            </DOI>
            <DOI name="Ind203">
              <DAI esel:datasrc="db:VB203" name="stVal" />
            </DOI>
            <DOI name="Ind204">
              <DAI esel:datasrc="db:VB204" name="stVal" />
            </DOI>
            <DOI name="Ind205">
              <DAI esel:datasrc="db:VB205" name="stVal" />
            </DOI>
            <DOI name="Ind206">
              <DAI esel:datasrc="db:VB206" name="stVal" />
            </DOI>
            <DOI name="Ind207">
              <DAI esel:datasrc="db:VB207" name="stVal" />
            </DOI>
            <DOI name="Ind208">
              <DAI esel:datasrc="db:VB208" name="stVal" />
            </DOI>
            <DOI name="Ind209">
              <DAI esel:datasrc="db:VB209" name="stVal" />
            </DOI>
            <DOI name="Ind210">
              <DAI esel:datasrc="db:VB210" name="stVal" />
            </DOI>
            <DOI name="Ind211">
              <DAI esel:datasrc="db:VB211" name="stVal" />
            </DOI>
            <DOI name="Ind212">
              <DAI esel:datasrc="db:VB212" name="stVal" />
            </DOI>
            <DOI name="Ind213">
              <DAI esel:datasrc="db:VB213" name="stVal" />
            </DOI>
            <DOI name="Ind214">
              <DAI esel:datasrc="db:VB214" name="stVal" />
            </DOI>
            <DOI name="Ind215">
              <DAI esel:datasrc="db:VB215" name="stVal" />
            </DOI>
            <DOI name="Ind216">
              <DAI esel:datasrc="db:VB216" name="stVal" />
            </DOI>
            <DOI name="Ind217">
              <DAI esel:datasrc="db:VB217" name="stVal" />
            </DOI>
            <DOI name="Ind218">
              <DAI esel:datasrc="db:VB218" name="stVal" />
            </DOI>
            <DOI name="Ind219">
              <DAI esel:datasrc="db:VB219" name="stVal" />
            </DOI>
            <DOI name="Ind220">
              <DAI esel:datasrc="db:VB220" name="stVal" />
            </DOI>
            <DOI name="Ind221">
              <DAI esel:datasrc="db:VB221" name="stVal" />
            </DOI>
            <DOI name="Ind222">
              <DAI esel:datasrc="db:VB222" name="stVal" />
            </DOI>
            <DOI name="Ind223">
              <DAI esel:datasrc="db:VB223" name="stVal" />
            </DOI>
            <DOI name="Ind224">
              <DAI esel:datasrc="db:VB224" name="stVal" />
            </DOI>
            <DOI name="Ind225">
              <DAI esel:datasrc="db:VB225" name="stVal" />
            </DOI>
            <DOI name="Ind226">
              <DAI esel:datasrc="db:VB226" name="stVal" />
            </DOI>
            <DOI name="Ind227">
              <DAI esel:datasrc="db:VB227" name="stVal" />
            </DOI>
            <DOI name="Ind228">
              <DAI esel:datasrc="db:VB228" name="stVal" />
            </DOI>
            <DOI name="Ind229">
              <DAI esel:datasrc="db:VB229" name="stVal" />
            </DOI>
            <DOI name="Ind230">
              <DAI esel:datasrc="db:VB230" name="stVal" />
            </DOI>
            <DOI name="Ind231">
              <DAI esel:datasrc="db:VB231" name="stVal" />
            </DOI>
            <DOI name="Ind232">
              <DAI esel:datasrc="db:VB232" name="stVal" />
            </DOI>
            <DOI name="Ind233">
              <DAI esel:datasrc="db:VB233" name="stVal" />
            </DOI>
            <DOI name="Ind234">
              <DAI esel:datasrc="db:VB234" name="stVal" />
            </DOI>
            <DOI name="Ind235">
              <DAI esel:datasrc="db:VB235" name="stVal" />
            </DOI>
            <DOI name="Ind236">
              <DAI esel:datasrc="db:VB236" name="stVal" />
            </DOI>
            <DOI name="Ind237">
              <DAI esel:datasrc="db:VB237" name="stVal" />
            </DOI>
            <DOI name="Ind238">
              <DAI esel:datasrc="db:VB238" name="stVal" />
            </DOI>
            <DOI name="Ind239">
              <DAI esel:datasrc="db:VB239" name="stVal" />
            </DOI>
            <DOI name="Ind240">
              <DAI esel:datasrc="db:VB240" name="stVal" />
            </DOI>
            <DOI name="Ind241">
              <DAI esel:datasrc="db:VB241" name="stVal" />
            </DOI>
            <DOI name="Ind242">
              <DAI esel:datasrc="db:VB242" name="stVal" />
            </DOI>
            <DOI name="Ind243">
              <DAI esel:datasrc="db:VB243" name="stVal" />
            </DOI>
            <DOI name="Ind244">
              <DAI esel:datasrc="db:VB244" name="stVal" />
            </DOI>
            <DOI name="Ind245">
              <DAI esel:datasrc="db:VB245" name="stVal" />
            </DOI>
            <DOI name="Ind246">
              <DAI esel:datasrc="db:VB246" name="stVal" />
            </DOI>
            <DOI name="Ind247">
              <DAI esel:datasrc="db:VB247" name="stVal" />
            </DOI>
            <DOI name="Ind248">
              <DAI esel:datasrc="db:VB248" name="stVal" />
            </DOI>
            <DOI name="Ind249">
              <DAI esel:datasrc="db:VB249" name="stVal" />
            </DOI>
            <DOI name="Ind250">
              <DAI esel:datasrc="db:VB250" name="stVal" />
            </DOI>
            <DOI name="Ind251">
              <DAI esel:datasrc="db:VB251" name="stVal" />
            </DOI>
            <DOI name="Ind252">
              <DAI esel:datasrc="db:VB252" name="stVal" />
            </DOI>
            <DOI name="Ind253">
              <DAI esel:datasrc="db:VB253" name="stVal" />
            </DOI>
            <DOI name="Ind254">
              <DAI esel:datasrc="db:VB254" name="stVal" />
            </DOI>
            <DOI name="Ind255">
              <DAI esel:datasrc="db:VB255" name="stVal" />
            </DOI>
            <DOI name="Ind256">
              <DAI esel:datasrc="db:VB256" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_AR001_032" prefix="RA" lnClass="GGIO" inst="1">
            <DOI name="Ra001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA001" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA002" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA003" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA004" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA005" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA006" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA007" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA008" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA009" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA010" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA011" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA012" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA013" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA014" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA015" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA016" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra017">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA017" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra018">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA018" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra019">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA019" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra020">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA020" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra021">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA021" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra022">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA022" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra023">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA023" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra024">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA024" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra025">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA025" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra026">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA026" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra027">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA027" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra028">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA028" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra029">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA029" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra030">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA030" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra031">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA031" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra032">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA032" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR033_064" prefix="RA" lnClass="GGIO" inst="2">
            <DOI name="Ra033">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA033" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra034">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA034" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra035">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA035" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra036">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA036" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra037">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA037" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra038">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA038" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra039">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA039" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra040">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA040" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra041">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA041" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra042">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA042" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra043">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA043" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra044">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA044" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra045">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA045" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra046">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA046" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra047">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA047" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra048">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA048" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra049">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA049" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra050">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA050" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra051">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA051" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra052">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA052" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra053">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA053" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra054">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA054" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra055">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA055" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra056">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA056" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra057">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA057" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra058">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA058" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra059">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA059" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra060">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA060" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra061">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA061" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra062">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA062" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra063">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA063" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra064">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA064" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR065_096" prefix="RA" lnClass="GGIO" inst="3">
            <DOI name="Ra065">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA065" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra066">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA066" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra067">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA067" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra068">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA068" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra069">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA069" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra070">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA070" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra071">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA071" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra072">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA072" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra073">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA073" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra074">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA074" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra075">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA075" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra076">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA076" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra077">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA077" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra078">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA078" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra079">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA079" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra080">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA080" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra081">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA081" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra082">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA082" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra083">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA083" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra084">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA084" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra085">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA085" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra086">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA086" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra087">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA087" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra088">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA088" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra089">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA089" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra090">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA090" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra091">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA091" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra092">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA092" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra093">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA093" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra094">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA094" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra095">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA095" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra096">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA096" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR097_128" prefix="RA" lnClass="GGIO" inst="4">
            <DOI name="Ra097">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA097" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra098">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA098" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra099">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA099" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra100">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA100" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra101">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA101" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra102">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA102" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra103">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA103" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra104">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA104" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra105">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA105" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra106">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA106" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra107">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA107" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra108">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA108" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra109">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA109" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra110">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA110" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra111">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA111" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra112">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA112" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra113">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA113" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra114">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA114" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra115">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA115" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra116">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA116" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra117">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA117" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra118">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA118" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra119">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA119" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra120">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA120" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra121">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA121" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra122">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA122" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra123">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA123" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra124">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA124" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra125">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA125" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra126">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA126" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra127">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA127" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra128">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA128" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR129_160" prefix="RA" lnClass="GGIO" inst="5">
            <DOI name="Ra129">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA129" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra130">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA130" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra131">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA131" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra132">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA132" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra133">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA133" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra134">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA134" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra135">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA135" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra136">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA136" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra137">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA137" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra138">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA138" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra139">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA139" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra140">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA140" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra141">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA141" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra142">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA142" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra143">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA143" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra144">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA144" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra145">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA145" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra146">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA146" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra147">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA147" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra148">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA148" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra149">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA149" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra150">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA150" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra151">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA151" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra152">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA152" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra153">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA153" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra154">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA154" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra155">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA155" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra156">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA156" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra157">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA157" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra158">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA158" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra159">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA159" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra160">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA160" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR161_192" prefix="RA" lnClass="GGIO" inst="6">
            <DOI name="Ra161">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA161" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra162">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA162" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra163">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA163" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra164">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA164" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra165">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA165" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra166">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA166" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra167">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA167" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra168">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA168" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra169">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA169" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra170">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA170" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra171">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA171" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra172">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA172" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra173">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA173" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra174">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA174" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra175">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA175" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra176">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA176" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra177">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA177" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra178">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA178" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra179">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA179" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra180">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA180" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra181">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA181" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra182">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA182" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra183">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA183" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra184">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA184" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra185">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA185" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra186">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA186" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra187">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA187" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra188">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA188" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra189">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA189" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra190">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA190" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra191">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA191" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra192">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA192" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR193_224" prefix="RA" lnClass="GGIO" inst="7">
            <DOI name="Ra193">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA193" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra194">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA194" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra195">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA195" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra196">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA196" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra197">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA197" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra198">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA198" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra199">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA199" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra200">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA200" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra201">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA201" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra202">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA202" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra203">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA203" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra204">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA204" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra205">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA205" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra206">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA206" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra207">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA207" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra208">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA208" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra209">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA209" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra210">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA210" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra211">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA211" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra212">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA212" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra213">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA213" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra214">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA214" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra215">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA215" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra216">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA216" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra217">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA217" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra218">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA218" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra219">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA219" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra220">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA220" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra221">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA221" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra222">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA222" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra223">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA223" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra224">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA224" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR225_256" prefix="RA" lnClass="GGIO" inst="8">
            <DOI name="Ra225">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA225" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra226">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA226" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra227">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA227" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra228">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA228" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra229">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA229" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra230">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA230" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra231">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA231" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra232">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA232" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra233">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA233" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra234">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA234" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra235">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA235" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra236">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA236" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra237">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA237" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra238">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA238" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra239">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA239" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra240">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA240" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra241">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA241" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra242">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA242" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra243">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA243" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra244">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA244" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra245">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA245" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra246">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA246" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra247">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA247" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra248">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA248" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra249">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA249" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra250">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA250" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra251">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA251" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra252">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA252" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra253">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA253" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra254">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA254" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra255">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA255" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Ra256">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA256" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_ARO01_32" prefix="RAO" lnClass="GGIO" inst="1">
            <DOI name="Rao01">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO01" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao02">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO02" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao03">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO03" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao04">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO04" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao05">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO05" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao06">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO06" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao07">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO07" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao08">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO08" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao09">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO09" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao10">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO10" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao11">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO11" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao12">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO12" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao13">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO13" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao14">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO14" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao15">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO15" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao16">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO16" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao17">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO17" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao18">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO18" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao19">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO19" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao20">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO20" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao21">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO21" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao22">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO22" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao23">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO23" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao24">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO24" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao25">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO25" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao26">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO26" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao27">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO27" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao28">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO28" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao29">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO29" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao30">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO30" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao31">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO31" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao32">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO32" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_ARO33_64" prefix="RAO" lnClass="GGIO" inst="2">
            <DOI name="Rao33">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO33" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao34">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO34" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao35">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO35" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao36">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO36" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao37">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO37" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao38">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO38" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao39">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO39" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao40">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO40" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao41">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO41" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao42">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO42" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao43">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO43" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao44">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO44" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao45">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO45" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao46">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO46" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao47">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO47" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao48">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO48" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao49">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO49" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao50">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO50" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao51">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO51" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao52">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO52" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao53">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO53" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao54">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO54" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao55">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO55" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao56">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO56" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao57">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO57" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao58">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO58" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao59">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO59" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao60">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO60" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao61">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO61" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao62">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO62" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao63">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO63" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
            <DOI name="Rao64">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO64" name="f" />
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val />
                </DAI>
                <DAI name="multiplier">
                  <Val />
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS12" prefix="RTDH" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RTD01ST" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RTD02ST" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RTD03ST" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RTD04ST" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RTD05ST" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RTD06ST" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RTD07ST" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RTD08ST" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:RTD09ST" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:RTD10ST" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:RTD11ST" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:RTD12ST" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS10" prefix="ETH" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:P5ASEL" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:LINK5A" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:P5BSEL" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:LINK5B" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:P5CSEL" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:LINK5C" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:P5DSEL" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:LINK5D" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:LNKFAIL" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:LNKFL2" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" prefix="SG" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:SG1" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:SG2" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:SG3" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:SG4" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:SG5" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:SG6" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:CHSG" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:GRPSW" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" prefix="RTCA" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RTCAD01" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RTCAD02" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RTCAD03" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RTCAD04" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RTCAD05" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RTCAD06" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RTCAD07" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RTCAD08" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:RTCAD09" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:RTCAD10" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:RTCAD11" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:RTCAD12" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:RTCAD13" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:RTCAD14" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:RTCAD15" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:RTCAD16" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" prefix="RTCB" lnClass="GGIO" inst="2">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RTCBD01" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RTCBD02" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RTCBD03" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RTCBD04" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RTCBD05" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RTCBD06" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RTCBD07" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RTCBD08" name="stVal" />
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:RTCBD09" name="stVal" />
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:RTCBD10" name="stVal" />
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:RTCBD11" name="stVal" />
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:RTCBD12" name="stVal" />
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:RTCBD13" name="stVal" />
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:RTCBD14" name="stVal" />
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:RTCBD15" name="stVal" />
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:RTCBD16" name="stVal" />
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" prefix="ALM" lnClass="GGIO" inst="1">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:SALARM" name="stVal" />
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:HALARM" name="stVal" />
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:BADPASS" name="stVal" />
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:SETCHG" name="stVal" />
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:GRPSW" name="stVal" />
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:ACCESS" name="stVal" />
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PASSDIS" name="stVal" />
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:BRKENAB" name="stVal" />
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <DataTypeTemplates>
    <LNodeType id="LN0_Root_Cmb" desc="Control of IEC 61850 Mode/Behavior - Enabled" lnClass="LLN0">
      <DO name="Mod" type="ENC_direct_enhanced" />
      <DO name="Beh" type="behENS" />
      <DO name="Health" type="healthENS" />
      <DO name="NamPlt" type="LPL_LN0" />
      <DO name="Loc" type="SPS_0" />
      <DO name="LocSta" type="SPC_direct_enhanced" />
      <DO name="MltLev" type="SPG_0" />
    </LNodeType>
    <LNodeType id="LPHD2" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_0" />
      <DO name="PhyHealth" type="healthENS" />
      <DO name="Proxy" type="SPS_0" />
      <DO name="Sim" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="LCCH1" lnClass="LCCH">
      <DO name="Beh" type="behENS" />
      <DO name="NamPlt" type="LPL_0" />
      <DO name="ChLiv" type="SPS_0" />
      <DO name="RedChLiv" type="SPS_0" />
      <DO name="RxCnt" type="BCR_0" />
      <DO name="RedRxCnt" type="BCR_0" />
      <DO name="TxCnt" type="BCR_0" />
      <DO name="FerCh" type="INS_0" />
      <DO name="RedFerCh" type="INS_0" />
      <DO name="RsStat" type="SPC_direct_enhanced_2" />
      <DO name="NetMod" type="ENG_0" />
    </LNodeType>
    <LNodeType id="LGOS1" lnClass="LGOS">
      <DO name="Beh" type="behENS" />
      <DO name="NamPlt" type="LPL_0" />
      <DO name="NdsCom" type="SPS_2" />
      <DO name="St" type="SPS_2" />
      <DO name="SimSt" type="SPS_2" />
      <DO name="LastStNum" type="INS_1" />
      <DO name="LastSqNum" type="INS_2" />
      <DO name="LastTal" type="INS_2" />
      <DO name="ConfRevNum" type="INS_1" />
      <DO name="RxConfRevNum" type="INS_1" />
      <DO name="ErrSt" type="LgosENS" />
      <DO name="OosCnt" type="INS_2" />
      <DO name="TalCnt" type="INS_2" />
      <DO name="DecErrCnt" type="INS_2" />
      <DO name="BufOvflCnt" type="INS_2" />
      <DO name="MsgLosCnt" type="INS_2" />
      <DO name="MaxMsgLos" type="INS_2" />
      <DO name="TotDwnTm" type="MV_2" />
      <DO name="InvQualCnt" type="INS_2" />
      <DO name="MaxDwnTm" type="MV_2" />
      <DO name="RsStat" type="SPC_direct_enhanced_2" />
      <DO name="GoCBRef" type="ORG_0" />
      <DO name="DatSet" type="ORG_1" />
      <DO name="GoID" type="VSG_0" />
      <DO name="Addr" type="VSG_0" />
      <DO name="VlanID" type="ING_1" />
      <DO name="VlanPri" type="ING_1" />
      <DO name="AppID" type="ING_1" />
    </LNodeType>
    <LNodeType id="LSVS1" lnClass="LSVS">
      <DO name="Beh" type="behENS" />
      <DO name="NamPlt" type="LPL_0" />
      <DO name="NdsCom" type="SPS_3" />
      <DO name="St" type="SPS_3" />
      <DO name="SimSt" type="SPS_3" />
      <DO name="ConfRevNum" type="INS_3" />
      <DO name="RxConfRevNum" type="INS_3" />
      <DO name="SmpSynch" type="INS_4" />
      <DO name="ErrSt" type="LsvsENS" />
      <DO name="NetwDly" type="MV_4" />
      <DO name="OosCnt" type="INS_4" />
      <DO name="DscdCnt" type="INS_4" />
      <DO name="IntpCnt" type="INS_4" />
      <DO name="TotDwnTm" type="MV_4" />
      <DO name="MaxDwnTm" type="MV_4" />
      <DO name="RsStat" type="SPC_direct_enhanced_2" />
      <DO name="SvCBRef" type="ORG_0" />
      <DO name="DatSet" type="ORG_1" />
      <DO name="SvID" type="VSG_0" />
      <DO name="Addr" type="VSG_0" />
      <DO name="VlanID" type="ING_1" />
      <DO name="VlanPri" type="ING_1" />
      <DO name="AppID" type="ING_1" />
    </LNodeType>
    <LNodeType id="LTIM1" lnClass="LTIM">
      <DO name="Beh" type="behENS" />
      <DO name="NamPlt" type="LPL_0" />
      <DO name="TmDT" type="SPS_0" />
      <DO name="TmOfsTmm" type="ING_0" />
      <DO name="TmUseDT" type="SPG_0" />
      <DO name="TmChgDT" type="TSG_0" />
      <DO name="TmChgST" type="TSG_0" />
    </LNodeType>
    <LNodeType id="LTMS1" lnClass="LTMS">
      <DO name="Beh" type="behENS" />
      <DO name="NamPlt" type="LPL_0" />
      <DO name="TmAcc" type="INS_0" />
      <DO name="TmSrc" type="VSS_0" />
      <DO name="SelTmSrcTyp" type="LtmsENS_0" />
      <DO name="SelTmSyn" type="LtmsENS_1" />
      <DO name="SelTmSynLkd" type="LtmsENS_2" />
      <DO name="SelTmTosPer" type="MV_1" />
    </LNodeType>
    <LNodeType id="LTRK1" lnClass="LTRK">
      <DO name="Beh" type="behENS" />
      <DO name="SpcTrk" type="BoolCTS" />
      <DO name="DpcTrk" type="BoolCTS" />
      <DO name="EncTrk1" type="EnumCTS_0" />
      <DO name="BrcbTrk" type="BTS_0" />
      <DO name="UrcbTrk" type="UTS_0" />
      <DO name="SgcbTrk" type="STS_0" />
    </LNodeType>
    <LNodeType id="LN0" lnClass="LLN0">
      <DO name="Mod" type="modENC" />
      <DO name="Beh" type="behENS" />
      <DO name="NamPlt" type="LPL_LN0" />
      <DO name="Loc" type="SPS_0" />
      <DO name="LocSta" type="SPC_0" />
      <DO name="GrRef" type="ORG_0" />
      <DO name="MltLev" type="SPG_0" />
    </LNodeType>
    <LNodeType id="LPHD1" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_0" />
      <DO name="PhyHealth" type="healthENS" />
      <DO name="Proxy" type="SPS_0" />
    </LNodeType>
    <LNodeType id="PIOC1" lnClass="PIOC">
      <DO name="Beh" type="behENS" />
      <DO name="Op" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PTOC1" lnClass="PTOC">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
      <DO name="Op" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PTUV1" lnClass="PTUV">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
      <DO name="Op" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PTOV1" lnClass="PTOV">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
      <DO name="Op" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PTOV2" lnClass="PTOV">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
    </LNodeType>
    <LNodeType id="PHIZ1" lnClass="PHIZ">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
      <DO name="Op" type="ACT_1" />
    </LNodeType>
    <LNodeType id="PHIZ2" lnClass="PHIZ">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
      <DO name="Op" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PSCH1" lnClass="PSCH">
      <DO name="Beh" type="behENS" />
      <DO name="TxPrm" type="ACT_0" />
      <DO name="RxPrm1" type="ACT_0" />
      <DO name="Op" type="ACT_0" />
      <DO name="EchoWei" type="SPS_0" />
      <DO name="EchoWeiOp" type="SPS_0" />
      <DO name="TxBlk" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PSCH2" lnClass="PSCH">
      <DO name="Beh" type="behENS" />
      <DO name="TxPrm" type="ACT_0" />
      <DO name="RxPrm1" type="ACT_0" />
      <DO name="Op" type="ACT_0" />
      <DO name="TxBlk" type="ACT_0" />
    </LNodeType>
    <LNodeType id="PTRC1" lnClass="PTRC">
      <DO name="Beh" type="behENS" />
      <DO name="Tr" type="ACT_0" />
    </LNodeType>
    <LNodeType id="RDIR1" lnClass="RDIR">
      <DO name="Beh" type="behENS" />
      <DO name="Dir" type="ACD_0" />
    </LNodeType>
    <LNodeType id="RBRF1" lnClass="RBRF">
      <DO name="Beh" type="behENS" />
      <DO name="Str" type="ACD_0" />
      <DO name="OpEx" type="ACT_1" />
      <DO name="OpIn" type="ACT_0" />
    </LNodeType>
    <LNodeType id="XCBR1" lnClass="XCBR">
      <DO name="Beh" type="behENS" />
      <DO name="Loc" type="SPS_0" />
      <DO name="TukRackPos" type="SPS_1" />
      <DO name="TukTestPos" type="SPS_1" />
      <DO name="OpCnt" type="INS_0" />
      <DO name="Pos" type="DPC_0" />
      <DO name="BlkOpn" type="SPC_0" />
      <DO name="BlkCls" type="SPC_0" />
      <DO name="CBOpCap" type="CBOpCapENS" />
    </LNodeType>
    <LNodeType id="XSWI1" lnClass="XSWI">
      <DO name="Beh" type="behENS" />
      <DO name="Loc" type="SPS_0" />
      <DO name="SwBayCtlEn" type="SPS_1" />
      <DO name="OpCnt" type="INS_0" />
      <DO name="Pos" type="DPC_0" />
      <DO name="BlkOpn" type="SPC_0" />
      <DO name="BlkCls" type="SPC_0" />
      <DO name="SwTyp" type="SwTypENS" />
      <DO name="SwOpCap" type="SwOpCapENS" />
    </LNodeType>
    <LNodeType id="CILO1" lnClass="CILO">
      <DO name="Beh" type="behENS" />
      <DO name="EnaOpn" type="SPS_0" />
      <DO name="EnaCls" type="SPS_0" />
    </LNodeType>
    <LNodeType id="CSWI1" lnClass="CSWI">
      <DO name="Beh" type="behENS" />
      <DO name="Loc" type="SPS_0" />
      <DO name="LocSta" type="SPC_0" />
      <DO name="OpOpn" type="ACT_0" />
      <DO name="OpCls" type="ACT_0" />
      <DO name="Pos" type="DPC_direct_enhanced" />
      <DO name="InRef1" type="ORG_0" />
      <DO name="InRef2" type="ORG_0" />
    </LNodeType>
    <LNodeType id="RFLO1" lnClass="RFLO">
      <DO name="Beh" type="behENS" />
      <DO name="FltZ" type="CMV_0" />
      <DO name="FltDiskm" type="MV_0" />
      <DO name="A" type="WYE_2" />
      <DO name="Anseq" type="CMV_2" />
      <DO name="FltTyp" type="FltTypENS" />
      <DO name="FltCaus" type="FltCausENS" />
    </LNodeType>
    <LNodeType id="RDRE1" lnClass="RDRE">
      <DO name="Beh" type="behENS" />
      <DO name="RcdMade" type="SPS_0" />
      <DO name="FltNum" type="INS_0" />
      <DO name="FltTyp" type="FltTypENS" />
      <DO name="FltCaus" type="FltCausENS" />
    </LNodeType>
    <LNodeType id="PTTR1" lnClass="PTTR">
      <DO name="Beh" type="behENS" />
      <DO name="Op" type="ACT_0" />
      <DO name="AlmThm" type="SPS_0" />
    </LNodeType>
    <LNodeType id="SCBR1" lnClass="SCBR">
      <DO name="Beh" type="behENS" />
      <DO name="ColOpn" type="SPS_0" />
      <DO name="AbrAlm" type="SPS_0" />
      <DO name="MechTmAlm" type="SPS_1" />
      <DO name="OpTmAlm" type="SPS_0" />
      <DO name="AccAbr" type="MV_0" />
    </LNodeType>
    <LNodeType id="MMXU1" desc="MET3P" lnClass="MMXU">
      <DO name="Beh" type="behENS" />
      <DO name="TotW" type="MV_0" />
      <DO name="TotVAr" type="MV_0" />
      <DO name="TotVA" type="MV_0" />
      <DO name="TotPF" type="MV_0" />
      <DO name="Hz" type="MV_0" />
      <DO name="PhV" type="WYE_1" />
      <DO name="A" type="WYE_1" />
      <DO name="W" type="WYE_3" />
      <DO name="VAr" type="WYE_3" />
      <DO name="PF" type="WYE_3" />
    </LNodeType>
    <LNodeType id="MMXU2" desc="METBK" lnClass="MMXU">
      <DO name="Beh" type="behENS" />
      <DO name="A" type="WYE_1" />
    </LNodeType>
    <LNodeType id="MSQI1" lnClass="MSQI">
      <DO name="Beh" type="behENS" />
      <DO name="SeqA" type="SEQ_0" />
      <DO name="SeqV" type="SEQ_0" />
    </LNodeType>
    <LNodeType id="ZBAT1" lnClass="ZBAT">
      <DO name="Beh" type="behENS" />
      <DO name="Vol" type="MV_0" />
      <DO name="BatWrn" type="SPS_1" />
      <DO name="BatFail" type="SPS_1" />
      <DO name="BatGndFlt" type="SPS_1" />
      <DO name="BatDvAlm" type="SPS_1" />
    </LNodeType>
    <LNodeType id="MDST1" lnClass="MDST">
      <DO name="Beh" type="behENS_1" />
      <DO name="NamPlt" type="LPL_1" />
      <DO name="A" type="WYE_0" />
      <DO name="W" type="WYE_0" />
      <DO name="VAr" type="WYE_0" />
      <DO name="VA" type="WYE_0" />
      <DO name="SeqA" type="SEQ_1" />
      <DO name="TotW" type="MV_3" />
      <DO name="TotVAr" type="MV_3" />
      <DO name="TotVA" type="MV_3" />
      <DO name="SupWh" type="BCR_1" />
      <DO name="DmdWh" type="BCR_1" />
    </LNodeType>
    <LNodeType id="MDST2" lnClass="MDST">
      <DO name="Beh" type="behENS_1" />
      <DO name="NamPlt" type="LPL_1" />
      <DO name="A" type="WYE_0" />
      <DO name="W" type="WYE_0" />
      <DO name="VAr" type="WYE_0" />
      <DO name="VA" type="WYE_0" />
      <DO name="SeqA" type="SEQ_1" />
      <DO name="TotW" type="MV_3" />
      <DO name="TotVAr" type="MV_3" />
      <DO name="TotVA" type="MV_3" />
    </LNodeType>
    <LNodeType id="GGIO_BC01_08" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO01" type="SPC_direct_enhanced" />
      <DO name="SPCSO02" type="SPC_direct_enhanced" />
      <DO name="SPCSO03" type="SPC_direct_enhanced" />
      <DO name="SPCSO04" type="SPC_direct_enhanced" />
      <DO name="SPCSO05" type="SPC_direct_enhanced" />
      <DO name="SPCSO06" type="SPC_direct_enhanced" />
      <DO name="SPCSO07" type="SPC_direct_enhanced" />
      <DO name="SPCSO08" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC09_16" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO09" type="SPC_direct_enhanced" />
      <DO name="SPCSO10" type="SPC_direct_enhanced" />
      <DO name="SPCSO11" type="SPC_direct_enhanced" />
      <DO name="SPCSO12" type="SPC_direct_enhanced" />
      <DO name="SPCSO13" type="SPC_direct_enhanced" />
      <DO name="SPCSO14" type="SPC_direct_enhanced" />
      <DO name="SPCSO15" type="SPC_direct_enhanced" />
      <DO name="SPCSO16" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC17_24" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO17" type="SPC_direct_enhanced" />
      <DO name="SPCSO18" type="SPC_direct_enhanced" />
      <DO name="SPCSO19" type="SPC_direct_enhanced" />
      <DO name="SPCSO20" type="SPC_direct_enhanced" />
      <DO name="SPCSO21" type="SPC_direct_enhanced" />
      <DO name="SPCSO22" type="SPC_direct_enhanced" />
      <DO name="SPCSO23" type="SPC_direct_enhanced" />
      <DO name="SPCSO24" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC25_32" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO25" type="SPC_direct_enhanced" />
      <DO name="SPCSO26" type="SPC_direct_enhanced" />
      <DO name="SPCSO27" type="SPC_direct_enhanced" />
      <DO name="SPCSO28" type="SPC_direct_enhanced" />
      <DO name="SPCSO29" type="SPC_direct_enhanced" />
      <DO name="SPCSO30" type="SPC_direct_enhanced" />
      <DO name="SPCSO31" type="SPC_direct_enhanced" />
      <DO name="SPCSO32" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC33_40" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO33" type="SPC_direct_enhanced" />
      <DO name="SPCSO34" type="SPC_direct_enhanced" />
      <DO name="SPCSO35" type="SPC_direct_enhanced" />
      <DO name="SPCSO36" type="SPC_direct_enhanced" />
      <DO name="SPCSO37" type="SPC_direct_enhanced" />
      <DO name="SPCSO38" type="SPC_direct_enhanced" />
      <DO name="SPCSO39" type="SPC_direct_enhanced" />
      <DO name="SPCSO40" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC41_48" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO41" type="SPC_direct_enhanced" />
      <DO name="SPCSO42" type="SPC_direct_enhanced" />
      <DO name="SPCSO43" type="SPC_direct_enhanced" />
      <DO name="SPCSO44" type="SPC_direct_enhanced" />
      <DO name="SPCSO45" type="SPC_direct_enhanced" />
      <DO name="SPCSO46" type="SPC_direct_enhanced" />
      <DO name="SPCSO47" type="SPC_direct_enhanced" />
      <DO name="SPCSO48" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC49_56" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO49" type="SPC_direct_enhanced" />
      <DO name="SPCSO50" type="SPC_direct_enhanced" />
      <DO name="SPCSO51" type="SPC_direct_enhanced" />
      <DO name="SPCSO52" type="SPC_direct_enhanced" />
      <DO name="SPCSO53" type="SPC_direct_enhanced" />
      <DO name="SPCSO54" type="SPC_direct_enhanced" />
      <DO name="SPCSO55" type="SPC_direct_enhanced" />
      <DO name="SPCSO56" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BC57_64" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="SPCSO57" type="SPC_direct_enhanced" />
      <DO name="SPCSO58" type="SPC_direct_enhanced" />
      <DO name="SPCSO59" type="SPC_direct_enhanced" />
      <DO name="SPCSO60" type="SPC_direct_enhanced" />
      <DO name="SPCSO61" type="SPC_direct_enhanced" />
      <DO name="SPCSO62" type="SPC_direct_enhanced" />
      <DO name="SPCSO63" type="SPC_direct_enhanced" />
      <DO name="SPCSO64" type="SPC_direct_enhanced" />
    </LNodeType>
    <LNodeType id="GGIO_BS64" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
      <DO name="Ind11" type="SPS_0" />
      <DO name="Ind12" type="SPS_0" />
      <DO name="Ind13" type="SPS_0" />
      <DO name="Ind14" type="SPS_0" />
      <DO name="Ind15" type="SPS_0" />
      <DO name="Ind16" type="SPS_0" />
      <DO name="Ind17" type="SPS_0" />
      <DO name="Ind18" type="SPS_0" />
      <DO name="Ind19" type="SPS_0" />
      <DO name="Ind20" type="SPS_0" />
      <DO name="Ind21" type="SPS_0" />
      <DO name="Ind22" type="SPS_0" />
      <DO name="Ind23" type="SPS_0" />
      <DO name="Ind24" type="SPS_0" />
      <DO name="Ind25" type="SPS_0" />
      <DO name="Ind26" type="SPS_0" />
      <DO name="Ind27" type="SPS_0" />
      <DO name="Ind28" type="SPS_0" />
      <DO name="Ind29" type="SPS_0" />
      <DO name="Ind30" type="SPS_0" />
      <DO name="Ind31" type="SPS_0" />
      <DO name="Ind32" type="SPS_0" />
      <DO name="Ind33" type="SPS_0" />
      <DO name="Ind34" type="SPS_0" />
      <DO name="Ind35" type="SPS_0" />
      <DO name="Ind36" type="SPS_0" />
      <DO name="Ind37" type="SPS_0" />
      <DO name="Ind38" type="SPS_0" />
      <DO name="Ind39" type="SPS_0" />
      <DO name="Ind40" type="SPS_0" />
      <DO name="Ind41" type="SPS_0" />
      <DO name="Ind42" type="SPS_0" />
      <DO name="Ind43" type="SPS_0" />
      <DO name="Ind44" type="SPS_0" />
      <DO name="Ind45" type="SPS_0" />
      <DO name="Ind46" type="SPS_0" />
      <DO name="Ind47" type="SPS_0" />
      <DO name="Ind48" type="SPS_0" />
      <DO name="Ind49" type="SPS_0" />
      <DO name="Ind50" type="SPS_0" />
      <DO name="Ind51" type="SPS_0" />
      <DO name="Ind52" type="SPS_0" />
      <DO name="Ind53" type="SPS_0" />
      <DO name="Ind54" type="SPS_0" />
      <DO name="Ind55" type="SPS_0" />
      <DO name="Ind56" type="SPS_0" />
      <DO name="Ind57" type="SPS_0" />
      <DO name="Ind58" type="SPS_0" />
      <DO name="Ind59" type="SPS_0" />
      <DO name="Ind60" type="SPS_0" />
      <DO name="Ind61" type="SPS_0" />
      <DO name="Ind62" type="SPS_0" />
      <DO name="Ind63" type="SPS_0" />
      <DO name="Ind64" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS32" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
      <DO name="Ind11" type="SPS_0" />
      <DO name="Ind12" type="SPS_0" />
      <DO name="Ind13" type="SPS_0" />
      <DO name="Ind14" type="SPS_0" />
      <DO name="Ind15" type="SPS_0" />
      <DO name="Ind16" type="SPS_0" />
      <DO name="Ind17" type="SPS_0" />
      <DO name="Ind18" type="SPS_0" />
      <DO name="Ind19" type="SPS_0" />
      <DO name="Ind20" type="SPS_0" />
      <DO name="Ind21" type="SPS_0" />
      <DO name="Ind22" type="SPS_0" />
      <DO name="Ind23" type="SPS_0" />
      <DO name="Ind24" type="SPS_0" />
      <DO name="Ind25" type="SPS_0" />
      <DO name="Ind26" type="SPS_0" />
      <DO name="Ind27" type="SPS_0" />
      <DO name="Ind28" type="SPS_0" />
      <DO name="Ind29" type="SPS_0" />
      <DO name="Ind30" type="SPS_0" />
      <DO name="Ind31" type="SPS_0" />
      <DO name="Ind32" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_AS64" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="AnIn01" type="MV_0" />
      <DO name="AnIn02" type="MV_0" />
      <DO name="AnIn03" type="MV_0" />
      <DO name="AnIn04" type="MV_0" />
      <DO name="AnIn05" type="MV_0" />
      <DO name="AnIn06" type="MV_0" />
      <DO name="AnIn07" type="MV_0" />
      <DO name="AnIn08" type="MV_0" />
      <DO name="AnIn09" type="MV_0" />
      <DO name="AnIn10" type="MV_0" />
      <DO name="AnIn11" type="MV_0" />
      <DO name="AnIn12" type="MV_0" />
      <DO name="AnIn13" type="MV_0" />
      <DO name="AnIn14" type="MV_0" />
      <DO name="AnIn15" type="MV_0" />
      <DO name="AnIn16" type="MV_0" />
      <DO name="AnIn17" type="MV_0" />
      <DO name="AnIn18" type="MV_0" />
      <DO name="AnIn19" type="MV_0" />
      <DO name="AnIn20" type="MV_0" />
      <DO name="AnIn21" type="MV_0" />
      <DO name="AnIn22" type="MV_0" />
      <DO name="AnIn23" type="MV_0" />
      <DO name="AnIn24" type="MV_0" />
      <DO name="AnIn25" type="MV_0" />
      <DO name="AnIn26" type="MV_0" />
      <DO name="AnIn27" type="MV_0" />
      <DO name="AnIn28" type="MV_0" />
      <DO name="AnIn29" type="MV_0" />
      <DO name="AnIn30" type="MV_0" />
      <DO name="AnIn31" type="MV_0" />
      <DO name="AnIn32" type="MV_0" />
      <DO name="AnIn33" type="MV_0" />
      <DO name="AnIn34" type="MV_0" />
      <DO name="AnIn35" type="MV_0" />
      <DO name="AnIn36" type="MV_0" />
      <DO name="AnIn37" type="MV_0" />
      <DO name="AnIn38" type="MV_0" />
      <DO name="AnIn39" type="MV_0" />
      <DO name="AnIn40" type="MV_0" />
      <DO name="AnIn41" type="MV_0" />
      <DO name="AnIn42" type="MV_0" />
      <DO name="AnIn43" type="MV_0" />
      <DO name="AnIn44" type="MV_0" />
      <DO name="AnIn45" type="MV_0" />
      <DO name="AnIn46" type="MV_0" />
      <DO name="AnIn47" type="MV_0" />
      <DO name="AnIn48" type="MV_0" />
      <DO name="AnIn49" type="MV_0" />
      <DO name="AnIn50" type="MV_0" />
      <DO name="AnIn51" type="MV_0" />
      <DO name="AnIn52" type="MV_0" />
      <DO name="AnIn53" type="MV_0" />
      <DO name="AnIn54" type="MV_0" />
      <DO name="AnIn55" type="MV_0" />
      <DO name="AnIn56" type="MV_0" />
      <DO name="AnIn57" type="MV_0" />
      <DO name="AnIn58" type="MV_0" />
      <DO name="AnIn59" type="MV_0" />
      <DO name="AnIn60" type="MV_0" />
      <DO name="AnIn61" type="MV_0" />
      <DO name="AnIn62" type="MV_0" />
      <DO name="AnIn63" type="MV_0" />
      <DO name="AnIn64" type="MV_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS128" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind001" type="SPS_0" />
      <DO name="Ind002" type="SPS_0" />
      <DO name="Ind003" type="SPS_0" />
      <DO name="Ind004" type="SPS_0" />
      <DO name="Ind005" type="SPS_0" />
      <DO name="Ind006" type="SPS_0" />
      <DO name="Ind007" type="SPS_0" />
      <DO name="Ind008" type="SPS_0" />
      <DO name="Ind009" type="SPS_0" />
      <DO name="Ind010" type="SPS_0" />
      <DO name="Ind011" type="SPS_0" />
      <DO name="Ind012" type="SPS_0" />
      <DO name="Ind013" type="SPS_0" />
      <DO name="Ind014" type="SPS_0" />
      <DO name="Ind015" type="SPS_0" />
      <DO name="Ind016" type="SPS_0" />
      <DO name="Ind017" type="SPS_0" />
      <DO name="Ind018" type="SPS_0" />
      <DO name="Ind019" type="SPS_0" />
      <DO name="Ind020" type="SPS_0" />
      <DO name="Ind021" type="SPS_0" />
      <DO name="Ind022" type="SPS_0" />
      <DO name="Ind023" type="SPS_0" />
      <DO name="Ind024" type="SPS_0" />
      <DO name="Ind025" type="SPS_0" />
      <DO name="Ind026" type="SPS_0" />
      <DO name="Ind027" type="SPS_0" />
      <DO name="Ind028" type="SPS_0" />
      <DO name="Ind029" type="SPS_0" />
      <DO name="Ind030" type="SPS_0" />
      <DO name="Ind031" type="SPS_0" />
      <DO name="Ind032" type="SPS_0" />
      <DO name="Ind033" type="SPS_0" />
      <DO name="Ind034" type="SPS_0" />
      <DO name="Ind035" type="SPS_0" />
      <DO name="Ind036" type="SPS_0" />
      <DO name="Ind037" type="SPS_0" />
      <DO name="Ind038" type="SPS_0" />
      <DO name="Ind039" type="SPS_0" />
      <DO name="Ind040" type="SPS_0" />
      <DO name="Ind041" type="SPS_0" />
      <DO name="Ind042" type="SPS_0" />
      <DO name="Ind043" type="SPS_0" />
      <DO name="Ind044" type="SPS_0" />
      <DO name="Ind045" type="SPS_0" />
      <DO name="Ind046" type="SPS_0" />
      <DO name="Ind047" type="SPS_0" />
      <DO name="Ind048" type="SPS_0" />
      <DO name="Ind049" type="SPS_0" />
      <DO name="Ind050" type="SPS_0" />
      <DO name="Ind051" type="SPS_0" />
      <DO name="Ind052" type="SPS_0" />
      <DO name="Ind053" type="SPS_0" />
      <DO name="Ind054" type="SPS_0" />
      <DO name="Ind055" type="SPS_0" />
      <DO name="Ind056" type="SPS_0" />
      <DO name="Ind057" type="SPS_0" />
      <DO name="Ind058" type="SPS_0" />
      <DO name="Ind059" type="SPS_0" />
      <DO name="Ind060" type="SPS_0" />
      <DO name="Ind061" type="SPS_0" />
      <DO name="Ind062" type="SPS_0" />
      <DO name="Ind063" type="SPS_0" />
      <DO name="Ind064" type="SPS_0" />
      <DO name="Ind065" type="SPS_0" />
      <DO name="Ind066" type="SPS_0" />
      <DO name="Ind067" type="SPS_0" />
      <DO name="Ind068" type="SPS_0" />
      <DO name="Ind069" type="SPS_0" />
      <DO name="Ind070" type="SPS_0" />
      <DO name="Ind071" type="SPS_0" />
      <DO name="Ind072" type="SPS_0" />
      <DO name="Ind073" type="SPS_0" />
      <DO name="Ind074" type="SPS_0" />
      <DO name="Ind075" type="SPS_0" />
      <DO name="Ind076" type="SPS_0" />
      <DO name="Ind077" type="SPS_0" />
      <DO name="Ind078" type="SPS_0" />
      <DO name="Ind079" type="SPS_0" />
      <DO name="Ind080" type="SPS_0" />
      <DO name="Ind081" type="SPS_0" />
      <DO name="Ind082" type="SPS_0" />
      <DO name="Ind083" type="SPS_0" />
      <DO name="Ind084" type="SPS_0" />
      <DO name="Ind085" type="SPS_0" />
      <DO name="Ind086" type="SPS_0" />
      <DO name="Ind087" type="SPS_0" />
      <DO name="Ind088" type="SPS_0" />
      <DO name="Ind089" type="SPS_0" />
      <DO name="Ind090" type="SPS_0" />
      <DO name="Ind091" type="SPS_0" />
      <DO name="Ind092" type="SPS_0" />
      <DO name="Ind093" type="SPS_0" />
      <DO name="Ind094" type="SPS_0" />
      <DO name="Ind095" type="SPS_0" />
      <DO name="Ind096" type="SPS_0" />
      <DO name="Ind097" type="SPS_0" />
      <DO name="Ind098" type="SPS_0" />
      <DO name="Ind099" type="SPS_0" />
      <DO name="Ind100" type="SPS_0" />
      <DO name="Ind101" type="SPS_0" />
      <DO name="Ind102" type="SPS_0" />
      <DO name="Ind103" type="SPS_0" />
      <DO name="Ind104" type="SPS_0" />
      <DO name="Ind105" type="SPS_0" />
      <DO name="Ind106" type="SPS_0" />
      <DO name="Ind107" type="SPS_0" />
      <DO name="Ind108" type="SPS_0" />
      <DO name="Ind109" type="SPS_0" />
      <DO name="Ind110" type="SPS_0" />
      <DO name="Ind111" type="SPS_0" />
      <DO name="Ind112" type="SPS_0" />
      <DO name="Ind113" type="SPS_0" />
      <DO name="Ind114" type="SPS_0" />
      <DO name="Ind115" type="SPS_0" />
      <DO name="Ind116" type="SPS_0" />
      <DO name="Ind117" type="SPS_0" />
      <DO name="Ind118" type="SPS_0" />
      <DO name="Ind119" type="SPS_0" />
      <DO name="Ind120" type="SPS_0" />
      <DO name="Ind121" type="SPS_0" />
      <DO name="Ind122" type="SPS_0" />
      <DO name="Ind123" type="SPS_0" />
      <DO name="Ind124" type="SPS_0" />
      <DO name="Ind125" type="SPS_0" />
      <DO name="Ind126" type="SPS_0" />
      <DO name="Ind127" type="SPS_0" />
      <DO name="Ind128" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS26" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
      <DO name="Ind11" type="SPS_0" />
      <DO name="Ind12" type="SPS_0" />
      <DO name="Ind13" type="SPS_0" />
      <DO name="Ind14" type="SPS_0" />
      <DO name="Ind15" type="SPS_0" />
      <DO name="Ind16" type="SPS_0" />
      <DO name="Ind17" type="SPS_0" />
      <DO name="Ind18" type="SPS_0" />
      <DO name="Ind19" type="SPS_0" />
      <DO name="Ind20" type="SPS_0" />
      <DO name="Ind21" type="SPS_0" />
      <DO name="Ind22" type="SPS_0" />
      <DO name="Ind23" type="SPS_0" />
      <DO name="Ind24" type="SPS_0" />
      <DO name="Ind25" type="SPS_0" />
      <DO name="Ind26" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS12" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
      <DO name="Ind11" type="SPS_0" />
      <DO name="Ind12" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS08" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS24" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
      <DO name="Ind11" type="SPS_0" />
      <DO name="Ind12" type="SPS_0" />
      <DO name="Ind13" type="SPS_0" />
      <DO name="Ind14" type="SPS_0" />
      <DO name="Ind15" type="SPS_0" />
      <DO name="Ind16" type="SPS_0" />
      <DO name="Ind17" type="SPS_0" />
      <DO name="Ind18" type="SPS_0" />
      <DO name="Ind19" type="SPS_0" />
      <DO name="Ind20" type="SPS_0" />
      <DO name="Ind21" type="SPS_0" />
      <DO name="Ind22" type="SPS_0" />
      <DO name="Ind23" type="SPS_0" />
      <DO name="Ind24" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS16" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
      <DO name="Ind11" type="SPS_0" />
      <DO name="Ind12" type="SPS_0" />
      <DO name="Ind13" type="SPS_0" />
      <DO name="Ind14" type="SPS_0" />
      <DO name="Ind15" type="SPS_0" />
      <DO name="Ind16" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_AS001_064" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="AnIn001" type="MV_0" />
      <DO name="AnIn002" type="MV_0" />
      <DO name="AnIn003" type="MV_0" />
      <DO name="AnIn004" type="MV_0" />
      <DO name="AnIn005" type="MV_0" />
      <DO name="AnIn006" type="MV_0" />
      <DO name="AnIn007" type="MV_0" />
      <DO name="AnIn008" type="MV_0" />
      <DO name="AnIn009" type="MV_0" />
      <DO name="AnIn010" type="MV_0" />
      <DO name="AnIn011" type="MV_0" />
      <DO name="AnIn012" type="MV_0" />
      <DO name="AnIn013" type="MV_0" />
      <DO name="AnIn014" type="MV_0" />
      <DO name="AnIn015" type="MV_0" />
      <DO name="AnIn016" type="MV_0" />
      <DO name="AnIn017" type="MV_0" />
      <DO name="AnIn018" type="MV_0" />
      <DO name="AnIn019" type="MV_0" />
      <DO name="AnIn020" type="MV_0" />
      <DO name="AnIn021" type="MV_0" />
      <DO name="AnIn022" type="MV_0" />
      <DO name="AnIn023" type="MV_0" />
      <DO name="AnIn024" type="MV_0" />
      <DO name="AnIn025" type="MV_0" />
      <DO name="AnIn026" type="MV_0" />
      <DO name="AnIn027" type="MV_0" />
      <DO name="AnIn028" type="MV_0" />
      <DO name="AnIn029" type="MV_0" />
      <DO name="AnIn030" type="MV_0" />
      <DO name="AnIn031" type="MV_0" />
      <DO name="AnIn032" type="MV_0" />
      <DO name="AnIn033" type="MV_0" />
      <DO name="AnIn034" type="MV_0" />
      <DO name="AnIn035" type="MV_0" />
      <DO name="AnIn036" type="MV_0" />
      <DO name="AnIn037" type="MV_0" />
      <DO name="AnIn038" type="MV_0" />
      <DO name="AnIn039" type="MV_0" />
      <DO name="AnIn040" type="MV_0" />
      <DO name="AnIn041" type="MV_0" />
      <DO name="AnIn042" type="MV_0" />
      <DO name="AnIn043" type="MV_0" />
      <DO name="AnIn044" type="MV_0" />
      <DO name="AnIn045" type="MV_0" />
      <DO name="AnIn046" type="MV_0" />
      <DO name="AnIn047" type="MV_0" />
      <DO name="AnIn048" type="MV_0" />
      <DO name="AnIn049" type="MV_0" />
      <DO name="AnIn050" type="MV_0" />
      <DO name="AnIn051" type="MV_0" />
      <DO name="AnIn052" type="MV_0" />
      <DO name="AnIn053" type="MV_0" />
      <DO name="AnIn054" type="MV_0" />
      <DO name="AnIn055" type="MV_0" />
      <DO name="AnIn056" type="MV_0" />
      <DO name="AnIn057" type="MV_0" />
      <DO name="AnIn058" type="MV_0" />
      <DO name="AnIn059" type="MV_0" />
      <DO name="AnIn060" type="MV_0" />
      <DO name="AnIn061" type="MV_0" />
      <DO name="AnIn062" type="MV_0" />
      <DO name="AnIn063" type="MV_0" />
      <DO name="AnIn064" type="MV_0" />
    </LNodeType>
    <LNodeType id="GGIO_AS065_128" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="AnIn065" type="MV_0" />
      <DO name="AnIn066" type="MV_0" />
      <DO name="AnIn067" type="MV_0" />
      <DO name="AnIn068" type="MV_0" />
      <DO name="AnIn069" type="MV_0" />
      <DO name="AnIn070" type="MV_0" />
      <DO name="AnIn071" type="MV_0" />
      <DO name="AnIn072" type="MV_0" />
      <DO name="AnIn073" type="MV_0" />
      <DO name="AnIn074" type="MV_0" />
      <DO name="AnIn075" type="MV_0" />
      <DO name="AnIn076" type="MV_0" />
      <DO name="AnIn077" type="MV_0" />
      <DO name="AnIn078" type="MV_0" />
      <DO name="AnIn079" type="MV_0" />
      <DO name="AnIn080" type="MV_0" />
      <DO name="AnIn081" type="MV_0" />
      <DO name="AnIn082" type="MV_0" />
      <DO name="AnIn083" type="MV_0" />
      <DO name="AnIn084" type="MV_0" />
      <DO name="AnIn085" type="MV_0" />
      <DO name="AnIn086" type="MV_0" />
      <DO name="AnIn087" type="MV_0" />
      <DO name="AnIn088" type="MV_0" />
      <DO name="AnIn089" type="MV_0" />
      <DO name="AnIn090" type="MV_0" />
      <DO name="AnIn091" type="MV_0" />
      <DO name="AnIn092" type="MV_0" />
      <DO name="AnIn093" type="MV_0" />
      <DO name="AnIn094" type="MV_0" />
      <DO name="AnIn095" type="MV_0" />
      <DO name="AnIn096" type="MV_0" />
      <DO name="AnIn097" type="MV_0" />
      <DO name="AnIn098" type="MV_0" />
      <DO name="AnIn099" type="MV_0" />
      <DO name="AnIn100" type="MV_0" />
      <DO name="AnIn101" type="MV_0" />
      <DO name="AnIn102" type="MV_0" />
      <DO name="AnIn103" type="MV_0" />
      <DO name="AnIn104" type="MV_0" />
      <DO name="AnIn105" type="MV_0" />
      <DO name="AnIn106" type="MV_0" />
      <DO name="AnIn107" type="MV_0" />
      <DO name="AnIn108" type="MV_0" />
      <DO name="AnIn109" type="MV_0" />
      <DO name="AnIn110" type="MV_0" />
      <DO name="AnIn111" type="MV_0" />
      <DO name="AnIn112" type="MV_0" />
      <DO name="AnIn113" type="MV_0" />
      <DO name="AnIn114" type="MV_0" />
      <DO name="AnIn115" type="MV_0" />
      <DO name="AnIn116" type="MV_0" />
      <DO name="AnIn117" type="MV_0" />
      <DO name="AnIn118" type="MV_0" />
      <DO name="AnIn119" type="MV_0" />
      <DO name="AnIn120" type="MV_0" />
      <DO name="AnIn121" type="MV_0" />
      <DO name="AnIn122" type="MV_0" />
      <DO name="AnIn123" type="MV_0" />
      <DO name="AnIn124" type="MV_0" />
      <DO name="AnIn125" type="MV_0" />
      <DO name="AnIn126" type="MV_0" />
      <DO name="AnIn127" type="MV_0" />
      <DO name="AnIn128" type="MV_0" />
    </LNodeType>
    <LNodeType id="GGIO_AS016" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="AnIn001" type="MV_0" />
      <DO name="AnIn002" type="MV_0" />
      <DO name="AnIn003" type="MV_0" />
      <DO name="AnIn004" type="MV_0" />
      <DO name="AnIn005" type="MV_0" />
      <DO name="AnIn006" type="MV_0" />
      <DO name="AnIn007" type="MV_0" />
      <DO name="AnIn008" type="MV_0" />
      <DO name="AnIn009" type="MV_0" />
      <DO name="AnIn010" type="MV_0" />
      <DO name="AnIn011" type="MV_0" />
      <DO name="AnIn012" type="MV_0" />
      <DO name="AnIn013" type="MV_0" />
      <DO name="AnIn014" type="MV_0" />
      <DO name="AnIn015" type="MV_0" />
      <DO name="AnIn016" type="MV_0" />
    </LNodeType>
    <LNodeType id="GGIO_BS129_BS256" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind129" type="SPS_0" />
      <DO name="Ind130" type="SPS_0" />
      <DO name="Ind131" type="SPS_0" />
      <DO name="Ind132" type="SPS_0" />
      <DO name="Ind133" type="SPS_0" />
      <DO name="Ind134" type="SPS_0" />
      <DO name="Ind135" type="SPS_0" />
      <DO name="Ind136" type="SPS_0" />
      <DO name="Ind137" type="SPS_0" />
      <DO name="Ind138" type="SPS_0" />
      <DO name="Ind139" type="SPS_0" />
      <DO name="Ind140" type="SPS_0" />
      <DO name="Ind141" type="SPS_0" />
      <DO name="Ind142" type="SPS_0" />
      <DO name="Ind143" type="SPS_0" />
      <DO name="Ind144" type="SPS_0" />
      <DO name="Ind145" type="SPS_0" />
      <DO name="Ind146" type="SPS_0" />
      <DO name="Ind147" type="SPS_0" />
      <DO name="Ind148" type="SPS_0" />
      <DO name="Ind149" type="SPS_0" />
      <DO name="Ind150" type="SPS_0" />
      <DO name="Ind151" type="SPS_0" />
      <DO name="Ind152" type="SPS_0" />
      <DO name="Ind153" type="SPS_0" />
      <DO name="Ind154" type="SPS_0" />
      <DO name="Ind155" type="SPS_0" />
      <DO name="Ind156" type="SPS_0" />
      <DO name="Ind157" type="SPS_0" />
      <DO name="Ind158" type="SPS_0" />
      <DO name="Ind159" type="SPS_0" />
      <DO name="Ind160" type="SPS_0" />
      <DO name="Ind161" type="SPS_0" />
      <DO name="Ind162" type="SPS_0" />
      <DO name="Ind163" type="SPS_0" />
      <DO name="Ind164" type="SPS_0" />
      <DO name="Ind165" type="SPS_0" />
      <DO name="Ind166" type="SPS_0" />
      <DO name="Ind167" type="SPS_0" />
      <DO name="Ind168" type="SPS_0" />
      <DO name="Ind169" type="SPS_0" />
      <DO name="Ind170" type="SPS_0" />
      <DO name="Ind171" type="SPS_0" />
      <DO name="Ind172" type="SPS_0" />
      <DO name="Ind173" type="SPS_0" />
      <DO name="Ind174" type="SPS_0" />
      <DO name="Ind175" type="SPS_0" />
      <DO name="Ind176" type="SPS_0" />
      <DO name="Ind177" type="SPS_0" />
      <DO name="Ind178" type="SPS_0" />
      <DO name="Ind179" type="SPS_0" />
      <DO name="Ind180" type="SPS_0" />
      <DO name="Ind181" type="SPS_0" />
      <DO name="Ind182" type="SPS_0" />
      <DO name="Ind183" type="SPS_0" />
      <DO name="Ind184" type="SPS_0" />
      <DO name="Ind185" type="SPS_0" />
      <DO name="Ind186" type="SPS_0" />
      <DO name="Ind187" type="SPS_0" />
      <DO name="Ind188" type="SPS_0" />
      <DO name="Ind189" type="SPS_0" />
      <DO name="Ind190" type="SPS_0" />
      <DO name="Ind191" type="SPS_0" />
      <DO name="Ind192" type="SPS_0" />
      <DO name="Ind193" type="SPS_0" />
      <DO name="Ind194" type="SPS_0" />
      <DO name="Ind195" type="SPS_0" />
      <DO name="Ind196" type="SPS_0" />
      <DO name="Ind197" type="SPS_0" />
      <DO name="Ind198" type="SPS_0" />
      <DO name="Ind199" type="SPS_0" />
      <DO name="Ind200" type="SPS_0" />
      <DO name="Ind201" type="SPS_0" />
      <DO name="Ind202" type="SPS_0" />
      <DO name="Ind203" type="SPS_0" />
      <DO name="Ind204" type="SPS_0" />
      <DO name="Ind205" type="SPS_0" />
      <DO name="Ind206" type="SPS_0" />
      <DO name="Ind207" type="SPS_0" />
      <DO name="Ind208" type="SPS_0" />
      <DO name="Ind209" type="SPS_0" />
      <DO name="Ind210" type="SPS_0" />
      <DO name="Ind211" type="SPS_0" />
      <DO name="Ind212" type="SPS_0" />
      <DO name="Ind213" type="SPS_0" />
      <DO name="Ind214" type="SPS_0" />
      <DO name="Ind215" type="SPS_0" />
      <DO name="Ind216" type="SPS_0" />
      <DO name="Ind217" type="SPS_0" />
      <DO name="Ind218" type="SPS_0" />
      <DO name="Ind219" type="SPS_0" />
      <DO name="Ind220" type="SPS_0" />
      <DO name="Ind221" type="SPS_0" />
      <DO name="Ind222" type="SPS_0" />
      <DO name="Ind223" type="SPS_0" />
      <DO name="Ind224" type="SPS_0" />
      <DO name="Ind225" type="SPS_0" />
      <DO name="Ind226" type="SPS_0" />
      <DO name="Ind227" type="SPS_0" />
      <DO name="Ind228" type="SPS_0" />
      <DO name="Ind229" type="SPS_0" />
      <DO name="Ind230" type="SPS_0" />
      <DO name="Ind231" type="SPS_0" />
      <DO name="Ind232" type="SPS_0" />
      <DO name="Ind233" type="SPS_0" />
      <DO name="Ind234" type="SPS_0" />
      <DO name="Ind235" type="SPS_0" />
      <DO name="Ind236" type="SPS_0" />
      <DO name="Ind237" type="SPS_0" />
      <DO name="Ind238" type="SPS_0" />
      <DO name="Ind239" type="SPS_0" />
      <DO name="Ind240" type="SPS_0" />
      <DO name="Ind241" type="SPS_0" />
      <DO name="Ind242" type="SPS_0" />
      <DO name="Ind243" type="SPS_0" />
      <DO name="Ind244" type="SPS_0" />
      <DO name="Ind245" type="SPS_0" />
      <DO name="Ind246" type="SPS_0" />
      <DO name="Ind247" type="SPS_0" />
      <DO name="Ind248" type="SPS_0" />
      <DO name="Ind249" type="SPS_0" />
      <DO name="Ind250" type="SPS_0" />
      <DO name="Ind251" type="SPS_0" />
      <DO name="Ind252" type="SPS_0" />
      <DO name="Ind253" type="SPS_0" />
      <DO name="Ind254" type="SPS_0" />
      <DO name="Ind255" type="SPS_0" />
      <DO name="Ind256" type="SPS_0" />
    </LNodeType>
    <LNodeType id="GGIO_AR001_032" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra001" type="MV_1" />
      <DO name="Ra002" type="MV_1" />
      <DO name="Ra003" type="MV_1" />
      <DO name="Ra004" type="MV_1" />
      <DO name="Ra005" type="MV_1" />
      <DO name="Ra006" type="MV_1" />
      <DO name="Ra007" type="MV_1" />
      <DO name="Ra008" type="MV_1" />
      <DO name="Ra009" type="MV_1" />
      <DO name="Ra010" type="MV_1" />
      <DO name="Ra011" type="MV_1" />
      <DO name="Ra012" type="MV_1" />
      <DO name="Ra013" type="MV_1" />
      <DO name="Ra014" type="MV_1" />
      <DO name="Ra015" type="MV_1" />
      <DO name="Ra016" type="MV_1" />
      <DO name="Ra017" type="MV_1" />
      <DO name="Ra018" type="MV_1" />
      <DO name="Ra019" type="MV_1" />
      <DO name="Ra020" type="MV_1" />
      <DO name="Ra021" type="MV_1" />
      <DO name="Ra022" type="MV_1" />
      <DO name="Ra023" type="MV_1" />
      <DO name="Ra024" type="MV_1" />
      <DO name="Ra025" type="MV_1" />
      <DO name="Ra026" type="MV_1" />
      <DO name="Ra027" type="MV_1" />
      <DO name="Ra028" type="MV_1" />
      <DO name="Ra029" type="MV_1" />
      <DO name="Ra030" type="MV_1" />
      <DO name="Ra031" type="MV_1" />
      <DO name="Ra032" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR033_064" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra033" type="MV_1" />
      <DO name="Ra034" type="MV_1" />
      <DO name="Ra035" type="MV_1" />
      <DO name="Ra036" type="MV_1" />
      <DO name="Ra037" type="MV_1" />
      <DO name="Ra038" type="MV_1" />
      <DO name="Ra039" type="MV_1" />
      <DO name="Ra040" type="MV_1" />
      <DO name="Ra041" type="MV_1" />
      <DO name="Ra042" type="MV_1" />
      <DO name="Ra043" type="MV_1" />
      <DO name="Ra044" type="MV_1" />
      <DO name="Ra045" type="MV_1" />
      <DO name="Ra046" type="MV_1" />
      <DO name="Ra047" type="MV_1" />
      <DO name="Ra048" type="MV_1" />
      <DO name="Ra049" type="MV_1" />
      <DO name="Ra050" type="MV_1" />
      <DO name="Ra051" type="MV_1" />
      <DO name="Ra052" type="MV_1" />
      <DO name="Ra053" type="MV_1" />
      <DO name="Ra054" type="MV_1" />
      <DO name="Ra055" type="MV_1" />
      <DO name="Ra056" type="MV_1" />
      <DO name="Ra057" type="MV_1" />
      <DO name="Ra058" type="MV_1" />
      <DO name="Ra059" type="MV_1" />
      <DO name="Ra060" type="MV_1" />
      <DO name="Ra061" type="MV_1" />
      <DO name="Ra062" type="MV_1" />
      <DO name="Ra063" type="MV_1" />
      <DO name="Ra064" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR065_096" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra065" type="MV_1" />
      <DO name="Ra066" type="MV_1" />
      <DO name="Ra067" type="MV_1" />
      <DO name="Ra068" type="MV_1" />
      <DO name="Ra069" type="MV_1" />
      <DO name="Ra070" type="MV_1" />
      <DO name="Ra071" type="MV_1" />
      <DO name="Ra072" type="MV_1" />
      <DO name="Ra073" type="MV_1" />
      <DO name="Ra074" type="MV_1" />
      <DO name="Ra075" type="MV_1" />
      <DO name="Ra076" type="MV_1" />
      <DO name="Ra077" type="MV_1" />
      <DO name="Ra078" type="MV_1" />
      <DO name="Ra079" type="MV_1" />
      <DO name="Ra080" type="MV_1" />
      <DO name="Ra081" type="MV_1" />
      <DO name="Ra082" type="MV_1" />
      <DO name="Ra083" type="MV_1" />
      <DO name="Ra084" type="MV_1" />
      <DO name="Ra085" type="MV_1" />
      <DO name="Ra086" type="MV_1" />
      <DO name="Ra087" type="MV_1" />
      <DO name="Ra088" type="MV_1" />
      <DO name="Ra089" type="MV_1" />
      <DO name="Ra090" type="MV_1" />
      <DO name="Ra091" type="MV_1" />
      <DO name="Ra092" type="MV_1" />
      <DO name="Ra093" type="MV_1" />
      <DO name="Ra094" type="MV_1" />
      <DO name="Ra095" type="MV_1" />
      <DO name="Ra096" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR097_128" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra097" type="MV_1" />
      <DO name="Ra098" type="MV_1" />
      <DO name="Ra099" type="MV_1" />
      <DO name="Ra100" type="MV_1" />
      <DO name="Ra101" type="MV_1" />
      <DO name="Ra102" type="MV_1" />
      <DO name="Ra103" type="MV_1" />
      <DO name="Ra104" type="MV_1" />
      <DO name="Ra105" type="MV_1" />
      <DO name="Ra106" type="MV_1" />
      <DO name="Ra107" type="MV_1" />
      <DO name="Ra108" type="MV_1" />
      <DO name="Ra109" type="MV_1" />
      <DO name="Ra110" type="MV_1" />
      <DO name="Ra111" type="MV_1" />
      <DO name="Ra112" type="MV_1" />
      <DO name="Ra113" type="MV_1" />
      <DO name="Ra114" type="MV_1" />
      <DO name="Ra115" type="MV_1" />
      <DO name="Ra116" type="MV_1" />
      <DO name="Ra117" type="MV_1" />
      <DO name="Ra118" type="MV_1" />
      <DO name="Ra119" type="MV_1" />
      <DO name="Ra120" type="MV_1" />
      <DO name="Ra121" type="MV_1" />
      <DO name="Ra122" type="MV_1" />
      <DO name="Ra123" type="MV_1" />
      <DO name="Ra124" type="MV_1" />
      <DO name="Ra125" type="MV_1" />
      <DO name="Ra126" type="MV_1" />
      <DO name="Ra127" type="MV_1" />
      <DO name="Ra128" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR129_160" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra129" type="MV_1" />
      <DO name="Ra130" type="MV_1" />
      <DO name="Ra131" type="MV_1" />
      <DO name="Ra132" type="MV_1" />
      <DO name="Ra133" type="MV_1" />
      <DO name="Ra134" type="MV_1" />
      <DO name="Ra135" type="MV_1" />
      <DO name="Ra136" type="MV_1" />
      <DO name="Ra137" type="MV_1" />
      <DO name="Ra138" type="MV_1" />
      <DO name="Ra139" type="MV_1" />
      <DO name="Ra140" type="MV_1" />
      <DO name="Ra141" type="MV_1" />
      <DO name="Ra142" type="MV_1" />
      <DO name="Ra143" type="MV_1" />
      <DO name="Ra144" type="MV_1" />
      <DO name="Ra145" type="MV_1" />
      <DO name="Ra146" type="MV_1" />
      <DO name="Ra147" type="MV_1" />
      <DO name="Ra148" type="MV_1" />
      <DO name="Ra149" type="MV_1" />
      <DO name="Ra150" type="MV_1" />
      <DO name="Ra151" type="MV_1" />
      <DO name="Ra152" type="MV_1" />
      <DO name="Ra153" type="MV_1" />
      <DO name="Ra154" type="MV_1" />
      <DO name="Ra155" type="MV_1" />
      <DO name="Ra156" type="MV_1" />
      <DO name="Ra157" type="MV_1" />
      <DO name="Ra158" type="MV_1" />
      <DO name="Ra159" type="MV_1" />
      <DO name="Ra160" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR161_192" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra161" type="MV_1" />
      <DO name="Ra162" type="MV_1" />
      <DO name="Ra163" type="MV_1" />
      <DO name="Ra164" type="MV_1" />
      <DO name="Ra165" type="MV_1" />
      <DO name="Ra166" type="MV_1" />
      <DO name="Ra167" type="MV_1" />
      <DO name="Ra168" type="MV_1" />
      <DO name="Ra169" type="MV_1" />
      <DO name="Ra170" type="MV_1" />
      <DO name="Ra171" type="MV_1" />
      <DO name="Ra172" type="MV_1" />
      <DO name="Ra173" type="MV_1" />
      <DO name="Ra174" type="MV_1" />
      <DO name="Ra175" type="MV_1" />
      <DO name="Ra176" type="MV_1" />
      <DO name="Ra177" type="MV_1" />
      <DO name="Ra178" type="MV_1" />
      <DO name="Ra179" type="MV_1" />
      <DO name="Ra180" type="MV_1" />
      <DO name="Ra181" type="MV_1" />
      <DO name="Ra182" type="MV_1" />
      <DO name="Ra183" type="MV_1" />
      <DO name="Ra184" type="MV_1" />
      <DO name="Ra185" type="MV_1" />
      <DO name="Ra186" type="MV_1" />
      <DO name="Ra187" type="MV_1" />
      <DO name="Ra188" type="MV_1" />
      <DO name="Ra189" type="MV_1" />
      <DO name="Ra190" type="MV_1" />
      <DO name="Ra191" type="MV_1" />
      <DO name="Ra192" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR193_224" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra193" type="MV_1" />
      <DO name="Ra194" type="MV_1" />
      <DO name="Ra195" type="MV_1" />
      <DO name="Ra196" type="MV_1" />
      <DO name="Ra197" type="MV_1" />
      <DO name="Ra198" type="MV_1" />
      <DO name="Ra199" type="MV_1" />
      <DO name="Ra200" type="MV_1" />
      <DO name="Ra201" type="MV_1" />
      <DO name="Ra202" type="MV_1" />
      <DO name="Ra203" type="MV_1" />
      <DO name="Ra204" type="MV_1" />
      <DO name="Ra205" type="MV_1" />
      <DO name="Ra206" type="MV_1" />
      <DO name="Ra207" type="MV_1" />
      <DO name="Ra208" type="MV_1" />
      <DO name="Ra209" type="MV_1" />
      <DO name="Ra210" type="MV_1" />
      <DO name="Ra211" type="MV_1" />
      <DO name="Ra212" type="MV_1" />
      <DO name="Ra213" type="MV_1" />
      <DO name="Ra214" type="MV_1" />
      <DO name="Ra215" type="MV_1" />
      <DO name="Ra216" type="MV_1" />
      <DO name="Ra217" type="MV_1" />
      <DO name="Ra218" type="MV_1" />
      <DO name="Ra219" type="MV_1" />
      <DO name="Ra220" type="MV_1" />
      <DO name="Ra221" type="MV_1" />
      <DO name="Ra222" type="MV_1" />
      <DO name="Ra223" type="MV_1" />
      <DO name="Ra224" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_AR225_256" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ra225" type="MV_1" />
      <DO name="Ra226" type="MV_1" />
      <DO name="Ra227" type="MV_1" />
      <DO name="Ra228" type="MV_1" />
      <DO name="Ra229" type="MV_1" />
      <DO name="Ra230" type="MV_1" />
      <DO name="Ra231" type="MV_1" />
      <DO name="Ra232" type="MV_1" />
      <DO name="Ra233" type="MV_1" />
      <DO name="Ra234" type="MV_1" />
      <DO name="Ra235" type="MV_1" />
      <DO name="Ra236" type="MV_1" />
      <DO name="Ra237" type="MV_1" />
      <DO name="Ra238" type="MV_1" />
      <DO name="Ra239" type="MV_1" />
      <DO name="Ra240" type="MV_1" />
      <DO name="Ra241" type="MV_1" />
      <DO name="Ra242" type="MV_1" />
      <DO name="Ra243" type="MV_1" />
      <DO name="Ra244" type="MV_1" />
      <DO name="Ra245" type="MV_1" />
      <DO name="Ra246" type="MV_1" />
      <DO name="Ra247" type="MV_1" />
      <DO name="Ra248" type="MV_1" />
      <DO name="Ra249" type="MV_1" />
      <DO name="Ra250" type="MV_1" />
      <DO name="Ra251" type="MV_1" />
      <DO name="Ra252" type="MV_1" />
      <DO name="Ra253" type="MV_1" />
      <DO name="Ra254" type="MV_1" />
      <DO name="Ra255" type="MV_1" />
      <DO name="Ra256" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_ARO01_32" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Rao01" type="MV_1" />
      <DO name="Rao02" type="MV_1" />
      <DO name="Rao03" type="MV_1" />
      <DO name="Rao04" type="MV_1" />
      <DO name="Rao05" type="MV_1" />
      <DO name="Rao06" type="MV_1" />
      <DO name="Rao07" type="MV_1" />
      <DO name="Rao08" type="MV_1" />
      <DO name="Rao09" type="MV_1" />
      <DO name="Rao10" type="MV_1" />
      <DO name="Rao11" type="MV_1" />
      <DO name="Rao12" type="MV_1" />
      <DO name="Rao13" type="MV_1" />
      <DO name="Rao14" type="MV_1" />
      <DO name="Rao15" type="MV_1" />
      <DO name="Rao16" type="MV_1" />
      <DO name="Rao17" type="MV_1" />
      <DO name="Rao18" type="MV_1" />
      <DO name="Rao19" type="MV_1" />
      <DO name="Rao20" type="MV_1" />
      <DO name="Rao21" type="MV_1" />
      <DO name="Rao22" type="MV_1" />
      <DO name="Rao23" type="MV_1" />
      <DO name="Rao24" type="MV_1" />
      <DO name="Rao25" type="MV_1" />
      <DO name="Rao26" type="MV_1" />
      <DO name="Rao27" type="MV_1" />
      <DO name="Rao28" type="MV_1" />
      <DO name="Rao29" type="MV_1" />
      <DO name="Rao30" type="MV_1" />
      <DO name="Rao31" type="MV_1" />
      <DO name="Rao32" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_ARO33_64" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Rao33" type="MV_1" />
      <DO name="Rao34" type="MV_1" />
      <DO name="Rao35" type="MV_1" />
      <DO name="Rao36" type="MV_1" />
      <DO name="Rao37" type="MV_1" />
      <DO name="Rao38" type="MV_1" />
      <DO name="Rao39" type="MV_1" />
      <DO name="Rao40" type="MV_1" />
      <DO name="Rao41" type="MV_1" />
      <DO name="Rao42" type="MV_1" />
      <DO name="Rao43" type="MV_1" />
      <DO name="Rao44" type="MV_1" />
      <DO name="Rao45" type="MV_1" />
      <DO name="Rao46" type="MV_1" />
      <DO name="Rao47" type="MV_1" />
      <DO name="Rao48" type="MV_1" />
      <DO name="Rao49" type="MV_1" />
      <DO name="Rao50" type="MV_1" />
      <DO name="Rao51" type="MV_1" />
      <DO name="Rao52" type="MV_1" />
      <DO name="Rao53" type="MV_1" />
      <DO name="Rao54" type="MV_1" />
      <DO name="Rao55" type="MV_1" />
      <DO name="Rao56" type="MV_1" />
      <DO name="Rao57" type="MV_1" />
      <DO name="Rao58" type="MV_1" />
      <DO name="Rao59" type="MV_1" />
      <DO name="Rao60" type="MV_1" />
      <DO name="Rao61" type="MV_1" />
      <DO name="Rao62" type="MV_1" />
      <DO name="Rao63" type="MV_1" />
      <DO name="Rao64" type="MV_1" />
    </LNodeType>
    <LNodeType id="GGIO_BS10" lnClass="GGIO">
      <DO name="Beh" type="behENS" />
      <DO name="Ind01" type="SPS_0" />
      <DO name="Ind02" type="SPS_0" />
      <DO name="Ind03" type="SPS_0" />
      <DO name="Ind04" type="SPS_0" />
      <DO name="Ind05" type="SPS_0" />
      <DO name="Ind06" type="SPS_0" />
      <DO name="Ind07" type="SPS_0" />
      <DO name="Ind08" type="SPS_0" />
      <DO name="Ind09" type="SPS_0" />
      <DO name="Ind10" type="SPS_0" />
    </LNodeType>
    <DOType id="ENC_direct_enhanced" desc="Control of IEC 61850 Mod/Beh Enabled" cdc="ENC">
      <DA name="Oper" bType="Struct" type="Oper_e" fc="CO" />
      <DA esel:datasrc="db:I60MOD" name="stVal" sAddr="datasrc=db:I60MOD" bType="Enum" type="Mod" dchg="true" fc="ST" />
      <DA esel:datasrc="db:I60MOD" name="q" sAddr="datasrc=db:I60MOD" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF">
        <Val>direct-with-enhanced-security</Val>
      </DA>
      <DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
        <Val>1000</Val>
      </DA>
    </DOType>
    <DOType id="behENS" desc="For controllable IEC 61850 Mode/Behavior" cdc="ENS">
      <DA name="stVal" bType="Enum" type="Beh" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="healthENS" desc="For controllable IEC 61850 Mode/Behavior" cdc="ENS">
      <DA esel:datasrc="db:EN?3:1" name="stVal" sAddr="datasrc=db:EN?3:1" bType="Enum" type="Health" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="LPL_LN0" cdc="LPL">
      <DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:VERFID" name="swRev" sAddr="datasrc=dbi:VERFID" bType="VisString255" valKind="RO" fc="DC" />
      <DA name="d" bType="VisString255" valKind="RO" fc="DC" />
      <DA name="configRev" bType="VisString255" valKind="RO" fc="DC">
        <Val>0</Val>
      </DA>
      <DA name="ldNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="SPS_0" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SPC_direct_enhanced" cdc="SPC">
      <DA name="Oper" bType="Struct" type="Oper_b" fc="CO" />
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF" />
      <DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
        <Val>1000</Val>
      </DA>
    </DOType>
    <DOType id="SPG_0" cdc="SPG">
      <DA name="setVal" bType="BOOLEAN" dchg="true" fc="SP" />
    </DOType>
    <DOType id="DPL_0" cdc="DPL">
      <DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:HWREV" name="hwRev" sAddr="datasrc=dbi:HWREV" bType="VisString255" valKind="RO" fc="DC" />
      <DA esel:datasrc="dbi:SERNUM" name="serNum" sAddr="datasrc=dbi:SERNUM" bType="VisString255" valKind="RO" fc="DC" />
      <DA esel:datasrc="dbi:PARNUM" name="model" sAddr="datasrc=dbi:PARNUM" bType="VisString255" valKind="RO" fc="DC" />
    </DOType>
    <DOType id="LPL_0" cdc="LPL">
      <DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:VERFID" name="swRev" sAddr="datasrc=dbi:VERFID" bType="VisString255" valKind="RO" fc="DC" />
    </DOType>
    <DOType id="BCR_0" desc="LCCH" cdc="BCR">
      <DA name="actVal" bType="INT64" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="pulsQty" bType="FLOAT32" valKind="RO" dchg="true" fc="CF" />
    </DOType>
    <DOType id="INS_0" cdc="INS">
      <DA name="stVal" bType="INT32" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SPC_direct_enhanced_2" cdc="SPC">
      <DA name="Oper" bType="Struct" type="Oper_b" fc="CO" />
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF" />
      <DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
        <Val>1000</Val>
      </DA>
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="ENG_0" cdc="ENG">
      <DA name="setVal" bType="Enum" type="NetMod" dchg="true" fc="SP" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="SPS_2" desc="LGOS" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:GQUAL" name="q" sAddr="datasrc=db:GQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="INS_1" desc="LGOS" cdc="INS">
      <DA name="stVal" bType="INT32" dchg="true" fc="ST" />
      <DA esel:datasrc="db:GQUAL" name="q" sAddr="datasrc=db:GQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="INS_2" desc="LGOS" cdc="INS">
      <DA name="stVal" bType="INT32" dchg="true" fc="ST" />
      <DA esel:datasrc="db:GQUAL" name="q" sAddr="datasrc=db:GQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="LgosENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="GOOSEErrSt" dchg="true" fc="ST" />
      <DA esel:datasrc="db:GQUAL" name="q" sAddr="datasrc=db:GQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="MV_2" desc="LGOS" cdc="MV">
      <DA name="instMag" bType="Struct" type="AnalogValue_0" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogValue_0" dchg="true" fc="MX" />
      <DA esel:datasrc="db:GQUAL" name="q" sAddr="datasrc=db:GQUAL" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="ORG_0" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" dchg="true" fc="SP" />
    </DOType>
    <DOType id="ORG_1" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" dchg="true" fc="SP" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="VSG_0" cdc="VSG">
      <DA name="setVal" bType="VisString255" dchg="true" fc="SP" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="ING_1" cdc="ING">
      <DA name="setVal" bType="INT32" dchg="true" fc="SP" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="SPS_3" desc="LSVS" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:SVQUAL" name="q" sAddr="datasrc=db:SVQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="INS_3" desc="LSVS" cdc="INS">
      <DA name="stVal" bType="INT32" dchg="true" fc="ST" />
      <DA esel:datasrc="db:SVQUAL" name="q" sAddr="datasrc=db:SVQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="INS_4" desc="LSVS" cdc="INS">
      <DA name="stVal" bType="INT32" dchg="true" fc="ST" />
      <DA esel:datasrc="db:SVQUAL" name="q" sAddr="datasrc=db:SVQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="LsvsENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="SVErrSt" dchg="true" fc="ST" />
      <DA esel:datasrc="db:SVQUAL" name="q" sAddr="datasrc=db:SVQUAL" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="MV_4" desc="LSVS" cdc="MV">
      <DA name="instMag" bType="Struct" type="AnalogValue_0" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogValue_0" dchg="true" fc="MX" />
      <DA esel:datasrc="db:SVQUAL" name="q" sAddr="datasrc=db:SVQUAL" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="ING_0" cdc="ING">
      <DA name="setVal" bType="INT32" dchg="true" fc="SP" />
    </DOType>
    <DOType id="TSG_0" cdc="TSG">
      <DA name="setTm" bType="Timestamp" dchg="true" fc="SP" />
    </DOType>
    <DOType id="VSS_0" cdc="VSS">
      <DA name="stVal" bType="VisString255" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="LtmsENS_0" cdc="ENS">
      <DA name="stVal" bType="Enum" type="ClockSourceKind_SEL" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="LtmsENS_1" cdc="ENS">
      <DA name="stVal" bType="Enum" type="ClockSyncKind_SEL" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="LtmsENS_2" cdc="ENS">
      <DA name="stVal" bType="Enum" type="ClockSyncLockingKind_SEL" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="MV_1" cdc="MV">
      <DA name="instMag" bType="Struct" type="AnalogValue_0" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogValue_0" dchg="true" fc="MX" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="BoolCTS" cdc="CTS">
      <DA name="objRef" bType="ObjRef" dupd="true" fc="SR" />
      <DA name="serviceType" bType="Enum" type="ServiceNameKind_SEL" fc="SR" />
      <DA name="errorCode" bType="Enum" type="ServiceStatusKind_SEL" fc="SR" />
      <DA name="t" bType="Timestamp" fc="SR" />
      <DA name="ctlVal" bType="BOOLEAN" fc="SR" />
      <DA name="origin" bType="Struct" type="Originator_0" fc="SR" />
      <DA name="ctlNum" bType="INT8U" fc="SR" />
      <DA name="T" bType="Timestamp" fc="SR" />
      <DA name="Test" bType="BOOLEAN" fc="SR" />
      <DA name="Check" bType="Check" fc="SR" />
      <DA name="respAddCause" bType="Enum" type="AddCause" fc="SR" />
    </DOType>
    <DOType id="EnumCTS_0" cdc="CTS">
      <DA name="objRef" bType="ObjRef" dupd="true" fc="SR" />
      <DA name="serviceType" bType="Enum" type="ServiceNameKind_SEL" fc="SR" />
      <DA name="errorCode" bType="Enum" type="ServiceStatusKind_SEL" fc="SR" />
      <DA name="t" bType="Timestamp" fc="SR" />
      <DA name="ctlVal" bType="Enum" type="Mod" fc="SR" />
      <DA name="origin" bType="Struct" type="Originator_0" fc="SR" />
      <DA name="ctlNum" bType="INT8U" fc="SR" />
      <DA name="T" bType="Timestamp" fc="SR" />
      <DA name="Test" bType="BOOLEAN" fc="SR" />
      <DA name="Check" bType="Check" fc="SR" />
      <DA name="respAddCause" bType="Enum" type="AddCause" fc="SR" />
    </DOType>
    <DOType id="BTS_0" cdc="BTS">
      <DA name="objRef" bType="ObjRef" dupd="true" fc="SR" />
      <DA name="serviceType" bType="Enum" type="ServiceNameKind_SEL" fc="SR" />
      <DA name="errorCode" bType="Enum" type="ServiceStatusKind_SEL" fc="SR" />
      <DA name="t" bType="Timestamp" fc="SR" />
      <DA name="rptID" bType="VisString129" fc="SR" />
      <DA name="rptEna" bType="BOOLEAN" fc="SR" />
      <DA name="datSet" bType="ObjRef" fc="SR" />
      <DA name="confRev" bType="INT32U" fc="SR" />
      <DA name="optFlds" bType="OptFlds" fc="SR" />
      <DA name="bufTm" bType="INT32U" fc="SR" />
      <DA name="sqNum" bType="INT16U" fc="SR" />
      <DA name="trgOps" bType="TrgOps" fc="SR" />
      <DA name="intgPd" bType="INT32U" fc="SR" />
      <DA name="gi" bType="BOOLEAN" fc="SR" />
      <DA name="purgeBuf" bType="BOOLEAN" fc="SR" />
      <DA name="entryID" bType="EntryID" fc="SR" />
      <DA name="timeOfEntry" bType="EntryTime" fc="SR" />
    </DOType>
    <DOType id="UTS_0" cdc="UTS">
      <DA name="objRef" bType="ObjRef" dupd="true" fc="SR" />
      <DA name="serviceType" bType="Enum" type="ServiceNameKind_SEL" fc="SR" />
      <DA name="errorCode" bType="Enum" type="ServiceStatusKind_SEL" fc="SR" />
      <DA name="t" bType="Timestamp" fc="SR" />
      <DA name="rptID" bType="VisString129" fc="SR" />
      <DA name="rptEna" bType="BOOLEAN" fc="SR" />
      <DA name="resv" bType="BOOLEAN" fc="SR" />
      <DA name="datSet" bType="ObjRef" fc="SR" />
      <DA name="confRev" bType="INT32U" fc="SR" />
      <DA name="optFlds" bType="OptFlds" fc="SR" />
      <DA name="bufTm" bType="INT32U" fc="SR" />
      <DA name="sqNum" bType="INT8U" fc="SR" />
      <DA name="trgOps" bType="TrgOps" fc="SR" />
      <DA name="intgPd" bType="INT32U" fc="SR" />
      <DA name="gi" bType="BOOLEAN" fc="SR" />
    </DOType>
    <DOType id="STS_0" cdc="STS">
      <DA name="objRef" bType="ObjRef" dupd="true" fc="SR" />
      <DA name="serviceType" bType="Enum" type="ServiceNameKind_SEL" fc="SR" />
      <DA name="errorCode" bType="Enum" type="ServiceStatusKind_SEL" fc="SR" />
      <DA name="t" bType="Timestamp" fc="SR" />
      <DA name="numOfSG" bType="INT8U" fc="SR" />
      <DA name="actSG" bType="INT8U" fc="SR" />
      <DA name="editSG" bType="INT8U" fc="SR" />
      <DA name="cnfEdit" bType="BOOLEAN" fc="SR" />
      <DA name="lActTm" bType="Timestamp" fc="SR" />
    </DOType>
    <DOType id="modENC" desc="Control of IEC 61850 Mod/Beh Disabled - Status Only" cdc="ENC">
      <DA esel:datasrc="db:I60MOD" name="stVal" sAddr="datasrc=db:I60MOD" bType="Enum" type="Mod" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF">
        <Val>status-only</Val>
      </DA>
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="SPC_0" cdc="SPC">
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF">
        <Val>status-only</Val>
      </DA>
    </DOType>
    <DOType id="ACT_0" cdc="ACT">
      <DA name="general" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACD_0" cdc="ACD">
      <DA name="general" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA name="dirGeneral" bType="Enum" type="FaultDirectionKind" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACT_1" cdc="ACT">
      <DA name="general" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SPS_1" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="DPC_0" cdc="DPC">
      <DA name="stVal" bType="Dbpos" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF">
        <Val>status-only</Val>
      </DA>
    </DOType>
    <DOType id="CBOpCapENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="CBOpCap" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SwTypENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="SwTyp" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SwOpCapENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="SwOpCap" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="DPC_direct_enhanced" cdc="DPC">
      <DA name="Oper" bType="Struct" type="Oper_b" fc="CO" />
      <DA name="stVal" bType="Dbpos" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" valKind="RO" type="CtlModelKind_SEL" dchg="true" fc="CF" />
      <DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
        <Val>1000</Val>
      </DA>
    </DOType>
    <DOType id="CMV_0" cdc="CMV">
      <DA name="instCVal" bType="Struct" type="Vector_0" fc="MX" />
      <DA name="cVal" bType="Struct" type="Vector_0" dchg="true" fc="MX" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
      <DA name="dbAng" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
    </DOType>
    <DOType id="MV_0" cdc="MV">
      <DA name="instMag" bType="Struct" type="AnalogValue_0" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogValue_0" dchg="true" fc="MX" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
    </DOType>
    <DOType id="WYE_2" desc="RFLO" cdc="WYE">
      <SDO name="phsA" type="CMV_1" />
      <SDO name="phsB" type="CMV_1" />
      <SDO name="phsC" type="CMV_1" />
      <SDO name="res" type="CMV_1" />
      <DA name="phsToNeut" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
        <Val>true</Val>
      </DA>
    </DOType>
    <DOType id="CMV_1" cdc="CMV">
      <DA name="instCVal" bType="Struct" type="Vector_1" fc="MX" />
      <DA name="cVal" bType="Struct" type="Vector_1" dchg="true" fc="MX" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
    </DOType>
    <DOType id="CMV_2" cdc="CMV">
      <DA name="instCVal" bType="Struct" type="Vector_1" fc="MX" />
      <DA name="cVal" bType="Struct" type="Vector_1" dchg="true" fc="MX" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="FltTypENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="FltTypeKind_SEL" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="FltCausENS" cdc="ENS">
      <DA name="stVal" bType="Enum" type="FltCauseKind_SEL" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="WYE_1" desc="MMXU" cdc="WYE">
      <SDO name="phsA" type="CMV_0" />
      <SDO name="phsB" type="CMV_0" />
      <SDO name="phsC" type="CMV_0" />
      <DA name="phsToNeut" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
        <Val>true</Val>
      </DA>
    </DOType>
    <DOType id="WYE_3" desc="MMXU" cdc="WYE">
      <SDO name="phsA" type="CMV_1" />
      <SDO name="phsB" type="CMV_1" />
      <SDO name="phsC" type="CMV_1" />
      <DA name="phsToNeut" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
        <Val>true</Val>
      </DA>
    </DOType>
    <DOType id="SEQ_0" cdc="SEQ">
      <SDO name="c1" type="CMV_0" />
      <SDO name="c2" type="CMV_0" />
      <SDO name="c3" type="CMV_0" />
      <DA name="seqT" bType="Enum" type="SequenceKind" fc="MX" />
    </DOType>
    <DOType id="behENS_1" desc="For controllable IEC 61850 Mode/Behavior - SEL LNode" cdc="ENS">
      <DA name="stVal" bType="Enum" type="Beh" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="LPL_1" desc="SEL MDST" cdc="LPL">
      <DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:VERFID" name="swRev" sAddr="datasrc=dbi:VERFID" bType="VisString255" valKind="RO" fc="DC" />
      <DA name="d" bType="VisString255" valKind="RO" fc="DC" />
      <DA name="configRev" bType="VisString255" valKind="RO" fc="DC">
        <Val>0</Val>
      </DA>
      <DA name="lnNs" bType="VisString255" fc="EX">
        <Val>SEL-61850</Val>
      </DA>
    </DOType>
    <DOType id="WYE_0" desc="MDST" cdc="WYE">
      <SDO name="phsA" type="CMV_1" />
      <SDO name="phsB" type="CMV_1" />
      <SDO name="phsC" type="CMV_1" />
      <DA name="phsToNeut" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
        <Val>true</Val>
      </DA>
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="SEQ_1" desc="MDST" cdc="SEQ">
      <SDO name="c1" type="MV_0" />
      <SDO name="c2" type="MV_0" />
      <SDO name="c3" type="MV_0" />
      <DA name="seqT" bType="Enum" type="SequenceKind" fc="MX" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="MV_3" cdc="MV">
      <DA name="instMag" bType="Struct" type="AnalogValue_0" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogValue_0" dchg="true" fc="MX" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="db" bType="INT32U" valKind="RO" dchg="true" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="BCR_1" desc="MDST" cdc="BCR">
      <DA name="actVal" bType="INT64" dchg="true" fc="ST" />
      <DA esel:datasrc="db:EN" name="q" sAddr="datasrc=db:EN" bType="Quality" qchg="true" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="units" bType="Struct" type="Unit_0" dchg="true" fc="CF" />
      <DA name="pulsQty" bType="FLOAT32" valKind="RO" dchg="true" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DAType id="Oper_e" desc="Operate service structure for CDCs with an Enum ctlVal - Control of IEC 61850 Mod/Beh Enabled">
      <BDA esel:datasrc="db:I60MOD" name="ctlVal" sAddr="datasrc=db:I60MOD" bType="Enum" type="Mod" />
      <BDA name="origin" bType="Struct" type="Originator_0" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
      <ProtNs>IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="Originator_0">
      <BDA name="orCat" bType="Enum" type="OriginatorCategoryKind">
        <Val>process</Val>
      </BDA>
      <BDA name="orIdent" bType="Octet64" />
    </DAType>
    <DAType id="Oper_b" desc="Operate service structure for CDCs with a Boolean ctlVal">
      <BDA name="ctlVal" bType="BOOLEAN" />
      <BDA name="origin" bType="Struct" type="Originator_0" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
      <ProtNs>IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="AnalogValue_0">
      <BDA name="f" bType="FLOAT32" />
    </DAType>
    <DAType id="Unit_0">
      <BDA name="SIUnit" bType="Enum" valKind="RO" type="SIUnitKind" />
      <BDA name="multiplier" bType="Enum" valKind="RO" type="MultiplierKind" />
    </DAType>
    <DAType id="Vector_0">
      <BDA name="mag" bType="Struct" type="AnalogValue_0" />
      <BDA name="ang" bType="Struct" type="AnalogValue_0" />
    </DAType>
    <DAType id="Vector_1">
      <BDA name="mag" bType="Struct" type="AnalogValue_0" />
    </DAType>
    <EnumType id="Mod">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="OriginatorCategoryKind">
      <EnumVal ord="0">not-supported</EnumVal>
      <EnumVal ord="1">bay-control</EnumVal>
      <EnumVal ord="2">station-control</EnumVal>
      <EnumVal ord="3">remote-control</EnumVal>
      <EnumVal ord="4">automatic-bay</EnumVal>
      <EnumVal ord="5">automatic-station</EnumVal>
      <EnumVal ord="6">automatic-remote</EnumVal>
      <EnumVal ord="7">maintenance</EnumVal>
      <EnumVal ord="8">process</EnumVal>
    </EnumType>
    <EnumType id="CtlModelKind_SEL">
      <EnumVal ord="0">status-only</EnumVal>
      <EnumVal ord="1">direct-with-normal-security</EnumVal>
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="Beh">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="Health">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="NetMod">
      <EnumVal ord="1">Fixed</EnumVal>
      <EnumVal ord="2">Failover</EnumVal>
      <EnumVal ord="3">Switched</EnumVal>
      <EnumVal ord="4">PRP</EnumVal>
      <EnumVal ord="5">IsolateIP</EnumVal>
    </EnumType>
    <EnumType id="GOOSEErrSt">
      <EnumVal ord="0">OK</EnumVal>
      <EnumVal ord="1">Device Disabled</EnumVal>
      <EnumVal ord="2">ConfRev Mismatch</EnumVal>
      <EnumVal ord="3">Needs Commissioning</EnumVal>
      <EnumVal ord="4">Message Corrupted</EnumVal>
      <EnumVal ord="5">TTL Expired</EnumVal>
      <EnumVal ord="6">Out of Sequence</EnumVal>
      <EnumVal ord="7">Invalid Data Quality</EnumVal>
    </EnumType>
    <EnumType id="SIUnitKind">
      <EnumVal ord="1" />
      <EnumVal ord="2">m</EnumVal>
      <EnumVal ord="3">kg</EnumVal>
      <EnumVal ord="4">s</EnumVal>
      <EnumVal ord="5">A</EnumVal>
      <EnumVal ord="6">K</EnumVal>
      <EnumVal ord="7">mol</EnumVal>
      <EnumVal ord="8">cd</EnumVal>
      <EnumVal ord="9">deg</EnumVal>
      <EnumVal ord="10">rad</EnumVal>
      <EnumVal ord="11">sr</EnumVal>
      <EnumVal ord="21">Gy</EnumVal>
      <EnumVal ord="22">Bq</EnumVal>
      <EnumVal ord="23">°C</EnumVal>
      <EnumVal ord="24">Sv</EnumVal>
      <EnumVal ord="25">F</EnumVal>
      <EnumVal ord="26">C</EnumVal>
      <EnumVal ord="27">S</EnumVal>
      <EnumVal ord="28">H</EnumVal>
      <EnumVal ord="29">V</EnumVal>
      <EnumVal ord="30">ohm</EnumVal>
      <EnumVal ord="31">J</EnumVal>
      <EnumVal ord="32">N</EnumVal>
      <EnumVal ord="33">Hz</EnumVal>
      <EnumVal ord="34">lx</EnumVal>
      <EnumVal ord="35">Lm</EnumVal>
      <EnumVal ord="36">Wb</EnumVal>
      <EnumVal ord="37">T</EnumVal>
      <EnumVal ord="38">W</EnumVal>
      <EnumVal ord="39">Pa</EnumVal>
      <EnumVal ord="41">m²</EnumVal>
      <EnumVal ord="42">m³</EnumVal>
      <EnumVal ord="43">m/s</EnumVal>
      <EnumVal ord="44">m/s²</EnumVal>
      <EnumVal ord="45">m³/s</EnumVal>
      <EnumVal ord="46">m/m³</EnumVal>
      <EnumVal ord="47">M</EnumVal>
      <EnumVal ord="48">kg/m³</EnumVal>
      <EnumVal ord="49">m²/s</EnumVal>
      <EnumVal ord="50">W/m K</EnumVal>
      <EnumVal ord="51">J/K</EnumVal>
      <EnumVal ord="52">ppm</EnumVal>
      <EnumVal ord="53">1/s</EnumVal>
      <EnumVal ord="54">rad/s</EnumVal>
      <EnumVal ord="55">W/m²</EnumVal>
      <EnumVal ord="56">J/m²</EnumVal>
      <EnumVal ord="57">S/m</EnumVal>
      <EnumVal ord="58">K/s</EnumVal>
      <EnumVal ord="59">Pa/s</EnumVal>
      <EnumVal ord="60">J/kg K</EnumVal>
      <EnumVal ord="61">VA</EnumVal>
      <EnumVal ord="62">Watts</EnumVal>
      <EnumVal ord="63">VAr</EnumVal>
      <EnumVal ord="64">phi</EnumVal>
      <EnumVal ord="65">cos(phi)</EnumVal>
      <EnumVal ord="66">Vs</EnumVal>
      <EnumVal ord="67">V²</EnumVal>
      <EnumVal ord="68">As</EnumVal>
      <EnumVal ord="69">A²</EnumVal>
      <EnumVal ord="70">A²t</EnumVal>
      <EnumVal ord="71">VAh</EnumVal>
      <EnumVal ord="72">Wh</EnumVal>
      <EnumVal ord="73">VArh</EnumVal>
      <EnumVal ord="74">V/Hz</EnumVal>
      <EnumVal ord="75">Hz/s</EnumVal>
      <EnumVal ord="76">char</EnumVal>
      <EnumVal ord="77">char/s</EnumVal>
      <EnumVal ord="78">kgm²</EnumVal>
      <EnumVal ord="79">dB</EnumVal>
      <EnumVal ord="80">J/Wh</EnumVal>
      <EnumVal ord="81">W/s</EnumVal>
      <EnumVal ord="82">l/s</EnumVal>
      <EnumVal ord="83">dBm</EnumVal>
      <EnumVal ord="84">h</EnumVal>
      <EnumVal ord="85">min</EnumVal>
    </EnumType>
    <EnumType id="MultiplierKind">
      <EnumVal ord="-24">y</EnumVal>
      <EnumVal ord="-21">z</EnumVal>
      <EnumVal ord="-18">a</EnumVal>
      <EnumVal ord="-15">f</EnumVal>
      <EnumVal ord="-12">p</EnumVal>
      <EnumVal ord="-9">n</EnumVal>
      <EnumVal ord="-6">µ</EnumVal>
      <EnumVal ord="-3">m</EnumVal>
      <EnumVal ord="-2">c</EnumVal>
      <EnumVal ord="-1">d</EnumVal>
      <EnumVal ord="0" />
      <EnumVal ord="1">da</EnumVal>
      <EnumVal ord="2">h</EnumVal>
      <EnumVal ord="3">k</EnumVal>
      <EnumVal ord="6">M</EnumVal>
      <EnumVal ord="9">G</EnumVal>
      <EnumVal ord="12">T</EnumVal>
      <EnumVal ord="15">P</EnumVal>
      <EnumVal ord="18">E</EnumVal>
      <EnumVal ord="21">Z</EnumVal>
      <EnumVal ord="24">Y</EnumVal>
    </EnumType>
    <EnumType id="SVErrSt">
      <EnumVal ord="0">OK</EnumVal>
      <EnumVal ord="1">Device Disabled</EnumVal>
      <EnumVal ord="2">Message Corrupted</EnumVal>
      <EnumVal ord="3">ASDU Error</EnumVal>
      <EnumVal ord="4">SVID Range Error</EnumVal>
      <EnumVal ord="5">SmpCnt Range Error</EnumVal>
      <EnumVal ord="6">ConfRev Mismatch</EnumVal>
      <EnumVal ord="7">SmpSynch Mismatch</EnumVal>
      <EnumVal ord="8">PDU Length Error</EnumVal>
      <EnumVal ord="9">Invalid Quality</EnumVal>
      <EnumVal ord="10">SV Stream Lost</EnumVal>
      <EnumVal ord="11">Channel Delay Exceeded</EnumVal>
      <EnumVal ord="12">Interpolated</EnumVal>
      <EnumVal ord="13">Out of Sequence</EnumVal>
      <EnumVal ord="14">Test Sample(s) Received</EnumVal>
    </EnumType>
    <EnumType id="ClockSourceKind_SEL">
      <EnumVal ord="1">Unknown</EnumVal>
      <EnumVal ord="2">SNTP</EnumVal>
      <EnumVal ord="3">PTP</EnumVal>
      <EnumVal ord="4">IRIG-B</EnumVal>
      <EnumVal ord="5">Substation Internal</EnumVal>
    </EnumType>
    <EnumType id="ClockSyncKind_SEL">
      <EnumVal ord="1">InternalClock</EnumVal>
      <EnumVal ord="2">LocalAreaClock</EnumVal>
      <EnumVal ord="3">GlobalAreaClock</EnumVal>
    </EnumType>
    <EnumType id="ClockSyncLockingKind_SEL">
      <EnumVal ord="1">Locked</EnumVal>
      <EnumVal ord="2">Unlocked10s</EnumVal>
      <EnumVal ord="3">Unlocked100s</EnumVal>
      <EnumVal ord="4">Unlocked1000s</EnumVal>
      <EnumVal ord="5">UnlockedMoreThan1000s</EnumVal>
    </EnumType>
    <EnumType id="ServiceNameKind_SEL">
      <EnumVal ord="16">SelectActiveSG</EnumVal>
      <EnumVal ord="24">SetBRCBValues</EnumVal>
      <EnumVal ord="26">SetURCBValues</EnumVal>
      <EnumVal ord="44">SelectWithValue</EnumVal>
      <EnumVal ord="45">Cancel</EnumVal>
      <EnumVal ord="46">Operate</EnumVal>
      <EnumVal ord="47">CommandTermination</EnumVal>
      <EnumVal ord="54">InternalChange</EnumVal>
    </EnumType>
    <EnumType id="ServiceStatusKind_SEL">
      <EnumVal ord="1">instance-not-available</EnumVal>
      <EnumVal ord="3">access-violation</EnumVal>
      <EnumVal ord="5">parameter-value-inappropriate</EnumVal>
      <EnumVal ord="6">parameter-value-inconsistent</EnumVal>
      <EnumVal ord="7">class-not-supported</EnumVal>
      <EnumVal ord="8">instance-locked-by-other-client</EnumVal>
      <EnumVal ord="10">type-conflict</EnumVal>
      <EnumVal ord="11">failed-due-to-communications-constraint</EnumVal>
      <EnumVal ord="12">failed-due-to-server-constraint</EnumVal>
    </EnumType>
    <EnumType id="AddCause">
      <EnumVal ord="1">Not-supported</EnumVal>
      <EnumVal ord="2">Blocked-by-switching-hierarchy</EnumVal>
      <EnumVal ord="3">Select-failed</EnumVal>
      <EnumVal ord="4">Invalid-position</EnumVal>
      <EnumVal ord="5">Position-reached</EnumVal>
      <EnumVal ord="7">Step-limit</EnumVal>
      <EnumVal ord="8">Blocked-by-Mode</EnumVal>
      <EnumVal ord="10">Blocked-by-interlocking</EnumVal>
      <EnumVal ord="12">Command-already-in-execution</EnumVal>
      <EnumVal ord="18">Object-not-selected</EnumVal>
      <EnumVal ord="19">Object-already-selected</EnumVal>
      <EnumVal ord="20">No-access-authority</EnumVal>
      <EnumVal ord="26">Inconsistent-parameters</EnumVal>
      <EnumVal ord="27">Locked-by-other-client</EnumVal>
    </EnumType>
    <EnumType id="FaultDirectionKind">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="CBOpCap">
      <EnumVal ord="1">None</EnumVal>
      <EnumVal ord="2">Open</EnumVal>
      <EnumVal ord="3">Close-Open</EnumVal>
      <EnumVal ord="4">Open-Close-Open</EnumVal>
      <EnumVal ord="5">Close-Open-Close-Open</EnumVal>
    </EnumType>
    <EnumType id="SwTyp">
      <EnumVal ord="1">Load Break</EnumVal>
      <EnumVal ord="2">Disconnector</EnumVal>
      <EnumVal ord="3">Earthing Switch</EnumVal>
      <EnumVal ord="4">High Speed Earthing Switch</EnumVal>
    </EnumType>
    <EnumType id="SwOpCap">
      <EnumVal ord="1">None</EnumVal>
      <EnumVal ord="2">Open</EnumVal>
      <EnumVal ord="3">Close</EnumVal>
      <EnumVal ord="4">Open and Close</EnumVal>
    </EnumType>
    <EnumType id="FltTypeKind_SEL">
      <EnumVal ord="0">Undefined</EnumVal>
      <EnumVal ord="1">AG</EnumVal>
      <EnumVal ord="2">BG</EnumVal>
      <EnumVal ord="3">CG</EnumVal>
      <EnumVal ord="4">AB</EnumVal>
      <EnumVal ord="5">BC</EnumVal>
      <EnumVal ord="6">CA</EnumVal>
      <EnumVal ord="7">ABG</EnumVal>
      <EnumVal ord="8">BCG</EnumVal>
      <EnumVal ord="9">CAG</EnumVal>
      <EnumVal ord="10">ABC</EnumVal>
    </EnumType>
    <EnumType id="FltCauseKind_SEL">
      <EnumVal ord="0">No fault summary</EnumVal>
      <EnumVal ord="1">Trigger</EnumVal>
      <EnumVal ord="2">Trip</EnumVal>
      <EnumVal ord="3">Event Report</EnumVal>
    </EnumType>
    <EnumType id="SequenceKind">
      <EnumVal ord="0">pos-neg-zero</EnumVal>
      <EnumVal ord="1">dir-quad-zero</EnumVal>
    </EnumType>
  </DataTypeTemplates>
</SCL>