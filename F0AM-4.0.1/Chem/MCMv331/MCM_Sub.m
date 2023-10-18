% MCM_Sub.m
% generated from MCM_Sub.fac
% 20201022
% # of species = 1104
% # of reactions = 3338

SpeciesToAdd = {...
'MALANHY'; 'HO1CO3CHO'; 'HO1C3O'; 'C5DICARBO2'; 'MXYEPOXMUC'; 'C4PAN6'; 'TM135BPRO2'; 'ETHENO3O'; 'BUTALO2'; 'HEX3ONANO3'; ...
'C4PAN2'; 'C5DIALO2'; 'CHOPRNO3'; 'C4PAN3'; 'HO3C76O'; 'CO25C6OOH'; 'SC4H9NO3'; 'MNNCATECO2'; 'IPROPOL'; 'BZEMUCO'; ...
'MXYFUOH'; 'ETHGLY'; 'CO14O3CO2H'; 'HEPTOH'; 'NCRESO'; 'C3MCODBPAN'; 'NC7H16'; 'NDNPHENO'; 'OCTOH'; 'C6CO34'; ...
'C535OOH'; 'ACECOCOCH3'; 'CO2C4CHO'; 'DNMXYOLOOH'; 'HO3C5CO2H'; 'MXYQOOH'; 'MEKAOOH'; 'OCTO2'; 'NBZQO2'; 'HO3C5O'; ...
'CO3C85O'; 'HEPTO2'; 'HO2CO4C5O2'; 'BUTALO'; 'MXY1OHNO2'; 'C2H5CHOO'; 'C73OOH'; 'BUT2OLAO'; 'NTLFUO2'; 'TM135OXMUC'; ...
'HO3CO6C8'; 'TM135BPRO'; 'PEAOOH'; 'MXYOBPEROH'; 'C5COO2NO2'; 'BZFUCO'; 'HEXBNO3'; 'C4H9CHO'; 'NBUTOL'; 'HEX2ONE'; ...
'C5DIALOH'; 'TLBIPER2OH'; 'C534OOH'; 'HO1CO24C5'; 'CO23C54O'; 'IPROPOLO'; 'CHOMOHCO3H'; 'NCRES1OOH'; 'HO1CO3C4O'; 'CO23C65OOH'; ...
'C6H5CH2OOH'; 'ACCOCOMEO2'; 'HO2C6O2'; 'NBZFUOOH'; 'HO3C86NO3'; 'TOL1OHNO2'; 'C4COMOHCO3'; 'HO2C6O'; 'TM135OLOOH'; 'C615CO2O'; ...
'PTLQONE'; 'CO3C4NO3O2'; 'HEXAO'; 'NPROPOL'; 'C72NO3'; 'MMALANHYO2'; 'MEKAO'; 'C6HO1CO3O'; 'HCOCH2CO2H'; 'NO2'; ...
'NO3'; 'HO13C3CO3'; 'HO2C4O2'; 'C534O2'; 'HEX2ONBNO3'; 'H2O2'; 'C6H5O2'; 'NCATECHOL'; 'C53OH2OOH'; 'BU1ENO3O2'; ...
'C74OOH'; 'TMBNO3'; 'EPXDLCO2H'; 'NC5H12'; 'BZFUONOOA'; 'EPXMDLCO3H'; 'HEX3ONBO'; 'MECOACETO'; 'PEBNO3'; 'TM135OLO'; ...
'TLBIPERO'; 'MC3CODBPAN'; 'PRONO3AO2'; 'PEBO2'; 'MALDIAL'; 'PEBOH'; 'C6HO1CO3O2'; 'HO2C4OOH'; 'C3COCCO3H'; 'METACETHO'; ...
'NPXYFUOOH'; 'PROPACID'; 'PEN2ONE1O'; 'C3COCCO3'; 'PE1ENEBO'; 'C23O3MO'; 'HO2C4OH'; 'CO2H3CO3H'; 'CH3CHO'; 'PEBO'; ...
'C5CO23O2'; 'MALANHYOOH'; 'C5CO2DBPAN'; 'BENZENE'; 'NC3H7NO3'; 'C63OH'; 'IC3H7O2'; 'PRONO3BO'; 'C3DIALO'; 'HOCO3C54O2'; ...
'MPRK'; 'NOA'; 'C5CO234O2'; 'MXNNCATCO2'; 'TLBIPERNO3'; 'BIACETOOH'; 'HO1C5OOH'; 'C61O2'; 'MXYMUCCO3'; 'MXNCATCOOH'; ...
'MXYMUCCO2H'; 'MXYL1O2'; 'CO235C6'; 'IPROPOLO2H'; 'C23O3MCHO'; 'HEPTOOH'; 'HEX3ONBO2'; 'MXYOHNO2O'; 'O1D'; 'HEX3ONCOOH'; ...
'C6CO3OH5O2'; 'CO25C73O2'; 'PBZQO2'; 'PHXN'; 'ETHO2HNO3'; 'C63NO3'; 'C5DICARBO'; 'HO2NO2'; 'C5MCO2OHO2'; 'MXYFUONE'; ...
'MXYMUCNO3'; 'C6PAN1'; 'MALDIALO'; 'NCRESO2'; 'CO35C5CHO'; 'C3MCOCO2H'; 'HO3C6OOH'; 'PHAN'; 'C5CO23OOH'; 'HO3C3CHO'; ...
'C6CO134PAN'; 'PBZQONE'; 'C535O2'; 'BUT2OL'; 'MCATEC1O'; 'NNCATECO2'; 'C84O'; 'HO1C3OOH'; 'DMPHO2'; 'PERPENACID'; ...
'C33CO'; 'MXNNCATOOH'; 'MXYBIPERO2'; 'MGLOOB'; 'MGLOOC'; 'NMXYOLO'; 'C4H9CO3'; 'NCRESOH'; 'PEN2ONE1O2'; 'MMALANHY'; ...
'NPXYFUO'; 'C5CO2OHPAN'; 'CH3COCH3'; 'IC3H7O'; 'SC4H9O2'; 'CO2HOC61O2'; 'CO25C73OH'; 'C61OOH'; 'HOC4H8OH'; 'TMBCO3'; ...
'C51OOH'; 'MNNCATECO'; 'HO1C6OOH'; 'MXYL1OOH'; 'EPXMDLCO3'; 'HEX3ONBOOH'; 'SA'; 'HEX2ONAOOH'; 'HOCH2CHO'; 'C61OH'; ...
'HO13C4OH'; 'PRNO3CO3H'; 'C5CO2DCO3H'; 'EPXDLPAN'; 'C6H5CH2NO3'; 'C3H7CHO'; 'TLEMUCCO'; 'CRESOOH'; 'C23O3MCOOH'; 'HO13C5'; ...
'EPXDLCO3H'; 'NDNCRESOOH'; 'C3MCODBCO3'; 'PRONO3AO'; 'HO2CO5C7'; 'HO3C86OOH'; 'PRNO3PAN'; 'CO24C4CHO'; 'CO14O3CHO'; 'C71O'; ...
'HO2CO4C5O'; 'PEANO3'; 'HO1CO4C6'; 'HYPROPO2H'; 'TM135MUPAN'; 'TLOBIPEROH'; 'C5COHOCO3H'; 'C3MCODBCO2'; 'NC4MDCO2'; 'HO3C86O'; ...
'TMBCHO'; 'NMXYFUO'; 'HO1C6O'; 'HEPTO'; 'NPTLQO2'; 'HO13C4OOH'; 'EPXMKTCO3H'; 'MGLYOOA'; 'PECOOH'; 'TMBOH'; ...
'EPXDLCO3'; 'C6H5OOH'; 'C6H5CO3'; 'HO13CO4C5'; 'C3MDIALO'; 'NTM135LOOH'; 'C74O'; 'MXYOLO'; 'NPXYFUO2'; 'CH3O2NO2'; ...
'HEX3ONCOH'; 'C83O'; 'HEX3ONAOOH'; 'OXYL1OOH'; 'CO3C5CHO'; 'HO3C76OOH'; 'ACCOMECO3H'; 'C32OH13CO'; 'C6CO3OHOOH'; 'CH3CO3H'; ...
'DIEKBO'; 'TMBOOH'; 'HEXCOH'; 'C23O3MCO2H'; 'HO3C5CO3H'; 'CO3C5CO3H'; 'NC4H9O'; 'HO3C4O'; 'DIEKAOH'; 'C6H5CO3H'; ...
'BZEMUCNO3'; 'C5H11CO3'; 'CH3CHOOA'; 'CO3C75O'; 'CH3CHOOB'; 'C4MCODBCO2'; 'C4MCODBCO3'; 'C2H5CHOOA'; 'C4CHOBO2'; 'BZFUO'; ...
'C5PAN9'; 'C5PAN8'; 'NBUTOLAO'; 'HEX3ONDOOH'; 'MXYBPER2OH'; 'HO13C5OOH'; 'C5PAN1'; 'C82NO3'; 'HEXAOH'; 'BUTAL2O'; ...
'CH4'; 'MALDIALCO2'; 'C5CO3OH'; 'HCOCO3'; 'HO2C5O2'; 'HCOCH2O2'; 'TM135MUOH'; 'NC3H7OOH'; 'HEX2ONCO'; 'TLEMUCNO3'; ...
'CO36C8'; 'NBZFUONE'; 'CO25C6O'; 'HCOCH2CO3'; 'TM135OBPOH'; 'C71O2'; 'HEXAO2'; 'HEX2ONBOOH'; 'PEBOOH'; 'NC4MDCO2H'; ...
'TLFUONOOA'; 'OXYL1O2'; 'PTLQO2'; 'MXYBIPENO3'; 'HO2CO4C5'; 'BZBIPERNO3'; 'PE1ENEBNO3'; 'DIEKAO2'; 'PXYFUO'; 'PROPALO'; ...
'C5DIALOOH'; 'DIEKAOOH'; 'PRONO3BO2'; 'HCOOH'; 'HCOCO2H'; 'BZFUONE'; 'ETHENO3O2'; 'C43NO34O2'; 'HEXCO2'; 'HONO'; ...
'NMXYQO2'; 'HCHO'; 'NC4DCO2'; 'HO36C8'; 'CH3COCO3'; 'HEX3ONCO2'; 'MEKCOH'; 'C5CO23CHO'; 'BZFUO2'; 'HEPTNO3'; ...
'NBZQO'; 'HEX3ONAO2'; 'PEAO'; 'MXYLCO3H'; 'NCRES1O'; 'MXNCATECH'; 'MALDALCO3H'; 'CO23C5'; 'CO23C6'; 'HEX3ONDOH'; ...
'TOL1O'; 'CATECHOL'; 'NPHENOH'; 'IPROPOLPER'; 'C4PAN1'; 'HO1C4NO3'; 'CO24C6O'; 'MXYMUCO'; 'TM135OLO2'; 'C61O'; ...
'PENTACID'; 'C4CO2DBPAN'; 'HO1C3NO3'; 'PPGAOOB'; 'BU1ENO3O'; 'C5DICAROOH'; 'PTLQOH'; 'HOCH2CO3'; 'PERPROACID'; 'CRESO'; ...
'TM135MUNO3'; 'CO24C6OOH'; 'C81OOH'; 'C43NO34O'; 'C62O2'; 'CH2OOB'; 'CH2OOA'; 'TM135OLOH'; 'C8CO4DB'; 'CH3O'; ...
'NPHENO2'; 'MXYMUCOOH'; 'C7CO4DB'; 'HO3CO46C8'; 'CO23C4CO3H'; 'HEX3ONDO2'; 'HO3C5CHO'; 'NC8H18'; 'HYPERACET'; 'HEX3ONAOH'; ...
'MALANHYO2'; 'HO2C6OOH'; 'C63OOH'; 'CO23C4CHO'; 'HO1C5O'; 'TLEMUCCO3'; 'C5PACALD2'; 'DIEKBOOH'; 'C5PACALD1'; 'CH3OOH'; ...
'BUT2OLO'; 'MEKCO2'; 'MXYLCO2H'; 'HCOCO'; 'NBUTOLAOH'; 'HOCO3C4OOH'; 'PROPGLY'; 'NBZFUO2'; 'HO3C76NO3'; 'BZEMUCCO2H'; ...
'PXYFUOH'; 'NO3CH2CO3'; 'CO2HOC6OOH'; 'OCTO'; 'NPTLQOOH'; 'HO2C4CO3H'; 'MC3ODBCO2H'; 'MXNCATECO2'; 'MXY1OOH'; 'C7CO2OHPAN'; ...
'CO25C6O2'; 'CH3CHOHCHO'; 'MEKAO2'; 'HOCH2CO2H'; 'C23O3CCO3'; 'HO1C4O2'; 'TM135BZOL'; 'MGLOO'; 'TLEMUCCO2H'; 'BUTACID'; ...
'PE2ONE1OOH'; 'TM135MUOOH'; 'PHENOH'; 'C62OOH'; 'PHENOL'; 'NC4H9OOH'; 'C4CO2DCO3H'; 'TLFUONOO'; 'MXY1O2'; 'C523OH'; ...
'MXYMUCO2'; 'MGLYOO'; 'CO23C4CO3'; 'MXYMUCOH'; 'HO12C5'; 'PHCOOH'; 'SC4H9O'; 'C4CHOBNO3'; 'CO2H3CHO'; 'C7CO2OHCO3'; ...
'CATECOOA'; 'MMALNHYOOH'; 'NC4H9O2'; 'TM135MUCO'; 'HO14CO2C4'; 'MGLYOX'; 'HO3C5NO3'; 'MEKAOH'; 'CO25C6OH'; 'C24O3CCO2H'; ...
'CO25C74O'; 'NMXYOL1O2'; 'MALDIALPAN'; 'C62O'; 'C6CO2OHPAN'; 'C51OH'; 'NPHENOOH'; 'CO23C65O'; 'HEX3ONAO'; 'C6H5O'; ...
'MNNCATCOOH'; 'NPHEN1OOH'; 'C5CO234O'; 'HO1C3O2'; 'C6CO2OHCO3'; 'PBZQO'; 'MCATEC1OOH'; 'C2H5CHO'; 'ACCOCOMOOH'; 'C5MCO2OHO'; ...
'TMBCO3H'; 'HEXBOH'; 'C6COOHCO3H'; 'C6CO4DB'; 'CO23C4NO3'; 'HEX2ONCOOH'; 'C4M2AL2OH'; 'HEX3ONE'; 'BZBIPEROOH'; 'BZEMUCO2'; ...
'C5CO2OHCO3'; 'BUT2OLNO3'; 'ACCOMEPAN'; 'C23O3CPAN'; 'CH3COCO2H'; 'CO2C54O'; 'TLFUO2'; 'C52OH1OOH'; 'HOHOC4DIAL'; 'HO2CO35C7'; ...
'PHENO2'; 'TLEMUCCO3H'; 'TLEMUCOOH'; 'C51O2'; 'PE2ENEBO'; 'C6125CO'; 'BZFUOH'; 'CO3C5CO3'; 'MPRKAO2'; 'PPACLOOA'; ...
'NDNMXYOLO2'; 'MPRKAOH'; 'NC6H14'; 'NPHENO'; 'C3PAN2'; 'C3PAN1'; 'MXYOLOOH'; 'ACETOL'; 'C6CO2OHOOH'; 'IPROPOLO2'; ...
'CO25C74O2'; 'CH3CO3'; 'HO13C5NO3'; 'CO2C4CO2H'; 'HO2C3CO3H'; 'NBUTOLBOOH'; 'DIEKBO2'; 'NMXYFUO2'; 'NBUTOLBO'; 'HO13C3CO3H'; ...
'BZEMUCOOH'; 'BUTALNO3'; 'MXYL'; 'DNCRES'; 'BZEMUCCO3'; 'C3MDIALOOH'; 'TLFUOOH'; 'MXYLO'; 'HEX2ONAO2'; 'PE1ENEBO2'; ...
'BZEMUCOH'; 'HEXBO2'; 'C72O'; 'C5CO14CO2'; 'C5CODBCO2H'; 'CH3COCH2O2'; 'COC4NO3OOH'; 'HO1C5NO3'; 'C6CO3HO4'; 'CO3C4NO3OH'; ...
'HO3CO6C7'; 'CO23C65O2'; 'MXYOHNO2O2'; 'HO2C3CO3'; 'PXYFUO2'; 'MEKCO'; 'CH3NO3'; 'MXYFUO'; 'EPXMC4DIAL'; 'HO2CO3C4O'; ...
'NPHEN1O'; 'CO3C85O2'; 'CO2HO4C6'; 'PHENOOH'; 'DIEKBNO3'; 'CH3COPAN'; 'HO1CO3C5'; 'CO23C54O2'; 'PAN'; 'C5OH2CO4O'; ...
'BIACET'; 'EPXMDLPAN'; 'HYPROPO'; 'C534O'; 'HCOCO3H'; 'PTLQOOH'; 'HO2C4CHO'; 'NDNPHENOOH'; 'BZFUOOH'; 'HSO3'; ...
'HOCOC4DIAL'; 'C5CO14O2'; 'EPXMKTPAN'; 'BZEMUCPAN'; 'TM135MUCO3'; 'C23O3CHO'; 'IPROPOLPAN'; 'HNO3'; 'HYETHO2H'; 'NCATECO'; ...
'MXNCATECO'; 'C5PAN2'; 'C5H11CO3H'; 'MXY1O'; 'MPRKBOOH'; 'MALDIALCO3'; 'ETHOHNO3'; 'GLYOO'; 'PPEN'; 'HCOCH2CO3H'; ...
'C6CO34O2'; 'HO13C3CHO'; 'NC4H10'; 'MXCATEC1O2'; 'MEKBO2'; 'GLYOX'; 'NTLFUOOH'; 'DMPHOHNO2'; 'MXYLNO3'; 'C3COCCHO'; ...
'C3H6'; 'CO25C6'; 'CO25C7'; 'CRESOH'; 'HO3C6NO3'; 'C7M3CO'; 'MMALANHYO'; 'CRESOL'; 'C3H8'; 'MECOACEOOH'; ...
'HO1C5O2'; 'CO3C4CO3H'; 'TM135O'; 'C5CO34CO3'; 'TM135B'; 'MCATECOOA'; 'PBZQCO'; 'CH2OO'; 'C5COOHCO3H'; 'N2O5'; ...
'CH3CHOHCO3'; 'C23O3CCHO'; 'HO3C4O2'; 'C6CO3OH5O'; 'CO3C4CO2H'; 'BZEPOXMUC'; 'C3DIALOOH'; 'HO1C4O'; 'CO3C85OOH'; 'MXYCATECH'; ...
'TM135MUCO2'; 'C3DIALO2'; 'HO14CO3C5'; 'MXYLPAN'; 'CH3COCH2O'; 'C6CO3MOH'; 'MPRKNO3'; 'NBUTOLANO3'; 'CO23C54OOH'; 'DNCRESOOH'; ...
'PXYFUOOH'; 'CO3C5CO2H'; 'HO13C5O2'; 'HO2C4CO2H'; 'C5CO14OH'; 'HOC3H6CO3H'; 'C5PAN16'; 'PHENO'; 'PTLQO'; 'PTLQCO'; ...
'C6CO34O'; 'C2H6'; 'C2H4'; 'HCOCOHCO3'; 'OCTOOH'; 'HO1C6O2'; 'C6CO2M2OH'; 'TLBIPERO2'; 'HO3C3PAN'; 'C23O3CCO2H'; ...
'HO3C4CO3'; 'HO14CO2C5'; 'CRESO2'; 'HO3C4OOH'; 'TM135MUO3H'; 'CO2C54O2'; 'HCOCH2O'; 'CATEC1O'; 'BZEMUCCO'; 'CO2HO3C6'; ...
'HO3C3CO3'; 'HEXCO'; 'CO2H3CO3'; 'CO24C53O'; 'CO235C7'; 'MXOHNO2OOH'; 'C73O'; 'C4OHCO3H'; 'NBZFUO'; 'C4CHOBO'; ...
'CO3C4CHO'; 'IC3H7OOH'; 'C726CO5OOH'; 'HO13C4NO3'; 'C42NO33OOH'; 'NBUTOLBNO3'; 'NTLFUO'; 'HOCO3C5OOH'; 'BIACETO'; 'BUTALO2H'; ...
'NC3H7O'; 'C84OOH'; 'C83OOH'; 'NO3CH2CHO'; 'C82O2'; 'DMPHOOH'; 'TMBO'; 'NC4H9NO3'; 'NC3H7O2'; 'HEX2ONAO'; ...
'BZFUONOO'; 'NMXYOL1O'; 'NO3CH2CO2H'; 'CO'; 'PGLYOX'; 'PBZQOH'; 'CL'; 'C5CO14OOH'; 'C5MDICARB'; 'MXYMUCCO3H'; ...
'HO3C3CO3H'; 'MEKCOOH'; 'HOCH2CH2O'; 'MALANHY2OH'; 'MCATECHOL'; 'MALDALCO2H'; 'C61NO3'; 'EPXMKTCO2H'; 'C6CO3HO25'; 'TMBPAN'; ...
'NMXYQO'; 'MALNHYOHCO'; 'BZBIPERO'; 'HO3C5OOH'; 'MXYQO'; 'HOC3H6OH'; 'EPXC4DIAL'; 'DNMXYOL'; 'MECOACETO2'; 'HO2C5OH'; ...
'C72OH'; 'MXYLOOH'; 'HO134C5'; 'BUT2OLO2'; 'DNPHENO2'; 'HO3C5CO3'; 'MXYMUCPAN'; 'C4OHCHO'; 'C54CO'; 'MXYOLO2'; ...
'HO2C3CO2H'; 'HCOCH2OOH'; 'MCOCOMOOOH'; 'CO2C3CO3H'; 'NDNCRESO'; 'MEKBOOH'; 'MXYBPEROOH'; 'CO2HOC61O'; 'MXYLAL'; 'C615CO2OH'; ...
'PPN'; 'CO3C4NO3O'; 'CATEC1OOH'; 'HOC2H4CHO'; 'MCOCOMOXO'; 'C5CODBCO3H'; 'HO3C4CHO'; 'NMXYOLO2'; 'MXYLO2'; 'MC3CODBCO3'; ...
'MC3CODBCO2'; 'TBUT2ENE'; 'NMXYOLOH'; 'MXYLOH'; 'NO3CH2CO3H'; 'CO2C4DIAL'; 'MXYLOL'; 'NCRES1O2'; 'C6CO34OOH'; 'CATEC1O2'; ...
'BZEMUCCO3H'; 'SO3'; 'SO2'; 'MALANHYO'; 'HO1C4OOH'; 'C74O2'; 'DNPHEN'; 'C726CO5O'; 'C51NO3'; 'HO2C3CHO'; ...
'C2H5O'; 'TM135BPNO3'; 'HO3C6O2'; 'HOCH2CO3H'; 'C43NO34OOH'; 'PR2O2HNO3'; 'MXYMUCCO'; 'C2H5NO3'; 'MXYBIPERO'; 'MXYOLOH'; ...
'C514CO23OH'; 'BUT2OLOH'; 'C72O2'; 'BUT1ENE'; 'HO3C6O'; 'CO25C73O'; 'C73O2'; 'HCOCOHCO3H'; 'C63O2'; 'C535O'; ...
'BZBIPERO2'; 'MALDIALOOH'; 'MXNNCATCO'; 'C2H5O2'; 'CO24C6'; 'CO24C5'; 'C5134CO2OH'; 'CH3OH'; 'HO3C5O2'; 'BIACETO2'; ...
'C5CO23O'; 'NC4DCO2H'; 'C84O2'; 'O3'; 'PECO'; 'CO24C6O2'; 'C82O'; 'PERBUACID'; 'C42NO33O'; 'MXYQOH'; ...
'HO3C4NO3'; 'HEX2ONBO2'; 'MXYQO2'; 'C6H5CH2O'; 'OCTNO3'; 'C6CO34HO1'; 'HO34CO6C8'; 'NDNMXYOLO'; 'C23O3MOH'; 'NBUTOLAO2'; ...
'DIEKAO'; 'NTM135OLO2'; 'C5CO234'; 'NNCATECO'; 'C2H5CO3'; 'HO2'; 'C4OHPAN'; 'C615CO2O2'; 'TOLUENE'; 'NDNCRESO2'; ...
'TMBCO2H'; 'HEXAOOH'; 'C726CO5O2'; 'HO3C76O2'; 'C23O3MO2'; 'C4MDIAL'; 'NBUTOLAOOH'; 'NTM135OLOH'; 'HEXCOOH'; 'NMXYQOOH'; ...
'HEX2ONCO2'; 'HO13C5O'; 'MXCATEC1O'; 'HO4C5CO3H'; 'C6CO134'; 'BIACETOH'; 'EPXMALKT'; 'C3COCPAN'; 'NCATECO2'; 'MCATEC1O2'; ...
'C84OH'; 'CH3COCO3H'; 'OH'; 'PR1O2HNO3'; 'CH3O2'; 'GLYOOA'; 'HOC6H4NO2'; 'C81O'; 'C7M2CO5OOH'; 'C4CO2DBCO3'; ...
'C2H5OH'; 'GLYOOC'; 'MCOCOMOXO2'; 'DNPHENOOH'; 'C4CHOBOOH'; 'TMBO2'; 'C51O'; 'TLEMUCO2'; 'PXYFUONE'; 'CO2C3PAN'; ...
'HOC3H6CO3'; 'PE2ENEBNO3'; 'CO24C53O2'; 'NDNPHENO2'; 'HEXBOOH'; 'C5OH2CO4O2'; 'MNCATECO'; 'MXYL1O'; 'HYPROPO2'; 'CH3CHOO'; ...
'C23O3MCO3H'; 'C51OH2CO'; 'NMXYFUOOH'; 'HO2C4O'; 'MXYLCO3'; 'C6H5CH2OH'; 'MPRKAO'; 'EPXMDLCO2H'; 'CO3C4CO3'; 'MXCTEC1OOH'; ...
'HOCH2CH2O2'; 'PEAOH'; 'CO2C5OH'; 'IC3H7NO3'; 'TM135MUO2H'; 'BUTAL2NO3'; 'HO1CO24C6'; 'CO346C8'; 'NDNMXYLOOH'; 'C6PAN2'; ...
'HEX3ONDO'; 'MEKBO'; 'C7M2CO5O'; 'PEAO2'; 'ACCOCOMEO'; 'O'; 'MPRKAOOH'; 'DNMXYOLO'; 'C5CO234OOH'; 'HOC2H4CO3H'; ...
'C5CO2DBCO3'; 'PBN'; 'C6H5CH2O2'; 'PROLNO3'; 'TLFUOH'; 'C23O3MCO3'; 'C82OOH'; 'NMXYOLOOH'; 'C726CO3OH'; 'H2'; ...
'CO25C74OH'; 'HO1CO34C5'; 'CHOMOHCO3'; 'SC4H9OOH'; 'TLEMUCO'; 'HO2CO5C6'; 'TLEMUCOH'; 'HEX3ONCO'; 'NCRESOOH'; 'HOC2H4CO2H'; ...
'MXCATECOOA'; 'TLBIPEROOH'; 'C5DICARB'; 'CO2C3CO3'; 'HO1CO3C4O2'; 'CO25C73OOH'; 'HEXANO3'; 'CHOMOHPAN'; 'NPTLQO'; 'NTM135OLO'; ...
'NNCATECOOH'; 'TLFUO'; 'TM135BPOOH'; 'C5OHCO4OOH'; 'HOC2H4CO3'; 'DNPHENO'; 'MMALNHY2OH'; 'C2H5OOH'; 'HO2C6NO3'; 'C63O'; ...
'HO13C4O'; 'C23O3MCPAN'; 'C6CO23HO5'; 'PECO2'; 'NO'; 'C4COMOHPAN'; 'NA'; 'HO2C4NO3'; 'PE2ENEBO2'; 'PBZN'; ...
'ACCOMECO3'; 'TLFUONE'; 'HEPT3ONE'; 'DNMXYOLO2'; 'BU1ENO3OOH'; 'EPXMKTCO3'; 'HO4C5CO3'; 'TLEPOXMUC'; 'C4M2ALOHO2'; 'EGLYOX'; ...
'CH3CO2H'; 'HO14C6'; 'C7CO2OCO3H'; 'HO13C4O2'; 'C4MCODBPAN'; 'CO2C3CHO'; 'C81O2'; 'HOCO4C5OOH'; 'HOC3H6CO2H'; 'C72OOH'; ...
'DIEK'; 'C5CO243OH'; 'C71OOH'; 'C5DIALCO'; 'C615CO2OOH'; 'CO23C3CHO'; 'HO2C4CO3'; 'PECOH'; 'TM135BP2OH'; 'C6PAN22'; ...
'PRNO3CO3'; 'BUTONENO3'; 'MNCATECO2'; 'BUT2OLOOH'; 'MNCATECH'; 'HO25C7'; 'HO25C6'; 'MXYFUO2'; 'NPHEN1O2'; 'MEK'; ...
'CO245C7'; 'C6HOCOOOH'; 'CO2C4CO3H'; 'NCATECOOH'; 'NBUTOLBO2'; 'C7M2CO5O2'; 'MNCATECOOH'; 'C3MDIALO2'; 'HO2CO4CHO'; 'TLEMUCPAN'; ...
'C4MALOHOOH'; 'HEX2ONANO3'; 'BZOBIPEROH'; 'PROPOLNO3'; 'C6CO3HO14'; 'HO2C5OOH'; 'HO3C86O2'; 'DMPHO'; 'MXYFUOOH'; 'CO2C4CO3'; ...
'C4OHCO3'; 'CO3C75O2'; 'HOC3H6CHO'; 'NBZQOOH'; 'CO24C53OOH'; 'C5H11CHO'; 'HO1C6NO3'; 'MXYQONE'; 'OCT3ONE'; 'C3H7CO3'; ...
'CO3C75OOH'; 'HCOCOHPAN'; 'C83O2'; 'NMXYOL1OOH'; 'HEXCNO3'; 'PRNO3CO2H'; 'HEXBO'; 'BENZAL'; 'C3MDIALOH'; 'C4M2ALOHO'; ...
'BZBIPER2OH'; 'DNCRESO2'; 'HO2C5O'; 'C7M2CO5OH'; 'MEKANO3'; 'HO2C5NO3'; 'NO3CH2PAN'; 'C6CO134OOH'; 'C23O3CCO3H'; 'DNCRESO'; ...
'HO3C4CO3H'; 'PBZQOOH'; 'ACCOMECHO'; 'CO3C4NO3'; 'HOCO3C54O'; 'MALDIALO2'; 'HEX3ONDNO3'; 'PECNO3'; 'CO25C74OOH'; 'HEX2ONBO'; ...
'C7236CO'; 'C42NO33O2'; 'C5DIALO'; 'C61CO'; };

RO2ToAdd = {...
'CH3O2'; 'CH3CO3'; 'HCOCH2O2'; 'C2H5O2'; 'IC3H7O2'; 'NC3H7O2'; 'NC4H9O2'; 'SC4H9O2'; 'PEAO2'; 'PEBO2'; ...
'PECO2'; 'HEXAO2'; 'HEXBO2'; 'HEXCO2'; 'HEPTO2'; 'OCTO2'; 'ETHENO3O2'; 'HOCH2CH2O2'; 'PRONO3AO2'; 'PRONO3BO2'; ...
'HYPROPO2'; 'IPROPOLO2'; 'C42NO33O2'; 'BUT2OLO2'; 'BZBIPERO2'; 'C6H5CH2O2'; 'TLBIPERO2'; 'MXYLO2'; 'MXYBIPERO2'; 'TMBO2'; ...
'TM135BPRO2'; 'BZEMUCCO3'; 'BZEMUCO2'; 'C5DIALO2'; 'NPHENO2'; 'PHENO2'; 'CRESO2'; 'NCRESO2'; 'TLEMUCCO3'; 'TLEMUCO2'; ...
'C615CO2O2'; 'MXYMUCCO3'; 'MXYMUCO2'; 'C726CO5O2'; 'MXYOLO2'; 'NMXYOLO2'; 'NTM135OLO2'; 'TM135OLO2'; 'TM135MUCO3'; 'TM135MUCO2'; ...
'C7M2CO5O2'; 'HOCH2CO3'; 'CH3COCH2O2'; 'C2H5CO3'; 'HO1C3O2'; 'HO1C4O2'; 'C3H7CO3'; 'BUTALO2'; 'NBUTOLAO2'; 'NBUTOLBO2'; ...
'MEKAO2'; 'MEKBO2'; 'MEKCO2'; 'HO1C5O2'; 'C4H9CO3'; 'C4CHOBO2'; 'HO2C5O2'; 'CO2C54O2'; 'MPRKAO2'; 'DIEKAO2'; ...
'DIEKBO2'; 'HO3C5O2'; 'PE2ENEBO2'; 'HO1C6O2'; 'C5H11CO3'; 'HO2C6O2'; 'HEX2ONAO2'; 'HEX2ONBO2'; 'HEX2ONCO2'; 'HO3C6O2'; ...
'HEX3ONAO2'; 'HEX3ONBO2'; 'HEX3ONCO2'; 'HEX3ONDO2'; 'HO3C76O2'; 'CO3C75O2'; 'HO3C86O2'; 'CO3C85O2'; 'NO3CH2CO3'; 'PRNO3CO3'; ...
'CH3CHOHCO3'; 'MALDIALCO3'; 'EPXDLCO3'; 'C3DIALO2'; 'MALDIALO2'; 'C6H5O2'; 'C6H5CO3'; 'OXYL1O2'; 'C5CO14O2'; 'MXYLCO3'; ...
'MXYL1O2'; 'C3MCODBCO3'; 'EPXMDLCO3'; 'C3MDIALO2'; 'MXY1O2'; 'TMBCO3'; 'DMPHO2'; 'C4MCODBCO3'; 'EPXMKTCO3'; 'CO24C53O2'; ...
'HCOCO3'; 'BU1ENO3O2'; 'C43NO34O2'; 'HO3C4O2'; 'BIACETO2'; 'NBZFUO2'; 'BZFUO2'; 'HCOCOHCO3'; 'CATEC1O2'; 'MCATEC1O2'; ...
'MC3CODBCO3'; 'C4M2ALOHO2'; 'C5DICARBO2'; 'NTLFUO2'; 'TLFUO2'; 'C5MCO2OHO2'; 'NMXYFUO2'; 'C23O3MO2'; 'MXYFUO2'; 'NPXYFUO2'; ...
'MCOCOMOXO2'; 'PXYFUO2'; 'MXCATEC1O2'; 'HOC2H4CO3'; 'HOC3H6CO3'; 'CO2C3CO3'; 'HO2C3CO3'; 'HO1CO3C4O2'; 'C51O2'; 'CO3C4CO3'; ...
'HO3C4CO3'; 'HO2C4O2'; 'HO2C4CO3'; 'HO2CO4C5O2'; 'CO23C54O2'; 'HOCO3C54O2'; 'HO13C5O2'; 'C63O2'; 'C61O2'; 'CO2HOC61O2'; ...
'CO24C6O2'; 'CO25C6O2'; 'CO23C65O2'; 'HO3C5CO3'; 'C6CO3OH5O2'; 'C6CO34O2'; 'C6HO1CO3O2'; 'C3COCCO3'; 'PEN2ONE1O2'; 'C71O2'; ...
'C82O2'; 'C81O2'; 'NPHEN1O2'; 'NNCATECO2'; 'NCATECO2'; 'NBZQO2'; 'PBZQO2'; 'NPTLQO2'; 'PTLQO2'; 'NCRES1O2'; ...
'MNNCATECO2'; 'MNCATECO2'; 'MECOACETO2'; 'CO2H3CO3'; 'C534O2'; 'CHOMOHCO3'; 'NMXYOL1O2'; 'NMXYQO2'; 'MXYQO2'; 'MXNNCATCO2'; ...
'MXNCATECO2'; 'C5CO234O2'; 'CO2C4CO3'; 'CO3C5CO3'; 'CO3C4NO3O2'; 'HO3C3CO3'; 'C72O2'; 'CO25C73O2'; 'CO25C74O2'; 'C84O2'; ...
'MALANHYO2'; 'NDNPHENO2'; 'DNPHENO2'; 'NDNCRESO2'; 'DNCRESO2'; 'C535O2'; 'ACCOCOMEO2'; 'MMALANHYO2'; 'CH3COCO3'; 'NDNMXYOLO2'; ...
'DNMXYOLO2'; 'MXYOHNO2O2'; 'HO13C4O2'; 'C62O2'; 'HO4C5CO3'; 'C5CO2OHCO3'; 'C6CO2OHCO3'; 'ACCOMECO3'; 'C4COMOHCO3'; 'C23O3MCO3'; ...
'C23O3CCO3'; 'C7CO2OHCO3'; 'HCOCH2CO3'; 'CO23C4CO3'; 'C5CO34CO3'; 'C73O2'; 'C74O2'; 'C83O2'; 'PE1ENEBO2'; 'C4CO2DBCO3'; ...
'C5CO2DBCO3'; 'HO13C3CO3'; 'C5CO23O2'; 'C4OHCO3'; 'C5OH2CO4O2'; };

AddSpecies

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 5.6e-34.*.78.*M.*(T./300).^-2.6.*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 6.0e-34.*.21.*M.*(T./300).^-2.6.*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O + O3 =';
k(:,i) = 8.0e-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = 'O + NO = NO2';
k(:,i) = KMT01;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO'; 
fO(i)=fO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O + NO2 = NO';
k(:,i) = 5.5e-12.*exp(188./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2'; 
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'O + NO2 = NO3';
k(:,i) = KMT02;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2'; 
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 3.2e-11.*exp(67./T).*.21.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 2.0e-11.*exp(130./T).*.78.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO + O3 = NO2';
k(:,i) = 1.4e-12.*exp(-1310./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3'; 
fNO(i)=fNO(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.4e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO3 = NO2 + NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = NO + NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = N2O5';
k(:,i) = KMT03;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = 'O1D = OH + OH';
k(:,i) = 2.14e-10.*H2O;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + O3 = HO2';
k(:,i) = 1.70e-12.*exp(-940./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3'; 
fOH(i)=fOH(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO = HO2';
k(:,i) = KMT05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2'; 
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + O3 = OH';
k(:,i) = 2.03e-16.*(T./300).^4.57.*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3'; 
fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2 =';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.20e-13.*KMT06.*exp(600./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 1.90e-33.*M.*KMT06.*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO = HONO';
k(:,i) = KMT07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO'; 
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = KMT08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO3 = HO2 + NO2';
k(:,i) = 2.0e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO = OH + NO2';
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO2 = HO2NO2';
k(:,i) = KMT09;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2NO2 = NO2';
k(:,i) = 3.2e-13.*exp(690./T).*1.0;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3 = OH + NO2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HONO = NO2';
k(:,i) = 2.5e-12.*exp(260./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO'; 
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = KMT11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O + SO2 = SO3';
k(:,i) = 4.0e-32.*exp(-1000./T).*M;
Gstr{i,1} = 'O'; Gstr{i,2} = 'SO2'; 
fO(i)=fO(i)-1; fSO2(i)=fSO2(i)-1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + SO2 = HSO3';
k(:,i) = KMT12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHSO3(i)=fHSO3(i)+1; 

i=i+1;
Rnames{i} = 'HSO3 = HO2 + SO3';
k(:,i) = 1.3e-12.*exp(-330./T).*.21.*M;
Gstr{i,1} = 'HSO3'; 
fHSO3(i)=fHSO3(i)-1; fHO2(i)=fHO2(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 = NA';
k(:,i) = 6.00e-06;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NA + NA';
k(:,i) = 4.00e-04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNA(i)=fNA(i)+1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'SO3 = SA';
k(:,i) = 1.20e-15.*H2O;
Gstr{i,1} = 'SO3'; 
fSO3(i)=fSO3(i)-1; fSA(i)=fSA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O1D';
k(:,i) = J1;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O';
k(:,i) = J2;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + hv = OH + OH';
k(:,i) = J3;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + hv = NO + O';
k(:,i) = J4;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO';
k(:,i) = J5;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO2 + O';
k(:,i) = J6;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'HONO + hv = OH + NO';
k(:,i) = J7;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + hv = OH + NO2';
k(:,i) = J8;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NO2 + NO3';
k(:,i) = KMT04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2NO2 = HO2 + NO2';
k(:,i) = KMT10;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = CO + HO2 + HO2';
k(:,i) = J11;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = H2 + CO';
k(:,i) = J12;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HCHO = HNO3 + CO + HO2';
k(:,i) = 5.5e-16;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HCHO'; 
fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCHO = HO2 + CO';
k(:,i) = 5.4e-12.*exp(135./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + hv = CH3O2 + HO2 + CO';
k(:,i) = J13;
Gstr{i,1} = 'CH3CHO'; 
fCH3CHO(i)=fCH3CHO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CH3CHO = HNO3 + CH3CO3';
k(:,i) = 1.4e-12.*exp(-1860./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CH3CHO'; 
fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CHO = CH3CO3';
k(:,i) = 4.7e-12.*exp(345./T).*0.95;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CHO'; 
fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CHO = HCOCH2O2';
k(:,i) = 4.7e-12.*exp(345./T).*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CHO'; 
fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + C2H6 = C2H5O2';
k(:,i) = 8.3e-11.*exp(-100./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H6'; 
fCL(i)=fCL(i)-1; fC2H6(i)=fC2H6(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H6 = C2H5O2';
k(:,i) = 6.9e-12.*exp(-1000./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H6'; 
fOH(i)=fOH(i)-1; fC2H6(i)=fC2H6(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + C3H8 = IC3H7O2';
k(:,i) = 1.4e-10.*0.43.*exp(75./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H8'; 
fCL(i)=fCL(i)-1; fC3H8(i)=fC3H8(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + C3H8 = NC3H7O2';
k(:,i) = 1.4e-10.*0.59.*exp(-90./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H8'; 
fCL(i)=fCL(i)-1; fC3H8(i)=fC3H8(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H8 = IC3H7O2';
k(:,i) = 7.6e-12.*exp(-585./T).*0.736;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H8'; 
fOH(i)=fOH(i)-1; fC3H8(i)=fC3H8(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H8 = NC3H7O2';
k(:,i) = 7.6e-12.*exp(-585./T).*0.264;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H8'; 
fOH(i)=fOH(i)-1; fC3H8(i)=fC3H8(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC4H10 = NC4H9O2';
k(:,i) = 2.05e-10.*0.44.*exp(-120./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC4H10'; 
fCL(i)=fCL(i)-1; fNC4H10(i)=fNC4H10(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC4H10 = SC4H9O2';
k(:,i) = 2.05e-10.*0.59.*exp(55./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC4H10'; 
fCL(i)=fCL(i)-1; fNC4H10(i)=fNC4H10(i)-1; fSC4H9O2(i)=fSC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4H10 = NC4H9O2';
k(:,i) = 9.8e-12.*exp(-425./T).*0.127;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4H10'; 
fOH(i)=fOH(i)-1; fNC4H10(i)=fNC4H10(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4H10 = SC4H9O2';
k(:,i) = 9.8e-12.*exp(-425./T).*0.873;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4H10'; 
fOH(i)=fOH(i)-1; fNC4H10(i)=fNC4H10(i)-1; fSC4H9O2(i)=fSC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC5H12 = PEAO2';
k(:,i) = 2.80e-10.*0.222;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC5H12'; 
fCL(i)=fCL(i)-1; fNC5H12(i)=fNC5H12(i)-1; fPEAO2(i)=fPEAO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC5H12 = PEBO2';
k(:,i) = 2.80e-10.*0.558;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC5H12'; 
fCL(i)=fCL(i)-1; fNC5H12(i)=fNC5H12(i)-1; fPEBO2(i)=fPEBO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC5H12 = PECO2';
k(:,i) = 2.80e-10.*0.220;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC5H12'; 
fCL(i)=fCL(i)-1; fNC5H12(i)=fNC5H12(i)-1; fPECO2(i)=fPECO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC5H12 = PEAO2';
k(:,i) = 2.44e-17.*T.^2.*exp(183./T).*0.083;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC5H12'; 
fOH(i)=fOH(i)-1; fNC5H12(i)=fNC5H12(i)-1; fPEAO2(i)=fPEAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC5H12 = PEBO2';
k(:,i) = 2.44e-17.*T.^2.*exp(183./T).*0.568;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC5H12'; 
fOH(i)=fOH(i)-1; fNC5H12(i)=fNC5H12(i)-1; fPEBO2(i)=fPEBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC5H12 = PECO2';
k(:,i) = 2.44e-17.*T.^2.*exp(183./T).*0.349;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC5H12'; 
fOH(i)=fOH(i)-1; fNC5H12(i)=fNC5H12(i)-1; fPECO2(i)=fPECO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC6H14 = HEXAO2';
k(:,i) = 3.40e-10.*0.182;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC6H14'; 
fCL(i)=fCL(i)-1; fNC6H14(i)=fNC6H14(i)-1; fHEXAO2(i)=fHEXAO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC6H14 = HEXBO2';
k(:,i) = 3.40e-10.*0.457;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC6H14'; 
fCL(i)=fCL(i)-1; fNC6H14(i)=fNC6H14(i)-1; fHEXBO2(i)=fHEXBO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC6H14 = HEXCO2';
k(:,i) = 3.40e-10.*0.361;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC6H14'; 
fCL(i)=fCL(i)-1; fNC6H14(i)=fNC6H14(i)-1; fHEXCO2(i)=fHEXCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC6H14 = HEXAO2';
k(:,i) = 1.53e-17.*T.^2.*exp(414./T).*0.061;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC6H14'; 
fOH(i)=fOH(i)-1; fNC6H14(i)=fNC6H14(i)-1; fHEXAO2(i)=fHEXAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC6H14 = HEXBO2';
k(:,i) = 1.53e-17.*T.^2.*exp(414./T).*0.421;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC6H14'; 
fOH(i)=fOH(i)-1; fNC6H14(i)=fNC6H14(i)-1; fHEXBO2(i)=fHEXBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC6H14 = HEXCO2';
k(:,i) = 1.53e-17.*T.^2.*exp(414./T).*0.518;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC6H14'; 
fOH(i)=fOH(i)-1; fNC6H14(i)=fNC6H14(i)-1; fHEXCO2(i)=fHEXCO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC7H16 = HEPTO2';
k(:,i) = 3.90e-10;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC7H16'; 
fCL(i)=fCL(i)-1; fNC7H16(i)=fNC7H16(i)-1; fHEPTO2(i)=fHEPTO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC7H16 = HEPTO2';
k(:,i) = 1.59e-17.*T.^2.*exp(478./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC7H16'; 
fOH(i)=fOH(i)-1; fNC7H16(i)=fNC7H16(i)-1; fHEPTO2(i)=fHEPTO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + NC8H18 = OCTO2';
k(:,i) = 4.60e-10;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NC8H18'; 
fCL(i)=fCL(i)-1; fNC8H18(i)=fNC8H18(i)-1; fOCTO2(i)=fOCTO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC8H18 = OCTO2';
k(:,i) = 2.76e-17.*T.^2.*exp(378./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC8H18'; 
fOH(i)=fOH(i)-1; fNC8H18(i)=fNC8H18(i)-1; fOCTO2(i)=fOCTO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + NO3 = ETHENO3O2';
k(:,i) = 3.3e-12.*exp(-2880./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'NO3'; 
fC2H4(i)=fC2H4(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + O3 = HCHO + CH2OOA';
k(:,i) = 9.1e-15.*exp(-2580./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'O3'; 
fC2H4(i)=fC2H4(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH2OOA(i)=fCH2OOA(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + OH = HOCH2CH2O2';
k(:,i) = KMT15;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'OH'; 
fC2H4(i)=fC2H4(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C3H6 = PRONO3AO2';
k(:,i) = 4.6e-13.*exp(-1155./T).*0.35;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C3H6'; 
fNO3(i)=fNO3(i)-1; fC3H6(i)=fC3H6(i)-1; fPRONO3AO2(i)=fPRONO3AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C3H6 = PRONO3BO2';
k(:,i) = 4.6e-13.*exp(-1155./T).*0.65;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C3H6'; 
fNO3(i)=fNO3(i)-1; fC3H6(i)=fC3H6(i)-1; fPRONO3BO2(i)=fPRONO3BO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C3H6 = CH2OOB + CH3CHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C3H6'; 
fO3(i)=fO3(i)-1; fC3H6(i)=fC3H6(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C3H6 = CH3CHOOA + HCHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C3H6'; 
fO3(i)=fO3(i)-1; fC3H6(i)=fC3H6(i)-1; fCH3CHOOA(i)=fCH3CHOOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H6 = HYPROPO2';
k(:,i) = KMT16.*0.87;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H6'; 
fOH(i)=fOH(i)-1; fC3H6(i)=fC3H6(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H6 = IPROPOLO2';
k(:,i) = KMT16.*0.13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H6'; 
fOH(i)=fOH(i)-1; fC3H6(i)=fC3H6(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'TBUT2ENE + NO3 = C42NO33O2';
k(:,i) = 3.90e-13;
Gstr{i,1} = 'TBUT2ENE'; Gstr{i,2} = 'NO3'; 
fTBUT2ENE(i)=fTBUT2ENE(i)-1; fNO3(i)=fNO3(i)-1; fC42NO33O2(i)=fC42NO33O2(i)+1; 

i=i+1;
Rnames{i} = 'TBUT2ENE + O3 = CH3CHO + CH3CHOOB';
k(:,i) = 6.64e-15.*exp(-1059./T);
Gstr{i,1} = 'TBUT2ENE'; Gstr{i,2} = 'O3'; 
fTBUT2ENE(i)=fTBUT2ENE(i)-1; fO3(i)=fO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHOOB(i)=fCH3CHOOB(i)+1; 

i=i+1;
Rnames{i} = 'TBUT2ENE + OH = BUT2OLO2';
k(:,i) = 1.01e-11.*exp(550./T);
Gstr{i,1} = 'TBUT2ENE'; Gstr{i,2} = 'OH'; 
fTBUT2ENE(i)=fTBUT2ENE(i)-1; fOH(i)=fOH(i)-1; fBUT2OLO2(i)=fBUT2OLO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = BZBIPERO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.352;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fBZBIPERO2(i)=fBZBIPERO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = BZEPOXMUC + HO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.118;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fBZEPOXMUC(i)=fBZEPOXMUC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = PHENOL + HO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.53;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fPHENOL(i)=fPHENOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TOLUENE + OH = C6H5CH2O2';
k(:,i) = 1.8e-12.*exp(340./T).*0.07;
Gstr{i,1} = 'TOLUENE'; Gstr{i,2} = 'OH'; 
fTOLUENE(i)=fTOLUENE(i)-1; fOH(i)=fOH(i)-1; fC6H5CH2O2(i)=fC6H5CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'TOLUENE + OH = CRESOL + HO2';
k(:,i) = 1.8e-12.*exp(340./T).*0.18;
Gstr{i,1} = 'TOLUENE'; Gstr{i,2} = 'OH'; 
fTOLUENE(i)=fTOLUENE(i)-1; fOH(i)=fOH(i)-1; fCRESOL(i)=fCRESOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TOLUENE + OH = TLBIPERO2';
k(:,i) = 1.8e-12.*exp(340./T).*0.65;
Gstr{i,1} = 'TOLUENE'; Gstr{i,2} = 'OH'; 
fTOLUENE(i)=fTOLUENE(i)-1; fOH(i)=fOH(i)-1; fTLBIPERO2(i)=fTLBIPERO2(i)+1; 

i=i+1;
Rnames{i} = 'TOLUENE + OH = TLEPOXMUC + HO2';
k(:,i) = 1.8e-12.*exp(340./T).*0.10;
Gstr{i,1} = 'TOLUENE'; Gstr{i,2} = 'OH'; 
fTOLUENE(i)=fTOLUENE(i)-1; fOH(i)=fOH(i)-1; fTLEPOXMUC(i)=fTLEPOXMUC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + NO3 = MXYLO2 + HNO3';
k(:,i) = 2.60e-16;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'NO3'; 
fMXYL(i)=fMXYL(i)-1; fNO3(i)=fNO3(i)-1; fMXYLO2(i)=fMXYLO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + OH = MXYBIPERO2';
k(:,i) = 2.31e-11.*0.50;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'OH'; 
fMXYL(i)=fMXYL(i)-1; fOH(i)=fOH(i)-1; fMXYBIPERO2(i)=fMXYBIPERO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + OH = MXYEPOXMUC + HO2';
k(:,i) = 2.31e-11.*0.29;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'OH'; 
fMXYL(i)=fMXYL(i)-1; fOH(i)=fOH(i)-1; fMXYEPOXMUC(i)=fMXYEPOXMUC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + OH = MXYLO2';
k(:,i) = 2.31e-11.*0.04;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'OH'; 
fMXYL(i)=fMXYL(i)-1; fOH(i)=fOH(i)-1; fMXYLO2(i)=fMXYLO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + OH = MXYLOL + HO2';
k(:,i) = 2.31e-11.*0.17;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'OH'; 
fMXYL(i)=fMXYL(i)-1; fOH(i)=fOH(i)-1; fMXYLOL(i)=fMXYLOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135B + NO3 = TMBO2 + HNO3';
k(:,i) = 8.80e-16;
Gstr{i,1} = 'TM135B'; Gstr{i,2} = 'NO3'; 
fTM135B(i)=fTM135B(i)-1; fNO3(i)=fNO3(i)-1; fTMBO2(i)=fTMBO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135B + OH = TM135BPRO2';
k(:,i) = 5.67e-11.*0.79;
Gstr{i,1} = 'TM135B'; Gstr{i,2} = 'OH'; 
fTM135B(i)=fTM135B(i)-1; fOH(i)=fOH(i)-1; fTM135BPRO2(i)=fTM135BPRO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135B + OH = TM135BZOL + HO2';
k(:,i) = 5.67e-11.*0.04;
Gstr{i,1} = 'TM135B'; Gstr{i,2} = 'OH'; 
fTM135B(i)=fTM135B(i)-1; fOH(i)=fOH(i)-1; fTM135BZOL(i)=fTM135BZOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135B + OH = TM135OXMUC + HO2';
k(:,i) = 5.67e-11.*0.14;
Gstr{i,1} = 'TM135B'; Gstr{i,2} = 'OH'; 
fTM135B(i)=fTM135B(i)-1; fOH(i)=fOH(i)-1; fTM135OXMUC(i)=fTM135OXMUC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135B + OH = TMBO2';
k(:,i) = 5.67e-11.*0.03;
Gstr{i,1} = 'TM135B'; Gstr{i,2} = 'OH'; 
fTM135B(i)=fTM135B(i)-1; fOH(i)=fOH(i)-1; fTMBO2(i)=fTMBO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = CH3OOH';
k(:,i) = 3.8e-13.*exp(780./T).*(1-1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3OOH(i)=fCH3OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = HCHO';
k(:,i) = 3.8e-13.*exp(780./T).*(1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3NO3';
k(:,i) = 2.3e-12.*exp(360./T).*0.001;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3NO3(i)=fCH3NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3O + NO2';
k(:,i) = 2.3e-12.*exp(360./T).*0.999;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO2 = CH3O2NO2';
k(:,i) = KMT13;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO2'; 
fCH3O2(i)=fCH3O2(i)-1; fNO2(i)=fNO2(i)-1; fCH3O2NO2(i)=fCH3O2NO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO3 = CH3O + NO2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO3'; 
fCH3O2(i)=fCH3O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3O';
k(:,i) = 2.*KCH3O2.*7.18.*exp(-885./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3O(i)=fCH3O(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3OH';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3OH(i)=fCH3OH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = HCHO';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3H(i)=fCH3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO = NO2 + CH3O2';
k(:,i) = 7.5e-12.*exp(290./T);
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO2 = PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO3 = NO2 + CH3O2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO3'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + HO2 = HCOCH2OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'HO2'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO = NO2 + HCOCH2O';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO3 = HCOCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO3'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = GLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = HCOCH2O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = HOCH2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + HO2 = C2H5OOH';
k(:,i) = 4.3e-13.*exp(870./T);
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'HO2'; 
fC2H5O2(i)=fC2H5O2(i)-1; fHO2(i)=fHO2(i)-1; fC2H5OOH(i)=fC2H5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5NO3';
k(:,i) = 2.55e-12.*exp(380./T).*0.009;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5NO3(i)=fC2H5NO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5O + NO2';
k(:,i) = 2.55e-12.*exp(380./T).*0.991;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO3 = C2H5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO3'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5O';
k(:,i) = 2.*(KCH3O2.*6.4e-14).^0.5.*0.6;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5O(i)=fC2H5O(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5OH';
k(:,i) = 2.*(KCH3O2.*6.4e-14).^0.5.*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5OH(i)=fC2H5OH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = CH3CHO';
k(:,i) = 2.*(KCH3O2.*6.4e-14).^0.5.*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + HO2 = IC3H7OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'HO2'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fHO2(i)=fHO2(i)-1; fIC3H7OOH(i)=fIC3H7OOH(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO = IC3H7NO3';
k(:,i) = 2.7e-12.*exp(360./T).*0.042;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO(i)=fNO(i)-1; fIC3H7NO3(i)=fIC3H7NO3(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO = IC3H7O + NO2';
k(:,i) = 2.7e-12.*exp(360./T).*0.958;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO(i)=fNO(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO3 = IC3H7O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO3'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO3(i)=fNO3(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = CH3COCH3';
k(:,i) = 2.*(KCH3O2.*1.6e-12.*exp(-2200./T)).^0.5.*0.2;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = IC3H7O';
k(:,i) = 2.*(KCH3O2.*1.6e-12.*exp(-2200./T)).^0.5.*0.6;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = IPROPOL';
k(:,i) = 2.*(KCH3O2.*1.6e-12.*exp(-2200./T)).^0.5.*0.2;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fIPROPOL(i)=fIPROPOL(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + HO2 = NC3H7OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'HO2'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fHO2(i)=fHO2(i)-1; fNC3H7OOH(i)=fNC3H7OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + NO = NC3H7NO3';
k(:,i) = 2.9e-12.*exp(350./T).*0.020;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'NO'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fNO(i)=fNO(i)-1; fNC3H7NO3(i)=fNC3H7NO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + NO = NC3H7O + NO2';
k(:,i) = 2.9e-12.*exp(350./T).*0.980;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'NO'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fNO(i)=fNO(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + NO3 = NC3H7O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'NO3'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fNO3(i)=fNO3(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + RO2 = C2H5CHO';
k(:,i) = 2.*(K298CH3O2.*3e-13).^0.5.*0.2;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'RO2';
fNC3H7O2(i)=fNC3H7O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + RO2 = NC3H7O';
k(:,i) = 2.*(K298CH3O2.*3e-13).^0.5.*0.6;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'RO2';
fNC3H7O2(i)=fNC3H7O2(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + RO2 = NPROPOL';
k(:,i) = 2.*(K298CH3O2.*3e-13).^0.5.*0.2;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'RO2';
fNC3H7O2(i)=fNC3H7O2(i)-1; fNPROPOL(i)=fNPROPOL(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + HO2 = NC4H9OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'HO2'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fHO2(i)=fHO2(i)-1; fNC4H9OOH(i)=fNC4H9OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + NO = NC4H9NO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'NO'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fNO(i)=fNO(i)-1; fNC4H9NO3(i)=fNC4H9NO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + NO = NC4H9O + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'NO'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fNO(i)=fNO(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + NO3 = NC4H9O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'NO3'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fNO3(i)=fNO3(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + RO2 = C3H7CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'RO2';
fNC4H9O2(i)=fNC4H9O2(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + RO2 = NBUTOL';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'RO2';
fNC4H9O2(i)=fNC4H9O2(i)-1; fNBUTOL(i)=fNBUTOL(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + RO2 = NC4H9O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'RO2';
fNC4H9O2(i)=fNC4H9O2(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + HO2 = SC4H9OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'HO2'; 
fSC4H9O2(i)=fSC4H9O2(i)-1; fHO2(i)=fHO2(i)-1; fSC4H9OOH(i)=fSC4H9OOH(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + NO = SC4H9NO3';
k(:,i) = KRO2NO.*0.090;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'NO'; 
fSC4H9O2(i)=fSC4H9O2(i)-1; fNO(i)=fNO(i)-1; fSC4H9NO3(i)=fSC4H9NO3(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + NO = SC4H9O + NO2';
k(:,i) = KRO2NO.*0.910;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'NO'; 
fSC4H9O2(i)=fSC4H9O2(i)-1; fNO(i)=fNO(i)-1; fSC4H9O(i)=fSC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + NO3 = SC4H9O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'NO3'; 
fSC4H9O2(i)=fSC4H9O2(i)-1; fNO3(i)=fNO3(i)-1; fSC4H9O(i)=fSC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + RO2 = BUT2OL';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'RO2';
fSC4H9O2(i)=fSC4H9O2(i)-1; fBUT2OL(i)=fBUT2OL(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + RO2 = MEK';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'RO2';
fSC4H9O2(i)=fSC4H9O2(i)-1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O2 + RO2 = SC4H9O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'SC4H9O2'; Gstr{i,2} = 'RO2';
fSC4H9O2(i)=fSC4H9O2(i)-1; fSC4H9O(i)=fSC4H9O(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + HO2 = PEAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'HO2'; 
fPEAO2(i)=fPEAO2(i)-1; fHO2(i)=fHO2(i)-1; fPEAOOH(i)=fPEAOOH(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + NO = PEANO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'NO'; 
fPEAO2(i)=fPEAO2(i)-1; fNO(i)=fNO(i)-1; fPEANO3(i)=fPEANO3(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + NO = PEAO + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'NO'; 
fPEAO2(i)=fPEAO2(i)-1; fNO(i)=fNO(i)-1; fPEAO(i)=fPEAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + NO3 = PEAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'NO3'; 
fPEAO2(i)=fPEAO2(i)-1; fNO3(i)=fNO3(i)-1; fPEAO(i)=fPEAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + RO2 = C4H9CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'RO2';
fPEAO2(i)=fPEAO2(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + RO2 = PEAO';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'RO2';
fPEAO2(i)=fPEAO2(i)-1; fPEAO(i)=fPEAO(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + RO2 = PEAOH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'RO2';
fPEAO2(i)=fPEAO2(i)-1; fPEAOH(i)=fPEAOH(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + HO2 = PEBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'HO2'; 
fPEBO2(i)=fPEBO2(i)-1; fHO2(i)=fHO2(i)-1; fPEBOOH(i)=fPEBOOH(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + NO = PEBNO3';
k(:,i) = KRO2NO.*0.129;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'NO'; 
fPEBO2(i)=fPEBO2(i)-1; fNO(i)=fNO(i)-1; fPEBNO3(i)=fPEBNO3(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + NO = PEBO + NO2';
k(:,i) = KRO2NO.*0.871;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'NO'; 
fPEBO2(i)=fPEBO2(i)-1; fNO(i)=fNO(i)-1; fPEBO(i)=fPEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + NO3 = PEBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'NO3'; 
fPEBO2(i)=fPEBO2(i)-1; fNO3(i)=fNO3(i)-1; fPEBO(i)=fPEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + RO2 = MPRK';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'RO2';
fPEBO2(i)=fPEBO2(i)-1; fMPRK(i)=fMPRK(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + RO2 = PEBO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'RO2';
fPEBO2(i)=fPEBO2(i)-1; fPEBO(i)=fPEBO(i)+1; 

i=i+1;
Rnames{i} = 'PEBO2 + RO2 = PEBOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'PEBO2'; Gstr{i,2} = 'RO2';
fPEBO2(i)=fPEBO2(i)-1; fPEBOH(i)=fPEBOH(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + HO2 = PECOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'HO2'; 
fPECO2(i)=fPECO2(i)-1; fHO2(i)=fHO2(i)-1; fPECOOH(i)=fPECOOH(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + NO = PECNO3';
k(:,i) = KRO2NO.*0.131;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'NO'; 
fPECO2(i)=fPECO2(i)-1; fNO(i)=fNO(i)-1; fPECNO3(i)=fPECNO3(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + NO = PECO + NO2';
k(:,i) = KRO2NO.*0.869;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'NO'; 
fPECO2(i)=fPECO2(i)-1; fNO(i)=fNO(i)-1; fPECO(i)=fPECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + NO3 = PECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'NO3'; 
fPECO2(i)=fPECO2(i)-1; fNO3(i)=fNO3(i)-1; fPECO(i)=fPECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + RO2 = DIEK';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'RO2';
fPECO2(i)=fPECO2(i)-1; fDIEK(i)=fDIEK(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + RO2 = PECO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'RO2';
fPECO2(i)=fPECO2(i)-1; fPECO(i)=fPECO(i)+1; 

i=i+1;
Rnames{i} = 'PECO2 + RO2 = PECOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'PECO2'; Gstr{i,2} = 'RO2';
fPECO2(i)=fPECO2(i)-1; fPECOH(i)=fPECOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + HO2 = HEXAOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'HO2'; 
fHEXAO2(i)=fHEXAO2(i)-1; fHO2(i)=fHO2(i)-1; fHEXAOOH(i)=fHEXAOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + NO = HEXANO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'NO'; 
fHEXAO2(i)=fHEXAO2(i)-1; fNO(i)=fNO(i)-1; fHEXANO3(i)=fHEXANO3(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + NO = HEXAO + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'NO'; 
fHEXAO2(i)=fHEXAO2(i)-1; fNO(i)=fNO(i)-1; fHEXAO(i)=fHEXAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + NO3 = HEXAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'NO3'; 
fHEXAO2(i)=fHEXAO2(i)-1; fNO3(i)=fNO3(i)-1; fHEXAO(i)=fHEXAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + RO2 = C5H11CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'RO2';
fHEXAO2(i)=fHEXAO2(i)-1; fC5H11CHO(i)=fC5H11CHO(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + RO2 = HEXAO';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'RO2';
fHEXAO2(i)=fHEXAO2(i)-1; fHEXAO(i)=fHEXAO(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO2 + RO2 = HEXAOH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HEXAO2'; Gstr{i,2} = 'RO2';
fHEXAO2(i)=fHEXAO2(i)-1; fHEXAOH(i)=fHEXAOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + HO2 = HEXBOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'HO2'; 
fHEXBO2(i)=fHEXBO2(i)-1; fHO2(i)=fHO2(i)-1; fHEXBOOH(i)=fHEXBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + NO = HEXBNO3';
k(:,i) = KRO2NO.*0.209;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'NO'; 
fHEXBO2(i)=fHEXBO2(i)-1; fNO(i)=fNO(i)-1; fHEXBNO3(i)=fHEXBNO3(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + NO = HEXBO + NO2';
k(:,i) = KRO2NO.*0.791;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'NO'; 
fHEXBO2(i)=fHEXBO2(i)-1; fNO(i)=fNO(i)-1; fHEXBO(i)=fHEXBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + NO3 = HEXBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'NO3'; 
fHEXBO2(i)=fHEXBO2(i)-1; fNO3(i)=fNO3(i)-1; fHEXBO(i)=fHEXBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + RO2 = HEX2ONE';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'RO2';
fHEXBO2(i)=fHEXBO2(i)-1; fHEX2ONE(i)=fHEX2ONE(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + RO2 = HEXBO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'RO2';
fHEXBO2(i)=fHEXBO2(i)-1; fHEXBO(i)=fHEXBO(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO2 + RO2 = HEXBOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEXBO2'; Gstr{i,2} = 'RO2';
fHEXBO2(i)=fHEXBO2(i)-1; fHEXBOH(i)=fHEXBOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + HO2 = HEXCOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'HO2'; 
fHEXCO2(i)=fHEXCO2(i)-1; fHO2(i)=fHO2(i)-1; fHEXCOOH(i)=fHEXCOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + NO = HEXCNO3';
k(:,i) = KRO2NO.*0.230;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'NO'; 
fHEXCO2(i)=fHEXCO2(i)-1; fNO(i)=fNO(i)-1; fHEXCNO3(i)=fHEXCNO3(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + NO = HEXCO + NO2';
k(:,i) = KRO2NO.*0.770;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'NO'; 
fHEXCO2(i)=fHEXCO2(i)-1; fNO(i)=fNO(i)-1; fHEXCO(i)=fHEXCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + NO3 = HEXCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'NO3'; 
fHEXCO2(i)=fHEXCO2(i)-1; fNO3(i)=fNO3(i)-1; fHEXCO(i)=fHEXCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + RO2 = HEX3ONE';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'RO2';
fHEXCO2(i)=fHEXCO2(i)-1; fHEX3ONE(i)=fHEX3ONE(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + RO2 = HEXCO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'RO2';
fHEXCO2(i)=fHEXCO2(i)-1; fHEXCO(i)=fHEXCO(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO2 + RO2 = HEXCOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEXCO2'; Gstr{i,2} = 'RO2';
fHEXCO2(i)=fHEXCO2(i)-1; fHEXCOH(i)=fHEXCOH(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + HO2 = HEPTOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'HO2'; 
fHEPTO2(i)=fHEPTO2(i)-1; fHO2(i)=fHO2(i)-1; fHEPTOOH(i)=fHEPTOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + NO = HEPTNO3';
k(:,i) = KRO2NO.*0.278;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'NO'; 
fHEPTO2(i)=fHEPTO2(i)-1; fNO(i)=fNO(i)-1; fHEPTNO3(i)=fHEPTNO3(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + NO = HEPTO + NO2';
k(:,i) = KRO2NO.*0.722;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'NO'; 
fHEPTO2(i)=fHEPTO2(i)-1; fNO(i)=fNO(i)-1; fHEPTO(i)=fHEPTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + NO3 = HEPTO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'NO3'; 
fHEPTO2(i)=fHEPTO2(i)-1; fNO3(i)=fNO3(i)-1; fHEPTO(i)=fHEPTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + RO2 = HEPT3ONE';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'RO2';
fHEPTO2(i)=fHEPTO2(i)-1; fHEPT3ONE(i)=fHEPT3ONE(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + RO2 = HEPTO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'RO2';
fHEPTO2(i)=fHEPTO2(i)-1; fHEPTO(i)=fHEPTO(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO2 + RO2 = HEPTOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEPTO2'; Gstr{i,2} = 'RO2';
fHEPTO2(i)=fHEPTO2(i)-1; fHEPTOH(i)=fHEPTOH(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + HO2 = OCTOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'HO2'; 
fOCTO2(i)=fOCTO2(i)-1; fHO2(i)=fHO2(i)-1; fOCTOOH(i)=fOCTOOH(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + NO = OCTNO3';
k(:,i) = KRO2NO.*0.346;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'NO'; 
fOCTO2(i)=fOCTO2(i)-1; fNO(i)=fNO(i)-1; fOCTNO3(i)=fOCTNO3(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + NO = OCTO + NO2';
k(:,i) = KRO2NO.*0.654;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'NO'; 
fOCTO2(i)=fOCTO2(i)-1; fNO(i)=fNO(i)-1; fOCTO(i)=fOCTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + NO3 = OCTO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'NO3'; 
fOCTO2(i)=fOCTO2(i)-1; fNO3(i)=fNO3(i)-1; fOCTO(i)=fOCTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + RO2 = OCT3ONE';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'RO2';
fOCTO2(i)=fOCTO2(i)-1; fOCT3ONE(i)=fOCT3ONE(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + RO2 = OCTO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'RO2';
fOCTO2(i)=fOCTO2(i)-1; fOCTO(i)=fOCTO(i)+1; 

i=i+1;
Rnames{i} = 'OCTO2 + RO2 = OCTOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'OCTO2'; Gstr{i,2} = 'RO2';
fOCTO2(i)=fOCTO2(i)-1; fOCTOH(i)=fOCTOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + HO2 = ETHO2HNO3';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'HO2'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fHO2(i)=fHO2(i)-1; fETHO2HNO3(i)=fETHO2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO = ETHENO3O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO(i)=fNO(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO3 = ETHENO3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO3'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = ETHENO3O';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = ETHOHNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = NO3CH2CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CH2OO';
k(:,i) = KDEC.*0.37;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CO';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = HO2 + CO + OH';
k(:,i) = KDEC.*0.13;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + HO2 = HYETHO2H';
k(:,i) = 1.53e-13.*exp(1300./T);
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'HO2'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYETHO2H(i)=fHYETHO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = ETHOHNO3';
k(:,i) = KRO2NO.*0.005;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = HOCH2CH2O + NO2';
k(:,i) = KRO2NO.*0.995;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO3 = HOCH2CH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO3'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = ETHGLY';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fETHGLY(i)=fETHGLY(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HOCH2CH2O';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.6;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HOCH2CHO';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + HO2 = PR1O2HNO3';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'HO2'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fHO2(i)=fHO2(i)-1; fPR1O2HNO3(i)=fPR1O2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + NO = PRONO3AO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'NO'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fNO(i)=fNO(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + NO3 = PRONO3AO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'NO3'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fNO3(i)=fNO3(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + RO2 = CHOPRNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + RO2 = PRONO3AO';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + RO2 = PROPOLNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + HO2 = PR2O2HNO3';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'HO2'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fHO2(i)=fHO2(i)-1; fPR2O2HNO3(i)=fPR2O2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + NO = PRONO3BO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'NO'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNO(i)=fNO(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + NO3 = PRONO3BO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'NO3'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNO3(i)=fNO3(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + RO2 = NOA';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + RO2 = PROLNO3';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + RO2 = PRONO3BO';
k(:,i) = 4.00e-14.*0.6;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOB = CH2OO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'CH2OOB'; 
fCH2OOB(i)=fCH2OOB(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOB = CO';
k(:,i) = KDEC.*0.40;
Gstr{i,1} = 'CH2OOB'; 
fCH2OOB(i)=fCH2OOB(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOB = HO2 + CO + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'CH2OOB'; 
fCH2OOB(i)=fCH2OOB(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH3CHOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3CHOO(i)=fCH3CHOO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH3O2 + CO + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH3O2 + HO2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH4';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH4(i)=fCH4(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + HO2 = HYPROPO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'HO2'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fHO2(i)=fHO2(i)-1; fHYPROPO2H(i)=fHYPROPO2H(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + NO3 = HYPROPO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'NO3'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fNO3(i)=fNO3(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = ACETOL';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = HYPROPO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = PROPGLY';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'NO + HYPROPO2 = HYPROPO + NO2';
k(:,i) = KRO2NO.*0.977;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'HYPROPO2'; 
fNO(i)=fNO(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + HYPROPO2 = PROPOLNO3';
k(:,i) = KRO2NO.*0.023;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'HYPROPO2'; 
fNO(i)=fNO(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + HO2 = IPROPOLO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'HO2'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLO2H(i)=fIPROPOLO2H(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = IPROPOLO + NO2';
k(:,i) = KRO2NO.*0.991;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = PROLNO3';
k(:,i) = KRO2NO.*0.009;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO3 = IPROPOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO3'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO3(i)=fNO3(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = CH3CHOHCHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = IPROPOLO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = PROPGLY';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O2 + HO2 = C42NO33OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C42NO33O2'; Gstr{i,2} = 'HO2'; 
fC42NO33O2(i)=fC42NO33O2(i)-1; fHO2(i)=fHO2(i)-1; fC42NO33OOH(i)=fC42NO33OOH(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O2 + NO = C42NO33O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C42NO33O2'; Gstr{i,2} = 'NO'; 
fC42NO33O2(i)=fC42NO33O2(i)-1; fNO(i)=fNO(i)-1; fC42NO33O(i)=fC42NO33O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O2 + NO3 = C42NO33O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C42NO33O2'; Gstr{i,2} = 'NO3'; 
fC42NO33O2(i)=fC42NO33O2(i)-1; fNO3(i)=fNO3(i)-1; fC42NO33O(i)=fC42NO33O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O2 + RO2 = BUT2OLNO3';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C42NO33O2'; Gstr{i,2} = 'RO2';
fC42NO33O2(i)=fC42NO33O2(i)-1; fBUT2OLNO3(i)=fBUT2OLNO3(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O2 + RO2 = BUTONENO3';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C42NO33O2'; Gstr{i,2} = 'RO2';
fC42NO33O2(i)=fC42NO33O2(i)-1; fBUTONENO3(i)=fBUTONENO3(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O2 + RO2 = C42NO33O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C42NO33O2'; Gstr{i,2} = 'RO2';
fC42NO33O2(i)=fC42NO33O2(i)-1; fC42NO33O(i)=fC42NO33O(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOB = CH3CHOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'CH3CHOOB'; 
fCH3CHOOB(i)=fCH3CHOOB(i)-1; fCH3CHOO(i)=fCH3CHOO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOB = CH3O2 + CO + OH';
k(:,i) = KDEC.*0.57;
Gstr{i,1} = 'CH3CHOOB'; 
fCH3CHOOB(i)=fCH3CHOOB(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOB = CH3O2 + HO2';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'CH3CHOOB'; 
fCH3CHOOB(i)=fCH3CHOOB(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOB = CH4';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'CH3CHOOB'; 
fCH3CHOOB(i)=fCH3CHOOB(i)-1; fCH4(i)=fCH4(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + HO2 = BUT2OLOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'HO2'; 
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fHO2(i)=fHO2(i)-1; fBUT2OLOOH(i)=fBUT2OLOOH(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + NO = BUT2OLAO + NO2';
k(:,i) = KRO2NO.*0.959;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'NO'; 
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fNO(i)=fNO(i)-1; fBUT2OLAO(i)=fBUT2OLAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + NO = BUT2OLNO3';
k(:,i) = KRO2NO.*0.041;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'NO'; 
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fNO(i)=fNO(i)-1; fBUT2OLNO3(i)=fBUT2OLNO3(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + NO3 = BUT2OLAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'NO3'; 
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fNO3(i)=fNO3(i)-1; fBUT2OLAO(i)=fBUT2OLAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + RO2 = BUT2OLAO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'RO2';
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fBUT2OLAO(i)=fBUT2OLAO(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + RO2 = BUT2OLO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'RO2';
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fBUT2OLO(i)=fBUT2OLO(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO2 + RO2 = BUT2OLOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BUT2OLO2'; Gstr{i,2} = 'RO2';
fBUT2OLO2(i)=fBUT2OLO2(i)-1; fBUT2OLOH(i)=fBUT2OLOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + HO2 = BZBIPEROOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'HO2'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fHO2(i)=fHO2(i)-1; fBZBIPEROOH(i)=fBZBIPEROOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + NO = BZBIPERNO3';
k(:,i) = KRO2NO.*0.082;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'NO'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fNO(i)=fNO(i)-1; fBZBIPERNO3(i)=fBZBIPERNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + NO = NO2 + BZBIPERO';
k(:,i) = KRO2NO.*0.918;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'NO'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fBZBIPERO(i)=fBZBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + NO3 = NO2 + BZBIPERO';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'NO3'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fBZBIPERO(i)=fBZBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + RO2 = BZBIPER2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'RO2';
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fBZBIPER2OH(i)=fBZBIPER2OH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + RO2 = BZBIPERO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'RO2';
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fBZBIPERO(i)=fBZBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + RO2 = BZOBIPEROH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'RO2';
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + NO3 = BZEMUCCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*2.75;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'NO3'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fNO3(i)=fNO3(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + O3 = EPXC4DIAL + GLYOOA';
k(:,i) = 2.00e-18;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'O3'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fO3(i)=fO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + OH = BZEMUCCO3';
k(:,i) = 6.08e-11.*0.31;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'OH'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + OH = BZEMUCO2';
k(:,i) = 6.08e-11.*0.69;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'OH'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fBZEMUCO2(i)=fBZEMUCO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + hv = C5DIALO2 + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'BZEPOXMUC'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + hv = MALDIAL + HO2 + CO + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'BZEPOXMUC'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + NO3 = C6H5O + HNO3';
k(:,i) = 3.8e-12.*0.742;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'NO3'; 
fPHENOL(i)=fPHENOL(i)-1; fNO3(i)=fNO3(i)-1; fC6H5O(i)=fC6H5O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + NO3 = NPHENO2';
k(:,i) = 3.8e-12.*0.258;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'NO3'; 
fPHENOL(i)=fPHENOL(i)-1; fNO3(i)=fNO3(i)-1; fNPHENO2(i)=fNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + OH = C6H5O';
k(:,i) = 4.7e-13.*exp(1220./T).*0.06;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'OH'; 
fPHENOL(i)=fPHENOL(i)-1; fOH(i)=fOH(i)-1; fC6H5O(i)=fC6H5O(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + OH = CATECHOL + HO2';
k(:,i) = 4.7e-13.*exp(1220./T).*0.8;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'OH'; 
fPHENOL(i)=fPHENOL(i)-1; fOH(i)=fOH(i)-1; fCATECHOL(i)=fCATECHOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + OH = PHENO2';
k(:,i) = 4.7e-13.*exp(1220./T).*0.14;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'OH'; 
fPHENOL(i)=fPHENOL(i)-1; fOH(i)=fOH(i)-1; fPHENO2(i)=fPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + HO2 = C6H5CH2OOH';
k(:,i) = 1.5e-13.*exp(1310./T);
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'HO2'; 
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fHO2(i)=fHO2(i)-1; fC6H5CH2OOH(i)=fC6H5CH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + NO = C6H5CH2NO3';
k(:,i) = KRO2NO.*0.105;
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'NO'; 
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fNO(i)=fNO(i)-1; fC6H5CH2NO3(i)=fC6H5CH2NO3(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + NO = C6H5CH2O + NO2';
k(:,i) = KRO2NO.*0.895;
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'NO'; 
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fNO(i)=fNO(i)-1; fC6H5CH2O(i)=fC6H5CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + NO3 = C6H5CH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'NO3'; 
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fC6H5CH2O(i)=fC6H5CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + RO2 = BENZAL';
k(:,i) = 2.*(KCH3O2.*2.4e-14.*exp(1620./T)).^0.5.*0.2;
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'RO2';
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + RO2 = C6H5CH2O';
k(:,i) = 2.*(KCH3O2.*2.4e-14.*exp(1620./T)).^0.5.*0.6;
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'RO2';
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fC6H5CH2O(i)=fC6H5CH2O(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O2 + RO2 = C6H5CH2OH';
k(:,i) = 2.*(KCH3O2.*2.4e-14.*exp(1620./T)).^0.5.*0.2;
Gstr{i,1} = 'C6H5CH2O2'; Gstr{i,2} = 'RO2';
fC6H5CH2O2(i)=fC6H5CH2O2(i)-1; fC6H5CH2OH(i)=fC6H5CH2OH(i)+1; 

i=i+1;
Rnames{i} = 'CRESOL + NO3 = CRESO2 + HNO3';
k(:,i) = 1.4e-11.*0.103;
Gstr{i,1} = 'CRESOL'; Gstr{i,2} = 'NO3'; 
fCRESOL(i)=fCRESOL(i)-1; fNO3(i)=fNO3(i)-1; fCRESO2(i)=fCRESO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CRESOL + NO3 = NCRESO2';
k(:,i) = 1.4e-11.*0.506;
Gstr{i,1} = 'CRESOL'; Gstr{i,2} = 'NO3'; 
fCRESOL(i)=fCRESOL(i)-1; fNO3(i)=fNO3(i)-1; fNCRESO2(i)=fNCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESOL + NO3 = TOL1O + HNO3';
k(:,i) = 1.4e-11.*0.391;
Gstr{i,1} = 'CRESOL'; Gstr{i,2} = 'NO3'; 
fCRESOL(i)=fCRESOL(i)-1; fNO3(i)=fNO3(i)-1; fTOL1O(i)=fTOL1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CRESOL + OH = CRESO2';
k(:,i) = 4.65e-11.*0.200;
Gstr{i,1} = 'CRESOL'; Gstr{i,2} = 'OH'; 
fCRESOL(i)=fCRESOL(i)-1; fOH(i)=fOH(i)-1; fCRESO2(i)=fCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESOL + OH = MCATECHOL + HO2';
k(:,i) = 4.65e-11.*0.727;
Gstr{i,1} = 'CRESOL'; Gstr{i,2} = 'OH'; 
fCRESOL(i)=fCRESOL(i)-1; fOH(i)=fOH(i)-1; fMCATECHOL(i)=fMCATECHOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESOL + OH = TOL1O';
k(:,i) = 4.65e-11.*0.073;
Gstr{i,1} = 'CRESOL'; Gstr{i,2} = 'OH'; 
fCRESOL(i)=fCRESOL(i)-1; fOH(i)=fOH(i)-1; fTOL1O(i)=fTOL1O(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + HO2 = TLBIPEROOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'HO2'; 
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fHO2(i)=fHO2(i)-1; fTLBIPEROOH(i)=fTLBIPEROOH(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + NO = NO2 + TLBIPERO';
k(:,i) = KRO2NO.*0.889;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'NO'; 
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fTLBIPERO(i)=fTLBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + NO = TLBIPERNO3';
k(:,i) = KRO2NO.*0.111;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'NO'; 
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fNO(i)=fNO(i)-1; fTLBIPERNO3(i)=fTLBIPERNO3(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + NO3 = NO2 + TLBIPERO';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'NO3'; 
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fTLBIPERO(i)=fTLBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + RO2 = TLBIPER2OH';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'RO2';
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fTLBIPER2OH(i)=fTLBIPER2OH(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + RO2 = TLBIPERO';
k(:,i) = 8.80e-13.*0.60;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'RO2';
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fTLBIPERO(i)=fTLBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO2 + RO2 = TLOBIPEROH';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'TLBIPERO2'; Gstr{i,2} = 'RO2';
fTLBIPERO2(i)=fTLBIPERO2(i)-1; fTLOBIPEROH(i)=fTLOBIPEROH(i)+1; 

i=i+1;
Rnames{i} = 'TLEPOXMUC + NO3 = TLEMUCCO3 + HNO3';
k(:,i) = KNO3AL.*2.75;
Gstr{i,1} = 'TLEPOXMUC'; Gstr{i,2} = 'NO3'; 
fTLEPOXMUC(i)=fTLEPOXMUC(i)-1; fNO3(i)=fNO3(i)-1; fTLEMUCCO3(i)=fTLEMUCCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'TLEPOXMUC + O3 = EPXC4DIAL + MGLOOB';
k(:,i) = 5.00e-18;
Gstr{i,1} = 'TLEPOXMUC'; Gstr{i,2} = 'O3'; 
fTLEPOXMUC(i)=fTLEPOXMUC(i)-1; fO3(i)=fO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fMGLOOB(i)=fMGLOOB(i)+1; 

i=i+1;
Rnames{i} = 'TLEPOXMUC + OH = TLEMUCCO3';
k(:,i) = 7.99e-11.*0.31;
Gstr{i,1} = 'TLEPOXMUC'; Gstr{i,2} = 'OH'; 
fTLEPOXMUC(i)=fTLEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fTLEMUCCO3(i)=fTLEMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'TLEPOXMUC + OH = TLEMUCO2';
k(:,i) = 7.99e-11.*0.69;
Gstr{i,1} = 'TLEPOXMUC'; Gstr{i,2} = 'OH'; 
fTLEPOXMUC(i)=fTLEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fTLEMUCO2(i)=fTLEMUCO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEPOXMUC + hv = C615CO2O2 + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'TLEPOXMUC'; 
fTLEPOXMUC(i)=fTLEPOXMUC(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'TLEPOXMUC + hv = EPXC4DIAL + CH3CO3 + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'TLEPOXMUC'; 
fTLEPOXMUC(i)=fTLEPOXMUC(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + HO2 = MXYLOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'HO2'; 
fMXYLO2(i)=fMXYLO2(i)-1; fHO2(i)=fHO2(i)-1; fMXYLOOH(i)=fMXYLOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + NO = MXYLNO3';
k(:,i) = KRO2NO.*0.105;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'NO'; 
fMXYLO2(i)=fMXYLO2(i)-1; fNO(i)=fNO(i)-1; fMXYLNO3(i)=fMXYLNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + NO = MXYLO + NO2';
k(:,i) = KRO2NO.*0.895;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'NO'; 
fMXYLO2(i)=fMXYLO2(i)-1; fNO(i)=fNO(i)-1; fMXYLO(i)=fMXYLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + NO3 = MXYLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'NO3'; 
fMXYLO2(i)=fMXYLO2(i)-1; fNO3(i)=fNO3(i)-1; fMXYLO(i)=fMXYLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + RO2 = MXYLAL';
k(:,i) = 1.30e-12.*0.20;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'RO2';
fMXYLO2(i)=fMXYLO2(i)-1; fMXYLAL(i)=fMXYLAL(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + RO2 = MXYLO';
k(:,i) = 1.30e-12.*0.60;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'RO2';
fMXYLO2(i)=fMXYLO2(i)-1; fMXYLO(i)=fMXYLO(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO2 + RO2 = MXYLOH';
k(:,i) = 1.30e-12.*0.20;
Gstr{i,1} = 'MXYLO2'; Gstr{i,2} = 'RO2';
fMXYLO2(i)=fMXYLO2(i)-1; fMXYLOH(i)=fMXYLOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + HO2 = MXYBPEROOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'HO2'; 
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fHO2(i)=fHO2(i)-1; fMXYBPEROOH(i)=fMXYBPEROOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + NO = MXYBIPENO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'NO'; 
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fNO(i)=fNO(i)-1; fMXYBIPENO3(i)=fMXYBIPENO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + NO = MXYBIPERO + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'NO'; 
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fNO(i)=fNO(i)-1; fMXYBIPERO(i)=fMXYBIPERO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + NO3 = MXYBIPERO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'NO3'; 
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fNO3(i)=fNO3(i)-1; fMXYBIPERO(i)=fMXYBIPERO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + RO2 = MXYBIPERO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'RO2';
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fMXYBIPERO(i)=fMXYBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + RO2 = MXYBPER2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'RO2';
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fMXYBPER2OH(i)=fMXYBPER2OH(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO2 + RO2 = MXYOBPEROH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MXYBIPERO2'; Gstr{i,2} = 'RO2';
fMXYBIPERO2(i)=fMXYBIPERO2(i)-1; fMXYOBPEROH(i)=fMXYOBPEROH(i)+1; 

i=i+1;
Rnames{i} = 'MXYEPOXMUC + NO3 = MXYMUCCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'MXYEPOXMUC'; Gstr{i,2} = 'NO3'; 
fMXYEPOXMUC(i)=fMXYEPOXMUC(i)-1; fNO3(i)=fNO3(i)-1; fMXYMUCCO3(i)=fMXYMUCCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYEPOXMUC + O3 = EPXMC4DIAL + MGLOOB';
k(:,i) = 2.00e-18;
Gstr{i,1} = 'MXYEPOXMUC'; Gstr{i,2} = 'O3'; 
fMXYEPOXMUC(i)=fMXYEPOXMUC(i)-1; fO3(i)=fO3(i)-1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fMGLOOB(i)=fMGLOOB(i)+1; 

i=i+1;
Rnames{i} = 'MXYEPOXMUC + OH = MXYMUCCO3';
k(:,i) = 8.02e-11.*0.26;
Gstr{i,1} = 'MXYEPOXMUC'; Gstr{i,2} = 'OH'; 
fMXYEPOXMUC(i)=fMXYEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fMXYMUCCO3(i)=fMXYMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYEPOXMUC + OH = MXYMUCO2';
k(:,i) = 8.02e-11.*0.74;
Gstr{i,1} = 'MXYEPOXMUC'; Gstr{i,2} = 'OH'; 
fMXYEPOXMUC(i)=fMXYEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fMXYMUCO2(i)=fMXYMUCO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYEPOXMUC + hv = C726CO5O2 + HO2 + CO';
k(:,i) = J4.*0.028.*0.5;
Gstr{i,1} = 'MXYEPOXMUC'; 
fMXYEPOXMUC(i)=fMXYEPOXMUC(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYEPOXMUC + hv = EPXMC4DIAL + CH3CO3 + HO2 + CO';
k(:,i) = J4.*0.028.*0.5;
Gstr{i,1} = 'MXYEPOXMUC'; 
fMXYEPOXMUC(i)=fMXYEPOXMUC(i)-1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOL + NO3 = MXY1O + HNO3';
k(:,i) = 4.50e-11.*0.39;
Gstr{i,1} = 'MXYLOL'; Gstr{i,2} = 'NO3'; 
fMXYLOL(i)=fMXYLOL(i)-1; fNO3(i)=fNO3(i)-1; fMXY1O(i)=fMXY1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOL + NO3 = MXYOLO2 + HNO3';
k(:,i) = 4.50e-11.*0.10;
Gstr{i,1} = 'MXYLOL'; Gstr{i,2} = 'NO3'; 
fMXYLOL(i)=fMXYLOL(i)-1; fNO3(i)=fNO3(i)-1; fMXYOLO2(i)=fMXYOLO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOL + NO3 = NMXYOLO2';
k(:,i) = 4.50e-11.*0.51;
Gstr{i,1} = 'MXYLOL'; Gstr{i,2} = 'NO3'; 
fMXYLOL(i)=fMXYLOL(i)-1; fNO3(i)=fNO3(i)-1; fNMXYOLO2(i)=fNMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOL + OH = MXY1O';
k(:,i) = 9.10e-11.*0.07;
Gstr{i,1} = 'MXYLOL'; Gstr{i,2} = 'OH'; 
fMXYLOL(i)=fMXYLOL(i)-1; fOH(i)=fOH(i)-1; fMXY1O(i)=fMXY1O(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOL + OH = MXYCATECH + HO2';
k(:,i) = 9.10e-11.*0.42;
Gstr{i,1} = 'MXYLOL'; Gstr{i,2} = 'OH'; 
fMXYLOL(i)=fMXYLOL(i)-1; fOH(i)=fOH(i)-1; fMXYCATECH(i)=fMXYCATECH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOL + OH = MXYOLO2';
k(:,i) = 9.10e-11.*0.51;
Gstr{i,1} = 'MXYLOL'; Gstr{i,2} = 'OH'; 
fMXYLOL(i)=fMXYLOL(i)-1; fOH(i)=fOH(i)-1; fMXYOLO2(i)=fMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + HO2 = TMBOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'HO2'; 
fTMBO2(i)=fTMBO2(i)-1; fHO2(i)=fHO2(i)-1; fTMBOOH(i)=fTMBOOH(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + NO = TMBNO3';
k(:,i) = KRO2NO.*0.105;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'NO'; 
fTMBO2(i)=fTMBO2(i)-1; fNO(i)=fNO(i)-1; fTMBNO3(i)=fTMBNO3(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + NO = TMBO + NO2';
k(:,i) = KRO2NO.*0.895;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'NO'; 
fTMBO2(i)=fTMBO2(i)-1; fNO(i)=fNO(i)-1; fTMBO(i)=fTMBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + NO3 = TMBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'NO3'; 
fTMBO2(i)=fTMBO2(i)-1; fNO3(i)=fNO3(i)-1; fTMBO(i)=fTMBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + RO2 = TMBCHO';
k(:,i) = 1.30e-12.*0.20;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'RO2';
fTMBO2(i)=fTMBO2(i)-1; fTMBCHO(i)=fTMBCHO(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + RO2 = TMBO';
k(:,i) = 1.30e-12.*0.60;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'RO2';
fTMBO2(i)=fTMBO2(i)-1; fTMBO(i)=fTMBO(i)+1; 

i=i+1;
Rnames{i} = 'TMBO2 + RO2 = TMBOH';
k(:,i) = 1.30e-12.*0.20;
Gstr{i,1} = 'TMBO2'; Gstr{i,2} = 'RO2';
fTMBO2(i)=fTMBO2(i)-1; fTMBOH(i)=fTMBOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + HO2 = TM135BPOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'HO2'; 
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fHO2(i)=fHO2(i)-1; fTM135BPOOH(i)=fTM135BPOOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + NO = TM135BPNO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'NO'; 
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fNO(i)=fNO(i)-1; fTM135BPNO3(i)=fTM135BPNO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + NO = TM135BPRO + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'NO'; 
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fNO(i)=fNO(i)-1; fTM135BPRO(i)=fTM135BPRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + NO3 = TM135BPRO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'NO3'; 
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fNO3(i)=fNO3(i)-1; fTM135BPRO(i)=fTM135BPRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + RO2 = TM135BP2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'RO2';
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fTM135BP2OH(i)=fTM135BP2OH(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + RO2 = TM135BPRO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'RO2';
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fTM135BPRO(i)=fTM135BPRO(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO2 + RO2 = TM135OBPOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'TM135BPRO2'; Gstr{i,2} = 'RO2';
fTM135BPRO2(i)=fTM135BPRO2(i)-1; fTM135OBPOH(i)=fTM135OBPOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135BZOL + NO3 = NTM135OLO2';
k(:,i) = 1.30e-11.*0.787;
Gstr{i,1} = 'TM135BZOL'; Gstr{i,2} = 'NO3'; 
fTM135BZOL(i)=fTM135BZOL(i)-1; fNO3(i)=fNO3(i)-1; fNTM135OLO2(i)=fNTM135OLO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BZOL + NO3 = TM135O + HNO3';
k(:,i) = 1.30e-11.*0.213;
Gstr{i,1} = 'TM135BZOL'; Gstr{i,2} = 'NO3'; 
fTM135BZOL(i)=fTM135BZOL(i)-1; fNO3(i)=fNO3(i)-1; fTM135O(i)=fTM135O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135BZOL + OH = TM135O';
k(:,i) = 8.20e-11.*0.054;
Gstr{i,1} = 'TM135BZOL'; Gstr{i,2} = 'OH'; 
fTM135BZOL(i)=fTM135BZOL(i)-1; fOH(i)=fOH(i)-1; fTM135O(i)=fTM135O(i)+1; 

i=i+1;
Rnames{i} = 'TM135BZOL + OH = TM135OLO2';
k(:,i) = 8.20e-11.*0.946;
Gstr{i,1} = 'TM135BZOL'; Gstr{i,2} = 'OH'; 
fTM135BZOL(i)=fTM135BZOL(i)-1; fOH(i)=fOH(i)-1; fTM135OLO2(i)=fTM135OLO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OXMUC + NO3 = TM135MUCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'TM135OXMUC'; Gstr{i,2} = 'NO3'; 
fTM135OXMUC(i)=fTM135OXMUC(i)-1; fNO3(i)=fNO3(i)-1; fTM135MUCO3(i)=fTM135MUCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135OXMUC + O3 = EPXMALKT + MGLOOC';
k(:,i) = 1.25e-17;
Gstr{i,1} = 'TM135OXMUC'; Gstr{i,2} = 'O3'; 
fTM135OXMUC(i)=fTM135OXMUC(i)-1; fO3(i)=fO3(i)-1; fEPXMALKT(i)=fEPXMALKT(i)+1; fMGLOOC(i)=fMGLOOC(i)+1; 

i=i+1;
Rnames{i} = 'TM135OXMUC + OH = TM135MUCO2';
k(:,i) = 1.01e-10.*0.79;
Gstr{i,1} = 'TM135OXMUC'; Gstr{i,2} = 'OH'; 
fTM135OXMUC(i)=fTM135OXMUC(i)-1; fOH(i)=fOH(i)-1; fTM135MUCO2(i)=fTM135MUCO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OXMUC + OH = TM135MUCO3';
k(:,i) = 1.01e-10.*0.21;
Gstr{i,1} = 'TM135OXMUC'; Gstr{i,2} = 'OH'; 
fTM135OXMUC(i)=fTM135OXMUC(i)-1; fOH(i)=fOH(i)-1; fTM135MUCO3(i)=fTM135MUCO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135OXMUC + hv = C7M2CO5O2 + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'TM135OXMUC'; 
fTM135OXMUC(i)=fTM135OXMUC(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'TM135OXMUC + hv = EPXMALKT + CH3CO3 + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'TM135OXMUC'; 
fTM135OXMUC(i)=fTM135OXMUC(i)-1; fEPXMALKT(i)=fEPXMALKT(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + hv = CH3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3OOH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fCH3O(i)=fCH3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3OOH = CH3O2';
k(:,i) = 5.3e-12.*exp(190./T).*0.6;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3OOH'; 
fOH(i)=fOH(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3OOH = HCHO + OH';
k(:,i) = 5.3e-12.*exp(190./T).*0.4;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3OOH'; 
fOH(i)=fOH(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 + hv = CH3O + NO2';
k(:,i) = J51;
Gstr{i,1} = 'CH3NO3'; 
fCH3NO3(i)=fCH3NO3(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3NO3 = HCHO + NO2';
k(:,i) = 4.0e-13.*exp(-845./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3NO3'; 
fOH(i)=fOH(i)-1; fCH3NO3(i)=fCH3NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O = HCHO + HO2';
k(:,i) = 7.2e-14.*exp(-1080./T).*.21.*M;
Gstr{i,1} = 'CH3O'; 
fCH3O(i)=fCH3O(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2NO2 = CH3O2 + NO2';
k(:,i) = KMT14;
Gstr{i,1} = 'CH3O2NO2'; 
fCH3O2NO2(i)=fCH3O2NO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OH + OH = HO2 + HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'CH3OH'; Gstr{i,2} = 'OH'; 
fCH3OH(i)=fCH3OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO2H + OH = CH3O2';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'CH3CO2H'; Gstr{i,2} = 'OH'; 
fCH3CO2H(i)=fCH3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + OH = CH3CO3';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CH3CO3H'; Gstr{i,2} = 'OH'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + hv = CH3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3CO3H'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PAN + OH = HCHO + CO + NO2';
k(:,i) = 3e-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PAN = CH3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = GLYOX + OH';
k(:,i) = 2.91e-11;
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = HCOCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + hv = HCOCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + hv = HO2 + CO + HCHO + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O = HCHO + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HCOCH2O'; 
fHCOCH2O(i)=fHCOCH2O(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + CO + H2';
k(:,i) = J31;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + CO + HO2 + HO2';
k(:,i) = J33;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = HCHO + CO';
k(:,i) = J32;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + GLYOX = HCOCO + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO(i)=fHCOCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX = HCOCO';
k(:,i) = 3.1e-12.*exp(340./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO(i)=fHCOCO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + NO3 = HOCH2CO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'NO3'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = GLYOX + HO2';
k(:,i) = 1.00e-11.*0.200;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = HOCH2CO3';
k(:,i) = 1.00e-11.*0.800;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + hv = HO2 + HCHO + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOCH2CHO'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + hv = C2H5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C2H5OOH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fC2H5O(i)=fC2H5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H5OOH = C2H5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H5OOH'; 
fOH(i)=fOH(i)-1; fC2H5OOH(i)=fC2H5OOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H5OOH = CH3CHO + OH';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H5OOH'; 
fOH(i)=fOH(i)-1; fC2H5OOH(i)=fC2H5OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5NO3 + hv = C2H5O + NO2';
k(:,i) = J52;
Gstr{i,1} = 'C2H5NO3'; 
fC2H5NO3(i)=fC2H5NO3(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H5NO3 = CH3CHO + NO2';
k(:,i) = 6.7e-13.*exp(-395./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H5NO3'; 
fOH(i)=fOH(i)-1; fC2H5NO3(i)=fC2H5NO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O = CH3CHO + HO2';
k(:,i) = 2.4e-14.*exp(-325./T).*.21.*M;
Gstr{i,1} = 'C2H5O'; 
fC2H5O(i)=fC2H5O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = C2H5O';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fC2H5O(i)=fC2H5O(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = CH3CHO + HO2';
k(:,i) = 3.0e-12.*exp(20./T).*0.9;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = HOCH2CH2O2';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7OOH + hv = IC3H7O + OH';
k(:,i) = J41;
Gstr{i,1} = 'IC3H7OOH'; 
fIC3H7OOH(i)=fIC3H7OOH(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IC3H7OOH = CH3COCH3 + OH';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IC3H7OOH'; 
fOH(i)=fOH(i)-1; fIC3H7OOH(i)=fIC3H7OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IC3H7OOH = IC3H7O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IC3H7OOH'; 
fOH(i)=fOH(i)-1; fIC3H7OOH(i)=fIC3H7OOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7NO3 + hv = IC3H7O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'IC3H7NO3'; 
fIC3H7NO3(i)=fIC3H7NO3(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IC3H7NO3 = CH3COCH3 + NO2';
k(:,i) = 6.2e-13.*exp(-230./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IC3H7NO3'; 
fOH(i)=fOH(i)-1; fIC3H7NO3(i)=fIC3H7NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O = CH3COCH3 + HO2';
k(:,i) = 1.5e-14.*exp(-230./T).*.21.*M;
Gstr{i,1} = 'IC3H7O'; 
fIC3H7O(i)=fIC3H7O(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + OH = CH3COCH2O2';
k(:,i) = 8.8e-12.*exp(-1320./T) + 1.7e-14.*exp(423./T);
Gstr{i,1} = 'CH3COCH3'; Gstr{i,2} = 'OH'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + hv = CH3CO3 + CH3O2';
k(:,i) = J21;
Gstr{i,1} = 'CH3COCH3'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = CH3COCH3 + HO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.861;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = IPROPOLO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.139;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7OOH + hv = NC3H7O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC3H7OOH'; 
fNC3H7OOH(i)=fNC3H7OOH(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3H7OOH = C2H5CHO + OH';
k(:,i) = 1.10e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3H7OOH'; 
fOH(i)=fOH(i)-1; fNC3H7OOH(i)=fNC3H7OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3H7OOH = NC3H7O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3H7OOH'; 
fOH(i)=fOH(i)-1; fNC3H7OOH(i)=fNC3H7OOH(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7NO3 + hv = NC3H7O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'NC3H7NO3'; 
fNC3H7NO3(i)=fNC3H7NO3(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3H7NO3 = C2H5CHO + NO2';
k(:,i) = 5.8e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3H7NO3'; 
fOH(i)=fOH(i)-1; fNC3H7NO3(i)=fNC3H7NO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O = C2H5CHO + HO2';
k(:,i) = 2.6e-14.*exp(-255./T).*.21.*M;
Gstr{i,1} = 'NC3H7O'; 
fNC3H7O(i)=fNC3H7O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + NO3 = C2H5CO3 + HNO3';
k(:,i) = 3.24e-12.*exp(-1860./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'NO3'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + OH = C2H5CO3';
k(:,i) = 4.9e-12.*exp(405./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'OH'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + hv = C2H5O2 + HO2 + CO';
k(:,i) = J14;
Gstr{i,1} = 'C2H5CHO'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = C2H5CHO + HO2';
k(:,i) = 4.6e-12.*exp(70./T).*0.494;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = HO1C3O2';
k(:,i) = 4.6e-12.*exp(70./T).*0.063;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = HYPROPO2';
k(:,i) = 4.6e-12.*exp(70./T).*0.443;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9OOH + hv = NC4H9O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC4H9OOH'; 
fNC4H9OOH(i)=fNC4H9OOH(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4H9OOH = C3H7CHO + OH';
k(:,i) = 1.24e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4H9OOH'; 
fOH(i)=fOH(i)-1; fNC4H9OOH(i)=fNC4H9OOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4H9OOH = NC4H9O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4H9OOH'; 
fOH(i)=fOH(i)-1; fNC4H9OOH(i)=fNC4H9OOH(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9NO3 + hv = NC4H9O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'NC4H9NO3'; 
fNC4H9NO3(i)=fNC4H9NO3(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4H9NO3 = C3H7CHO + NO2';
k(:,i) = 1.6e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4H9NO3'; 
fOH(i)=fOH(i)-1; fNC4H9NO3(i)=fNC4H9NO3(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O = C3H7CHO + HO2';
k(:,i) = 8.9e-14.*exp(-550./T).*.21.*M;
Gstr{i,1} = 'NC4H9O'; 
fNC4H9O(i)=fNC4H9O(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O = HO1C4O2';
k(:,i) = 4.6D10.*exp(-3570./T);
Gstr{i,1} = 'NC4H9O'; 
fNC4H9O(i)=fNC4H9O(i)-1; fHO1C4O2(i)=fHO1C4O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + NO3 = HNO3 + C3H7CO3';
k(:,i) = 1.7e-12.*exp(-1500./T);
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'NO3'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + OH = BUTALO2';
k(:,i) = 6.0e-12.*exp(410./T).*0.151;
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'OH'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fOH(i)=fOH(i)-1; fBUTALO2(i)=fBUTALO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + OH = C3H7CO3';
k(:,i) = 6.0e-12.*exp(410./T).*0.849;
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'OH'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fOH(i)=fOH(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + hv = CH3CHO + C2H4';
k(:,i) = J16;
Gstr{i,1} = 'C3H7CHO'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H4(i)=fC2H4(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + hv = NC3H7O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C3H7CHO'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = C3H7CHO + HO2';
k(:,i) = 5.3e-12.*exp(140./T).*0.358;
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = NBUTOLAO2';
k(:,i) = 5.3e-12.*exp(140./T).*0.321;
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fNBUTOLAO2(i)=fNBUTOLAO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = NBUTOLBO2';
k(:,i) = 5.3e-12.*exp(140./T).*0.321;
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fNBUTOLBO2(i)=fNBUTOLBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + SC4H9OOH = MEK + OH';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SC4H9OOH'; 
fOH(i)=fOH(i)-1; fSC4H9OOH(i)=fSC4H9OOH(i)-1; fMEK(i)=fMEK(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + SC4H9OOH = SC4H9O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SC4H9OOH'; 
fOH(i)=fOH(i)-1; fSC4H9OOH(i)=fSC4H9OOH(i)-1; fSC4H9O2(i)=fSC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9OOH + hv = SC4H9O + OH';
k(:,i) = J41;
Gstr{i,1} = 'SC4H9OOH'; 
fSC4H9OOH(i)=fSC4H9OOH(i)-1; fSC4H9O(i)=fSC4H9O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + SC4H9NO3 = MEK + NO2';
k(:,i) = 8.6e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SC4H9NO3'; 
fOH(i)=fOH(i)-1; fSC4H9NO3(i)=fSC4H9NO3(i)-1; fMEK(i)=fMEK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9NO3 + hv = SC4H9O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'SC4H9NO3'; 
fSC4H9NO3(i)=fSC4H9NO3(i)-1; fSC4H9O(i)=fSC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O = CH3CHO + C2H5O2';
k(:,i) = 5.6D12.*exp(-5780./T);
Gstr{i,1} = 'SC4H9O'; 
fSC4H9O(i)=fSC4H9O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'SC4H9O = MEK + HO2';
k(:,i) = 1.5e-14.*exp(-200./T).*.21.*M;
Gstr{i,1} = 'SC4H9O'; 
fSC4H9O(i)=fSC4H9O(i)-1; fMEK(i)=fMEK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OL + OH = BUT2OLO2';
k(:,i) = 8.7e-12.*0.361;
Gstr{i,1} = 'BUT2OL'; Gstr{i,2} = 'OH'; 
fBUT2OL(i)=fBUT2OL(i)-1; fOH(i)=fOH(i)-1; fBUT2OLO2(i)=fBUT2OLO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OL + OH = MEK + HO2';
k(:,i) = 8.7e-12.*0.639;
Gstr{i,1} = 'BUT2OL'; Gstr{i,2} = 'OH'; 
fBUT2OL(i)=fBUT2OL(i)-1; fOH(i)=fOH(i)-1; fMEK(i)=fMEK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEK + OH = MEKAO2';
k(:,i) = 1.5e-12.*exp(-90./T).*0.459;
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH'; 
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MEK + OH = MEKBO2';
k(:,i) = 1.5e-12.*exp(-90./T).*0.462;
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH'; 
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fMEKBO2(i)=fMEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'MEK + OH = MEKCO2';
k(:,i) = 1.5e-12.*exp(-90./T).*0.079;
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH'; 
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'MEK + hv = CH3CO3 + C2H5O2';
k(:,i) = J22;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEAOOH = C4H9CHO + OH';
k(:,i) = 1.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEAOOH'; 
fOH(i)=fOH(i)-1; fPEAOOH(i)=fPEAOOH(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEAOOH = PEAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEAOOH'; 
fOH(i)=fOH(i)-1; fPEAOOH(i)=fPEAOOH(i)-1; fPEAO2(i)=fPEAO2(i)+1; 

i=i+1;
Rnames{i} = 'PEAOOH + hv = PEAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PEAOOH'; 
fPEAOOH(i)=fPEAOOH(i)-1; fPEAO(i)=fPEAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEANO3 = C4H9CHO + NO2';
k(:,i) = 3.00e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEANO3'; 
fOH(i)=fOH(i)-1; fPEANO3(i)=fPEANO3(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEANO3 + hv = PEAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'PEANO3'; 
fPEANO3(i)=fPEANO3(i)-1; fPEAO(i)=fPEAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEAO = HO1C5O2';
k(:,i) = 2.03e11.*exp(-3430./T);
Gstr{i,1} = 'PEAO'; 
fPEAO(i)=fPEAO(i)-1; fHO1C5O2(i)=fHO1C5O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + NO3 = C4H9CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'NO3'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fNO3(i)=fNO3(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + OH = C4CHOBO2';
k(:,i) = 6.34e-12.*exp(448./T).*0.19;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'OH'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fOH(i)=fOH(i)-1; fC4CHOBO2(i)=fC4CHOBO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + OH = C4H9CO3';
k(:,i) = 6.34e-12.*exp(448./T).*0.81;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'OH'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fOH(i)=fOH(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + hv = NC4H9O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C4H9CHO'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEAOH = C4H9CHO + HO2';
k(:,i) = 8.57e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEAOH'; 
fOH(i)=fOH(i)-1; fPEAOH(i)=fPEAOH(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEBOOH = MPRK + OH';
k(:,i) = 2.30e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEBOOH'; 
fOH(i)=fOH(i)-1; fPEBOOH(i)=fPEBOOH(i)-1; fMPRK(i)=fMPRK(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEBOOH = PEBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEBOOH'; 
fOH(i)=fOH(i)-1; fPEBOOH(i)=fPEBOOH(i)-1; fPEBO2(i)=fPEBO2(i)+1; 

i=i+1;
Rnames{i} = 'PEBOOH + hv = PEBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PEBOOH'; 
fPEBOOH(i)=fPEBOOH(i)-1; fPEBO(i)=fPEBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEBNO3 = MPRK + NO2';
k(:,i) = 1.85e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEBNO3'; 
fOH(i)=fOH(i)-1; fPEBNO3(i)=fPEBNO3(i)-1; fMPRK(i)=fMPRK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEBNO3 + hv = PEBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'PEBNO3'; 
fPEBNO3(i)=fPEBNO3(i)-1; fPEBO(i)=fPEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEBO = HO2C5O2';
k(:,i) = 3.05e11.*exp(-4240./T);
Gstr{i,1} = 'PEBO'; 
fPEBO(i)=fPEBO(i)-1; fHO2C5O2(i)=fHO2C5O2(i)+1; 

i=i+1;
Rnames{i} = 'PEBO = MPRK + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'PEBO'; 
fPEBO(i)=fPEBO(i)-1; fMPRK(i)=fMPRK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRK + OH = CO2C54O2';
k(:,i) = 4.90e-12.*0.818;
Gstr{i,1} = 'MPRK'; Gstr{i,2} = 'OH'; 
fMPRK(i)=fMPRK(i)-1; fOH(i)=fOH(i)-1; fCO2C54O2(i)=fCO2C54O2(i)+1; 

i=i+1;
Rnames{i} = 'MPRK + OH = MPRKAO2';
k(:,i) = 4.90e-12.*0.182;
Gstr{i,1} = 'MPRK'; Gstr{i,2} = 'OH'; 
fMPRK(i)=fMPRK(i)-1; fOH(i)=fOH(i)-1; fMPRKAO2(i)=fMPRKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRK + hv = CH3CO3 + NC3H7O2';
k(:,i) = J22;
Gstr{i,1} = 'MPRK'; 
fMPRK(i)=fMPRK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEBOH = MPRK + HO2';
k(:,i) = 1.14e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEBOH'; 
fOH(i)=fOH(i)-1; fPEBOH(i)=fPEBOH(i)-1; fMPRK(i)=fMPRK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECOOH = DIEK + OH';
k(:,i) = 2.73e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECOOH'; 
fOH(i)=fOH(i)-1; fPECOOH(i)=fPECOOH(i)-1; fDIEK(i)=fDIEK(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PECOOH + hv = PECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PECOOH'; 
fPECOOH(i)=fPECOOH(i)-1; fPECO(i)=fPECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECNO3 = DIEK + NO2';
k(:,i) = 1.12e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECNO3'; 
fOH(i)=fOH(i)-1; fPECNO3(i)=fPECNO3(i)-1; fDIEK(i)=fDIEK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PECNO3 + hv = PECO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'PECNO3'; 
fPECNO3(i)=fPECNO3(i)-1; fPECO(i)=fPECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PECO = C2H5O2 + C2H5CHO';
k(:,i) = 4.00e14.*exp(-6990./T);
Gstr{i,1} = 'PECO'; 
fPECO(i)=fPECO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; 

i=i+1;
Rnames{i} = 'PECO = DIEK + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'PECO'; 
fPECO(i)=fPECO(i)-1; fDIEK(i)=fDIEK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEK + OH = DIEKAO2';
k(:,i) = 2.00e-12.*0.501;
Gstr{i,1} = 'DIEK'; Gstr{i,2} = 'OH'; 
fDIEK(i)=fDIEK(i)-1; fOH(i)=fOH(i)-1; fDIEKAO2(i)=fDIEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEK + OH = DIEKBO2';
k(:,i) = 2.00e-12.*0.499;
Gstr{i,1} = 'DIEK'; Gstr{i,2} = 'OH'; 
fDIEK(i)=fDIEK(i)-1; fOH(i)=fOH(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEK + hv = C2H5CO3 + C2H5O2';
k(:,i) = J22;
Gstr{i,1} = 'DIEK'; 
fDIEK(i)=fDIEK(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECOH = DIEK + HO2';
k(:,i) = 1.22e-11.*0.436;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECOH'; 
fOH(i)=fOH(i)-1; fPECOH(i)=fPECOH(i)-1; fDIEK(i)=fDIEK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECOH = HO3C5O2';
k(:,i) = 1.22e-11.*0.070;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECOH'; 
fOH(i)=fOH(i)-1; fPECOH(i)=fPECOH(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECOH = PE2ENEBO2';
k(:,i) = 1.22e-11.*0.493;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECOH'; 
fOH(i)=fOH(i)-1; fPECOH(i)=fPECOH(i)-1; fPE2ENEBO2(i)=fPE2ENEBO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXAOOH + hv = HEXAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEXAOOH'; 
fHEXAOOH(i)=fHEXAOOH(i)-1; fHEXAO(i)=fHEXAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXAOOH = C5H11CHO + OH';
k(:,i) = 1.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXAOOH'; 
fOH(i)=fOH(i)-1; fHEXAOOH(i)=fHEXAOOH(i)-1; fC5H11CHO(i)=fC5H11CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXAOOH = HEXAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXAOOH'; 
fOH(i)=fOH(i)-1; fHEXAOOH(i)=fHEXAOOH(i)-1; fHEXAO2(i)=fHEXAO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXANO3 + hv = HEXAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HEXANO3'; 
fHEXANO3(i)=fHEXANO3(i)-1; fHEXAO(i)=fHEXAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXANO3 = C5H11CHO + NO2';
k(:,i) = 4.68e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXANO3'; 
fOH(i)=fOH(i)-1; fHEXANO3(i)=fHEXANO3(i)-1; fC5H11CHO(i)=fC5H11CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXAO = HO1C6O2';
k(:,i) = 2.58e11.*exp(-3430./T);
Gstr{i,1} = 'HEXAO'; 
fHEXAO(i)=fHEXAO(i)-1; fHO1C6O2(i)=fHO1C6O2(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CHO + hv = CH3CHO + BUT1ENE';
k(:,i) = J16;
Gstr{i,1} = 'C5H11CHO'; 
fC5H11CHO(i)=fC5H11CHO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fBUT1ENE(i)=fBUT1ENE(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CHO + hv = PEAO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C5H11CHO'; 
fC5H11CHO(i)=fC5H11CHO(i)-1; fPEAO2(i)=fPEAO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C5H11CHO = C5H11CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C5H11CHO'; 
fNO3(i)=fNO3(i)-1; fC5H11CHO(i)=fC5H11CHO(i)-1; fC5H11CO3(i)=fC5H11CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H11CHO = C5H11CO3';
k(:,i) = 2.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H11CHO'; 
fOH(i)=fOH(i)-1; fC5H11CHO(i)=fC5H11CHO(i)-1; fC5H11CO3(i)=fC5H11CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXAOH = C5H11CHO + HO2';
k(:,i) = 9.72e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXAOH'; 
fOH(i)=fOH(i)-1; fHEXAOH(i)=fHEXAOH(i)-1; fC5H11CHO(i)=fC5H11CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXBOOH + hv = HEXBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEXBOOH'; 
fHEXBOOH(i)=fHEXBOOH(i)-1; fHEXBO(i)=fHEXBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXBOOH = HEX2ONE + OH';
k(:,i) = 2.80e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXBOOH'; 
fOH(i)=fOH(i)-1; fHEXBOOH(i)=fHEXBOOH(i)-1; fHEX2ONE(i)=fHEX2ONE(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXBOOH = HEXBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXBOOH'; 
fOH(i)=fOH(i)-1; fHEXBOOH(i)=fHEXBOOH(i)-1; fHEXBO2(i)=fHEXBO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXBNO3 + hv = HEXBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HEXBNO3'; 
fHEXBNO3(i)=fHEXBNO3(i)-1; fHEXBO(i)=fHEXBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXBNO3 = HEX2ONE + NO2';
k(:,i) = 3.17e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXBNO3'; 
fOH(i)=fOH(i)-1; fHEXBNO3(i)=fHEXBNO3(i)-1; fHEX2ONE(i)=fHEX2ONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXBO = HO2C6O2';
k(:,i) = 2.03e11.*exp(-3430./T);
Gstr{i,1} = 'HEXBO'; 
fHEXBO(i)=fHEXBO(i)-1; fHO2C6O2(i)=fHO2C6O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONE + OH = HEX2ONAO2';
k(:,i) = 9.10e-12.*0.715;
Gstr{i,1} = 'HEX2ONE'; Gstr{i,2} = 'OH'; 
fHEX2ONE(i)=fHEX2ONE(i)-1; fOH(i)=fOH(i)-1; fHEX2ONAO2(i)=fHEX2ONAO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONE + OH = HEX2ONBO2';
k(:,i) = 9.10e-12.*0.162;
Gstr{i,1} = 'HEX2ONE'; Gstr{i,2} = 'OH'; 
fHEX2ONE(i)=fHEX2ONE(i)-1; fOH(i)=fOH(i)-1; fHEX2ONBO2(i)=fHEX2ONBO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONE + OH = HEX2ONCO2';
k(:,i) = 9.10e-12.*0.123;
Gstr{i,1} = 'HEX2ONE'; Gstr{i,2} = 'OH'; 
fHEX2ONE(i)=fHEX2ONE(i)-1; fOH(i)=fOH(i)-1; fHEX2ONCO2(i)=fHEX2ONCO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONE + hv = CH3CO3 + NC4H9O2';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONE'; 
fHEX2ONE(i)=fHEX2ONE(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXBOH = HEX2ONE + HO2';
k(:,i) = 1.28e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXBOH'; 
fOH(i)=fOH(i)-1; fHEXBOH(i)=fHEXBOH(i)-1; fHEX2ONE(i)=fHEX2ONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXCOOH + hv = HEXCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEXCOOH'; 
fHEXCOOH(i)=fHEXCOOH(i)-1; fHEXCO(i)=fHEXCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXCOOH = HEX3ONE + OH';
k(:,i) = 3.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXCOOH'; 
fOH(i)=fOH(i)-1; fHEXCOOH(i)=fHEXCOOH(i)-1; fHEX3ONE(i)=fHEX3ONE(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEXCNO3 + hv = HEXCO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HEXCNO3'; 
fHEXCNO3(i)=fHEXCNO3(i)-1; fHEXCO(i)=fHEXCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXCNO3 = HEX3ONE + NO2';
k(:,i) = 2.70e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXCNO3'; 
fOH(i)=fOH(i)-1; fHEXCNO3(i)=fHEXCNO3(i)-1; fHEX3ONE(i)=fHEX3ONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO = HEX3ONE + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'HEXCO'; 
fHEXCO(i)=fHEXCO(i)-1; fHEX3ONE(i)=fHEX3ONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEXCO = HO3C6O2';
k(:,i) = 3.05e11.*exp(-4240./T);
Gstr{i,1} = 'HEXCO'; 
fHEXCO(i)=fHEXCO(i)-1; fHO3C6O2(i)=fHO3C6O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + OH = HEX3ONAO2';
k(:,i) = 6.90e-12.*0.638;
Gstr{i,1} = 'HEX3ONE'; Gstr{i,2} = 'OH'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fOH(i)=fOH(i)-1; fHEX3ONAO2(i)=fHEX3ONAO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + OH = HEX3ONBO2';
k(:,i) = 6.90e-12.*0.142;
Gstr{i,1} = 'HEX3ONE'; Gstr{i,2} = 'OH'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fOH(i)=fOH(i)-1; fHEX3ONBO2(i)=fHEX3ONBO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + OH = HEX3ONCO2';
k(:,i) = 6.90e-12.*0.110;
Gstr{i,1} = 'HEX3ONE'; Gstr{i,2} = 'OH'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fOH(i)=fOH(i)-1; fHEX3ONCO2(i)=fHEX3ONCO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + OH = HEX3ONDO2';
k(:,i) = 6.90e-12.*0.110;
Gstr{i,1} = 'HEX3ONE'; Gstr{i,2} = 'OH'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fOH(i)=fOH(i)-1; fHEX3ONDO2(i)=fHEX3ONDO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + hv = C2H5CO3 + NC3H7O2';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONE'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEXCOH = HEX3ONE + HO2';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEXCOH'; 
fOH(i)=fOH(i)-1; fHEXCOH(i)=fHEXCOH(i)-1; fHEX3ONE(i)=fHEX3ONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEPTOOH + hv = HEPTO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEPTOOH'; 
fHEPTOOH(i)=fHEPTOOH(i)-1; fHEPTO(i)=fHEPTO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEPTOOH = HEPT3ONE + OH';
k(:,i) = 3.37e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEPTOOH'; 
fOH(i)=fOH(i)-1; fHEPTOOH(i)=fHEPTOOH(i)-1; fHEPT3ONE(i)=fHEPT3ONE(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEPTNO3 + hv = HEPTO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HEPTNO3'; 
fHEPTNO3(i)=fHEPTNO3(i)-1; fHEPTO(i)=fHEPTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEPTNO3 = HEPT3ONE + NO2';
k(:,i) = 3.69e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEPTNO3'; 
fOH(i)=fOH(i)-1; fHEPTNO3(i)=fHEPTNO3(i)-1; fHEPT3ONE(i)=fHEPT3ONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEPTO = HO3C76O2';
k(:,i) = 2.58e11.*exp(-3430./T);
Gstr{i,1} = 'HEPTO'; 
fHEPTO(i)=fHEPTO(i)-1; fHO3C76O2(i)=fHO3C76O2(i)+1; 

i=i+1;
Rnames{i} = 'HEPT3ONE + hv = C2H5CO3 + NC4H9O2';
k(:,i) = J22;
Gstr{i,1} = 'HEPT3ONE'; 
fHEPT3ONE(i)=fHEPT3ONE(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEPT3ONE = CO3C75O2';
k(:,i) = 7.89e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEPT3ONE'; 
fOH(i)=fOH(i)-1; fHEPT3ONE(i)=fHEPT3ONE(i)-1; fCO3C75O2(i)=fCO3C75O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HEPTOH = HEPT3ONE + HO2';
k(:,i) = 1.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HEPTOH'; 
fOH(i)=fOH(i)-1; fHEPTOH(i)=fHEPTOH(i)-1; fHEPT3ONE(i)=fHEPT3ONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OCTOOH + hv = OCTO + OH';
k(:,i) = J41;
Gstr{i,1} = 'OCTOOH'; 
fOCTOOH(i)=fOCTOOH(i)-1; fOCTO(i)=fOCTO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + OCTOOH = OCT3ONE + OH';
k(:,i) = 3.51e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OCTOOH'; 
fOH(i)=fOH(i)-1; fOCTOOH(i)=fOCTOOH(i)-1; fOCT3ONE(i)=fOCT3ONE(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OCTNO3 + hv = OCTO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'OCTNO3'; 
fOCTNO3(i)=fOCTNO3(i)-1; fOCTO(i)=fOCTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OCTNO3 = OCT3ONE + NO2';
k(:,i) = 3.88e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OCTNO3'; 
fOH(i)=fOH(i)-1; fOCTNO3(i)=fOCTNO3(i)-1; fOCT3ONE(i)=fOCT3ONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCTO = HO3C86O2';
k(:,i) = 2.58e11.*exp(-3430./T);
Gstr{i,1} = 'OCTO'; 
fOCTO(i)=fOCTO(i)-1; fHO3C86O2(i)=fHO3C86O2(i)+1; 

i=i+1;
Rnames{i} = 'OCT3ONE + hv = C2H5CO3 + PEAO2';
k(:,i) = J22;
Gstr{i,1} = 'OCT3ONE'; 
fOCT3ONE(i)=fOCT3ONE(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fPEAO2(i)=fPEAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OCT3ONE = CO3C85O2';
k(:,i) = 9.30e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OCT3ONE'; 
fOH(i)=fOH(i)-1; fOCT3ONE(i)=fOCT3ONE(i)-1; fCO3C85O2(i)=fCO3C85O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OCTOH = OCT3ONE + HO2';
k(:,i) = 1.73e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OCTOH'; 
fOH(i)=fOH(i)-1; fOCTOH(i)=fOCTOH(i)-1; fOCT3ONE(i)=fOCT3ONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = ETHENO3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = NO3CH2CHO + OH';
k(:,i) = 1.62e-12;
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + hv = ETHENO3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'ETHO2HNO3'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O = NO2 + HCHO + HCHO';
k(:,i) = 7.00e03;
Gstr{i,1} = 'ETHENO3O'; 
fETHENO3O(i)=fETHENO3O(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O = NO3CH2CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'ETHENO3O'; 
fETHENO3O(i)=fETHENO3O(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHOHNO3 + OH = HOCH2CHO + NO2';
k(:,i) = 8.40e-13;
Gstr{i,1} = 'ETHOHNO3'; Gstr{i,2} = 'OH'; 
fETHOHNO3(i)=fETHOHNO3(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + NO3 = NO3CH2CO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'NO3'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + OH = NO3CH2CO3';
k(:,i) = 3.40e-12;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'OH'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + hv = NO2 + HCOCH2O';
k(:,i) = J56.*4.3;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO2(i)=fNO2(i)+1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + CO = HCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CO'; 
fCH2OO(i)=fCH2OO(i)-1; fCO(i)=fCO(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO = HCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO'; 
fCH2OO(i)=fCH2OO(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO2 = HCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO2'; 
fCH2OO(i)=fCH2OO(i)-1; fNO2(i)=fNO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + SO2 = HCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'SO2'; 
fCH2OO(i)=fCH2OO(i)-1; fSO2(i)=fSO2(i)-1; fHCHO(i)=fHCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCHO(i)=fHCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCOOH';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CHO + OH';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + hv = HOCH2CH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYETHO2H'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O = HO2 + HCHO + HCHO';
k(:,i) = 9.50e13.*exp(-5988./T);
Gstr{i,1} = 'HOCH2CH2O'; 
fHOCH2CH2O(i)=fHOCH2CH2O(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O = HO2 + HOCH2CHO';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HOCH2CH2O'; 
fHOCH2CH2O(i)=fHOCH2CH2O(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHGLY + OH = HOCH2CHO + HO2';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'ETHGLY'; Gstr{i,2} = 'OH'; 
fETHGLY(i)=fETHGLY(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + OH = CHOPRNO3 + OH';
k(:,i) = 1.69e-12;
Gstr{i,1} = 'PR1O2HNO3'; Gstr{i,2} = 'OH'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fOH(i)=fOH(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + OH = PRONO3AO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'PR1O2HNO3'; Gstr{i,2} = 'OH'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fOH(i)=fOH(i)-1; fPRONO3AO2(i)=fPRONO3AO2(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + hv = PRONO3AO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PR1O2HNO3'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO = CHOPRNO3 + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'PRONO3AO'; 
fPRONO3AO(i)=fPRONO3AO(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO = HCHO + CH3CHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'PRONO3AO'; 
fPRONO3AO(i)=fPRONO3AO(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + NO3 = PRNO3CO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CHOPRNO3'; Gstr{i,2} = 'NO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fNO3(i)=fNO3(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + OH = PRNO3CO3';
k(:,i) = 3.55e-12;
Gstr{i,1} = 'CHOPRNO3'; Gstr{i,2} = 'OH'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fOH(i)=fOH(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + hv = PROPALO + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CHOPRNO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fPROPALO(i)=fPROPALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPOLNO3 + OH = ACETOL + NO2';
k(:,i) = 9.16e-13;
Gstr{i,1} = 'PROPOLNO3'; Gstr{i,2} = 'OH'; 
fPROPOLNO3(i)=fPROPOLNO3(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + OH = NOA + OH';
k(:,i) = 3.47e-12;
Gstr{i,1} = 'PR2O2HNO3'; Gstr{i,2} = 'OH'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + OH = PRONO3BO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'PR2O2HNO3'; Gstr{i,2} = 'OH'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fOH(i)=fOH(i)-1; fPRONO3BO2(i)=fPRONO3BO2(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + hv = PRONO3BO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PR2O2HNO3'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO = CH3CHO + HCHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'PRONO3BO'; 
fPRONO3BO(i)=fPRONO3BO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO = NOA + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'PRONO3BO'; 
fPRONO3BO(i)=fPRONO3BO(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + OH = MGLYOX + NO2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'NOA'; Gstr{i,2} = 'OH'; 
fNOA(i)=fNOA(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + hv = CH3COCH2O + NO2';
k(:,i) = J56;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PROLNO3 + OH = CH3CHOHCHO + NO2';
k(:,i) = 1.71e-12;
Gstr{i,1} = 'PROLNO3'; Gstr{i,2} = 'OH'; 
fPROLNO3(i)=fPROLNO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + CO = CH3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'CO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCO(i)=fCO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO = CH3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO2 = CH3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO2(i)=fNO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + SO2 = CH3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'SO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fSO2(i)=fSO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO = CH3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH3CHOO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO = CH3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH3CHOO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH4 = CH3O2';
k(:,i) = 6.6e-12.*exp(-1240./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH4'; 
fCL(i)=fCL(i)-1; fCH4(i)=fCH4(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH4 = CH3O2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = ACETOL + OH';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = HYPROPO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + hv = HYPROPO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPROPO2H'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO = CH3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6410./T);
Gstr{i,1} = 'HYPROPO'; 
fHYPROPO(i)=fHYPROPO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + OH = MGLYOX + HO2';
k(:,i) = 1.6e-12.*exp(305./T);
Gstr{i,1} = 'ACETOL'; Gstr{i,2} = 'OH'; 
fACETOL(i)=fACETOL(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + hv = CH3CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'ACETOL'; 
fACETOL(i)=fACETOL(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPGLY + OH = ACETOL + HO2';
k(:,i) = 1.20e-11.*0.613;
Gstr{i,1} = 'PROPGLY'; Gstr{i,2} = 'OH'; 
fPROPGLY(i)=fPROPGLY(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPGLY + OH = CH3CHOHCHO + HO2';
k(:,i) = 1.20e-11.*0.387;
Gstr{i,1} = 'PROPGLY'; Gstr{i,2} = 'OH'; 
fPROPGLY(i)=fPROPGLY(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = CH3CHOHCHO + OH';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = IPROPOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + hv = IPROPOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLO2H'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO = CH3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5505./T);
Gstr{i,1} = 'IPROPOLO'; 
fIPROPOLO(i)=fIPROPOLO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + NO3 = CH3CHOHCO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + OH = CH3CHOHCO3';
k(:,i) = 1.7e-11;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'OH'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + hv = CH3CHO + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CH3CHOHCHO'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33OOH + OH = BUTONENO3 + OH';
k(:,i) = 7.15e-12;
Gstr{i,1} = 'C42NO33OOH'; Gstr{i,2} = 'OH'; 
fC42NO33OOH(i)=fC42NO33OOH(i)-1; fOH(i)=fOH(i)-1; fBUTONENO3(i)=fBUTONENO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33OOH + hv = C42NO33O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C42NO33OOH'; 
fC42NO33OOH(i)=fC42NO33OOH(i)-1; fC42NO33O(i)=fC42NO33O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O = BUTONENO3 + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'C42NO33O'; 
fC42NO33O(i)=fC42NO33O(i)-1; fBUTONENO3(i)=fBUTONENO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C42NO33O = CH3CHO + CH3CHO + NO2';
k(:,i) = 4.00e04;
Gstr{i,1} = 'C42NO33O'; 
fC42NO33O(i)=fC42NO33O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLNO3 + OH = BUT2OLO + NO2';
k(:,i) = 1.79e-12;
Gstr{i,1} = 'BUT2OLNO3'; Gstr{i,2} = 'OH'; 
fBUT2OLNO3(i)=fBUT2OLNO3(i)-1; fOH(i)=fOH(i)-1; fBUT2OLO(i)=fBUT2OLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTONENO3 + OH = BIACET + NO2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'BUTONENO3'; Gstr{i,2} = 'OH'; 
fBUTONENO3(i)=fBUTONENO3(i)-1; fOH(i)=fOH(i)-1; fBIACET(i)=fBIACET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTONENO3 + hv = MEKBO + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'BUTONENO3'; 
fBUTONENO3(i)=fBUTONENO3(i)-1; fMEKBO(i)=fMEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLOOH + OH = BUT2OLO + OH';
k(:,i) = 2.89e-11;
Gstr{i,1} = 'BUT2OLOOH'; Gstr{i,2} = 'OH'; 
fBUT2OLOOH(i)=fBUT2OLOOH(i)-1; fOH(i)=fOH(i)-1; fBUT2OLO(i)=fBUT2OLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLOOH + OH = BUT2OLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'BUT2OLOOH'; Gstr{i,2} = 'OH'; 
fBUT2OLOOH(i)=fBUT2OLOOH(i)-1; fOH(i)=fOH(i)-1; fBUT2OLO2(i)=fBUT2OLO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLOOH + hv = BUT2OLAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BUT2OLOOH'; 
fBUT2OLOOH(i)=fBUT2OLOOH(i)-1; fBUT2OLAO(i)=fBUT2OLAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLAO = CH3CHO + CH3CHO + HO2';
k(:,i) = 2.00e14.*exp(-4714./T);
Gstr{i,1} = 'BUT2OLAO'; 
fBUT2OLAO(i)=fBUT2OLAO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO + OH = BIACET + HO2';
k(:,i) = 5.86e-12;
Gstr{i,1} = 'BUT2OLO'; Gstr{i,2} = 'OH'; 
fBUT2OLO(i)=fBUT2OLO(i)-1; fOH(i)=fOH(i)-1; fBIACET(i)=fBIACET(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLO + hv = CH3CO3 + CH3CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'BUT2OLO'; 
fBUT2OLO(i)=fBUT2OLO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OLOH + OH = BUT2OLO + HO2';
k(:,i) = 1.73e-11;
Gstr{i,1} = 'BUT2OLOH'; Gstr{i,2} = 'OH'; 
fBUT2OLOH(i)=fBUT2OLOH(i)-1; fOH(i)=fOH(i)-1; fBUT2OLO(i)=fBUT2OLO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPEROOH + OH = BZOBIPEROH + OH';
k(:,i) = 9.77e-11;
Gstr{i,1} = 'BZBIPEROOH'; Gstr{i,2} = 'OH'; 
fBZBIPEROOH(i)=fBZBIPEROOH(i)-1; fOH(i)=fOH(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPEROOH + hv = BZBIPERO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZBIPEROOH'; 
fBZBIPEROOH(i)=fBZBIPEROOH(i)-1; fBZBIPERO(i)=fBZBIPERO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERNO3 + OH = BZOBIPEROH + NO2';
k(:,i) = 7.30e-11;
Gstr{i,1} = 'BZBIPERNO3'; Gstr{i,2} = 'OH'; 
fBZBIPERNO3(i)=fBZBIPERNO3(i)-1; fOH(i)=fOH(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERNO3 + hv = BZBIPERO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'BZBIPERNO3'; 
fBZBIPERNO3(i)=fBZBIPERNO3(i)-1; fBZBIPERO(i)=fBZBIPERO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO = GLYOX + BZFUONE + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'BZBIPERO'; 
fBZBIPERO(i)=fBZBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fBZFUONE(i)=fBZFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO = GLYOX + MALDIAL + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'BZBIPERO'; 
fBZBIPERO(i)=fBZBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMALDIAL(i)=fMALDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPER2OH + OH = BZOBIPEROH + HO2';
k(:,i) = 1.21e-10;
Gstr{i,1} = 'BZBIPER2OH'; Gstr{i,2} = 'OH'; 
fBZBIPER2OH(i)=fBZBIPER2OH(i)-1; fOH(i)=fOH(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZOBIPEROH + OH = MALDIALCO3 + GLYOX';
k(:,i) = 8.16e-11;
Gstr{i,1} = 'BZOBIPEROH'; Gstr{i,2} = 'OH'; 
fBZOBIPEROH(i)=fBZOBIPEROH(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'BZOBIPEROH + hv = MALDIALCO3 + GLYOX + HO2';
k(:,i) = J22;
Gstr{i,1} = 'BZOBIPEROH'; 
fBZOBIPEROH(i)=fBZOBIPEROH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + HO2 = BZEMUCCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'HO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fBZEMUCCO2H(i)=fBZEMUCCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + HO2 = BZEMUCCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'HO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fBZEMUCCO3H(i)=fBZEMUCCO3H(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + HO2 = C5DIALO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'HO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + NO = C5DIALO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'NO'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fNO(i)=fNO(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + NO2 = BZEMUCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'NO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fNO2(i)=fNO2(i)-1; fBZEMUCPAN(i)=fBZEMUCPAN(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + NO3 = C5DIALO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'NO3'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fNO3(i)=fNO3(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + RO2 = BZEMUCCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'RO2';
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fBZEMUCCO2H(i)=fBZEMUCCO2H(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + RO2 = C5DIALO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'RO2';
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXC4DIAL + NO3 = EPXDLCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*4.0;
Gstr{i,1} = 'EPXC4DIAL'; Gstr{i,2} = 'NO3'; 
fEPXC4DIAL(i)=fEPXC4DIAL(i)-1; fNO3(i)=fNO3(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXC4DIAL + OH = EPXDLCO3';
k(:,i) = 4.32e-11;
Gstr{i,1} = 'EPXC4DIAL'; Gstr{i,2} = 'OH'; 
fEPXC4DIAL(i)=fEPXC4DIAL(i)-1; fOH(i)=fOH(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXC4DIAL + hv = C3DIALO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'EPXC4DIAL'; 
fEPXC4DIAL(i)=fEPXC4DIAL(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = GLYOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fGLYOO(i)=fGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = HCHO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = HO2 + HO2 + CO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = OH + HO2 + CO + CO';
k(:,i) = KDEC.*0.57;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + HO2 = BZEMUCOOH';
k(:,i) = KRO2HO2.*0.77;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'HO2'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fHO2(i)=fHO2(i)-1; fBZEMUCOOH(i)=fBZEMUCOOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + NO = BZEMUCNO3';
k(:,i) = KRO2NO.*0.105;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'NO'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fNO(i)=fNO(i)-1; fBZEMUCNO3(i)=fBZEMUCNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + NO = BZEMUCO + NO2';
k(:,i) = KRO2NO.*0.895;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'NO'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fNO(i)=fNO(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + NO3 = BZEMUCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'NO3'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fNO3(i)=fNO3(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + RO2 = BZEMUCCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'RO2';
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + RO2 = BZEMUCO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'RO2';
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + RO2 = BZEMUCOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'RO2';
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fBZEMUCOH(i)=fBZEMUCOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + HO2 = C5DIALOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'HO2'; 
fC5DIALO2(i)=fC5DIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC5DIALOOH(i)=fC5DIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + NO = C5DIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'NO'; 
fC5DIALO2(i)=fC5DIALO2(i)-1; fNO(i)=fNO(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + NO3 = C5DIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'NO3'; 
fC5DIALO2(i)=fC5DIALO2(i)-1; fNO3(i)=fNO3(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + RO2 = C5DIALCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'RO2';
fC5DIALO2(i)=fC5DIALO2(i)-1; fC5DIALCO(i)=fC5DIALCO(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + RO2 = C5DIALO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'RO2';
fC5DIALO2(i)=fC5DIALO2(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + RO2 = C5DIALOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'RO2';
fC5DIALO2(i)=fC5DIALO2(i)-1; fC5DIALOH(i)=fC5DIALOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + NO3 = MALDIALCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*2.0;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'NO3'; 
fMALDIAL(i)=fMALDIAL(i)-1; fNO3(i)=fNO3(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + O3 = GLYOX + GLYOOA';
k(:,i) = 2.00e-18;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'O3'; 
fMALDIAL(i)=fMALDIAL(i)-1; fO3(i)=fO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + OH = MALDIALCO3';
k(:,i) = 5.20e-11.*0.83;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'OH'; 
fMALDIAL(i)=fMALDIAL(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + OH = MALDIALO2';
k(:,i) = 5.20e-11.*0.17;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'OH'; 
fMALDIAL(i)=fMALDIAL(i)-1; fOH(i)=fOH(i)-1; fMALDIALO2(i)=fMALDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + hv = BZFUONE';
k(:,i) = J4.*0.14.*0.4;
Gstr{i,1} = 'MALDIAL'; 
fMALDIAL(i)=fMALDIAL(i)-1; fBZFUONE(i)=fBZFUONE(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + hv = MALDIALCO3 + HO2';
k(:,i) = J4.*0.14.*0.6;
Gstr{i,1} = 'MALDIAL'; 
fMALDIAL(i)=fMALDIAL(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O + NO2 = HOC6H4NO2';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'C6H5O'; Gstr{i,2} = 'NO2'; 
fC6H5O(i)=fC6H5O(i)-1; fNO2(i)=fNO2(i)-1; fHOC6H4NO2(i)=fHOC6H4NO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O + O3 = C6H5O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'C6H5O'; Gstr{i,2} = 'O3'; 
fC6H5O(i)=fC6H5O(i)-1; fO3(i)=fO3(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + HO2 = NPHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'HO2'; 
fNPHENO2(i)=fNPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fNPHENOOH(i)=fNPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + NO = NPHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'NO'; 
fNPHENO2(i)=fNPHENO2(i)-1; fNO(i)=fNO(i)-1; fNPHENO(i)=fNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + NO3 = NPHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'NO3'; 
fNPHENO2(i)=fNPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fNPHENO(i)=fNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + RO2 = NPHENO';
k(:,i) = 8.00e-13.*0.7;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'RO2';
fNPHENO2(i)=fNPHENO2(i)-1; fNPHENO(i)=fNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + RO2 = NPHENOH';
k(:,i) = 8.00e-13.*0.3;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'RO2';
fNPHENO2(i)=fNPHENO2(i)-1; fNPHENOH(i)=fNPHENOH(i)+1; 

i=i+1;
Rnames{i} = 'CATECHOL + NO3 = CATEC1O + HNO3';
k(:,i) = 9.9e-11;
Gstr{i,1} = 'CATECHOL'; Gstr{i,2} = 'NO3'; 
fCATECHOL(i)=fCATECHOL(i)-1; fNO3(i)=fNO3(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CATECHOL + O3 = CATECOOA';
k(:,i) = 9.2e-18;
Gstr{i,1} = 'CATECHOL'; Gstr{i,2} = 'O3'; 
fCATECHOL(i)=fCATECHOL(i)-1; fO3(i)=fO3(i)-1; fCATECOOA(i)=fCATECOOA(i)+1; 

i=i+1;
Rnames{i} = 'CATECHOL + OH = CATEC1O';
k(:,i) = 1.0e-10;
Gstr{i,1} = 'CATECHOL'; Gstr{i,2} = 'OH'; 
fCATECHOL(i)=fCATECHOL(i)-1; fOH(i)=fOH(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + HO2 = PHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'HO2'; 
fPHENO2(i)=fPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fPHENOOH(i)=fPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + NO = PHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'NO'; 
fPHENO2(i)=fPHENO2(i)-1; fNO(i)=fNO(i)-1; fPHENO(i)=fPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + NO3 = PHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'NO3'; 
fPHENO2(i)=fPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fPHENO(i)=fPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + RO2 = PHENO';
k(:,i) = 8.00e-13.*0.7;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'RO2';
fPHENO2(i)=fPHENO2(i)-1; fPHENO(i)=fPHENO(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + RO2 = PHENOH';
k(:,i) = 8.00e-13.*0.3;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'RO2';
fPHENO2(i)=fPHENO2(i)-1; fPHENOH(i)=fPHENOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2OOH + OH = BENZAL + OH';
k(:,i) = 2.05e-11;
Gstr{i,1} = 'C6H5CH2OOH'; Gstr{i,2} = 'OH'; 
fC6H5CH2OOH(i)=fC6H5CH2OOH(i)-1; fOH(i)=fOH(i)-1; fBENZAL(i)=fBENZAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2OOH + hv = C6H5CH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6H5CH2OOH'; 
fC6H5CH2OOH(i)=fC6H5CH2OOH(i)-1; fC6H5CH2O(i)=fC6H5CH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2NO3 + OH = BENZAL + NO2';
k(:,i) = 6.03e-12;
Gstr{i,1} = 'C6H5CH2NO3'; Gstr{i,2} = 'OH'; 
fC6H5CH2NO3(i)=fC6H5CH2NO3(i)-1; fOH(i)=fOH(i)-1; fBENZAL(i)=fBENZAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2NO3 + hv = C6H5CH2O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C6H5CH2NO3'; 
fC6H5CH2NO3(i)=fC6H5CH2NO3(i)-1; fC6H5CH2O(i)=fC6H5CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2O = BENZAL + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'C6H5CH2O'; 
fC6H5CH2O(i)=fC6H5CH2O(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZAL + hv = HO2 + C6H5CO3';
k(:,i) = J19;
Gstr{i,1} = 'BENZAL'; 
fBENZAL(i)=fBENZAL(i)-1; fHO2(i)=fHO2(i)+1; fC6H5CO3(i)=fC6H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'BENZAL + hv = HO2 + CO + C6H5O2';
k(:,i) = J18;
Gstr{i,1} = 'BENZAL'; 
fBENZAL(i)=fBENZAL(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + BENZAL = C6H5CO3 + HNO3';
k(:,i) = 2.40e-15;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'BENZAL'; 
fNO3(i)=fNO3(i)-1; fBENZAL(i)=fBENZAL(i)-1; fC6H5CO3(i)=fC6H5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + BENZAL = C6H5CO3';
k(:,i) = 5.9e-12.*exp(225./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BENZAL'; 
fOH(i)=fOH(i)-1; fBENZAL(i)=fBENZAL(i)-1; fC6H5CO3(i)=fC6H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CH2OH + OH = BENZAL + HO2';
k(:,i) = 2.7e-11;
Gstr{i,1} = 'C6H5CH2OH'; Gstr{i,2} = 'OH'; 
fC6H5CH2OH(i)=fC6H5CH2OH(i)-1; fOH(i)=fOH(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESO2 + HO2 = CRESOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'CRESO2'; Gstr{i,2} = 'HO2'; 
fCRESO2(i)=fCRESO2(i)-1; fHO2(i)=fHO2(i)-1; fCRESOOH(i)=fCRESOOH(i)+1; 

i=i+1;
Rnames{i} = 'CRESO2 + NO = CRESO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CRESO2'; Gstr{i,2} = 'NO'; 
fCRESO2(i)=fCRESO2(i)-1; fNO(i)=fNO(i)-1; fCRESO(i)=fCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESO2 + NO3 = CRESO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CRESO2'; Gstr{i,2} = 'NO3'; 
fCRESO2(i)=fCRESO2(i)-1; fNO3(i)=fNO3(i)-1; fCRESO(i)=fCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESO2 + RO2 = CRESO';
k(:,i) = 8.00e-13.*0.70;
Gstr{i,1} = 'CRESO2'; Gstr{i,2} = 'RO2';
fCRESO2(i)=fCRESO2(i)-1; fCRESO(i)=fCRESO(i)+1; 

i=i+1;
Rnames{i} = 'CRESO2 + RO2 = CRESOH';
k(:,i) = 8.00e-13.*0.30;
Gstr{i,1} = 'CRESO2'; Gstr{i,2} = 'RO2';
fCRESO2(i)=fCRESO2(i)-1; fCRESOH(i)=fCRESOH(i)+1; 

i=i+1;
Rnames{i} = 'NCRESO2 + HO2 = NCRESOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NCRESO2'; Gstr{i,2} = 'HO2'; 
fNCRESO2(i)=fNCRESO2(i)-1; fHO2(i)=fHO2(i)-1; fNCRESOOH(i)=fNCRESOOH(i)+1; 

i=i+1;
Rnames{i} = 'NCRESO2 + NO = NCRESO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NCRESO2'; Gstr{i,2} = 'NO'; 
fNCRESO2(i)=fNCRESO2(i)-1; fNO(i)=fNO(i)-1; fNCRESO(i)=fNCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRESO2 + NO3 = NCRESO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NCRESO2'; Gstr{i,2} = 'NO3'; 
fNCRESO2(i)=fNCRESO2(i)-1; fNO3(i)=fNO3(i)-1; fNCRESO(i)=fNCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRESO2 + RO2 = NCRESO';
k(:,i) = 8.00e-13.*0.70;
Gstr{i,1} = 'NCRESO2'; Gstr{i,2} = 'RO2';
fNCRESO2(i)=fNCRESO2(i)-1; fNCRESO(i)=fNCRESO(i)+1; 

i=i+1;
Rnames{i} = 'NCRESO2 + RO2 = NCRESOH';
k(:,i) = 8.00e-13.*0.30;
Gstr{i,1} = 'NCRESO2'; Gstr{i,2} = 'RO2';
fNCRESO2(i)=fNCRESO2(i)-1; fNCRESOH(i)=fNCRESOH(i)+1; 

i=i+1;
Rnames{i} = 'TOL1O + NO2 = TOL1OHNO2';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'TOL1O'; Gstr{i,2} = 'NO2'; 
fTOL1O(i)=fTOL1O(i)-1; fNO2(i)=fNO2(i)-1; fTOL1OHNO2(i)=fTOL1OHNO2(i)+1; 

i=i+1;
Rnames{i} = 'TOL1O + O3 = OXYL1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'TOL1O'; Gstr{i,2} = 'O3'; 
fTOL1O(i)=fTOL1O(i)-1; fO3(i)=fO3(i)-1; fOXYL1O2(i)=fOXYL1O2(i)+1; 

i=i+1;
Rnames{i} = 'MCATECHOL + NO3 = MCATEC1O + HNO3';
k(:,i) = 1.7e-10.*1.0;
Gstr{i,1} = 'MCATECHOL'; Gstr{i,2} = 'NO3'; 
fMCATECHOL(i)=fMCATECHOL(i)-1; fNO3(i)=fNO3(i)-1; fMCATEC1O(i)=fMCATEC1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MCATECHOL + O3 = MCATECOOA';
k(:,i) = 2.8e-17;
Gstr{i,1} = 'MCATECHOL'; Gstr{i,2} = 'O3'; 
fMCATECHOL(i)=fMCATECHOL(i)-1; fO3(i)=fO3(i)-1; fMCATECOOA(i)=fMCATECOOA(i)+1; 

i=i+1;
Rnames{i} = 'MCATECHOL + OH = MCATEC1O';
k(:,i) = 2.0e-10.*1.0;
Gstr{i,1} = 'MCATECHOL'; Gstr{i,2} = 'OH'; 
fMCATECHOL(i)=fMCATECHOL(i)-1; fOH(i)=fOH(i)-1; fMCATEC1O(i)=fMCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPEROOH + OH = TLOBIPEROH + OH';
k(:,i) = 9.64e-11;
Gstr{i,1} = 'TLBIPEROOH'; Gstr{i,2} = 'OH'; 
fTLBIPEROOH(i)=fTLBIPEROOH(i)-1; fOH(i)=fOH(i)-1; fTLOBIPEROH(i)=fTLOBIPEROH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPEROOH + hv = TLBIPERO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TLBIPEROOH'; 
fTLBIPEROOH(i)=fTLBIPEROOH(i)-1; fTLBIPERO(i)=fTLBIPERO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO = GLYOX + C4MDIAL + HO2';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'TLBIPERO'; 
fTLBIPERO(i)=fTLBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO = GLYOX + C5DICARB + HO2';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'TLBIPERO'; 
fTLBIPERO(i)=fTLBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fC5DICARB(i)=fC5DICARB(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO = GLYOX + TLFUONE + HO2';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'TLBIPERO'; 
fTLBIPERO(i)=fTLBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fTLFUONE(i)=fTLFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO = MGLYOX + BZFUONE + HO2';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'TLBIPERO'; 
fTLBIPERO(i)=fTLBIPERO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fBZFUONE(i)=fBZFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERO = MGLYOX + MALDIAL + HO2';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'TLBIPERO'; 
fTLBIPERO(i)=fTLBIPERO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fMALDIAL(i)=fMALDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERNO3 + OH = TLOBIPEROH + NO2';
k(:,i) = 7.16e-11;
Gstr{i,1} = 'TLBIPERNO3'; Gstr{i,2} = 'OH'; 
fTLBIPERNO3(i)=fTLBIPERNO3(i)-1; fOH(i)=fOH(i)-1; fTLOBIPEROH(i)=fTLOBIPEROH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPERNO3 + hv = TLBIPERO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'TLBIPERNO3'; 
fTLBIPERNO3(i)=fTLBIPERNO3(i)-1; fTLBIPERO(i)=fTLBIPERO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLBIPER2OH + OH = TLOBIPEROH + HO2';
k(:,i) = 1.20e-10;
Gstr{i,1} = 'TLBIPER2OH'; Gstr{i,2} = 'OH'; 
fTLBIPER2OH(i)=fTLBIPER2OH(i)-1; fOH(i)=fOH(i)-1; fTLOBIPEROH(i)=fTLOBIPEROH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLOBIPEROH + OH = C5CO14O2 + GLYOX';
k(:,i) = 7.99e-11;
Gstr{i,1} = 'TLOBIPEROH'; Gstr{i,2} = 'OH'; 
fTLOBIPEROH(i)=fTLOBIPEROH(i)-1; fOH(i)=fOH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'TLOBIPEROH + hv = C5CO14O2 + GLYOX + HO2';
k(:,i) = J22;
Gstr{i,1} = 'TLOBIPEROH'; 
fTLOBIPEROH(i)=fTLOBIPEROH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + HO2 = C615CO2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'HO2'; 
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + HO2 = TLEMUCCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'HO2'; 
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fTLEMUCCO2H(i)=fTLEMUCCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + HO2 = TLEMUCCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'HO2'; 
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fTLEMUCCO3H(i)=fTLEMUCCO3H(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + NO = C615CO2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'NO'; 
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fNO(i)=fNO(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + NO2 = TLEMUCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'NO2'; 
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fNO2(i)=fNO2(i)-1; fTLEMUCPAN(i)=fTLEMUCPAN(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + NO3 = C615CO2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'NO3'; 
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fNO3(i)=fNO3(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + RO2 = C615CO2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'RO2';
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3 + RO2 = TLEMUCCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'TLEMUCCO3'; Gstr{i,2} = 'RO2';
fTLEMUCCO3(i)=fTLEMUCCO3(i)-1; fTLEMUCCO2H(i)=fTLEMUCCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOB = CH3CHO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'MGLOOB'; 
fMGLOOB(i)=fMGLOOB(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOB = CH3CO3 + CO + OH';
k(:,i) = KDEC.*0.57;
Gstr{i,1} = 'MGLOOB'; 
fMGLOOB(i)=fMGLOOB(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOB = CH3CO3 + HO2';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'MGLOOB'; 
fMGLOOB(i)=fMGLOOB(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOB = MGLOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'MGLOOB'; 
fMGLOOB(i)=fMGLOOB(i)-1; fMGLOO(i)=fMGLOO(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + HO2 = TLEMUCOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'HO2'; 
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fHO2(i)=fHO2(i)-1; fTLEMUCOOH(i)=fTLEMUCOOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + NO = TLEMUCNO3';
k(:,i) = KRO2NO.*0.105;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'NO'; 
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fNO(i)=fNO(i)-1; fTLEMUCNO3(i)=fTLEMUCNO3(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + NO = TLEMUCO + NO2';
k(:,i) = KRO2NO.*0.895;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'NO'; 
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fNO(i)=fNO(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + NO3 = TLEMUCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'NO3'; 
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fNO3(i)=fNO3(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + RO2 = TLEMUCCO';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'RO2';
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fTLEMUCCO(i)=fTLEMUCCO(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + RO2 = TLEMUCO';
k(:,i) = 8.80e-13.*0.60;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'RO2';
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO2 + RO2 = TLEMUCOH';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'TLEMUCO2'; Gstr{i,2} = 'RO2';
fTLEMUCO2(i)=fTLEMUCO2(i)-1; fTLEMUCOH(i)=fTLEMUCOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O2 + HO2 = C615CO2OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C615CO2O2'; Gstr{i,2} = 'HO2'; 
fC615CO2O2(i)=fC615CO2O2(i)-1; fHO2(i)=fHO2(i)-1; fC615CO2OOH(i)=fC615CO2OOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O2 + NO = C615CO2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C615CO2O2'; Gstr{i,2} = 'NO'; 
fC615CO2O2(i)=fC615CO2O2(i)-1; fNO(i)=fNO(i)-1; fC615CO2O(i)=fC615CO2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O2 + NO3 = C615CO2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C615CO2O2'; Gstr{i,2} = 'NO3'; 
fC615CO2O2(i)=fC615CO2O2(i)-1; fNO3(i)=fNO3(i)-1; fC615CO2O(i)=fC615CO2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O2 + RO2 = C6125CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C615CO2O2'; Gstr{i,2} = 'RO2';
fC615CO2O2(i)=fC615CO2O2(i)-1; fC6125CO(i)=fC6125CO(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O2 + RO2 = C615CO2O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C615CO2O2'; Gstr{i,2} = 'RO2';
fC615CO2O2(i)=fC615CO2O2(i)-1; fC615CO2O(i)=fC615CO2O(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O2 + RO2 = C615CO2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C615CO2O2'; Gstr{i,2} = 'RO2';
fC615CO2O2(i)=fC615CO2O2(i)-1; fC615CO2OH(i)=fC615CO2OH(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOOH + OH = MXYLAL + OH';
k(:,i) = 2.05e-11;
Gstr{i,1} = 'MXYLOOH'; Gstr{i,2} = 'OH'; 
fMXYLOOH(i)=fMXYLOOH(i)-1; fOH(i)=fOH(i)-1; fMXYLAL(i)=fMXYLAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOOH + hv = MXYLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYLOOH'; 
fMXYLOOH(i)=fMXYLOOH(i)-1; fMXYLO(i)=fMXYLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYLNO3 + OH = MXYLAL + NO2';
k(:,i) = 6.03e-12;
Gstr{i,1} = 'MXYLNO3'; Gstr{i,2} = 'OH'; 
fMXYLNO3(i)=fMXYLNO3(i)-1; fOH(i)=fOH(i)-1; fMXYLAL(i)=fMXYLAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLNO3 + hv = MXYLO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'MXYLNO3'; 
fMXYLNO3(i)=fMXYLNO3(i)-1; fMXYLO(i)=fMXYLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLO = MXYLAL + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'MXYLO'; 
fMXYLO(i)=fMXYLO(i)-1; fMXYLAL(i)=fMXYLAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLAL + NO3 = MXYLCO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'MXYLAL'; Gstr{i,2} = 'NO3'; 
fMXYLAL(i)=fMXYLAL(i)-1; fNO3(i)=fNO3(i)-1; fMXYLCO3(i)=fMXYLCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLAL + OH = MXYLCO3';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'MXYLAL'; Gstr{i,2} = 'OH'; 
fMXYLAL(i)=fMXYLAL(i)-1; fOH(i)=fOH(i)-1; fMXYLCO3(i)=fMXYLCO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLAL + hv = MXYL1O2 + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'MXYLAL'; 
fMXYLAL(i)=fMXYLAL(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYLAL + hv = MXYLCO3 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'MXYLAL'; 
fMXYLAL(i)=fMXYLAL(i)-1; fMXYLCO3(i)=fMXYLCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLOH + OH = MXYLAL + HO2';
k(:,i) = 8.93e-12;
Gstr{i,1} = 'MXYLOH'; Gstr{i,2} = 'OH'; 
fMXYLOH(i)=fMXYLOH(i)-1; fOH(i)=fOH(i)-1; fMXYLAL(i)=fMXYLAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBPEROOH + OH = MXYOBPEROH + OH';
k(:,i) = 1.17e-10;
Gstr{i,1} = 'MXYBPEROOH'; Gstr{i,2} = 'OH'; 
fMXYBPEROOH(i)=fMXYBPEROOH(i)-1; fOH(i)=fOH(i)-1; fMXYOBPEROH(i)=fMXYOBPEROH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYBPEROOH + hv = MXYBIPERO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYBPEROOH'; 
fMXYBPEROOH(i)=fMXYBPEROOH(i)-1; fMXYBIPERO(i)=fMXYBIPERO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPENO3 + OH = MXYOBPEROH + NO2';
k(:,i) = 7.15e-11;
Gstr{i,1} = 'MXYBIPENO3'; Gstr{i,2} = 'OH'; 
fMXYBIPENO3(i)=fMXYBIPENO3(i)-1; fOH(i)=fOH(i)-1; fMXYOBPEROH(i)=fMXYOBPEROH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPENO3 + hv = MXYBIPERO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'MXYBIPENO3'; 
fMXYBIPENO3(i)=fMXYBIPENO3(i)-1; fMXYBIPERO(i)=fMXYBIPERO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO = GLYOX + C5MDICARB + HO2';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'MXYBIPERO'; 
fMXYBIPERO(i)=fMXYBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fC5MDICARB(i)=fC5MDICARB(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO = GLYOX + MXYFUONE + HO2';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'MXYBIPERO'; 
fMXYBIPERO(i)=fMXYBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMXYFUONE(i)=fMXYFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO = MGLYOX + C4MDIAL + HO2';
k(:,i) = KDEC.*0.26;
Gstr{i,1} = 'MXYBIPERO'; 
fMXYBIPERO(i)=fMXYBIPERO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO = MGLYOX + C5DICARB + HO2';
k(:,i) = KDEC.*0.26;
Gstr{i,1} = 'MXYBIPERO'; 
fMXYBIPERO(i)=fMXYBIPERO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fC5DICARB(i)=fC5DICARB(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBIPERO = MGLYOX + PXYFUONE + HO2';
k(:,i) = KDEC.*0.26;
Gstr{i,1} = 'MXYBIPERO'; 
fMXYBIPERO(i)=fMXYBIPERO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fPXYFUONE(i)=fPXYFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYBPER2OH + OH = MXYOBPEROH + HO2';
k(:,i) = 2.50e-10;
Gstr{i,1} = 'MXYBPER2OH'; Gstr{i,2} = 'OH'; 
fMXYBPER2OH(i)=fMXYBPER2OH(i)-1; fOH(i)=fOH(i)-1; fMXYOBPEROH(i)=fMXYOBPEROH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOBPEROH + OH = C3MCODBCO3 + MGLYOX';
k(:,i) = 7.93e-11.*0.5;
Gstr{i,1} = 'MXYOBPEROH'; Gstr{i,2} = 'OH'; 
fMXYOBPEROH(i)=fMXYOBPEROH(i)-1; fOH(i)=fOH(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MXYOBPEROH + OH = C5CO14O2 + MGLYOX';
k(:,i) = 7.93e-11.*0.5;
Gstr{i,1} = 'MXYOBPEROH'; Gstr{i,2} = 'OH'; 
fMXYOBPEROH(i)=fMXYOBPEROH(i)-1; fOH(i)=fOH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MXYOBPEROH + hv = C3MCODBCO3 + MGLYOX + HO2';
k(:,i) = J22.*0.5;
Gstr{i,1} = 'MXYOBPEROH'; 
fMXYOBPEROH(i)=fMXYOBPEROH(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOBPEROH + hv = C5CO14O2 + MGLYOX + HO2';
k(:,i) = J22.*0.5;
Gstr{i,1} = 'MXYOBPEROH'; 
fMXYOBPEROH(i)=fMXYOBPEROH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + HO2 = C726CO5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'HO2'; 
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + HO2 = MXYMUCCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'HO2'; 
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fMXYMUCCO2H(i)=fMXYMUCCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + HO2 = MXYMUCCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'HO2'; 
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fMXYMUCCO3H(i)=fMXYMUCCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + NO = C726CO5O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'NO'; 
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fNO(i)=fNO(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + NO2 = MXYMUCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'NO2'; 
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fNO2(i)=fNO2(i)-1; fMXYMUCPAN(i)=fMXYMUCPAN(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + NO3 = C726CO5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'NO3'; 
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fNO3(i)=fNO3(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + RO2 = C726CO5O2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'RO2';
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3 + RO2 = MXYMUCCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MXYMUCCO3'; Gstr{i,2} = 'RO2';
fMXYMUCCO3(i)=fMXYMUCCO3(i)-1; fMXYMUCCO2H(i)=fMXYMUCCO2H(i)+1; 

i=i+1;
Rnames{i} = 'EPXMC4DIAL + NO3 = EPXMDLCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*8.5;
Gstr{i,1} = 'EPXMC4DIAL'; Gstr{i,2} = 'NO3'; 
fEPXMC4DIAL(i)=fEPXMC4DIAL(i)-1; fNO3(i)=fNO3(i)-1; fEPXMDLCO3(i)=fEPXMDLCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMC4DIAL + OH = EPXMDLCO3';
k(:,i) = 4.28e-11;
Gstr{i,1} = 'EPXMC4DIAL'; Gstr{i,2} = 'OH'; 
fEPXMC4DIAL(i)=fEPXMC4DIAL(i)-1; fOH(i)=fOH(i)-1; fEPXMDLCO3(i)=fEPXMDLCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMC4DIAL + hv = C3MDIALO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'EPXMC4DIAL'; 
fEPXMC4DIAL(i)=fEPXMC4DIAL(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + HO2 = MXYMUCOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'HO2'; 
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fHO2(i)=fHO2(i)-1; fMXYMUCOOH(i)=fMXYMUCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + NO = MXYMUCNO3';
k(:,i) = KRO2NO.*0.173;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'NO'; 
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fNO(i)=fNO(i)-1; fMXYMUCNO3(i)=fMXYMUCNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + NO = MXYMUCO + NO2';
k(:,i) = KRO2NO.*0.827;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'NO'; 
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fNO(i)=fNO(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + NO3 = MXYMUCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'NO3'; 
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fNO3(i)=fNO3(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + RO2 = MXYMUCCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'RO2';
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fMXYMUCCO(i)=fMXYMUCCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + RO2 = MXYMUCO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'RO2';
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO2 + RO2 = MXYMUCOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MXYMUCO2'; Gstr{i,2} = 'RO2';
fMXYMUCO2(i)=fMXYMUCO2(i)-1; fMXYMUCOH(i)=fMXYMUCOH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O2 + HO2 = C726CO5OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C726CO5O2'; Gstr{i,2} = 'HO2'; 
fC726CO5O2(i)=fC726CO5O2(i)-1; fHO2(i)=fHO2(i)-1; fC726CO5OOH(i)=fC726CO5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O2 + NO = C726CO5O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C726CO5O2'; Gstr{i,2} = 'NO'; 
fC726CO5O2(i)=fC726CO5O2(i)-1; fNO(i)=fNO(i)-1; fC726CO5O(i)=fC726CO5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O2 + NO3 = C726CO5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C726CO5O2'; Gstr{i,2} = 'NO3'; 
fC726CO5O2(i)=fC726CO5O2(i)-1; fNO3(i)=fNO3(i)-1; fC726CO5O(i)=fC726CO5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O2 + RO2 = C7236CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C726CO5O2'; Gstr{i,2} = 'RO2';
fC726CO5O2(i)=fC726CO5O2(i)-1; fC7236CO(i)=fC7236CO(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O2 + RO2 = C726CO3OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C726CO5O2'; Gstr{i,2} = 'RO2';
fC726CO5O2(i)=fC726CO5O2(i)-1; fC726CO3OH(i)=fC726CO3OH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O2 + RO2 = C726CO5O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C726CO5O2'; Gstr{i,2} = 'RO2';
fC726CO5O2(i)=fC726CO5O2(i)-1; fC726CO5O(i)=fC726CO5O(i)+1; 

i=i+1;
Rnames{i} = 'MXY1O + NO2 = MXY1OHNO2';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'MXY1O'; Gstr{i,2} = 'NO2'; 
fMXY1O(i)=fMXY1O(i)-1; fNO2(i)=fNO2(i)-1; fMXY1OHNO2(i)=fMXY1OHNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXY1O + O3 = MXY1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'MXY1O'; Gstr{i,2} = 'O3'; 
fMXY1O(i)=fMXY1O(i)-1; fO3(i)=fO3(i)-1; fMXY1O2(i)=fMXY1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO2 + HO2 = MXYOLOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXYOLO2'; Gstr{i,2} = 'HO2'; 
fMXYOLO2(i)=fMXYOLO2(i)-1; fHO2(i)=fHO2(i)-1; fMXYOLOOH(i)=fMXYOLOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO2 + NO = MXYOLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXYOLO2'; Gstr{i,2} = 'NO'; 
fMXYOLO2(i)=fMXYOLO2(i)-1; fNO(i)=fNO(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO2 + NO3 = MXYOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYOLO2'; Gstr{i,2} = 'NO3'; 
fMXYOLO2(i)=fMXYOLO2(i)-1; fNO3(i)=fNO3(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO2 + RO2 = MXYOLO';
k(:,i) = 8.00e-13.*0.70;
Gstr{i,1} = 'MXYOLO2'; Gstr{i,2} = 'RO2';
fMXYOLO2(i)=fMXYOLO2(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO2 + RO2 = MXYOLOH';
k(:,i) = 8.00e-13.*0.30;
Gstr{i,1} = 'MXYOLO2'; Gstr{i,2} = 'RO2';
fMXYOLO2(i)=fMXYOLO2(i)-1; fMXYOLOH(i)=fMXYOLOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLO2 + HO2 = NMXYOLOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'NMXYOLO2'; Gstr{i,2} = 'HO2'; 
fNMXYOLO2(i)=fNMXYOLO2(i)-1; fHO2(i)=fHO2(i)-1; fNMXYOLOOH(i)=fNMXYOLOOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLO2 + NO = NMXYOLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NMXYOLO2'; Gstr{i,2} = 'NO'; 
fNMXYOLO2(i)=fNMXYOLO2(i)-1; fNO(i)=fNO(i)-1; fNMXYOLO(i)=fNMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLO2 + NO3 = NMXYOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NMXYOLO2'; Gstr{i,2} = 'NO3'; 
fNMXYOLO2(i)=fNMXYOLO2(i)-1; fNO3(i)=fNO3(i)-1; fNMXYOLO(i)=fNMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLO2 + RO2 = NMXYOLO';
k(:,i) = 8.00e-13.*0.70;
Gstr{i,1} = 'NMXYOLO2'; Gstr{i,2} = 'RO2';
fNMXYOLO2(i)=fNMXYOLO2(i)-1; fNMXYOLO(i)=fNMXYOLO(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLO2 + RO2 = NMXYOLOH';
k(:,i) = 8.00e-13.*0.30;
Gstr{i,1} = 'NMXYOLO2'; Gstr{i,2} = 'RO2';
fNMXYOLO2(i)=fNMXYOLO2(i)-1; fNMXYOLOH(i)=fNMXYOLOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYCATECH + NO3 = MXCATEC1O + HNO3';
k(:,i) = 2.01e-10;
Gstr{i,1} = 'MXYCATECH'; Gstr{i,2} = 'NO3'; 
fMXYCATECH(i)=fMXYCATECH(i)-1; fNO3(i)=fNO3(i)-1; fMXCATEC1O(i)=fMXCATEC1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYCATECH + O3 = MXCATECOOA';
k(:,i) = 2.81e-17;
Gstr{i,1} = 'MXYCATECH'; Gstr{i,2} = 'O3'; 
fMXYCATECH(i)=fMXYCATECH(i)-1; fO3(i)=fO3(i)-1; fMXCATECOOA(i)=fMXCATECOOA(i)+1; 

i=i+1;
Rnames{i} = 'MXYCATECH + OH = MXCATEC1O';
k(:,i) = 2.05e-10;
Gstr{i,1} = 'MXYCATECH'; Gstr{i,2} = 'OH'; 
fMXYCATECH(i)=fMXYCATECH(i)-1; fOH(i)=fOH(i)-1; fMXCATEC1O(i)=fMXCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'TMBOOH + OH = TMBCHO + OH';
k(:,i) = 2.05e-11;
Gstr{i,1} = 'TMBOOH'; Gstr{i,2} = 'OH'; 
fTMBOOH(i)=fTMBOOH(i)-1; fOH(i)=fOH(i)-1; fTMBCHO(i)=fTMBCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TMBOOH + hv = TMBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TMBOOH'; 
fTMBOOH(i)=fTMBOOH(i)-1; fTMBO(i)=fTMBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TMBNO3 + OH = TMBCHO + NO2';
k(:,i) = 6.03e-12;
Gstr{i,1} = 'TMBNO3'; Gstr{i,2} = 'OH'; 
fTMBNO3(i)=fTMBNO3(i)-1; fOH(i)=fOH(i)-1; fTMBCHO(i)=fTMBCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBNO3 + hv = TMBO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'TMBNO3'; 
fTMBNO3(i)=fTMBNO3(i)-1; fTMBO(i)=fTMBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBO = TMBCHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'TMBO'; 
fTMBO(i)=fTMBO(i)-1; fTMBCHO(i)=fTMBCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBCHO + NO3 = TMBCO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'TMBCHO'; Gstr{i,2} = 'NO3'; 
fTMBCHO(i)=fTMBCHO(i)-1; fNO3(i)=fNO3(i)-1; fTMBCO3(i)=fTMBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'TMBCHO + OH = TMBCO3';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'TMBCHO'; Gstr{i,2} = 'OH'; 
fTMBCHO(i)=fTMBCHO(i)-1; fOH(i)=fOH(i)-1; fTMBCO3(i)=fTMBCO3(i)+1; 

i=i+1;
Rnames{i} = 'TMBCHO + hv = DMPHO2 + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'TMBCHO'; 
fTMBCHO(i)=fTMBCHO(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'TMBCHO + hv = TMBCO3 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'TMBCHO'; 
fTMBCHO(i)=fTMBCHO(i)-1; fTMBCO3(i)=fTMBCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBOH + OH = TMBCHO + HO2';
k(:,i) = 8.93e-12;
Gstr{i,1} = 'TMBOH'; Gstr{i,2} = 'OH'; 
fTMBOH(i)=fTMBOH(i)-1; fOH(i)=fOH(i)-1; fTMBCHO(i)=fTMBCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPOOH + OH = TM135OBPOH + OH';
k(:,i) = 1.28e-10;
Gstr{i,1} = 'TM135BPOOH'; Gstr{i,2} = 'OH'; 
fTM135BPOOH(i)=fTM135BPOOH(i)-1; fOH(i)=fOH(i)-1; fTM135OBPOH(i)=fTM135OBPOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPOOH + hv = TM135BPRO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TM135BPOOH'; 
fTM135BPOOH(i)=fTM135BPOOH(i)-1; fTM135BPRO(i)=fTM135BPRO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPNO3 + OH = TM135OBPOH + NO2';
k(:,i) = 9.45e-11;
Gstr{i,1} = 'TM135BPNO3'; Gstr{i,2} = 'OH'; 
fTM135BPNO3(i)=fTM135BPNO3(i)-1; fOH(i)=fOH(i)-1; fTM135OBPOH(i)=fTM135OBPOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPNO3 + hv = TM135BPRO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'TM135BPNO3'; 
fTM135BPNO3(i)=fTM135BPNO3(i)-1; fTM135BPRO(i)=fTM135BPRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO = MGLYOX + C5MDICARB + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'TM135BPRO'; 
fTM135BPRO(i)=fTM135BPRO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fC5MDICARB(i)=fC5MDICARB(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BPRO = MGLYOX + MXYFUONE + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'TM135BPRO'; 
fTM135BPRO(i)=fTM135BPRO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fMXYFUONE(i)=fMXYFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135BP2OH + OH = TM135OBPOH + HO2';
k(:,i) = 1.55e-10;
Gstr{i,1} = 'TM135BP2OH'; Gstr{i,2} = 'OH'; 
fTM135BP2OH(i)=fTM135BP2OH(i)-1; fOH(i)=fOH(i)-1; fTM135OBPOH(i)=fTM135OBPOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OBPOH + OH = C4MCODBCO3 + MGLYOX';
k(:,i) = 1.00e-10;
Gstr{i,1} = 'TM135OBPOH'; Gstr{i,2} = 'OH'; 
fTM135OBPOH(i)=fTM135OBPOH(i)-1; fOH(i)=fOH(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'TM135OBPOH + hv = C4MCODBCO3 + MGLYOX + HO2';
k(:,i) = J22;
Gstr{i,1} = 'TM135OBPOH'; 
fTM135OBPOH(i)=fTM135OBPOH(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLO2 + HO2 = NTM135LOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'NTM135OLO2'; Gstr{i,2} = 'HO2'; 
fNTM135OLO2(i)=fNTM135OLO2(i)-1; fHO2(i)=fHO2(i)-1; fNTM135LOOH(i)=fNTM135LOOH(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLO2 + NO = NTM135OLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NTM135OLO2'; Gstr{i,2} = 'NO'; 
fNTM135OLO2(i)=fNTM135OLO2(i)-1; fNO(i)=fNO(i)-1; fNTM135OLO(i)=fNTM135OLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLO2 + NO3 = NTM135OLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NTM135OLO2'; Gstr{i,2} = 'NO3'; 
fNTM135OLO2(i)=fNTM135OLO2(i)-1; fNO3(i)=fNO3(i)-1; fNTM135OLO(i)=fNTM135OLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLO2 + RO2 = NTM135OLO';
k(:,i) = 8.00e-13.*0.70;
Gstr{i,1} = 'NTM135OLO2'; Gstr{i,2} = 'RO2';
fNTM135OLO2(i)=fNTM135OLO2(i)-1; fNTM135OLO(i)=fNTM135OLO(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLO2 + RO2 = NTM135OLOH';
k(:,i) = 8.00e-13.*0.30;
Gstr{i,1} = 'NTM135OLO2'; Gstr{i,2} = 'RO2';
fNTM135OLO2(i)=fNTM135OLO2(i)-1; fNTM135OLOH(i)=fNTM135OLOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135O + HO2 = TM135BZOL';
k(:,i) = 1.00e-13;
Gstr{i,1} = 'TM135O'; Gstr{i,2} = 'HO2'; 
fTM135O(i)=fTM135O(i)-1; fHO2(i)=fHO2(i)-1; fTM135BZOL(i)=fTM135BZOL(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLO2 + HO2 = TM135OLOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'TM135OLO2'; Gstr{i,2} = 'HO2'; 
fTM135OLO2(i)=fTM135OLO2(i)-1; fHO2(i)=fHO2(i)-1; fTM135OLOOH(i)=fTM135OLOOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLO2 + NO = TM135OLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'TM135OLO2'; Gstr{i,2} = 'NO'; 
fTM135OLO2(i)=fTM135OLO2(i)-1; fNO(i)=fNO(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLO2 + NO3 = TM135OLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TM135OLO2'; Gstr{i,2} = 'NO3'; 
fTM135OLO2(i)=fTM135OLO2(i)-1; fNO3(i)=fNO3(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLO2 + RO2 = TM135OLO';
k(:,i) = 8.00e-13.*0.70;
Gstr{i,1} = 'TM135OLO2'; Gstr{i,2} = 'RO2';
fTM135OLO2(i)=fTM135OLO2(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLO2 + RO2 = TM135OLOH';
k(:,i) = 8.00e-13.*0.30;
Gstr{i,1} = 'TM135OLO2'; Gstr{i,2} = 'RO2';
fTM135OLO2(i)=fTM135OLO2(i)-1; fTM135OLOH(i)=fTM135OLOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + HO2 = C7M2CO5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'HO2'; 
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fHO2(i)=fHO2(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + HO2 = TM135MUO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'HO2'; 
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fHO2(i)=fHO2(i)-1; fTM135MUO2H(i)=fTM135MUO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + HO2 = TM135MUO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'HO2'; 
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fHO2(i)=fHO2(i)-1; fTM135MUO3H(i)=fTM135MUO3H(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + NO = C7M2CO5O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'NO'; 
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fNO(i)=fNO(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + NO2 = TM135MUPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'NO2'; 
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fNO2(i)=fNO2(i)-1; fTM135MUPAN(i)=fTM135MUPAN(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + NO3 = C7M2CO5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'NO3'; 
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fNO3(i)=fNO3(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + RO2 = C7M2CO5O2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'RO2';
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO3 + RO2 = TM135MUO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'TM135MUCO3'; Gstr{i,2} = 'RO2';
fTM135MUCO3(i)=fTM135MUCO3(i)-1; fTM135MUO2H(i)=fTM135MUO2H(i)+1; 

i=i+1;
Rnames{i} = 'EPXMALKT + NO3 = EPXMKTCO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'EPXMALKT'; Gstr{i,2} = 'NO3'; 
fEPXMALKT(i)=fEPXMALKT(i)-1; fNO3(i)=fNO3(i)-1; fEPXMKTCO3(i)=fEPXMKTCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMALKT + OH = EPXMKTCO3';
k(:,i) = 2.22e-11;
Gstr{i,1} = 'EPXMALKT'; Gstr{i,2} = 'OH'; 
fEPXMALKT(i)=fEPXMALKT(i)-1; fOH(i)=fOH(i)-1; fEPXMKTCO3(i)=fEPXMKTCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMALKT + hv = C3MDIALO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'EPXMALKT'; 
fEPXMALKT(i)=fEPXMALKT(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMALKT + hv = CO24C53O2 + HO2 + CO';
k(:,i) = J17;
Gstr{i,1} = 'EPXMALKT'; 
fEPXMALKT(i)=fEPXMALKT(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOC = CH3CO3 + CO + OH';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'MGLOOC'; 
fMGLOOC(i)=fMGLOOC(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOC = MGLOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'MGLOOC'; 
fMGLOOC(i)=fMGLOOC(i)-1; fMGLOO(i)=fMGLOO(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO2 + HO2 = TM135MUOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'TM135MUCO2'; Gstr{i,2} = 'HO2'; 
fTM135MUCO2(i)=fTM135MUCO2(i)-1; fHO2(i)=fHO2(i)-1; fTM135MUOOH(i)=fTM135MUOOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO2 + NO = TM135MUCO + NO2';
k(:,i) = KRO2NO.*0.941;
Gstr{i,1} = 'TM135MUCO2'; Gstr{i,2} = 'NO'; 
fTM135MUCO2(i)=fTM135MUCO2(i)-1; fNO(i)=fNO(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO2 + NO = TM135MUNO3';
k(:,i) = KRO2NO.*0.059;
Gstr{i,1} = 'TM135MUCO2'; Gstr{i,2} = 'NO'; 
fTM135MUCO2(i)=fTM135MUCO2(i)-1; fNO(i)=fNO(i)-1; fTM135MUNO3(i)=fTM135MUNO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO2 + NO3 = TM135MUCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TM135MUCO2'; Gstr{i,2} = 'NO3'; 
fTM135MUCO2(i)=fTM135MUCO2(i)-1; fNO3(i)=fNO3(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO2 + RO2 = TM135MUCO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'TM135MUCO2'; Gstr{i,2} = 'RO2';
fTM135MUCO2(i)=fTM135MUCO2(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO2 + RO2 = TM135MUOH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'TM135MUCO2'; Gstr{i,2} = 'RO2';
fTM135MUCO2(i)=fTM135MUCO2(i)-1; fTM135MUOH(i)=fTM135MUOH(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O2 + HO2 = C7M2CO5OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C7M2CO5O2'; Gstr{i,2} = 'HO2'; 
fC7M2CO5O2(i)=fC7M2CO5O2(i)-1; fHO2(i)=fHO2(i)-1; fC7M2CO5OOH(i)=fC7M2CO5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O2 + NO = C7M2CO5O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C7M2CO5O2'; Gstr{i,2} = 'NO'; 
fC7M2CO5O2(i)=fC7M2CO5O2(i)-1; fNO(i)=fNO(i)-1; fC7M2CO5O(i)=fC7M2CO5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O2 + NO3 = C7M2CO5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C7M2CO5O2'; Gstr{i,2} = 'NO3'; 
fC7M2CO5O2(i)=fC7M2CO5O2(i)-1; fNO3(i)=fNO3(i)-1; fC7M2CO5O(i)=fC7M2CO5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O2 + RO2 = C7M2CO5O';
k(:,i) = 8.80e-11.*0.60;
Gstr{i,1} = 'C7M2CO5O2'; Gstr{i,2} = 'RO2';
fC7M2CO5O2(i)=fC7M2CO5O2(i)-1; fC7M2CO5O(i)=fC7M2CO5O(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O2 + RO2 = C7M2CO5OH';
k(:,i) = 8.80e-11.*0.20;
Gstr{i,1} = 'C7M2CO5O2'; Gstr{i,2} = 'RO2';
fC7M2CO5O2(i)=fC7M2CO5O2(i)-1; fC7M2CO5OH(i)=fC7M2CO5OH(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O2 + RO2 = C7M3CO';
k(:,i) = 8.80e-11.*0.20;
Gstr{i,1} = 'C7M2CO5O2'; Gstr{i,2} = 'RO2';
fC7M2CO5O2(i)=fC7M2CO5O2(i)-1; fC7M3CO(i)=fC7M3CO(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + CO + HO2';
k(:,i) = 7.00D11.*exp(-3160./T);
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + CO + HO2';
k(:,i) = 5.00e-12.*.21.*M;
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + OH';
k(:,i) = 5.00e-12.*.21.*M.*3.2.*(1-exp(-550./T));
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = HCOCO3';
k(:,i) = 5.00e-12.*.21.*M.*3.2.*exp(-550./T);
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HO2 + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HOCH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HOCH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO3H(i)=fHOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO = NO2 + HO2 + HCHO';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO2 = PHAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fPHAN(i)=fPHAN(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO3 = NO2 + HO2 + HCHO';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HCHO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HOCH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = CH3COCH2O + OH';
k(:,i) = 1.36e-13.*exp(1250./T).*0.15;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = HYPERACET';
k(:,i) = 1.36e-13.*exp(1250./T).*0.85;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO = CH3COCH2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO3 = CH3COCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO3'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = ACETOL';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = CH3COCH2O';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.6;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = MGLYOX';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = C2H5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = PERPROACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPROACID(i)=fPERPROACID(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = PROPACID + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPROPACID(i)=fPROPACID(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO = NO2 + C2H5O2';
k(:,i) = 6.7e-12.*exp(340./T);
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO2 = PPN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO3 = C2H5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO3'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = C2H5O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = PROPACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + HO2 = HO1C3OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'HO2'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C3OOH(i)=fHO1C3OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + NO = HO1C3NO3';
k(:,i) = KRO2NO.*0.019;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'NO'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fNO(i)=fNO(i)-1; fHO1C3NO3(i)=fHO1C3NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + NO = HO1C3O + NO2';
k(:,i) = KRO2NO.*0.981;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'NO'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fNO(i)=fNO(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + NO3 = HO1C3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'NO3'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + RO2 = HO1C3O';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'RO2';
fHO1C3O2(i)=fHO1C3O2(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + RO2 = HOC2H4CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'RO2';
fHO1C3O2(i)=fHO1C3O2(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + RO2 = HOC3H6OH';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'RO2';
fHO1C3O2(i)=fHO1C3O2(i)-1; fHOC3H6OH(i)=fHOC3H6OH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + HO2 = HO1C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'HO2'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C4OOH(i)=fHO1C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + NO = HO1C4NO3';
k(:,i) = KRO2NO.*0.013;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'NO'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fNO(i)=fNO(i)-1; fHO1C4NO3(i)=fHO1C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + NO = HO1C4O + NO2';
k(:,i) = KRO2NO.*0.987;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'NO'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fNO(i)=fNO(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + NO3 = HO1C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'NO3'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + RO2 = HO1C4O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'RO2';
fHO1C4O2(i)=fHO1C4O2(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + RO2 = HOC3H6CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'RO2';
fHO1C4O2(i)=fHO1C4O2(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + RO2 = HOC4H8OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'RO2';
fHO1C4O2(i)=fHO1C4O2(i)-1; fHOC4H8OH(i)=fHOC4H8OH(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + HO2 = BUTACID + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'HO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fHO2(i)=fHO2(i)-1; fBUTACID(i)=fBUTACID(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + HO2 = NC3H7O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'HO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + HO2 = PERBUACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'HO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERBUACID(i)=fPERBUACID(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + NO = NO2 + NC3H7O2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'NO'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + NO2 = PBN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'NO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fNO2(i)=fNO2(i)-1; fPBN(i)=fPBN(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + NO3 = NC3H7O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'NO3'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fNO3(i)=fNO3(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + RO2 = BUTACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'RO2';
fC3H7CO3(i)=fC3H7CO3(i)-1; fBUTACID(i)=fBUTACID(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + RO2 = NC3H7O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'RO2';
fC3H7CO3(i)=fC3H7CO3(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + HO2 = BUTALO2H';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'HO2'; 
fBUTALO2(i)=fBUTALO2(i)-1; fHO2(i)=fHO2(i)-1; fBUTALO2H(i)=fBUTALO2H(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + NO = BUTALNO3';
k(:,i) = KRO2NO.*0.083;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'NO'; 
fBUTALO2(i)=fBUTALO2(i)-1; fNO(i)=fNO(i)-1; fBUTALNO3(i)=fBUTALNO3(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + NO = BUTALO + NO2';
k(:,i) = KRO2NO.*0.917;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'NO'; 
fBUTALO2(i)=fBUTALO2(i)-1; fNO(i)=fNO(i)-1; fBUTALO(i)=fBUTALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + NO3 = BUTALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'NO3'; 
fBUTALO2(i)=fBUTALO2(i)-1; fNO3(i)=fNO3(i)-1; fBUTALO(i)=fBUTALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + RO2 = BUTALO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'RO2';
fBUTALO2(i)=fBUTALO2(i)-1; fBUTALO(i)=fBUTALO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + RO2 = CO2C3CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'RO2';
fBUTALO2(i)=fBUTALO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + RO2 = HO2C3CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'RO2';
fBUTALO2(i)=fBUTALO2(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + HO2 = NBUTOLAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'HO2'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fHO2(i)=fHO2(i)-1; fNBUTOLAOOH(i)=fNBUTOLAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + NO = NBUTOLANO3';
k(:,i) = KRO2NO.*0.042;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'NO'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLANO3(i)=fNBUTOLANO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + NO = NBUTOLAO + NO2';
k(:,i) = KRO2NO.*0.958;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'NO'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + NO3 = NBUTOLAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'NO3'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNO3(i)=fNO3(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + RO2 = MEKCOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'RO2';
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + RO2 = NBUTOLAO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'RO2';
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + RO2 = NBUTOLAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'RO2';
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNBUTOLAOH(i)=fNBUTOLAOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + HO2 = NBUTOLBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'HO2'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fHO2(i)=fHO2(i)-1; fNBUTOLBOOH(i)=fNBUTOLBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + NO = NBUTOLBNO3';
k(:,i) = KRO2NO.*0.083;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'NO'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLBNO3(i)=fNBUTOLBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + NO = NBUTOLBO + NO2';
k(:,i) = KRO2NO.*0.917;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'NO'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + NO3 = NBUTOLBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'NO3'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNO3(i)=fNO3(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + RO2 = HO2C4OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'RO2';
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fHO2C4OH(i)=fHO2C4OH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + RO2 = MEKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'RO2';
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + RO2 = NBUTOLBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'RO2';
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + HO2 = MEKAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'HO2'; 
fMEKAO2(i)=fMEKAO2(i)-1; fHO2(i)=fHO2(i)-1; fMEKAOOH(i)=fMEKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO = MEKANO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO(i)=fNO(i)-1; fMEKANO3(i)=fMEKANO3(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO = MEKAO + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO(i)=fNO(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO3 = MEKAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO3'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO3(i)=fNO3(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + RO2 = CO2C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + RO2 = MEKAO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fMEKAO(i)=fMEKAO(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + RO2 = MEKAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO2 + HO2 = MEKBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MEKBO2'; Gstr{i,2} = 'HO2'; 
fMEKBO2(i)=fMEKBO2(i)-1; fHO2(i)=fHO2(i)-1; fMEKBOOH(i)=fMEKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO2 + NO = MEKBO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MEKBO2'; Gstr{i,2} = 'NO'; 
fMEKBO2(i)=fMEKBO2(i)-1; fNO(i)=fNO(i)-1; fMEKBO(i)=fMEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO2 + NO3 = MEKBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MEKBO2'; Gstr{i,2} = 'NO3'; 
fMEKBO2(i)=fMEKBO2(i)-1; fNO3(i)=fNO3(i)-1; fMEKBO(i)=fMEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO2 + RO2 = BIACET';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MEKBO2'; Gstr{i,2} = 'RO2';
fMEKBO2(i)=fMEKBO2(i)-1; fBIACET(i)=fBIACET(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO2 + RO2 = BUT2OLO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MEKBO2'; Gstr{i,2} = 'RO2';
fMEKBO2(i)=fMEKBO2(i)-1; fBUT2OLO(i)=fBUT2OLO(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO2 + RO2 = MEKBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MEKBO2'; Gstr{i,2} = 'RO2';
fMEKBO2(i)=fMEKBO2(i)-1; fMEKBO(i)=fMEKBO(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + HO2 = MEKCOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'HO2'; 
fMEKCO2(i)=fMEKCO2(i)-1; fHO2(i)=fHO2(i)-1; fMEKCOOH(i)=fMEKCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + NO = MEKCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'NO'; 
fMEKCO2(i)=fMEKCO2(i)-1; fNO(i)=fNO(i)-1; fMEKCO(i)=fMEKCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + NO3 = MEKCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'NO3'; 
fMEKCO2(i)=fMEKCO2(i)-1; fNO3(i)=fNO3(i)-1; fMEKCO(i)=fMEKCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + RO2 = EGLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'RO2';
fMEKCO2(i)=fMEKCO2(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + RO2 = MEKCO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'RO2';
fMEKCO2(i)=fMEKCO2(i)-1; fMEKCO(i)=fMEKCO(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + RO2 = MEKCOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'RO2';
fMEKCO2(i)=fMEKCO2(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + HO2 = HO1C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'HO2'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C5OOH(i)=fHO1C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + NO = HO1C5NO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'NO'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fNO(i)=fNO(i)-1; fHO1C5NO3(i)=fHO1C5NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + NO = HO1C5O + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'NO'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fNO(i)=fNO(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + NO3 = HO1C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'NO3'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + RO2 = CO2C5OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'RO2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + RO2 = HO1C5O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'RO2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + RO2 = HO2C5OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'RO2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fHO2C5OH(i)=fHO2C5OH(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + HO2 = NC4H9O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'HO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + HO2 = PENTACID + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'HO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fHO2(i)=fHO2(i)-1; fPENTACID(i)=fPENTACID(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + HO2 = PERPENACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'HO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPENACID(i)=fPERPENACID(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + NO = NC4H9O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'NO'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fNO(i)=fNO(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + NO2 = PPEN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'NO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fNO2(i)=fNO2(i)-1; fPPEN(i)=fPPEN(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + NO3 = NC4H9O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'NO3'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fNO3(i)=fNO3(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + RO2 = NC4H9O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'RO2';
fC4H9CO3(i)=fC4H9CO3(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + RO2 = PENTACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'RO2';
fC4H9CO3(i)=fC4H9CO3(i)-1; fPENTACID(i)=fPENTACID(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + HO2 = C4CHOBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'HO2'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fHO2(i)=fHO2(i)-1; fC4CHOBOOH(i)=fC4CHOBOOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + NO = C4CHOBNO3';
k(:,i) = KRO2NO.*0.129;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'NO'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fNO(i)=fNO(i)-1; fC4CHOBNO3(i)=fC4CHOBNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + NO = C4CHOBO + NO2';
k(:,i) = KRO2NO.*0.871;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'NO'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fNO(i)=fNO(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + NO3 = C4CHOBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'NO3'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fNO3(i)=fNO3(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + RO2 = C4CHOBO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'RO2';
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + RO2 = CO3C4CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'RO2';
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + RO2 = HO3C4CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'RO2';
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + HO2 = HO2C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'HO2'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2(i)=fHO2(i)-1; fHO2C5OOH(i)=fHO2C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + NO = HO2C5NO3';
k(:,i) = KRO2NO.*0.021;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'NO'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fNO(i)=fNO(i)-1; fHO2C5NO3(i)=fHO2C5NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + NO = HO2C5O + NO2';
k(:,i) = KRO2NO.*0.979;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'NO'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fNO(i)=fNO(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + NO3 = HO2C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'NO3'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + RO2 = HO2C4CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'RO2';
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + RO2 = HO2C5O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'RO2';
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + RO2 = HO2C5OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'RO2';
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C5OH(i)=fHO2C5OH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + HO2 = MPRKBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'HO2'; 
fCO2C54O2(i)=fCO2C54O2(i)-1; fHO2(i)=fHO2(i)-1; fMPRKBOOH(i)=fMPRKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + NO = CO2C54O + NO2';
k(:,i) = KRO2NO.*0.871;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'NO'; 
fCO2C54O2(i)=fCO2C54O2(i)-1; fNO(i)=fNO(i)-1; fCO2C54O(i)=fCO2C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + NO = MPRKNO3';
k(:,i) = KRO2NO.*0.129;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'NO'; 
fCO2C54O2(i)=fCO2C54O2(i)-1; fNO(i)=fNO(i)-1; fMPRKNO3(i)=fMPRKNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + NO3 = CO2C54O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'NO3'; 
fCO2C54O2(i)=fCO2C54O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2C54O(i)=fCO2C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + RO2 = CO24C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'RO2';
fCO2C54O2(i)=fCO2C54O2(i)-1; fCO24C5(i)=fCO24C5(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + RO2 = CO2C54O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'RO2';
fCO2C54O2(i)=fCO2C54O2(i)-1; fCO2C54O(i)=fCO2C54O(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O2 + RO2 = HO2CO4C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'CO2C54O2'; Gstr{i,2} = 'RO2';
fCO2C54O2(i)=fCO2C54O2(i)-1; fHO2CO4C5(i)=fHO2CO4C5(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO2 + HO2 = MPRKAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'MPRKAO2'; Gstr{i,2} = 'HO2'; 
fMPRKAO2(i)=fMPRKAO2(i)-1; fHO2(i)=fHO2(i)-1; fMPRKAOOH(i)=fMPRKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO2 + NO = MPRKAO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MPRKAO2'; Gstr{i,2} = 'NO'; 
fMPRKAO2(i)=fMPRKAO2(i)-1; fNO(i)=fNO(i)-1; fMPRKAO(i)=fMPRKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO2 + NO3 = MPRKAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MPRKAO2'; Gstr{i,2} = 'NO3'; 
fMPRKAO2(i)=fMPRKAO2(i)-1; fNO3(i)=fNO3(i)-1; fMPRKAO(i)=fMPRKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO2 + RO2 = CO23C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MPRKAO2'; Gstr{i,2} = 'RO2';
fMPRKAO2(i)=fMPRKAO2(i)-1; fCO23C5(i)=fCO23C5(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO2 + RO2 = MPRKAO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MPRKAO2'; Gstr{i,2} = 'RO2';
fMPRKAO2(i)=fMPRKAO2(i)-1; fMPRKAO(i)=fMPRKAO(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO2 + RO2 = MPRKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MPRKAO2'; Gstr{i,2} = 'RO2';
fMPRKAO2(i)=fMPRKAO2(i)-1; fMPRKAOH(i)=fMPRKAOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO2 + HO2 = DIEKAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'DIEKAO2'; Gstr{i,2} = 'HO2'; 
fDIEKAO2(i)=fDIEKAO2(i)-1; fHO2(i)=fHO2(i)-1; fDIEKAOOH(i)=fDIEKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO2 + NO = DIEKAO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DIEKAO2'; Gstr{i,2} = 'NO'; 
fDIEKAO2(i)=fDIEKAO2(i)-1; fNO(i)=fNO(i)-1; fDIEKAO(i)=fDIEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO2 + NO3 = DIEKAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DIEKAO2'; Gstr{i,2} = 'NO3'; 
fDIEKAO2(i)=fDIEKAO2(i)-1; fNO3(i)=fNO3(i)-1; fDIEKAO(i)=fDIEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO2 + RO2 = CO23C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'DIEKAO2'; Gstr{i,2} = 'RO2';
fDIEKAO2(i)=fDIEKAO2(i)-1; fCO23C5(i)=fCO23C5(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO2 + RO2 = DIEKAO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'DIEKAO2'; Gstr{i,2} = 'RO2';
fDIEKAO2(i)=fDIEKAO2(i)-1; fDIEKAO(i)=fDIEKAO(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO2 + RO2 = DIEKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'DIEKAO2'; Gstr{i,2} = 'RO2';
fDIEKAO2(i)=fDIEKAO2(i)-1; fDIEKAOH(i)=fDIEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + HO2 = DIEKBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'HO2'; 
fDIEKBO2(i)=fDIEKBO2(i)-1; fHO2(i)=fHO2(i)-1; fDIEKBOOH(i)=fDIEKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + NO = DIEKBNO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'NO'; 
fDIEKBO2(i)=fDIEKBO2(i)-1; fNO(i)=fNO(i)-1; fDIEKBNO3(i)=fDIEKBNO3(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + NO = DIEKBO + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'NO'; 
fDIEKBO2(i)=fDIEKBO2(i)-1; fNO(i)=fNO(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + NO3 = DIEKBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'NO3'; 
fDIEKBO2(i)=fDIEKBO2(i)-1; fNO3(i)=fNO3(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + RO2 = CO3C4CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'RO2';
fDIEKBO2(i)=fDIEKBO2(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + RO2 = DIEKBO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'RO2';
fDIEKBO2(i)=fDIEKBO2(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO2 + RO2 = HO1CO3C5';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'DIEKBO2'; Gstr{i,2} = 'RO2';
fDIEKBO2(i)=fDIEKBO2(i)-1; fHO1CO3C5(i)=fHO1CO3C5(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + HO2 = HO3C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'HO2'; 
fHO3C5O2(i)=fHO3C5O2(i)-1; fHO2(i)=fHO2(i)-1; fHO3C5OOH(i)=fHO3C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + NO = HO3C5NO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'NO'; 
fHO3C5O2(i)=fHO3C5O2(i)-1; fNO(i)=fNO(i)-1; fHO3C5NO3(i)=fHO3C5NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + NO = HO3C5O + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'NO'; 
fHO3C5O2(i)=fHO3C5O2(i)-1; fNO(i)=fNO(i)-1; fHO3C5O(i)=fHO3C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + NO3 = HO3C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'NO3'; 
fHO3C5O2(i)=fHO3C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO3C5O(i)=fHO3C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + RO2 = HO13C5';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'RO2';
fHO3C5O2(i)=fHO3C5O2(i)-1; fHO13C5(i)=fHO13C5(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + RO2 = HO3C4CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'RO2';
fHO3C5O2(i)=fHO3C5O2(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O2 + RO2 = HO3C5O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO3C5O2'; Gstr{i,2} = 'RO2';
fHO3C5O2(i)=fHO3C5O2(i)-1; fHO3C5O(i)=fHO3C5O(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + HO2 = C53OH2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'HO2'; 
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fHO2(i)=fHO2(i)-1; fC53OH2OOH(i)=fC53OH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + NO = PE2ENEBNO3';
k(:,i) = KRO2NO.*0.064;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'NO'; 
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fNO(i)=fNO(i)-1; fPE2ENEBNO3(i)=fPE2ENEBNO3(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + NO = PE2ENEBO + NO2';
k(:,i) = KRO2NO.*0.936;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'NO'; 
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fNO(i)=fNO(i)-1; fPE2ENEBO(i)=fPE2ENEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + NO3 = PE2ENEBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'NO3'; 
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fNO3(i)=fNO3(i)-1; fPE2ENEBO(i)=fPE2ENEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + RO2 = C523OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'RO2';
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fC523OH(i)=fC523OH(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + RO2 = MPRKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'RO2';
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fMPRKAOH(i)=fMPRKAOH(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO2 + RO2 = PE2ENEBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'PE2ENEBO2'; Gstr{i,2} = 'RO2';
fPE2ENEBO2(i)=fPE2ENEBO2(i)-1; fPE2ENEBO(i)=fPE2ENEBO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + HO2 = HO1C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'HO2'; 
fHO1C6O2(i)=fHO1C6O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C6OOH(i)=fHO1C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + NO = HO1C6NO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'NO'; 
fHO1C6O2(i)=fHO1C6O2(i)-1; fNO(i)=fNO(i)-1; fHO1C6NO3(i)=fHO1C6NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + NO = HO1C6O + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'NO'; 
fHO1C6O2(i)=fHO1C6O2(i)-1; fNO(i)=fNO(i)-1; fHO1C6O(i)=fHO1C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + NO3 = HO1C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'NO3'; 
fHO1C6O2(i)=fHO1C6O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C6O(i)=fHO1C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + RO2 = HO14C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'RO2';
fHO1C6O2(i)=fHO1C6O2(i)-1; fHO14C6(i)=fHO14C6(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + RO2 = HO1C6O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'RO2';
fHO1C6O2(i)=fHO1C6O2(i)-1; fHO1C6O(i)=fHO1C6O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O2 + RO2 = HO1CO4C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO1C6O2'; Gstr{i,2} = 'RO2';
fHO1C6O2(i)=fHO1C6O2(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + NO3 = BU1ENO3O2';
k(:,i) = 3.2e-13.*exp(-950./T).*0.65;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'NO3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fNO3(i)=fNO3(i)-1; fBU1ENO3O2(i)=fBU1ENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + NO3 = C43NO34O2';
k(:,i) = 3.2e-13.*exp(-950./T).*0.35;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'NO3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fNO3(i)=fNO3(i)-1; fC43NO34O2(i)=fC43NO34O2(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + O3 = C2H5CHOOA + HCHO';
k(:,i) = 3.55e-15.*exp(-1745./T).*0.5;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'O3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fO3(i)=fO3(i)-1; fC2H5CHOOA(i)=fC2H5CHOOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + O3 = CH2OOB + C2H5CHO';
k(:,i) = 3.55e-15.*exp(-1745./T).*0.5;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'O3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fO3(i)=fO3(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + OH = HO3C4O2';
k(:,i) = 6.6e-12.*exp(465./T).*0.13;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'OH'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fOH(i)=fOH(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + OH = NBUTOLAO2';
k(:,i) = 6.6e-12.*exp(465./T).*0.87;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'OH'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fOH(i)=fOH(i)-1; fNBUTOLAO2(i)=fNBUTOLAO2(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3 + HO2 = C5H11CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C5H11CO3'; Gstr{i,2} = 'HO2'; 
fC5H11CO3(i)=fC5H11CO3(i)-1; fHO2(i)=fHO2(i)-1; fC5H11CO3H(i)=fC5H11CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3 + HO2 = PEAO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C5H11CO3'; Gstr{i,2} = 'HO2'; 
fC5H11CO3(i)=fC5H11CO3(i)-1; fHO2(i)=fHO2(i)-1; fPEAO2(i)=fPEAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3 + NO = PEAO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C5H11CO3'; Gstr{i,2} = 'NO'; 
fC5H11CO3(i)=fC5H11CO3(i)-1; fNO(i)=fNO(i)-1; fPEAO2(i)=fPEAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3 + NO2 = PHXN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C5H11CO3'; Gstr{i,2} = 'NO2'; 
fC5H11CO3(i)=fC5H11CO3(i)-1; fNO2(i)=fNO2(i)-1; fPHXN(i)=fPHXN(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3 + NO3 = PEAO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C5H11CO3'; Gstr{i,2} = 'NO3'; 
fC5H11CO3(i)=fC5H11CO3(i)-1; fNO3(i)=fNO3(i)-1; fPEAO2(i)=fPEAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3 + RO2 = PEAO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C5H11CO3'; Gstr{i,2} = 'RO2';
fC5H11CO3(i)=fC5H11CO3(i)-1; fPEAO2(i)=fPEAO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + HO2 = HO2C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'HO2'; 
fHO2C6O2(i)=fHO2C6O2(i)-1; fHO2(i)=fHO2(i)-1; fHO2C6OOH(i)=fHO2C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + NO = HO2C6NO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'NO'; 
fHO2C6O2(i)=fHO2C6O2(i)-1; fNO(i)=fNO(i)-1; fHO2C6NO3(i)=fHO2C6NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + NO = HO2C6O + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'NO'; 
fHO2C6O2(i)=fHO2C6O2(i)-1; fNO(i)=fNO(i)-1; fHO2C6O(i)=fHO2C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + NO3 = HO2C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'NO3'; 
fHO2C6O2(i)=fHO2C6O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2C6O(i)=fHO2C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + RO2 = HO25C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'RO2';
fHO2C6O2(i)=fHO2C6O2(i)-1; fHO25C6(i)=fHO25C6(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + RO2 = HO2C6O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'RO2';
fHO2C6O2(i)=fHO2C6O2(i)-1; fHO2C6O(i)=fHO2C6O(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O2 + RO2 = HO2CO5C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO2C6O2'; Gstr{i,2} = 'RO2';
fHO2C6O2(i)=fHO2C6O2(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + HO2 = HEX2ONAOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'HO2'; 
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX2ONAOOH(i)=fHEX2ONAOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + NO = HEX2ONANO3';
k(:,i) = KRO2NO.*0.195;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'NO'; 
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fNO(i)=fNO(i)-1; fHEX2ONANO3(i)=fHEX2ONANO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + NO = HEX2ONAO + NO2';
k(:,i) = KRO2NO.*0.805;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'NO'; 
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fNO(i)=fNO(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + NO3 = HEX2ONAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'NO3'; 
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + RO2 = CO24C6';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'RO2';
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fCO24C6(i)=fCO24C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + RO2 = CO2HO4C6';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'RO2';
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fCO2HO4C6(i)=fCO2HO4C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO2 + RO2 = HEX2ONAO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HEX2ONAO2'; Gstr{i,2} = 'RO2';
fHEX2ONAO2(i)=fHEX2ONAO2(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + HO2 = HEX2ONBOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'HO2'; 
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX2ONBOOH(i)=fHEX2ONBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + NO = HEX2ONBNO3';
k(:,i) = KRO2NO.*0.195;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'NO'; 
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fNO(i)=fNO(i)-1; fHEX2ONBNO3(i)=fHEX2ONBNO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + NO = HEX2ONBO + NO2';
k(:,i) = KRO2NO.*0.805;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'NO'; 
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fNO(i)=fNO(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + NO3 = HEX2ONBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'NO3'; 
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + RO2 = CO25C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'RO2';
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fCO25C6(i)=fCO25C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + RO2 = HEX2ONBO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'RO2';
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO2 + RO2 = HO2CO5C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX2ONBO2'; Gstr{i,2} = 'RO2';
fHEX2ONBO2(i)=fHEX2ONBO2(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO2 + HO2 = HEX2ONCOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX2ONCO2'; Gstr{i,2} = 'HO2'; 
fHEX2ONCO2(i)=fHEX2ONCO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX2ONCOOH(i)=fHEX2ONCOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO2 + NO = HEX2ONCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HEX2ONCO2'; Gstr{i,2} = 'NO'; 
fHEX2ONCO2(i)=fHEX2ONCO2(i)-1; fNO(i)=fNO(i)-1; fHEX2ONCO(i)=fHEX2ONCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO2 + NO3 = HEX2ONCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX2ONCO2'; Gstr{i,2} = 'NO3'; 
fHEX2ONCO2(i)=fHEX2ONCO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX2ONCO(i)=fHEX2ONCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO2 + RO2 = CO23C6';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HEX2ONCO2'; Gstr{i,2} = 'RO2';
fHEX2ONCO2(i)=fHEX2ONCO2(i)-1; fCO23C6(i)=fCO23C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO2 + RO2 = CO2HO3C6';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HEX2ONCO2'; Gstr{i,2} = 'RO2';
fHEX2ONCO2(i)=fHEX2ONCO2(i)-1; fCO2HO3C6(i)=fCO2HO3C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO2 + RO2 = HEX2ONCO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HEX2ONCO2'; Gstr{i,2} = 'RO2';
fHEX2ONCO2(i)=fHEX2ONCO2(i)-1; fHEX2ONCO(i)=fHEX2ONCO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + HO2 = HO3C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'HO2'; 
fHO3C6O2(i)=fHO3C6O2(i)-1; fHO2(i)=fHO2(i)-1; fHO3C6OOH(i)=fHO3C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + NO = HO3C6NO3';
k(:,i) = KRO2NO.*0.031;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'NO'; 
fHO3C6O2(i)=fHO3C6O2(i)-1; fNO(i)=fNO(i)-1; fHO3C6NO3(i)=fHO3C6NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + NO = HO3C6O + NO2';
k(:,i) = KRO2NO.*0.969;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'NO'; 
fHO3C6O2(i)=fHO3C6O2(i)-1; fNO(i)=fNO(i)-1; fHO3C6O(i)=fHO3C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + NO3 = HO3C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'NO3'; 
fHO3C6O2(i)=fHO3C6O2(i)-1; fNO3(i)=fNO3(i)-1; fHO3C6O(i)=fHO3C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + RO2 = HO14C6';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'RO2';
fHO3C6O2(i)=fHO3C6O2(i)-1; fHO14C6(i)=fHO14C6(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + RO2 = HO3C5CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'RO2';
fHO3C6O2(i)=fHO3C6O2(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O2 + RO2 = HO3C6O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO3C6O2'; Gstr{i,2} = 'RO2';
fHO3C6O2(i)=fHO3C6O2(i)-1; fHO3C6O(i)=fHO3C6O(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + HO2 = HEX3ONAOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'HO2'; 
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX3ONAOOH(i)=fHEX3ONAOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + NO = HEX3ONANO3';
k(:,i) = KRO2NO.*0.195;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'NO'; 
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fNO(i)=fNO(i)-1; fHEX3ONANO3(i)=fHEX3ONANO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + NO = HEX3ONAO + NO2';
k(:,i) = KRO2NO.*0.805;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'NO'; 
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fNO(i)=fNO(i)-1; fHEX3ONAO(i)=fHEX3ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + NO3 = HEX3ONAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'NO3'; 
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX3ONAO(i)=fHEX3ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + RO2 = CO24C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'RO2';
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fCO24C6(i)=fCO24C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + RO2 = HEX3ONAO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'RO2';
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fHEX3ONAO(i)=fHEX3ONAO(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO2 + RO2 = HEX3ONAOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONAO2'; Gstr{i,2} = 'RO2';
fHEX3ONAO2(i)=fHEX3ONAO2(i)-1; fHEX3ONAOH(i)=fHEX3ONAOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO2 + HO2 = HEX3ONBOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX3ONBO2'; Gstr{i,2} = 'HO2'; 
fHEX3ONBO2(i)=fHEX3ONBO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX3ONBOOH(i)=fHEX3ONBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO2 + NO = HEX3ONBO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HEX3ONBO2'; Gstr{i,2} = 'NO'; 
fHEX3ONBO2(i)=fHEX3ONBO2(i)-1; fNO(i)=fNO(i)-1; fHEX3ONBO(i)=fHEX3ONBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO2 + NO3 = HEX3ONBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX3ONBO2'; Gstr{i,2} = 'NO3'; 
fHEX3ONBO2(i)=fHEX3ONBO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX3ONBO(i)=fHEX3ONBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO2 + RO2 = C6CO34';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONBO2'; Gstr{i,2} = 'RO2';
fHEX3ONBO2(i)=fHEX3ONBO2(i)-1; fC6CO34(i)=fC6CO34(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO2 + RO2 = C6CO3HO4';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONBO2'; Gstr{i,2} = 'RO2';
fHEX3ONBO2(i)=fHEX3ONBO2(i)-1; fC6CO3HO4(i)=fC6CO3HO4(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO2 + RO2 = HEX3ONBO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEX3ONBO2'; Gstr{i,2} = 'RO2';
fHEX3ONBO2(i)=fHEX3ONBO2(i)-1; fHEX3ONBO(i)=fHEX3ONBO(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO2 + HO2 = HEX3ONCOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX3ONCO2'; Gstr{i,2} = 'HO2'; 
fHEX3ONCO2(i)=fHEX3ONCO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX3ONCOOH(i)=fHEX3ONCOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO2 + NO = HEX3ONCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HEX3ONCO2'; Gstr{i,2} = 'NO'; 
fHEX3ONCO2(i)=fHEX3ONCO2(i)-1; fNO(i)=fNO(i)-1; fHEX3ONCO(i)=fHEX3ONCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO2 + NO3 = HEX3ONCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX3ONCO2'; Gstr{i,2} = 'NO3'; 
fHEX3ONCO2(i)=fHEX3ONCO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX3ONCO(i)=fHEX3ONCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO2 + RO2 = CO23C6';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONCO2'; Gstr{i,2} = 'RO2';
fHEX3ONCO2(i)=fHEX3ONCO2(i)-1; fCO23C6(i)=fCO23C6(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO2 + RO2 = HEX3ONCO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEX3ONCO2'; Gstr{i,2} = 'RO2';
fHEX3ONCO2(i)=fHEX3ONCO2(i)-1; fHEX3ONCO(i)=fHEX3ONCO(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO2 + RO2 = HEX3ONCOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONCO2'; Gstr{i,2} = 'RO2';
fHEX3ONCO2(i)=fHEX3ONCO2(i)-1; fHEX3ONCOH(i)=fHEX3ONCOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + HO2 = HEX3ONDOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'HO2'; 
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fHO2(i)=fHO2(i)-1; fHEX3ONDOOH(i)=fHEX3ONDOOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + NO = HEX3ONDNO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'NO'; 
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fNO(i)=fNO(i)-1; fHEX3ONDNO3(i)=fHEX3ONDNO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + NO = HEX3ONDO + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'NO'; 
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fNO(i)=fNO(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + NO3 = HEX3ONDO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'NO3'; 
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fNO3(i)=fNO3(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + RO2 = C3COCCHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'RO2';
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fC3COCCHO(i)=fC3COCCHO(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + RO2 = HEX3ONDO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'RO2';
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO2 + RO2 = HEX3ONDOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HEX3ONDO2'; Gstr{i,2} = 'RO2';
fHEX3ONDO2(i)=fHEX3ONDO2(i)-1; fHEX3ONDOH(i)=fHEX3ONDOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + HO2 = HO3C76OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'HO2'; 
fHO3C76O2(i)=fHO3C76O2(i)-1; fHO2(i)=fHO2(i)-1; fHO3C76OOH(i)=fHO3C76OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + NO = HO3C76NO3';
k(:,i) = KRO2NO.*0.111;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'NO'; 
fHO3C76O2(i)=fHO3C76O2(i)-1; fNO(i)=fNO(i)-1; fHO3C76NO3(i)=fHO3C76NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + NO = HO3C76O + NO2';
k(:,i) = KRO2NO.*0.889;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'NO'; 
fHO3C76O2(i)=fHO3C76O2(i)-1; fNO(i)=fNO(i)-1; fHO3C76O(i)=fHO3C76O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + NO3 = HO3C76O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'NO3'; 
fHO3C76O2(i)=fHO3C76O2(i)-1; fNO3(i)=fNO3(i)-1; fHO3C76O(i)=fHO3C76O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + RO2 = HO25C7';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'RO2';
fHO3C76O2(i)=fHO3C76O2(i)-1; fHO25C7(i)=fHO25C7(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + RO2 = HO3C76O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'RO2';
fHO3C76O2(i)=fHO3C76O2(i)-1; fHO3C76O(i)=fHO3C76O(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O2 + RO2 = HO3CO6C7';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO3C76O2'; Gstr{i,2} = 'RO2';
fHO3C76O2(i)=fHO3C76O2(i)-1; fHO3CO6C7(i)=fHO3CO6C7(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75O2 + HO2 = CO3C75OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'CO3C75O2'; Gstr{i,2} = 'HO2'; 
fCO3C75O2(i)=fCO3C75O2(i)-1; fHO2(i)=fHO2(i)-1; fCO3C75OOH(i)=fCO3C75OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75O2 + NO = CO3C75O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO3C75O2'; Gstr{i,2} = 'NO'; 
fCO3C75O2(i)=fCO3C75O2(i)-1; fNO(i)=fNO(i)-1; fCO3C75O(i)=fCO3C75O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75O2 + NO3 = CO3C75O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO3C75O2'; Gstr{i,2} = 'NO3'; 
fCO3C75O2(i)=fCO3C75O2(i)-1; fNO3(i)=fNO3(i)-1; fCO3C75O(i)=fCO3C75O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75O2 + RO2 = CO3C75O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'CO3C75O2'; Gstr{i,2} = 'RO2';
fCO3C75O2(i)=fCO3C75O2(i)-1; fCO3C75O(i)=fCO3C75O(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + HO2 = HO3C86OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'HO2'; 
fHO3C86O2(i)=fHO3C86O2(i)-1; fHO2(i)=fHO2(i)-1; fHO3C86OOH(i)=fHO3C86OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + NO = HO3C86NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'NO'; 
fHO3C86O2(i)=fHO3C86O2(i)-1; fNO(i)=fNO(i)-1; fHO3C86NO3(i)=fHO3C86NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + NO = HO3C86O + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'NO'; 
fHO3C86O2(i)=fHO3C86O2(i)-1; fNO(i)=fNO(i)-1; fHO3C86O(i)=fHO3C86O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + NO3 = HO3C86O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'NO3'; 
fHO3C86O2(i)=fHO3C86O2(i)-1; fNO3(i)=fNO3(i)-1; fHO3C86O(i)=fHO3C86O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + RO2 = HO36C8';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'RO2';
fHO3C86O2(i)=fHO3C86O2(i)-1; fHO36C8(i)=fHO36C8(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + RO2 = HO3C86O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'RO2';
fHO3C86O2(i)=fHO3C86O2(i)-1; fHO3C86O(i)=fHO3C86O(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O2 + RO2 = HO3CO6C8';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO3C86O2'; Gstr{i,2} = 'RO2';
fHO3C86O2(i)=fHO3C86O2(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85O2 + HO2 = CO3C85OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'CO3C85O2'; Gstr{i,2} = 'HO2'; 
fCO3C85O2(i)=fCO3C85O2(i)-1; fHO2(i)=fHO2(i)-1; fCO3C85OOH(i)=fCO3C85OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85O2 + NO = CO3C85O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO3C85O2'; Gstr{i,2} = 'NO'; 
fCO3C85O2(i)=fCO3C85O2(i)-1; fNO(i)=fNO(i)-1; fCO3C85O(i)=fCO3C85O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85O2 + NO3 = CO3C85O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO3C85O2'; Gstr{i,2} = 'NO3'; 
fCO3C85O2(i)=fCO3C85O2(i)-1; fNO3(i)=fNO3(i)-1; fCO3C85O(i)=fCO3C85O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85O2 + RO2 = CO3C85O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'CO3C85O2'; Gstr{i,2} = 'RO2';
fCO3C85O2(i)=fCO3C85O2(i)-1; fCO3C85O(i)=fCO3C85O(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = HCHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = NO3CH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = NO3CH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CO3H(i)=fNO3CH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO = HCHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO2 = NO3CH2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fNO3CH2PAN(i)=fNO3CH2PAN(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO3 = HCHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO3'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + RO2 = HCHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + RO2 = NO3CH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.5e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = CH3CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = PRNO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fPRNO3CO2H(i)=fPRNO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = PRNO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fPRNO3CO3H(i)=fPRNO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO = CH3CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO2 = PRNO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPRNO3PAN(i)=fPRNO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO3 = CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO3'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + RO2 = CH3CHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'RO2';
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + RO2 = PRNO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'RO2';
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fPRNO3CO2H(i)=fPRNO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'PROPALO = CH3CHO + HO2 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'PROPALO'; 
fPROPALO(i)=fPROPALO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOX + hv = CH3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'MGLYOX'; 
fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + MGLYOX = CH3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'MGLYOX'; 
fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MGLYOX = CH3CO3 + CO';
k(:,i) = 1.9e-12.*exp(575./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLYOX'; 
fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O = CH3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CH3COCH2O'; 
fCH3COCH2O(i)=fCH3COCH2O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = CH3CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = IPROPOLPER';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLPER(i)=fIPROPOLPER(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO = CH3CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO2 = IPROPOLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fIPROPOLPAN(i)=fIPROPOLPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO3 = CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + RO2 = CH3CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'RO2';
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACET + hv = CH3CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'BIACET'; 
fBIACET(i)=fBIACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACET = BIACETO2';
k(:,i) = 1.40e-18.*T.^2.*exp(194./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACET'; 
fOH(i)=fOH(i)-1; fBIACET(i)=fBIACET(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKBO = CH3CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MEKBO'; 
fMEKBO(i)=fMEKBO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONE + NO3 = NBZFUO2';
k(:,i) = 3.00e-13;
Gstr{i,1} = 'BZFUONE'; Gstr{i,2} = 'NO3'; 
fBZFUONE(i)=fBZFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNBZFUO2(i)=fNBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONE + O3 = BZFUONOOA';
k(:,i) = 2.20e-19;
Gstr{i,1} = 'BZFUONE'; Gstr{i,2} = 'O3'; 
fBZFUONE(i)=fBZFUONE(i)-1; fO3(i)=fO3(i)-1; fBZFUONOOA(i)=fBZFUONOOA(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONE + OH = BZFUO2';
k(:,i) = 4.45e-11;
Gstr{i,1} = 'BZFUONE'; Gstr{i,2} = 'OH'; 
fBZFUONE(i)=fBZFUONE(i)-1; fOH(i)=fOH(i)-1; fBZFUO2(i)=fBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + HO2 = MALDALCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'HO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fHO2(i)=fHO2(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + HO2 = MALDALCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'HO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fHO2(i)=fHO2(i)-1; fMALDALCO3H(i)=fMALDALCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + HO2 = MALDIALCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'HO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fHO2(i)=fHO2(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + NO = MALDIALCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'NO'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fNO(i)=fNO(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + NO2 = MALDIALPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'NO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fNO2(i)=fNO2(i)-1; fMALDIALPAN(i)=fMALDIALPAN(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + NO3 = MALDIALCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'NO3'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fNO3(i)=fNO3(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + RO2 = MALDALCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'RO2';
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + RO2 = MALDIALCO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'RO2';
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO2H + OH = C5DIALO2';
k(:,i) = 4.06e-11;
Gstr{i,1} = 'BZEMUCCO2H'; Gstr{i,2} = 'OH'; 
fBZEMUCCO2H(i)=fBZEMUCCO2H(i)-1; fOH(i)=fOH(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO2H + hv = C5DIALO2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'BZEMUCCO2H'; 
fBZEMUCCO2H(i)=fBZEMUCCO2H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO2H + hv = C5DIALO2 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'BZEMUCCO2H'; 
fBZEMUCCO2H(i)=fBZEMUCCO2H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + OH = BZEMUCCO3';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'BZEMUCCO3H'; Gstr{i,2} = 'OH'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + hv = C5DIALO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZEMUCCO3H'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + hv = C5DIALO2 + OH';
k(:,i) = J18;
Gstr{i,1} = 'BZEMUCCO3H'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + hv = C5DIALO2 + OH';
k(:,i) = J19;
Gstr{i,1} = 'BZEMUCCO3H'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCPAN + OH = MALDIAL + CO + NO2';
k(:,i) = 4.05e-11;
Gstr{i,1} = 'BZEMUCPAN'; Gstr{i,2} = 'OH'; 
fBZEMUCPAN(i)=fBZEMUCPAN(i)-1; fOH(i)=fOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCPAN = BZEMUCCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'BZEMUCPAN'; 
fBZEMUCPAN(i)=fBZEMUCPAN(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + HO2 = C3DIALO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + HO2 = EPXDLCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXDLCO2H(i)=fEPXDLCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + HO2 = EPXDLCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXDLCO3H(i)=fEPXDLCO3H(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + NO = C3DIALO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'NO'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fNO(i)=fNO(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + NO2 = EPXDLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'NO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fNO2(i)=fNO2(i)-1; fEPXDLPAN(i)=fEPXDLPAN(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + NO3 = C3DIALO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'NO3'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fNO3(i)=fNO3(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + RO2 = C3DIALO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'RO2';
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + RO2 = EPXDLCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'RO2';
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fEPXDLCO2H(i)=fEPXDLCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + HO2 = C3DIALOOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'HO2'; 
fC3DIALO2(i)=fC3DIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC3DIALOOH(i)=fC3DIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + NO = C3DIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'NO'; 
fC3DIALO2(i)=fC3DIALO2(i)-1; fNO(i)=fNO(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + NO3 = C3DIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'NO3'; 
fC3DIALO2(i)=fC3DIALO2(i)-1; fNO3(i)=fNO3(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + RO2 = C32OH13CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'RO2';
fC3DIALO2(i)=fC3DIALO2(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + RO2 = C33CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'RO2';
fC3DIALO2(i)=fC3DIALO2(i)-1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + RO2 = C3DIALO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'RO2';
fC3DIALO2(i)=fC3DIALO2(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + CO = GLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'CO'; 
fGLYOO(i)=fGLYOO(i)-1; fCO(i)=fCO(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + NO = GLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'NO'; 
fGLYOO(i)=fGLYOO(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + NO2 = GLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'NO2'; 
fGLYOO(i)=fGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + SO2 = GLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'SO2'; 
fGLYOO(i)=fGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO = GLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'GLYOO'; 
fGLYOO(i)=fGLYOO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO = HCOCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'GLYOO'; 
fGLYOO(i)=fGLYOO(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOOH + OH = BZEMUCCO + OH';
k(:,i) = 1.31e-10;
Gstr{i,1} = 'BZEMUCOOH'; Gstr{i,2} = 'OH'; 
fBZEMUCOOH(i)=fBZEMUCOOH(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOOH + hv = BZEMUCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZEMUCOOH'; 
fBZEMUCOOH(i)=fBZEMUCOOH(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOOH + hv = BZEMUCO + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'BZEMUCOOH'; 
fBZEMUCOOH(i)=fBZEMUCOOH(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCNO3 + OH = BZEMUCCO + NO2';
k(:,i) = 4.38e-11;
Gstr{i,1} = 'BZEMUCNO3'; Gstr{i,2} = 'OH'; 
fBZEMUCNO3(i)=fBZEMUCNO3(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCNO3 + hv = EPXC4DIAL + NO2 + GLYOX + HO2';
k(:,i) = J17;
Gstr{i,1} = 'BZEMUCNO3'; 
fBZEMUCNO3(i)=fBZEMUCNO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fNO2(i)=fNO2(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO = C3DIALO2 + C32OH13CO';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZEMUCO'; 
fBZEMUCO(i)=fBZEMUCO(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fC32OH13CO(i)=fC32OH13CO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO = EPXC4DIAL + GLYOX + HO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZEMUCO'; 
fBZEMUCO(i)=fBZEMUCO(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO + OH = EPXDLCO3 + GLYOX';
k(:,i) = 9.20e-11;
Gstr{i,1} = 'BZEMUCCO'; Gstr{i,2} = 'OH'; 
fBZEMUCCO(i)=fBZEMUCCO(i)-1; fOH(i)=fOH(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO + hv = HCOCOHCO3 + C3DIALO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'BZEMUCCO'; 
fBZEMUCCO(i)=fBZEMUCCO(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO + hv = HCOCOHCO3 + C3DIALO2';
k(:,i) = J22;
Gstr{i,1} = 'BZEMUCCO'; 
fBZEMUCCO(i)=fBZEMUCCO(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOH + OH = BZEMUCCO + HO2';
k(:,i) = 8.23e-11;
Gstr{i,1} = 'BZEMUCOH'; Gstr{i,2} = 'OH'; 
fBZEMUCOH(i)=fBZEMUCOH(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOH + hv = BZEMUCO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'BZEMUCOH'; 
fBZEMUCOH(i)=fBZEMUCOH(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + OH = C5DIALCO + OH';
k(:,i) = 7.52e-11;
Gstr{i,1} = 'C5DIALOOH'; Gstr{i,2} = 'OH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fOH(i)=fOH(i)-1; fC5DIALCO(i)=fC5DIALCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + hv = C5DIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5DIALOOH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + hv = MALDIAL + CO + HO2 + OH';
k(:,i) = J18;
Gstr{i,1} = 'C5DIALOOH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + hv = MALDIAL + CO + HO2 + OH';
k(:,i) = J19;
Gstr{i,1} = 'C5DIALOOH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO = MALDIAL + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C5DIALO'; 
fC5DIALO(i)=fC5DIALO(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + OH = MALDIALCO3 + CO';
k(:,i) = 4.90e-11;
Gstr{i,1} = 'C5DIALCO'; Gstr{i,2} = 'OH'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + hv = MALDIALCO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C5DIALCO'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + hv = MALDIALCO3 + CO + HO2';
k(:,i) = J18;
Gstr{i,1} = 'C5DIALCO'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + hv = MALDIALCO3 + CO + HO2';
k(:,i) = J19;
Gstr{i,1} = 'C5DIALCO'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOH + OH = C5DIALCO + HO2';
k(:,i) = 7.75e-11;
Gstr{i,1} = 'C5DIALOH'; Gstr{i,2} = 'OH'; 
fC5DIALOH(i)=fC5DIALOH(i)-1; fOH(i)=fOH(i)-1; fC5DIALCO(i)=fC5DIALCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOH + hv = MALDIAL + CO + HO2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'C5DIALOH'; 
fC5DIALOH(i)=fC5DIALOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOH + hv = MALDIAL + CO + HO2 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'C5DIALOH'; 
fC5DIALOH(i)=fC5DIALOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + HO2 = MALDIALOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'HO2'; 
fMALDIALO2(i)=fMALDIALO2(i)-1; fHO2(i)=fHO2(i)-1; fMALDIALOOH(i)=fMALDIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + NO = MALDIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'NO'; 
fMALDIALO2(i)=fMALDIALO2(i)-1; fNO(i)=fNO(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + NO3 = MALDIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'NO3'; 
fMALDIALO2(i)=fMALDIALO2(i)-1; fNO3(i)=fNO3(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + RO2 = HOCOC4DIAL';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'RO2';
fMALDIALO2(i)=fMALDIALO2(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + RO2 = HOHOC4DIAL';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'RO2';
fMALDIALO2(i)=fMALDIALO2(i)-1; fHOHOC4DIAL(i)=fHOHOC4DIAL(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + RO2 = MALDIALO';
k(:,i) = 8.80e-13.*0.60;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'RO2';
fMALDIALO2(i)=fMALDIALO2(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; 

i=i+1;
Rnames{i} = 'HOC6H4NO2 + NO3 = NPHEN1O + HNO3';
k(:,i) = 9.00e-14;
Gstr{i,1} = 'HOC6H4NO2'; Gstr{i,2} = 'NO3'; 
fHOC6H4NO2(i)=fHOC6H4NO2(i)-1; fNO3(i)=fNO3(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC6H4NO2 + OH = NPHEN1O';
k(:,i) = 9.00e-13;
Gstr{i,1} = 'HOC6H4NO2'; Gstr{i,2} = 'OH'; 
fHOC6H4NO2(i)=fHOC6H4NO2(i)-1; fOH(i)=fOH(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + HO2 = C6H5OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'HO2'; 
fC6H5O2(i)=fC6H5O2(i)-1; fHO2(i)=fHO2(i)-1; fC6H5OOH(i)=fC6H5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + NO = C6H5O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'NO'; 
fC6H5O2(i)=fC6H5O2(i)-1; fNO(i)=fNO(i)-1; fC6H5O(i)=fC6H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + NO3 = C6H5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'NO3'; 
fC6H5O2(i)=fC6H5O2(i)-1; fNO3(i)=fNO3(i)-1; fC6H5O(i)=fC6H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + RO2 = C6H5O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'RO2';
fC6H5O2(i)=fC6H5O2(i)-1; fC6H5O(i)=fC6H5O(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOOH + OH = NPHENO2';
k(:,i) = 1.07e-10;
Gstr{i,1} = 'NPHENOOH'; Gstr{i,2} = 'OH'; 
fNPHENOOH(i)=fNPHENOOH(i)-1; fOH(i)=fOH(i)-1; fNPHENO2(i)=fNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOOH + hv = MALDALCO2H + GLYOX + OH + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NPHENOOH'; 
fNPHENOOH(i)=fNPHENOOH(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOOH + hv = NPHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPHENOOH'; 
fNPHENOOH(i)=fNPHENOOH(i)-1; fNPHENO(i)=fNPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO = MALDALCO2H + GLYOX + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NPHENO'; 
fNPHENO(i)=fNPHENO(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOH + OH = NPHENO';
k(:,i) = 1.04e-10;
Gstr{i,1} = 'NPHENOH'; Gstr{i,2} = 'OH'; 
fNPHENOH(i)=fNPHENOH(i)-1; fOH(i)=fOH(i)-1; fNPHENO(i)=fNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOH + hv = MALDALCO2H + GLYOX + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NPHENOH'; 
fNPHENOH(i)=fNPHENOH(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O + NO2 = NCATECHOL';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'CATEC1O'; Gstr{i,2} = 'NO2'; 
fCATEC1O(i)=fCATEC1O(i)-1; fNO2(i)=fNO2(i)-1; fNCATECHOL(i)=fNCATECHOL(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O + O3 = CATEC1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'CATEC1O'; Gstr{i,2} = 'O3'; 
fCATEC1O(i)=fCATEC1O(i)-1; fO3(i)=fO3(i)-1; fCATEC1O2(i)=fCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'CATECOOA = MALDALCO2H + HCOCO2H + HO2 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'CATECOOA'; 
fCATECOOA(i)=fCATECOOA(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHENOOH + OH = PHENO2';
k(:,i) = 1.16e-10;
Gstr{i,1} = 'PHENOOH'; Gstr{i,2} = 'OH'; 
fPHENOOH(i)=fPHENOOH(i)-1; fOH(i)=fOH(i)-1; fPHENO2(i)=fPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOOH + hv = PHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PHENOOH'; 
fPHENOOH(i)=fPHENOOH(i)-1; fPHENO(i)=fPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHENO = MALDALCO2H + GLYOX + HO2';
k(:,i) = KDEC.*0.71;
Gstr{i,1} = 'PHENO'; 
fPHENO(i)=fPHENO(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENO = PBZQONE + HO2';
k(:,i) = KDEC.*0.29;
Gstr{i,1} = 'PHENO'; 
fPHENO(i)=fPHENO(i)-1; fPBZQONE(i)=fPBZQONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOH + OH = PHENO';
k(:,i) = 1.13e-10;
Gstr{i,1} = 'PHENOH'; Gstr{i,2} = 'OH'; 
fPHENOH(i)=fPHENOH(i)-1; fOH(i)=fOH(i)-1; fPHENO(i)=fPHENO(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + HO2 = C6H5CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'HO2'; 
fC6H5CO3(i)=fC6H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC6H5CO3H(i)=fC6H5CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + HO2 = C6H5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'HO2'; 
fC6H5CO3(i)=fC6H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + HO2 = PHCOOH + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'HO2'; 
fC6H5CO3(i)=fC6H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPHCOOH(i)=fPHCOOH(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + NO = C6H5O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'NO'; 
fC6H5CO3(i)=fC6H5CO3(i)-1; fNO(i)=fNO(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + NO2 = PBZN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'NO2'; 
fC6H5CO3(i)=fC6H5CO3(i)-1; fNO2(i)=fNO2(i)-1; fPBZN(i)=fPBZN(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + NO3 = C6H5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'NO3'; 
fC6H5CO3(i)=fC6H5CO3(i)-1; fNO3(i)=fNO3(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + RO2 = C6H5O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'RO2';
fC6H5CO3(i)=fC6H5CO3(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3 + RO2 = PHCOOH';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C6H5CO3'; Gstr{i,2} = 'RO2';
fC6H5CO3(i)=fC6H5CO3(i)-1; fPHCOOH(i)=fPHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CRESOOH + OH = CRESO2';
k(:,i) = 1.15e-10;
Gstr{i,1} = 'CRESOOH'; Gstr{i,2} = 'OH'; 
fCRESOOH(i)=fCRESOOH(i)-1; fOH(i)=fOH(i)-1; fCRESO2(i)=fCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESOOH + hv = CRESO + OH';
k(:,i) = J41;
Gstr{i,1} = 'CRESOOH'; 
fCRESOOH(i)=fCRESOOH(i)-1; fCRESO(i)=fCRESO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CRESO = C5CO14OH + GLYOX + HO2';
k(:,i) = KDEC.*0.68;
Gstr{i,1} = 'CRESO'; 
fCRESO(i)=fCRESO(i)-1; fC5CO14OH(i)=fC5CO14OH(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESO = PTLQONE + HO2';
k(:,i) = KDEC.*0.32;
Gstr{i,1} = 'CRESO'; 
fCRESO(i)=fCRESO(i)-1; fPTLQONE(i)=fPTLQONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CRESOH + OH = CRESO';
k(:,i) = 1.11e-10;
Gstr{i,1} = 'CRESOH'; Gstr{i,2} = 'OH'; 
fCRESOH(i)=fCRESOH(i)-1; fOH(i)=fOH(i)-1; fCRESO(i)=fCRESO(i)+1; 

i=i+1;
Rnames{i} = 'NCRESOOH + OH = NCRESO2';
k(:,i) = 1.07e-10;
Gstr{i,1} = 'NCRESOOH'; Gstr{i,2} = 'OH'; 
fNCRESOOH(i)=fNCRESOOH(i)-1; fOH(i)=fOH(i)-1; fNCRESO2(i)=fNCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRESOOH + hv = CRESO + OH + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NCRESOOH'; 
fNCRESOOH(i)=fNCRESOOH(i)-1; fCRESO(i)=fCRESO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRESOOH + hv = NCRESO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NCRESOOH'; 
fNCRESOOH(i)=fNCRESOOH(i)-1; fNCRESO(i)=fNCRESO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NCRESO = C5CO14OH + GLYOX + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NCRESO'; 
fNCRESO(i)=fNCRESO(i)-1; fC5CO14OH(i)=fC5CO14OH(i)+1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRESOH + OH = NCRESO';
k(:,i) = 1.04e-10;
Gstr{i,1} = 'NCRESOH'; Gstr{i,2} = 'OH'; 
fNCRESOH(i)=fNCRESOH(i)-1; fOH(i)=fOH(i)-1; fNCRESO(i)=fNCRESO(i)+1; 

i=i+1;
Rnames{i} = 'NCRESOH + hv = CRESO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NCRESOH'; 
fNCRESOH(i)=fNCRESOH(i)-1; fCRESO(i)=fCRESO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TOL1OHNO2 + NO3 = NCRES1O + HNO3';
k(:,i) = 3.13e-13.*1.0;
Gstr{i,1} = 'TOL1OHNO2'; Gstr{i,2} = 'NO3'; 
fTOL1OHNO2(i)=fTOL1OHNO2(i)-1; fNO3(i)=fNO3(i)-1; fNCRES1O(i)=fNCRES1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'TOL1OHNO2 + OH = NCRES1O';
k(:,i) = 2.8e-12;
Gstr{i,1} = 'TOL1OHNO2'; Gstr{i,2} = 'OH'; 
fTOL1OHNO2(i)=fTOL1OHNO2(i)-1; fOH(i)=fOH(i)-1; fNCRES1O(i)=fNCRES1O(i)+1; 

i=i+1;
Rnames{i} = 'OXYL1O2 + HO2 = OXYL1OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'OXYL1O2'; Gstr{i,2} = 'HO2'; 
fOXYL1O2(i)=fOXYL1O2(i)-1; fHO2(i)=fHO2(i)-1; fOXYL1OOH(i)=fOXYL1OOH(i)+1; 

i=i+1;
Rnames{i} = 'OXYL1O2 + NO = TOL1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'OXYL1O2'; Gstr{i,2} = 'NO'; 
fOXYL1O2(i)=fOXYL1O2(i)-1; fNO(i)=fNO(i)-1; fTOL1O(i)=fTOL1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OXYL1O2 + NO3 = TOL1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'OXYL1O2'; Gstr{i,2} = 'NO3'; 
fOXYL1O2(i)=fOXYL1O2(i)-1; fNO3(i)=fNO3(i)-1; fTOL1O(i)=fTOL1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OXYL1O2 + RO2 = TOL1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'OXYL1O2'; Gstr{i,2} = 'RO2';
fOXYL1O2(i)=fOXYL1O2(i)-1; fTOL1O(i)=fTOL1O(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1O + NO2 = MNCATECH';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'MCATEC1O'; Gstr{i,2} = 'NO2'; 
fMCATEC1O(i)=fMCATEC1O(i)-1; fNO2(i)=fNO2(i)-1; fMNCATECH(i)=fMNCATECH(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1O + O3 = MCATEC1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'MCATEC1O'; Gstr{i,2} = 'O3'; 
fMCATEC1O(i)=fMCATEC1O(i)-1; fO3(i)=fO3(i)-1; fMCATEC1O2(i)=fMCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'MCATECOOA = MC3ODBCO2H + HCOCO2H + HO2 + OH';
k(:,i) = KDEC.*1.0;
Gstr{i,1} = 'MCATECOOA'; 
fMCATECOOA(i)=fMCATECOOA(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + NO3 = C3MCODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'NO3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fNO3(i)=fNO3(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + NO3 = MC3CODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'NO3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fNO3(i)=fNO3(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + O3 = MGLYOOA + GLYOX';
k(:,i) = 5.00e-18.*0.50;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'O3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + O3 = MGLYOX + GLYOOC';
k(:,i) = 5.00e-18.*0.50;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'O3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOOC(i)=fGLYOOC(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = C3MCODBCO3';
k(:,i) = 4.41e-11.*0.385;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = C4M2ALOHO2';
k(:,i) = 4.41e-11.*0.23;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = MC3CODBCO3';
k(:,i) = 4.41e-11.*0.385;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + hv = C3MCODBCO3 + HO2 + CO';
k(:,i) = J4.*0.2.*0.3;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + hv = MC3CODBCO3 + HO2 + CO';
k(:,i) = J4.*0.2.*0.3;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + hv = PXYFUONE';
k(:,i) = J4.*0.2.*0.4;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fPXYFUONE(i)=fPXYFUONE(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + NO3 = C5CO14O2 + HNO3';
k(:,i) = KNO3AL.*2.75;
Gstr{i,1} = 'C5DICARB'; Gstr{i,2} = 'NO3'; 
fC5DICARB(i)=fC5DICARB(i)-1; fNO3(i)=fNO3(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + O3 = GLYOX + MGLOOB';
k(:,i) = 2.00e-18.*0.5;
Gstr{i,1} = 'C5DICARB'; Gstr{i,2} = 'O3'; 
fC5DICARB(i)=fC5DICARB(i)-1; fO3(i)=fO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLOOB(i)=fMGLOOB(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + O3 = MGLYOX + GLYOOA';
k(:,i) = 2.00e-18.*0.5;
Gstr{i,1} = 'C5DICARB'; Gstr{i,2} = 'O3'; 
fC5DICARB(i)=fC5DICARB(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + OH = C5CO14O2';
k(:,i) = 6.2e-11.*0.48;
Gstr{i,1} = 'C5DICARB'; Gstr{i,2} = 'OH'; 
fC5DICARB(i)=fC5DICARB(i)-1; fOH(i)=fOH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + OH = C5DICARBO2';
k(:,i) = 6.2e-11.*0.52;
Gstr{i,1} = 'C5DICARB'; Gstr{i,2} = 'OH'; 
fC5DICARB(i)=fC5DICARB(i)-1; fOH(i)=fOH(i)-1; fC5DICARBO2(i)=fC5DICARBO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + hv = C5CO14O2 + HO2';
k(:,i) = J4.*0.2.*0.6;
Gstr{i,1} = 'C5DICARB'; 
fC5DICARB(i)=fC5DICARB(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARB + hv = TLFUONE';
k(:,i) = J4.*0.2.*0.4;
Gstr{i,1} = 'C5DICARB'; 
fC5DICARB(i)=fC5DICARB(i)-1; fTLFUONE(i)=fTLFUONE(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONE + NO3 = NTLFUO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'TLFUONE'; Gstr{i,2} = 'NO3'; 
fTLFUONE(i)=fTLFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNTLFUO2(i)=fNTLFUO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONE + O3 = TLFUONOOA';
k(:,i) = 8.00e-19;
Gstr{i,1} = 'TLFUONE'; Gstr{i,2} = 'O3'; 
fTLFUONE(i)=fTLFUONE(i)-1; fO3(i)=fO3(i)-1; fTLFUONOOA(i)=fTLFUONOOA(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONE + OH = TLFUO2';
k(:,i) = 6.90e-11;
Gstr{i,1} = 'TLFUONE'; Gstr{i,2} = 'OH'; 
fTLFUONE(i)=fTLFUONE(i)-1; fOH(i)=fOH(i)-1; fTLFUO2(i)=fTLFUO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + HO2 = C5CO14CO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'HO2'; 
fC5CO14O2(i)=fC5CO14O2(i)-1; fHO2(i)=fHO2(i)-1; fC5CO14CO2(i)=fC5CO14CO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + HO2 = C5CO14OH + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'HO2'; 
fC5CO14O2(i)=fC5CO14O2(i)-1; fHO2(i)=fHO2(i)-1; fC5CO14OH(i)=fC5CO14OH(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + HO2 = C5CO14OOH';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'HO2'; 
fC5CO14O2(i)=fC5CO14O2(i)-1; fHO2(i)=fHO2(i)-1; fC5CO14OOH(i)=fC5CO14OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + NO = C5CO14CO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'NO'; 
fC5CO14O2(i)=fC5CO14O2(i)-1; fNO(i)=fNO(i)-1; fC5CO14CO2(i)=fC5CO14CO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + NO2 = C5COO2NO2';
k(:,i) = KFPAN;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'NO2'; 
fC5CO14O2(i)=fC5CO14O2(i)-1; fNO2(i)=fNO2(i)-1; fC5COO2NO2(i)=fC5COO2NO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + NO3 = C5CO14CO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'NO3'; 
fC5CO14O2(i)=fC5CO14O2(i)-1; fNO3(i)=fNO3(i)-1; fC5CO14CO2(i)=fC5CO14CO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + RO2 = C5CO14CO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'RO2';
fC5CO14O2(i)=fC5CO14O2(i)-1; fC5CO14CO2(i)=fC5CO14CO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14O2 + RO2 = C5CO14OH';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'C5CO14O2'; Gstr{i,2} = 'RO2';
fC5CO14O2(i)=fC5CO14O2(i)-1; fC5CO14OH(i)=fC5CO14OH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO2H + OH = C615CO2O2';
k(:,i) = 5.98e-11;
Gstr{i,1} = 'TLEMUCCO2H'; Gstr{i,2} = 'OH'; 
fTLEMUCCO2H(i)=fTLEMUCCO2H(i)-1; fOH(i)=fOH(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO2H + hv = C615CO2O2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'TLEMUCCO2H'; 
fTLEMUCCO2H(i)=fTLEMUCCO2H(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO2H + hv = C615CO2O2 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'TLEMUCCO2H'; 
fTLEMUCCO2H(i)=fTLEMUCCO2H(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3H + OH = TLEMUCCO3';
k(:,i) = 6.29e-11;
Gstr{i,1} = 'TLEMUCCO3H'; Gstr{i,2} = 'OH'; 
fTLEMUCCO3H(i)=fTLEMUCCO3H(i)-1; fOH(i)=fOH(i)-1; fTLEMUCCO3(i)=fTLEMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3H + hv = C615CO2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'TLEMUCCO3H'; 
fTLEMUCCO3H(i)=fTLEMUCCO3H(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3H + hv = C615CO2O2 + OH';
k(:,i) = J18;
Gstr{i,1} = 'TLEMUCCO3H'; 
fTLEMUCCO3H(i)=fTLEMUCCO3H(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO3H + hv = C615CO2O2 + OH';
k(:,i) = J19;
Gstr{i,1} = 'TLEMUCCO3H'; 
fTLEMUCCO3H(i)=fTLEMUCCO3H(i)-1; fC615CO2O2(i)=fC615CO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCPAN + OH = C5DICARB + CO + NO2';
k(:,i) = 5.96e-11;
Gstr{i,1} = 'TLEMUCPAN'; Gstr{i,2} = 'OH'; 
fTLEMUCPAN(i)=fTLEMUCPAN(i)-1; fOH(i)=fOH(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCPAN = TLEMUCCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'TLEMUCPAN'; 
fTLEMUCPAN(i)=fTLEMUCPAN(i)-1; fTLEMUCCO3(i)=fTLEMUCCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + CO = MGLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'CO'; 
fMGLOO(i)=fMGLOO(i)-1; fCO(i)=fCO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO = MGLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO'; 
fMGLOO(i)=fMGLOO(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO2 = MGLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO2'; 
fMGLOO(i)=fMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + SO2 = MGLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'SO2'; 
fMGLOO(i)=fMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO = CH3COCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MGLOO'; 
fMGLOO(i)=fMGLOO(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO = MGLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MGLOO'; 
fMGLOO(i)=fMGLOO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOOH + OH = TLEMUCCO + OH';
k(:,i) = 7.04e-11;
Gstr{i,1} = 'TLEMUCOOH'; Gstr{i,2} = 'OH'; 
fTLEMUCOOH(i)=fTLEMUCOOH(i)-1; fOH(i)=fOH(i)-1; fTLEMUCCO(i)=fTLEMUCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOOH + hv = TLEMUCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TLEMUCOOH'; 
fTLEMUCOOH(i)=fTLEMUCOOH(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOOH + hv = TLEMUCO + OH';
k(:,i) = J17;
Gstr{i,1} = 'TLEMUCOOH'; 
fTLEMUCOOH(i)=fTLEMUCOOH(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOOH + hv = TLEMUCO + OH';
k(:,i) = J22;
Gstr{i,1} = 'TLEMUCOOH'; 
fTLEMUCOOH(i)=fTLEMUCOOH(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCNO3 + OH = TLEMUCCO + NO2';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'TLEMUCNO3'; Gstr{i,2} = 'OH'; 
fTLEMUCNO3(i)=fTLEMUCNO3(i)-1; fOH(i)=fOH(i)-1; fTLEMUCCO(i)=fTLEMUCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCNO3 + hv = EPXC4DIAL + NO2 + CH3CO3 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'TLEMUCNO3'; 
fTLEMUCNO3(i)=fTLEMUCNO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fNO2(i)=fNO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCNO3 + hv = EPXC4DIAL + NO2 + CH3CO3 + CO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'TLEMUCNO3'; 
fTLEMUCNO3(i)=fTLEMUCNO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fNO2(i)=fNO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO = C3DIALO2 + CO2H3CHO';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'TLEMUCO'; 
fTLEMUCO(i)=fTLEMUCO(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCO = EPXC4DIAL + MGLYOX + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'TLEMUCO'; 
fTLEMUCO(i)=fTLEMUCO(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO + OH = CH3CO3 + EPXC4DIAL + CO';
k(:,i) = 4.06e-11;
Gstr{i,1} = 'TLEMUCCO'; Gstr{i,2} = 'OH'; 
fTLEMUCCO(i)=fTLEMUCCO(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO + hv = CH3CO3 + EPXC4DIAL + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'TLEMUCCO'; 
fTLEMUCCO(i)=fTLEMUCCO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCCO + hv = CH3CO3 + EPXC4DIAL + CO + HO2';
k(:,i) = J35;
Gstr{i,1} = 'TLEMUCCO'; 
fTLEMUCCO(i)=fTLEMUCCO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOH + OH = TLEMUCCO + HO2';
k(:,i) = 6.17e-11;
Gstr{i,1} = 'TLEMUCOH'; Gstr{i,2} = 'OH'; 
fTLEMUCOH(i)=fTLEMUCOH(i)-1; fOH(i)=fOH(i)-1; fTLEMUCCO(i)=fTLEMUCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOH + hv = TLEMUCO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'TLEMUCOH'; 
fTLEMUCOH(i)=fTLEMUCOH(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLEMUCOH + hv = TLEMUCO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'TLEMUCOH'; 
fTLEMUCOH(i)=fTLEMUCOH(i)-1; fTLEMUCO(i)=fTLEMUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OOH + OH = C6125CO + OH';
k(:,i) = 9.42e-11;
Gstr{i,1} = 'C615CO2OOH'; Gstr{i,2} = 'OH'; 
fC615CO2OOH(i)=fC615CO2OOH(i)-1; fOH(i)=fOH(i)-1; fC6125CO(i)=fC6125CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OOH + hv = C5DICARB + CO + HO2 + OH';
k(:,i) = J23;
Gstr{i,1} = 'C615CO2OOH'; 
fC615CO2OOH(i)=fC615CO2OOH(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OOH + hv = C5DICARB + CO + HO2 + OH';
k(:,i) = J24;
Gstr{i,1} = 'C615CO2OOH'; 
fC615CO2OOH(i)=fC615CO2OOH(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OOH + hv = C615CO2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C615CO2OOH'; 
fC615CO2OOH(i)=fC615CO2OOH(i)-1; fC615CO2O(i)=fC615CO2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2O = C5DICARB + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C615CO2O'; 
fC615CO2O(i)=fC615CO2O(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6125CO + OH = C5CO14O2 + CO';
k(:,i) = 6.45e-11;
Gstr{i,1} = 'C6125CO'; Gstr{i,2} = 'OH'; 
fC6125CO(i)=fC6125CO(i)-1; fOH(i)=fOH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C6125CO + hv = C5CO14O2 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C6125CO'; 
fC6125CO(i)=fC6125CO(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6125CO + hv = C5CO14O2 + CO + HO2';
k(:,i) = J23;
Gstr{i,1} = 'C6125CO'; 
fC6125CO(i)=fC6125CO(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6125CO + hv = C5CO14O2 + CO + HO2';
k(:,i) = J24;
Gstr{i,1} = 'C6125CO'; 
fC6125CO(i)=fC6125CO(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OH + OH = C6125CO + HO2';
k(:,i) = 1.18e-10;
Gstr{i,1} = 'C615CO2OH'; Gstr{i,2} = 'OH'; 
fC615CO2OH(i)=fC615CO2OH(i)-1; fOH(i)=fOH(i)-1; fC6125CO(i)=fC6125CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OH + hv = C5DICARB + CO + HO2 + HO2';
k(:,i) = J23;
Gstr{i,1} = 'C615CO2OH'; 
fC615CO2OH(i)=fC615CO2OH(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C615CO2OH + hv = C5DICARB + CO + HO2 + HO2';
k(:,i) = J24;
Gstr{i,1} = 'C615CO2OH'; 
fC615CO2OH(i)=fC615CO2OH(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + HO2 = MXYL1O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'HO2'; 
fMXYLCO3(i)=fMXYLCO3(i)-1; fHO2(i)=fHO2(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + HO2 = MXYLCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'HO2'; 
fMXYLCO3(i)=fMXYLCO3(i)-1; fHO2(i)=fHO2(i)-1; fMXYLCO2H(i)=fMXYLCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + HO2 = MXYLCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'HO2'; 
fMXYLCO3(i)=fMXYLCO3(i)-1; fHO2(i)=fHO2(i)-1; fMXYLCO3H(i)=fMXYLCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + NO = MXYL1O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'NO'; 
fMXYLCO3(i)=fMXYLCO3(i)-1; fNO(i)=fNO(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + NO2 = MXYLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'NO2'; 
fMXYLCO3(i)=fMXYLCO3(i)-1; fNO2(i)=fNO2(i)-1; fMXYLPAN(i)=fMXYLPAN(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + NO3 = MXYL1O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'NO3'; 
fMXYLCO3(i)=fMXYLCO3(i)-1; fNO3(i)=fNO3(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + RO2 = MXYL1O2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'RO2';
fMXYLCO3(i)=fMXYLCO3(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3 + RO2 = MXYLCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MXYLCO3'; Gstr{i,2} = 'RO2';
fMXYLCO3(i)=fMXYLCO3(i)-1; fMXYLCO2H(i)=fMXYLCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1O2 + HO2 = MXYL1OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'MXYL1O2'; Gstr{i,2} = 'HO2'; 
fMXYL1O2(i)=fMXYL1O2(i)-1; fHO2(i)=fHO2(i)-1; fMXYL1OOH(i)=fMXYL1OOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1O2 + NO = MXYL1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXYL1O2'; Gstr{i,2} = 'NO'; 
fMXYL1O2(i)=fMXYL1O2(i)-1; fNO(i)=fNO(i)-1; fMXYL1O(i)=fMXYL1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1O2 + NO3 = MXYL1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYL1O2'; Gstr{i,2} = 'NO3'; 
fMXYL1O2(i)=fMXYL1O2(i)-1; fNO3(i)=fNO3(i)-1; fMXYL1O(i)=fMXYL1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1O2 + RO2 = MXYL1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'MXYL1O2'; Gstr{i,2} = 'RO2';
fMXYL1O2(i)=fMXYL1O2(i)-1; fMXYL1O(i)=fMXYL1O(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + NO3 = C4MCODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C5MDICARB'; Gstr{i,2} = 'NO3'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fNO3(i)=fNO3(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + O3 = MGLOOC + MGLYOX';
k(:,i) = 2.0e-18.*0.5;
Gstr{i,1} = 'C5MDICARB'; Gstr{i,2} = 'O3'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fO3(i)=fO3(i)-1; fMGLOOC(i)=fMGLOOC(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + O3 = MGLYOOA + MGLYOX';
k(:,i) = 2.0e-18.*0.5;
Gstr{i,1} = 'C5MDICARB'; Gstr{i,2} = 'O3'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + OH = C4MCODBCO3';
k(:,i) = 7.00e-11.*0.5;
Gstr{i,1} = 'C5MDICARB'; Gstr{i,2} = 'OH'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fOH(i)=fOH(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + OH = C5MCO2OHO2';
k(:,i) = 7.00e-11.*0.5;
Gstr{i,1} = 'C5MDICARB'; Gstr{i,2} = 'OH'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fOH(i)=fOH(i)-1; fC5MCO2OHO2(i)=fC5MCO2OHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + hv = C4MCODBCO3 + HO2';
k(:,i) = J4.*0.2.*0.6;
Gstr{i,1} = 'C5MDICARB'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5MDICARB + hv = MXYFUONE';
k(:,i) = J4.*0.2.*0.4;
Gstr{i,1} = 'C5MDICARB'; 
fC5MDICARB(i)=fC5MDICARB(i)-1; fMXYFUONE(i)=fMXYFUONE(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUONE + NO3 = NMXYFUO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'MXYFUONE'; Gstr{i,2} = 'NO3'; 
fMXYFUONE(i)=fMXYFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNMXYFUO2(i)=fNMXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUONE + O3 = OH + CO + C23O3MO2';
k(:,i) = 8.00e-19;
Gstr{i,1} = 'MXYFUONE'; Gstr{i,2} = 'O3'; 
fMXYFUONE(i)=fMXYFUONE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fC23O3MO2(i)=fC23O3MO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUONE + OH = MXYFUO2';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'MXYFUONE'; Gstr{i,2} = 'OH'; 
fMXYFUONE(i)=fMXYFUONE(i)-1; fOH(i)=fOH(i)-1; fMXYFUO2(i)=fMXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + NO3 = NPXYFUO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'NO3'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNPXYFUO2(i)=fNPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + O3 = OH + CO + MCOCOMOXO2';
k(:,i) = 8.00e-19;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'O3'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + OH = PXYFUO2';
k(:,i) = 2.42e-11;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'OH'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fOH(i)=fOH(i)-1; fPXYFUO2(i)=fPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + HO2 = C3MCODBCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + HO2 = C5PACALD1';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO = C3MCODBCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO(i)=fNO(i)-1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO2 = C3MCODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC3MCODBPAN(i)=fC3MCODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO3 = NO2 + C3MCODBCO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO3'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + RO2 = C3MCODBCO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'RO2';
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO2H + OH = C726CO5O2';
k(:,i) = 6.00e-11;
Gstr{i,1} = 'MXYMUCCO2H'; Gstr{i,2} = 'OH'; 
fMXYMUCCO2H(i)=fMXYMUCCO2H(i)-1; fOH(i)=fOH(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO2H + hv = C726CO5O2 + HO2';
k(:,i) = J23;
Gstr{i,1} = 'MXYMUCCO2H'; 
fMXYMUCCO2H(i)=fMXYMUCCO2H(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO2H + hv = C726CO5O2 + HO2';
k(:,i) = J24;
Gstr{i,1} = 'MXYMUCCO2H'; 
fMXYMUCCO2H(i)=fMXYMUCCO2H(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3H + OH = MXYMUCCO3';
k(:,i) = 6.31e-11;
Gstr{i,1} = 'MXYMUCCO3H'; Gstr{i,2} = 'OH'; 
fMXYMUCCO3H(i)=fMXYMUCCO3H(i)-1; fOH(i)=fOH(i)-1; fMXYMUCCO3(i)=fMXYMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3H + hv = C726CO5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYMUCCO3H'; 
fMXYMUCCO3H(i)=fMXYMUCCO3H(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3H + hv = C726CO5O2 + OH';
k(:,i) = J23;
Gstr{i,1} = 'MXYMUCCO3H'; 
fMXYMUCCO3H(i)=fMXYMUCCO3H(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO3H + hv = C726CO5O2 + OH';
k(:,i) = J24;
Gstr{i,1} = 'MXYMUCCO3H'; 
fMXYMUCCO3H(i)=fMXYMUCCO3H(i)-1; fC726CO5O2(i)=fC726CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCPAN + OH = C5DICARB + CH3O2 + CO + NO2';
k(:,i) = 5.99e-11;
Gstr{i,1} = 'MXYMUCPAN'; Gstr{i,2} = 'OH'; 
fMXYMUCPAN(i)=fMXYMUCPAN(i)-1; fOH(i)=fOH(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCPAN = MXYMUCCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MXYMUCPAN'; 
fMXYMUCPAN(i)=fMXYMUCPAN(i)-1; fMXYMUCCO3(i)=fMXYMUCCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + HO2 = C3MDIALO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + HO2 = EPXMDLCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXMDLCO2H(i)=fEPXMDLCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + HO2 = EPXMDLCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXMDLCO3H(i)=fEPXMDLCO3H(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + NO = C3MDIALO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'NO'; 
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fNO(i)=fNO(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + NO2 = EPXMDLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'NO2'; 
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fNO2(i)=fNO2(i)-1; fEPXMDLPAN(i)=fEPXMDLPAN(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + NO3 = C3MDIALO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'NO3'; 
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fNO3(i)=fNO3(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + RO2 = C3MDIALO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'RO2';
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3 + RO2 = EPXMDLCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'EPXMDLCO3'; Gstr{i,2} = 'RO2';
fEPXMDLCO3(i)=fEPXMDLCO3(i)-1; fEPXMDLCO2H(i)=fEPXMDLCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + HO2 = C3MDIALOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'HO2'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + NO = C3MDIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'NO'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fNO(i)=fNO(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + NO3 = C3MDIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'NO3'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fNO3(i)=fNO3(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + RO2 = C3MDIALO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'RO2';
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + RO2 = C3MDIALOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'RO2';
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOOH + OH = MXYMUCCO + OH';
k(:,i) = 7.41e-11;
Gstr{i,1} = 'MXYMUCOOH'; Gstr{i,2} = 'OH'; 
fMXYMUCOOH(i)=fMXYMUCOOH(i)-1; fOH(i)=fOH(i)-1; fMXYMUCCO(i)=fMXYMUCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOOH + hv = MXYMUCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYMUCOOH'; 
fMXYMUCOOH(i)=fMXYMUCOOH(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOOH + hv = MXYMUCO + OH';
k(:,i) = J17;
Gstr{i,1} = 'MXYMUCOOH'; 
fMXYMUCOOH(i)=fMXYMUCOOH(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOOH + hv = MXYMUCO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MXYMUCOOH'; 
fMXYMUCOOH(i)=fMXYMUCOOH(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCNO3 + OH = MXYMUCCO + NO2';
k(:,i) = 3.08e-11;
Gstr{i,1} = 'MXYMUCNO3'; Gstr{i,2} = 'OH'; 
fMXYMUCNO3(i)=fMXYMUCNO3(i)-1; fOH(i)=fOH(i)-1; fMXYMUCCO(i)=fMXYMUCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCNO3 + hv = EPXMC4DIAL + NO2 + CH3CO3 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MXYMUCNO3'; 
fMXYMUCNO3(i)=fMXYMUCNO3(i)-1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fNO2(i)=fNO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCNO3 + hv = EPXMC4DIAL + NO2 + CH3CO3 + CO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MXYMUCNO3'; 
fMXYMUCNO3(i)=fMXYMUCNO3(i)-1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fNO2(i)=fNO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO = CO2H3CHO + C3MDIALO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'MXYMUCO'; 
fMXYMUCO(i)=fMXYMUCO(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCO = EPXMC4DIAL + MGLYOX + HO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'MXYMUCO'; 
fMXYMUCO(i)=fMXYMUCO(i)-1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO + OH = EPXMC4DIAL + CH3CO3 + CO';
k(:,i) = 4.08e-11;
Gstr{i,1} = 'MXYMUCCO'; Gstr{i,2} = 'OH'; 
fMXYMUCCO(i)=fMXYMUCCO(i)-1; fOH(i)=fOH(i)-1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO + hv = CH3CO3 + EPXMC4DIAL + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MXYMUCCO'; 
fMXYMUCCO(i)=fMXYMUCCO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCCO + hv = CH3CO3 + EPXMC4DIAL + CO + HO2';
k(:,i) = J35;
Gstr{i,1} = 'MXYMUCCO'; 
fMXYMUCCO(i)=fMXYMUCCO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fEPXMC4DIAL(i)=fEPXMC4DIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOH + OH = MXYMUCCO + HO2';
k(:,i) = 6.20e-11;
Gstr{i,1} = 'MXYMUCOH'; Gstr{i,2} = 'OH'; 
fMXYMUCOH(i)=fMXYMUCOH(i)-1; fOH(i)=fOH(i)-1; fMXYMUCCO(i)=fMXYMUCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOH + hv = MXYMUCO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MXYMUCOH'; 
fMXYMUCOH(i)=fMXYMUCOH(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYMUCOH + hv = MXYMUCO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MXYMUCOH'; 
fMXYMUCOH(i)=fMXYMUCOH(i)-1; fMXYMUCO(i)=fMXYMUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5OOH + OH = C7236CO + OH';
k(:,i) = 7.36e-11;
Gstr{i,1} = 'C726CO5OOH'; Gstr{i,2} = 'OH'; 
fC726CO5OOH(i)=fC726CO5OOH(i)-1; fOH(i)=fOH(i)-1; fC7236CO(i)=fC7236CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5OOH + hv = C726CO5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C726CO5OOH'; 
fC726CO5OOH(i)=fC726CO5OOH(i)-1; fC726CO5O(i)=fC726CO5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5OOH + hv = C726CO5O + OH';
k(:,i) = J23;
Gstr{i,1} = 'C726CO5OOH'; 
fC726CO5OOH(i)=fC726CO5OOH(i)-1; fC726CO5O(i)=fC726CO5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5OOH + hv = C726CO5O + OH';
k(:,i) = J24;
Gstr{i,1} = 'C726CO5OOH'; 
fC726CO5OOH(i)=fC726CO5OOH(i)-1; fC726CO5O(i)=fC726CO5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C726CO5O = C5DICARB + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C726CO5O'; 
fC726CO5O(i)=fC726CO5O(i)-1; fC5DICARB(i)=fC5DICARB(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7236CO + OH = C5CO14O2 + CH3CO3';
k(:,i) = 5.22e-11;
Gstr{i,1} = 'C7236CO'; Gstr{i,2} = 'OH'; 
fC7236CO(i)=fC7236CO(i)-1; fOH(i)=fOH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7236CO + hv = C5CO14O2 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'C7236CO'; 
fC7236CO(i)=fC7236CO(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7236CO + hv = C5CO14O2 + CH3CO3';
k(:,i) = J23;
Gstr{i,1} = 'C7236CO'; 
fC7236CO(i)=fC7236CO(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7236CO + hv = C5CO14O2 + CH3CO3';
k(:,i) = J24;
Gstr{i,1} = 'C7236CO'; 
fC7236CO(i)=fC7236CO(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C726CO3OH + OH = C7236CO + HO2';
k(:,i) = 9.76e-11;
Gstr{i,1} = 'C726CO3OH'; Gstr{i,2} = 'OH'; 
fC726CO3OH(i)=fC726CO3OH(i)-1; fOH(i)=fOH(i)-1; fC7236CO(i)=fC7236CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C726CO3OH + hv = CH3CO3 + C5DICARB + HO2';
k(:,i) = J23;
Gstr{i,1} = 'C726CO3OH'; 
fC726CO3OH(i)=fC726CO3OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC5DICARB(i)=fC5DICARB(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C726CO3OH + hv = CH3CO3 + C5DICARB + HO2';
k(:,i) = J24;
Gstr{i,1} = 'C726CO3OH'; 
fC726CO3OH(i)=fC726CO3OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC5DICARB(i)=fC5DICARB(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXY1OHNO2 + NO3 = NMXYOL1O + HNO3';
k(:,i) = 3.13e-13;
Gstr{i,1} = 'MXY1OHNO2'; Gstr{i,2} = 'NO3'; 
fMXY1OHNO2(i)=fMXY1OHNO2(i)-1; fNO3(i)=fNO3(i)-1; fNMXYOL1O(i)=fNMXYOL1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MXY1OHNO2 + OH = NMXYOL1O';
k(:,i) = 1.53e-12;
Gstr{i,1} = 'MXY1OHNO2'; Gstr{i,2} = 'OH'; 
fMXY1OHNO2(i)=fMXY1OHNO2(i)-1; fOH(i)=fOH(i)-1; fNMXYOL1O(i)=fNMXYOL1O(i)+1; 

i=i+1;
Rnames{i} = 'MXY1O2 + HO2 = MXY1OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXY1O2'; Gstr{i,2} = 'HO2'; 
fMXY1O2(i)=fMXY1O2(i)-1; fHO2(i)=fHO2(i)-1; fMXY1OOH(i)=fMXY1OOH(i)+1; 

i=i+1;
Rnames{i} = 'MXY1O2 + NO = MXY1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXY1O2'; Gstr{i,2} = 'NO'; 
fMXY1O2(i)=fMXY1O2(i)-1; fNO(i)=fNO(i)-1; fMXY1O(i)=fMXY1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXY1O2 + NO3 = MXY1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXY1O2'; Gstr{i,2} = 'NO3'; 
fMXY1O2(i)=fMXY1O2(i)-1; fNO3(i)=fNO3(i)-1; fMXY1O(i)=fMXY1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXY1O2 + RO2 = MXY1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'MXY1O2'; Gstr{i,2} = 'RO2';
fMXY1O2(i)=fMXY1O2(i)-1; fMXY1O(i)=fMXY1O(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLOOH + OH = MXYOLO2';
k(:,i) = 1.13e-10;
Gstr{i,1} = 'MXYOLOOH'; Gstr{i,2} = 'OH'; 
fMXYOLOOH(i)=fMXYOLOOH(i)-1; fOH(i)=fOH(i)-1; fMXYOLO2(i)=fMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLOOH + hv = MXYOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYOLOOH'; 
fMXYOLOOH(i)=fMXYOLOOH(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO = C5CO14OH + MGLYOX + HO2';
k(:,i) = KDEC.*0.85;
Gstr{i,1} = 'MXYOLO'; 
fMXYOLO(i)=fMXYOLO(i)-1; fC5CO14OH(i)=fC5CO14OH(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLO = MXYQONE + HO2';
k(:,i) = KDEC.*0.15;
Gstr{i,1} = 'MXYOLO'; 
fMXYOLO(i)=fMXYOLO(i)-1; fMXYQONE(i)=fMXYQONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOLOH + OH = MXYOLO';
k(:,i) = 1.10e-10;
Gstr{i,1} = 'MXYOLOH'; Gstr{i,2} = 'OH'; 
fMXYOLOH(i)=fMXYOLOH(i)-1; fOH(i)=fOH(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLOOH + OH = NMXYOLO2';
k(:,i) = 1.07e-10;
Gstr{i,1} = 'NMXYOLOOH'; Gstr{i,2} = 'OH'; 
fNMXYOLOOH(i)=fNMXYOLOOH(i)-1; fOH(i)=fOH(i)-1; fNMXYOLO2(i)=fNMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLOOH + hv = MXYOLO + OH + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NMXYOLOOH'; 
fNMXYOLOOH(i)=fNMXYOLOOH(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLOOH + hv = NMXYOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NMXYOLOOH'; 
fNMXYOLOOH(i)=fNMXYOLOOH(i)-1; fNMXYOLO(i)=fNMXYOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLO = C5CO14OH + MGLYOX + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NMXYOLO'; 
fNMXYOLO(i)=fNMXYOLO(i)-1; fC5CO14OH(i)=fC5CO14OH(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLOH + OH = NMXYOLO';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'NMXYOLOH'; Gstr{i,2} = 'OH'; 
fNMXYOLOH(i)=fNMXYOLOH(i)-1; fOH(i)=fOH(i)-1; fNMXYOLO(i)=fNMXYOLO(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOLOH + hv = MXYOLO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NMXYOLOH'; 
fNMXYOLOH(i)=fNMXYOLOH(i)-1; fMXYOLO(i)=fMXYOLO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXCATEC1O + NO2 = MXNCATECH';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'MXCATEC1O'; Gstr{i,2} = 'NO2'; 
fMXCATEC1O(i)=fMXCATEC1O(i)-1; fNO2(i)=fNO2(i)-1; fMXNCATECH(i)=fMXNCATECH(i)+1; 

i=i+1;
Rnames{i} = 'MXCATEC1O + O3 = MXCATEC1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'MXCATEC1O'; Gstr{i,2} = 'O3'; 
fMXCATEC1O(i)=fMXCATEC1O(i)-1; fO3(i)=fO3(i)-1; fMXCATEC1O2(i)=fMXCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXCATECOOA = C3MCOCO2H + CH3COCO2H + HO2 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'MXCATECOOA'; 
fMXCATECOOA(i)=fMXCATECOOA(i)-1; fC3MCOCO2H(i)=fC3MCOCO2H(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + HO2 = DMPHO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'HO2'; 
fTMBCO3(i)=fTMBCO3(i)-1; fHO2(i)=fHO2(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + HO2 = TMBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'HO2'; 
fTMBCO3(i)=fTMBCO3(i)-1; fHO2(i)=fHO2(i)-1; fTMBCO2H(i)=fTMBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + HO2 = TMBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'HO2'; 
fTMBCO3(i)=fTMBCO3(i)-1; fHO2(i)=fHO2(i)-1; fTMBCO3H(i)=fTMBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + NO = DMPHO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'NO'; 
fTMBCO3(i)=fTMBCO3(i)-1; fNO(i)=fNO(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + NO2 = TMBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'NO2'; 
fTMBCO3(i)=fTMBCO3(i)-1; fNO2(i)=fNO2(i)-1; fTMBPAN(i)=fTMBPAN(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + NO3 = DMPHO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'NO3'; 
fTMBCO3(i)=fTMBCO3(i)-1; fNO3(i)=fNO3(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + RO2 = DMPHO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'RO2';
fTMBCO3(i)=fTMBCO3(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3 + RO2 = TMBCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'TMBCO3'; Gstr{i,2} = 'RO2';
fTMBCO3(i)=fTMBCO3(i)-1; fTMBCO2H(i)=fTMBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'DMPHO2 + HO2 = DMPHOOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'DMPHO2'; Gstr{i,2} = 'HO2'; 
fDMPHO2(i)=fDMPHO2(i)-1; fHO2(i)=fHO2(i)-1; fDMPHOOH(i)=fDMPHOOH(i)+1; 

i=i+1;
Rnames{i} = 'DMPHO2 + NO = DMPHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DMPHO2'; Gstr{i,2} = 'NO'; 
fDMPHO2(i)=fDMPHO2(i)-1; fNO(i)=fNO(i)-1; fDMPHO(i)=fDMPHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DMPHO2 + NO3 = DMPHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DMPHO2'; Gstr{i,2} = 'NO3'; 
fDMPHO2(i)=fDMPHO2(i)-1; fNO3(i)=fNO3(i)-1; fDMPHO(i)=fDMPHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DMPHO2 + RO2 = DMPHO';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'DMPHO2'; Gstr{i,2} = 'RO2';
fDMPHO2(i)=fDMPHO2(i)-1; fDMPHO(i)=fDMPHO(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + HO2 = C4MCODBCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC4MCODBCO2(i)=fC4MCODBCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + HO2 = C5CODBCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5CODBCO3H(i)=fC5CODBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + NO = NO2 + C4MCODBCO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'NO'; 
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fC4MCODBCO2(i)=fC4MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + NO2 = C4MCODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'NO2'; 
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4MCODBPAN(i)=fC4MCODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + NO3 = C4MCODBCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'NO3'; 
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fC4MCODBCO2(i)=fC4MCODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + RO2 = C4MCODBCO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'RO2';
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fC4MCODBCO2(i)=fC4MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO3 + RO2 = C5CODBCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'C4MCODBCO3'; Gstr{i,2} = 'RO2';
fC4MCODBCO3(i)=fC4MCODBCO3(i)-1; fC5CODBCO2H(i)=fC5CODBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'NTM135LOOH + OH = NTM135OLO2';
k(:,i) = 1.44e-10;
Gstr{i,1} = 'NTM135LOOH'; Gstr{i,2} = 'OH'; 
fNTM135LOOH(i)=fNTM135LOOH(i)-1; fOH(i)=fOH(i)-1; fNTM135OLO2(i)=fNTM135OLO2(i)+1; 

i=i+1;
Rnames{i} = 'NTM135LOOH + hv = NTM135OLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NTM135LOOH'; 
fNTM135LOOH(i)=fNTM135LOOH(i)-1; fNTM135OLO(i)=fNTM135OLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NTM135LOOH + hv = TM135OLO + OH + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NTM135LOOH'; 
fNTM135LOOH(i)=fNTM135LOOH(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLO = C5CODBCO2H + MGLYOX + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NTM135OLO'; 
fNTM135OLO(i)=fNTM135OLO(i)-1; fC5CODBCO2H(i)=fC5CODBCO2H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLOH + OH = NTM135OLO';
k(:,i) = 1.40e-10;
Gstr{i,1} = 'NTM135OLOH'; Gstr{i,2} = 'OH'; 
fNTM135OLOH(i)=fNTM135OLOH(i)-1; fOH(i)=fOH(i)-1; fNTM135OLO(i)=fNTM135OLO(i)+1; 

i=i+1;
Rnames{i} = 'NTM135OLOH + hv = TM135OLO + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NTM135OLOH'; 
fNTM135OLOH(i)=fNTM135OLOH(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLOOH + OH = TM135OLO2';
k(:,i) = 1.50e-10;
Gstr{i,1} = 'TM135OLOOH'; Gstr{i,2} = 'OH'; 
fTM135OLOOH(i)=fTM135OLOOH(i)-1; fOH(i)=fOH(i)-1; fTM135OLO2(i)=fTM135OLO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLOOH + hv = TM135OLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TM135OLOOH'; 
fTM135OLOOH(i)=fTM135OLOOH(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLO = C5CODBCO2H + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'TM135OLO'; 
fTM135OLO(i)=fTM135OLO(i)-1; fC5CODBCO2H(i)=fC5CODBCO2H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135OLOH + OH = TM135OLO';
k(:,i) = 1.47e-10;
Gstr{i,1} = 'TM135OLOH'; Gstr{i,2} = 'OH'; 
fTM135OLOH(i)=fTM135OLOH(i)-1; fOH(i)=fOH(i)-1; fTM135OLO(i)=fTM135OLO(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO2H + OH = C7M2CO5O2';
k(:,i) = 8.08e-11;
Gstr{i,1} = 'TM135MUO2H'; Gstr{i,2} = 'OH'; 
fTM135MUO2H(i)=fTM135MUO2H(i)-1; fOH(i)=fOH(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO2H + hv = C7M2CO5O2 + HO2';
k(:,i) = J23;
Gstr{i,1} = 'TM135MUO2H'; 
fTM135MUO2H(i)=fTM135MUO2H(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO2H + hv = C7M2CO5O2 + HO2';
k(:,i) = J24;
Gstr{i,1} = 'TM135MUO2H'; 
fTM135MUO2H(i)=fTM135MUO2H(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO3H + OH = TM135MUCO3';
k(:,i) = 8.38e-11;
Gstr{i,1} = 'TM135MUO3H'; Gstr{i,2} = 'OH'; 
fTM135MUO3H(i)=fTM135MUO3H(i)-1; fOH(i)=fOH(i)-1; fTM135MUCO3(i)=fTM135MUCO3(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO3H + hv = C7M2CO5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'TM135MUO3H'; 
fTM135MUO3H(i)=fTM135MUO3H(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO3H + hv = C7M2CO5O2 + OH';
k(:,i) = J23;
Gstr{i,1} = 'TM135MUO3H'; 
fTM135MUO3H(i)=fTM135MUO3H(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUO3H + hv = C7M2CO5O2 + OH';
k(:,i) = J24;
Gstr{i,1} = 'TM135MUO3H'; 
fTM135MUO3H(i)=fTM135MUO3H(i)-1; fC7M2CO5O2(i)=fC7M2CO5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUPAN + OH = C5MDICARB + CH3O2 + CO + NO2';
k(:,i) = 8.06e-11;
Gstr{i,1} = 'TM135MUPAN'; Gstr{i,2} = 'OH'; 
fTM135MUPAN(i)=fTM135MUPAN(i)-1; fOH(i)=fOH(i)-1; fC5MDICARB(i)=fC5MDICARB(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUPAN = TM135MUCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'TM135MUPAN'; 
fTM135MUPAN(i)=fTM135MUPAN(i)-1; fTM135MUCO3(i)=fTM135MUCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + HO2 = CO24C53O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'HO2'; 
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fHO2(i)=fHO2(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + HO2 = EPXMKTCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'HO2'; 
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXMKTCO2H(i)=fEPXMKTCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + HO2 = EPXMKTCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'HO2'; 
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXMKTCO3H(i)=fEPXMKTCO3H(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + NO = CO24C53O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'NO'; 
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fNO(i)=fNO(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + NO2 = EPXMKTPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'NO2'; 
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fNO2(i)=fNO2(i)-1; fEPXMKTPAN(i)=fEPXMKTPAN(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + NO3 = CO24C53O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'NO3'; 
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fNO3(i)=fNO3(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + RO2 = CO24C53O2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'RO2';
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3 + RO2 = EPXMKTCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'EPXMKTCO3'; Gstr{i,2} = 'RO2';
fEPXMKTCO3(i)=fEPXMKTCO3(i)-1; fEPXMKTCO2H(i)=fEPXMKTCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53O2 + HO2 = CO24C53OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CO24C53O2'; Gstr{i,2} = 'HO2'; 
fCO24C53O2(i)=fCO24C53O2(i)-1; fHO2(i)=fHO2(i)-1; fCO24C53OOH(i)=fCO24C53OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53O2 + NO = CO24C53O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO24C53O2'; Gstr{i,2} = 'NO'; 
fCO24C53O2(i)=fCO24C53O2(i)-1; fNO(i)=fNO(i)-1; fCO24C53O(i)=fCO24C53O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53O2 + NO3 = CO24C53O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO24C53O2'; Gstr{i,2} = 'NO3'; 
fCO24C53O2(i)=fCO24C53O2(i)-1; fNO3(i)=fNO3(i)-1; fCO24C53O(i)=fCO24C53O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53O2 + RO2 = CO24C53O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'CO24C53O2'; Gstr{i,2} = 'RO2';
fCO24C53O2(i)=fCO24C53O2(i)-1; fCO24C53O(i)=fCO24C53O(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOOH + OH = TM135MUCO2';
k(:,i) = 3.30e-11;
Gstr{i,1} = 'TM135MUOOH'; Gstr{i,2} = 'OH'; 
fTM135MUOOH(i)=fTM135MUOOH(i)-1; fOH(i)=fOH(i)-1; fTM135MUCO2(i)=fTM135MUCO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOOH + hv = TM135MUCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TM135MUOOH'; 
fTM135MUOOH(i)=fTM135MUOOH(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOOH + hv = TM135MUCO + OH';
k(:,i) = J17;
Gstr{i,1} = 'TM135MUOOH'; 
fTM135MUOOH(i)=fTM135MUOOH(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOOH + hv = TM135MUCO + OH';
k(:,i) = J22;
Gstr{i,1} = 'TM135MUOOH'; 
fTM135MUOOH(i)=fTM135MUOOH(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO = C3MDIALO2 + C5CO243OH';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'TM135MUCO'; 
fTM135MUCO(i)=fTM135MUCO(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fC5CO243OH(i)=fC5CO243OH(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUCO = EPXMALKT + MGLYOX + HO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'TM135MUCO'; 
fTM135MUCO(i)=fTM135MUCO(i)-1; fEPXMALKT(i)=fEPXMALKT(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUNO3 + OH = C3MDIALO2 + C5CO243OH + NO2';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'TM135MUNO3'; Gstr{i,2} = 'OH'; 
fTM135MUNO3(i)=fTM135MUNO3(i)-1; fOH(i)=fOH(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fC5CO243OH(i)=fC5CO243OH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUNO3 + hv = EPXMALKT + HO2 + MGLYOX + NO2';
k(:,i) = J17;
Gstr{i,1} = 'TM135MUNO3'; 
fTM135MUNO3(i)=fTM135MUNO3(i)-1; fEPXMALKT(i)=fEPXMALKT(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUNO3 + hv = EPXMALKT + HO2 + MGLYOX + NO2';
k(:,i) = J22;
Gstr{i,1} = 'TM135MUNO3'; 
fTM135MUNO3(i)=fTM135MUNO3(i)-1; fEPXMALKT(i)=fEPXMALKT(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOH + OH = TM135MUCO';
k(:,i) = 2.96e-11;
Gstr{i,1} = 'TM135MUOH'; Gstr{i,2} = 'OH'; 
fTM135MUOH(i)=fTM135MUOH(i)-1; fOH(i)=fOH(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOH + hv = TM135MUCO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'TM135MUOH'; 
fTM135MUOH(i)=fTM135MUOH(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TM135MUOH + hv = TM135MUCO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'TM135MUOH'; 
fTM135MUOH(i)=fTM135MUOH(i)-1; fTM135MUCO(i)=fTM135MUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OOH + OH = C7M3CO + OH';
k(:,i) = 9.44e-11;
Gstr{i,1} = 'C7M2CO5OOH'; Gstr{i,2} = 'OH'; 
fC7M2CO5OOH(i)=fC7M2CO5OOH(i)-1; fOH(i)=fOH(i)-1; fC7M3CO(i)=fC7M3CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OOH + hv = C5MDICARB + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C7M2CO5OOH'; 
fC7M2CO5OOH(i)=fC7M2CO5OOH(i)-1; fC5MDICARB(i)=fC5MDICARB(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OOH + hv = C7M2CO5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C7M2CO5OOH'; 
fC7M2CO5OOH(i)=fC7M2CO5OOH(i)-1; fC7M2CO5O(i)=fC7M2CO5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OOH + hv = CO24C53OOH + CH3CO3 + HO2 + CO';
k(:,i) = J23;
Gstr{i,1} = 'C7M2CO5OOH'; 
fC7M2CO5OOH(i)=fC7M2CO5OOH(i)-1; fCO24C53OOH(i)=fCO24C53OOH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5O = C5MDICARB + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C7M2CO5O'; 
fC7M2CO5O(i)=fC7M2CO5O(i)-1; fC5MDICARB(i)=fC5MDICARB(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OH + OH = C7M3CO + HO2';
k(:,i) = 1.31e-10;
Gstr{i,1} = 'C7M2CO5OH'; Gstr{i,2} = 'OH'; 
fC7M2CO5OH(i)=fC7M2CO5OH(i)-1; fOH(i)=fOH(i)-1; fC7M3CO(i)=fC7M3CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OH + hv = C5MDICARB + HO2 + CH3CO3';
k(:,i) = J23;
Gstr{i,1} = 'C7M2CO5OH'; 
fC7M2CO5OH(i)=fC7M2CO5OH(i)-1; fC5MDICARB(i)=fC5MDICARB(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7M2CO5OH + hv = C5MDICARB + HO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'C7M2CO5OH'; 
fC7M2CO5OH(i)=fC7M2CO5OH(i)-1; fC5MDICARB(i)=fC5MDICARB(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7M3CO + OH = CH3CO3 + C4MCODBCO3';
k(:,i) = 7.10e-11;
Gstr{i,1} = 'C7M3CO'; Gstr{i,2} = 'OH'; 
fC7M3CO(i)=fC7M3CO(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C7M3CO + hv = C5CO234 + CH3CO3 + HO2 + CO';
k(:,i) = J23;
Gstr{i,1} = 'C7M3CO'; 
fC7M3CO(i)=fC7M3CO(i)-1; fC5CO234(i)=fC5CO234(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C7M3CO + hv = CH3CO3 + C4MCODBCO3';
k(:,i) = J35;
Gstr{i,1} = 'C7M3CO'; 
fC7M3CO(i)=fC7M3CO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HO2 + CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO = HO2 + CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO2 = HO2 + CO + NO3';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO3 = HO2 + CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO3'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + RO2 = CO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + RO2 = HCOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO2H + OH = HCHO + HO2';
k(:,i) = 2.73e-12;
Gstr{i,1} = 'HOCH2CO2H'; Gstr{i,2} = 'OH'; 
fHOCH2CO2H(i)=fHOCH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + OH = HOCH2CO3';
k(:,i) = 6.19e-12;
Gstr{i,1} = 'HOCH2CO3H'; Gstr{i,2} = 'OH'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + hv = HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCH2CO3H'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHAN + OH = HCHO + CO + NO2';
k(:,i) = 1.12e-12;
Gstr{i,1} = 'PHAN'; Gstr{i,2} = 'OH'; 
fPHAN(i)=fPHAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHAN = HOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PHAN'; 
fPHAN(i)=fPHAN(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = CH3COCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = MGLYOX + OH';
k(:,i) = 8.39e-12;
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + hv = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + hv = CH3COCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PERPROACID + OH = C2H5CO3';
k(:,i) = 4.42e-12;
Gstr{i,1} = 'PERPROACID'; Gstr{i,2} = 'OH'; 
fPERPROACID(i)=fPERPROACID(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERPROACID + hv = C2H5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPROACID'; 
fPERPROACID(i)=fPERPROACID(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PROPACID + OH = C2H5O2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'PROPACID'; Gstr{i,2} = 'OH'; 
fPROPACID(i)=fPROPACID(i)-1; fOH(i)=fOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'PPN + OH = CH3CHO + CO + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'OH'; 
fPPN(i)=fPPN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PPN = C2H5CO3 + NO2';
k(:,i) = KBPPN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3OOH + hv = HO1C3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C3OOH'; 
fHO1C3OOH(i)=fHO1C3OOH(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C3OOH = HO1C3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C3OOH'; 
fOH(i)=fOH(i)-1; fHO1C3OOH(i)=fHO1C3OOH(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C3OOH = HOC2H4CHO + OH';
k(:,i) = 1.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C3OOH'; 
fOH(i)=fOH(i)-1; fHO1C3OOH(i)=fHO1C3OOH(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3NO3 + hv = HO1C3O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO1C3NO3'; 
fHO1C3NO3(i)=fHO1C3NO3(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C3NO3 = HOC2H4CHO + NO2';
k(:,i) = 4.44e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C3NO3'; 
fOH(i)=fOH(i)-1; fHO1C3NO3(i)=fHO1C3NO3(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O = HOC2H4CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HO1C3O'; 
fHO1C3O(i)=fHO1C3O(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CHO + hv = HOCH2CH2O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOC2H4CHO'; 
fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HOC2H4CHO = HOC2H4CO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HOC2H4CHO'; 
fNO3(i)=fNO3(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC2H4CHO = HOC2H4CO3';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC2H4CHO'; 
fOH(i)=fOH(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC3H6OH = HOC2H4CHO + HO2';
k(:,i) = 9.73e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC3H6OH'; 
fOH(i)=fOH(i)-1; fHOC3H6OH(i)=fHOC3H6OH(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4OOH + hv = HO1C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C4OOH'; 
fHO1C4OOH(i)=fHO1C4OOH(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C4OOH = HO1C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C4OOH'; 
fOH(i)=fOH(i)-1; fHO1C4OOH(i)=fHO1C4OOH(i)-1; fHO1C4O2(i)=fHO1C4O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C4OOH = HOC3H6CHO + OH';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C4OOH'; 
fOH(i)=fOH(i)-1; fHO1C4OOH(i)=fHO1C4OOH(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4NO3 + hv = HO1C4O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO1C4NO3'; 
fHO1C4NO3(i)=fHO1C4NO3(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C4NO3 = HOC3H6CHO + NO2';
k(:,i) = 5.85e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C4NO3'; 
fOH(i)=fOH(i)-1; fHO1C4NO3(i)=fHO1C4NO3(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O = HOC3H6CHO + HO2';
k(:,i) = 8.74e11.*exp(-3430./T);
Gstr{i,1} = 'HO1C4O'; 
fHO1C4O(i)=fHO1C4O(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CHO + hv = HO1C3O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOC3H6CHO'; 
fHOC3H6CHO(i)=fHOC3H6CHO(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HOC3H6CHO = HOC3H6CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HOC3H6CHO'; 
fNO3(i)=fNO3(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC3H6CHO = HOC3H6CO3';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC3H6CHO'; 
fOH(i)=fOH(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC4H8OH = HOC3H6CHO + HO2';
k(:,i) = 1.11e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC4H8OH'; 
fOH(i)=fOH(i)-1; fHOC4H8OH(i)=fHOC4H8OH(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTACID + OH = NC3H7O2';
k(:,i) = 1.8e-12;
Gstr{i,1} = 'BUTACID'; Gstr{i,2} = 'OH'; 
fBUTACID(i)=fBUTACID(i)-1; fOH(i)=fOH(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'PERBUACID + OH = C3H7CO3';
k(:,i) = 8.29e-12;
Gstr{i,1} = 'PERBUACID'; Gstr{i,2} = 'OH'; 
fPERBUACID(i)=fPERBUACID(i)-1; fOH(i)=fOH(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERBUACID + hv = NC3H7O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERBUACID'; 
fPERBUACID(i)=fPERBUACID(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PBN + OH = C2H5CHO + CO + NO2';
k(:,i) = 4.70e-12;
Gstr{i,1} = 'PBN'; Gstr{i,2} = 'OH'; 
fPBN(i)=fPBN(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBN = C3H7CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PBN'; 
fPBN(i)=fPBN(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + OH = BUTALO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'BUTALO2H'; Gstr{i,2} = 'OH'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fOH(i)=fOH(i)-1; fBUTALO2(i)=fBUTALO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + OH = CO2C3CHO + OH';
k(:,i) = 1.27e-10;
Gstr{i,1} = 'BUTALO2H'; Gstr{i,2} = 'OH'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + hv = BUTALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BUTALO2H'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fBUTALO(i)=fBUTALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + hv = HO2 + CO + IC3H7O2';
k(:,i) = J15;
Gstr{i,1} = 'BUTALO2H'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALNO3 + OH = CO2C3CHO + NO2';
k(:,i) = 2.25e-11;
Gstr{i,1} = 'BUTALNO3'; Gstr{i,2} = 'OH'; 
fBUTALNO3(i)=fBUTALNO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALNO3 + hv = NO2 + BUTALO';
k(:,i) = J54;
Gstr{i,1} = 'BUTALNO3'; 
fBUTALNO3(i)=fBUTALNO3(i)-1; fNO2(i)=fNO2(i)+1; fBUTALO(i)=fBUTALO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALNO3 + hv = NO2 + BUTALO';
k(:,i) = J15;
Gstr{i,1} = 'BUTALNO3'; 
fBUTALNO3(i)=fBUTALNO3(i)-1; fNO2(i)=fNO2(i)+1; fBUTALO(i)=fBUTALO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO = CH3CHO + HCOCH2O2';
k(:,i) = 2.70e14.*exp(-7398./T);
Gstr{i,1} = 'BUTALO'; 
fBUTALO(i)=fBUTALO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO = CO2C3CHO + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'BUTALO'; 
fBUTALO(i)=fBUTALO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + NO3 = CO2C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'NO3'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + OH = CO2C3CO3';
k(:,i) = 7.15e-11;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'OH'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + hv = CH3COCH2O2 + HCHO';
k(:,i) = J15;
Gstr{i,1} = 'CO2C3CHO'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CHO + hv = HO2 + CO + IPROPOLO2';
k(:,i) = J15;
Gstr{i,1} = 'HO2C3CHO'; 
fHO2C3CHO(i)=fHO2C3CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HO2C3CHO = HO2C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2C3CHO'; 
fNO3(i)=fNO3(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C3CHO = CO2C3CHO + HO2';
k(:,i) = 4.88e-11.*0.561;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C3CHO'; 
fOH(i)=fOH(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C3CHO = HO2C3CO3';
k(:,i) = 4.88e-11.*0.439;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C3CHO'; 
fOH(i)=fOH(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOOH + OH = MEKCOH + OH';
k(:,i) = 3.01e-11;
Gstr{i,1} = 'NBUTOLAOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLAOOH(i)=fNBUTOLAOOH(i)-1; fOH(i)=fOH(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOOH + OH = NBUTOLAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NBUTOLAOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLAOOH(i)=fNBUTOLAOOH(i)-1; fOH(i)=fOH(i)-1; fNBUTOLAO2(i)=fNBUTOLAO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOOH + hv = NBUTOLAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBUTOLAOOH'; 
fNBUTOLAOOH(i)=fNBUTOLAOOH(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLANO3 + OH = MEKCOH + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'NBUTOLANO3'; Gstr{i,2} = 'OH'; 
fNBUTOLANO3(i)=fNBUTOLANO3(i)-1; fOH(i)=fOH(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO = C2H5CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6354./T);
Gstr{i,1} = 'NBUTOLAO'; 
fNBUTOLAO(i)=fNBUTOLAO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOH + OH = EGLYOX + HO2';
k(:,i) = 3.44e-12;
Gstr{i,1} = 'MEKCOH'; Gstr{i,2} = 'OH'; 
fMEKCOH(i)=fMEKCOH(i)-1; fOH(i)=fOH(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOH + hv = C2H5CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MEKCOH'; 
fMEKCOH(i)=fMEKCOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOH + OH = MEKCOH + HO2';
k(:,i) = 1.59e-11;
Gstr{i,1} = 'NBUTOLAOH'; Gstr{i,2} = 'OH'; 
fNBUTOLAOH(i)=fNBUTOLAOH(i)-1; fOH(i)=fOH(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBOOH + OH = MEKAOH + OH';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'NBUTOLBOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLBOOH(i)=fNBUTOLBOOH(i)-1; fOH(i)=fOH(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBOOH + OH = NBUTOLBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NBUTOLBOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLBOOH(i)=fNBUTOLBOOH(i)-1; fOH(i)=fOH(i)-1; fNBUTOLBO2(i)=fNBUTOLBO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBOOH + hv = NBUTOLBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBUTOLBOOH'; 
fNBUTOLBOOH(i)=fNBUTOLBOOH(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBNO3 + OH = MEKAOH + NO2';
k(:,i) = 4.51e-12;
Gstr{i,1} = 'NBUTOLBNO3'; Gstr{i,2} = 'OH'; 
fNBUTOLBNO3(i)=fNBUTOLBNO3(i)-1; fOH(i)=fOH(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBNO3 + hv = NBUTOLBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NBUTOLBNO3'; 
fNBUTOLBNO3(i)=fNBUTOLBNO3(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO = CH3CHO + HOCH2CH2O2';
k(:,i) = 2.70e14.*exp(-7398./T);
Gstr{i,1} = 'NBUTOLBO'; 
fNBUTOLBO(i)=fNBUTOLBO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO = MEKAOH + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'NBUTOLBO'; 
fNBUTOLBO(i)=fNBUTOLBO(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4OH = MEKAOH + HO2';
k(:,i) = 1.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4OH'; 
fOH(i)=fOH(i)-1; fHO2C4OH(i)=fHO2C4OH(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOH + OH = CO2C3CHO + HO2';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'MEKAOH'; Gstr{i,2} = 'OH'; 
fMEKAOH(i)=fMEKAOH(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOH + hv = HOCH2CH2O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'MEKAOH'; 
fMEKAOH(i)=fMEKAOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + OH = CO2C3CHO + OH';
k(:,i) = 4.88e-11;
Gstr{i,1} = 'MEKAOOH'; Gstr{i,2} = 'OH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + OH = MEKAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MEKAOOH'; Gstr{i,2} = 'OH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fOH(i)=fOH(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + hv = MEKAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MEKAOOH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fMEKAO(i)=fMEKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + hv = MEKAO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MEKAOOH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fMEKAO(i)=fMEKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + OH = CO2C3CHO + NO2';
k(:,i) = 9.64e-13;
Gstr{i,1} = 'MEKANO3'; Gstr{i,2} = 'OH'; 
fMEKANO3(i)=fMEKANO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + hv = MEKAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'MEKANO3'; 
fMEKANO3(i)=fMEKANO3(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + hv = MEKAO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'MEKANO3'; 
fMEKANO3(i)=fMEKANO3(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO = CO2C3CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'MEKAO'; 
fMEKAO(i)=fMEKAO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO = HO1CO3C4O2';
k(:,i) = 1.30e11.*exp(-4127./T);
Gstr{i,1} = 'MEKAO'; 
fMEKAO(i)=fMEKAO(i)-1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'MEKBOOH + OH = BIACET + OH';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'MEKBOOH'; Gstr{i,2} = 'OH'; 
fMEKBOOH(i)=fMEKBOOH(i)-1; fOH(i)=fOH(i)-1; fBIACET(i)=fBIACET(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKBOOH + OH = MEKBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MEKBOOH'; Gstr{i,2} = 'OH'; 
fMEKBOOH(i)=fMEKBOOH(i)-1; fOH(i)=fOH(i)-1; fMEKBO2(i)=fMEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKBOOH + hv = CH3CO3 + CH3CHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MEKBOOH'; 
fMEKBOOH(i)=fMEKBOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKBOOH + hv = MEKBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MEKBOOH'; 
fMEKBOOH(i)=fMEKBOOH(i)-1; fMEKBO(i)=fMEKBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + OH = EGLYOX + OH';
k(:,i) = 9.55e-12;
Gstr{i,1} = 'MEKCOOH'; Gstr{i,2} = 'OH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fOH(i)=fOH(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + OH = MEKCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MEKCOOH'; Gstr{i,2} = 'OH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fOH(i)=fOH(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + hv = C2H5CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MEKCOOH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + hv = MEKCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MEKCOOH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fMEKCO(i)=fMEKCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO = C2H5CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'MEKCO'; 
fMEKCO(i)=fMEKCO(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'EGLYOX + hv = C2H5CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'EGLYOX'; 
fEGLYOX(i)=fEGLYOX(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + EGLYOX = C2H5CO3 + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'EGLYOX'; 
fNO3(i)=fNO3(i)-1; fEGLYOX(i)=fEGLYOX(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + EGLYOX = C2H5CO3 + CO';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'EGLYOX'; 
fOH(i)=fOH(i)-1; fEGLYOX(i)=fEGLYOX(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5OOH + hv = HO1C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C5OOH'; 
fHO1C5OOH(i)=fHO1C5OOH(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C5OOH = CO2C5OH + OH';
k(:,i) = 3.08e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C5OOH'; 
fOH(i)=fOH(i)-1; fHO1C5OOH(i)=fHO1C5OOH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5NO3 + hv = HO1C5O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO1C5NO3'; 
fHO1C5NO3(i)=fHO1C5NO3(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C5NO3 = CO2C5OH + NO2';
k(:,i) = 5.93e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C5NO3'; 
fOH(i)=fOH(i)-1; fHO1C5NO3(i)=fHO1C5NO3(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O = HO2C4CHO + HO2';
k(:,i) = 8.74e11.*exp(-3430./T);
Gstr{i,1} = 'HO1C5O'; 
fHO1C5O(i)=fHO1C5O(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C5OH + hv = CH3CO3 + HO1C3O2';
k(:,i) = J22;
Gstr{i,1} = 'CO2C5OH'; 
fCO2C5OH(i)=fCO2C5OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C5OH = C51O2';
k(:,i) = 9.70e-12.*0.517;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C5OH'; 
fOH(i)=fOH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)-1; fC51O2(i)=fC51O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C5OH = CO2C4CHO + HO2';
k(:,i) = 9.60e-12.*0.483;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C5OH'; 
fOH(i)=fOH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)-1; fCO2C4CHO(i)=fCO2C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C5OH = CO2C5OH + HO2';
k(:,i) = 1.54e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C5OH'; 
fOH(i)=fOH(i)-1; fHO2C5OH(i)=fHO2C5OH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PENTACID + OH = NC4H9O2';
k(:,i) = 6.88e-12;
Gstr{i,1} = 'PENTACID'; Gstr{i,2} = 'OH'; 
fPENTACID(i)=fPENTACID(i)-1; fOH(i)=fOH(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'PERPENACID + OH = C4H9CO3';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'PERPENACID'; Gstr{i,2} = 'OH'; 
fPERPENACID(i)=fPERPENACID(i)-1; fOH(i)=fOH(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERPENACID + hv = NC4H9O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPENACID'; 
fPERPENACID(i)=fPERPENACID(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PPEN + OH = C3H7CHO + CO + NO2';
k(:,i) = 6.85e-12;
Gstr{i,1} = 'PPEN'; Gstr{i,2} = 'OH'; 
fPPEN(i)=fPPEN(i)-1; fOH(i)=fOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PPEN = C4H9CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PPEN'; 
fPPEN(i)=fPPEN(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + OH = C4CHOBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C4CHOBOOH'; Gstr{i,2} = 'OH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fOH(i)=fOH(i)-1; fC4CHOBO2(i)=fC4CHOBO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + OH = CO3C4CHO + OH';
k(:,i) = 1.57e-10;
Gstr{i,1} = 'C4CHOBOOH'; Gstr{i,2} = 'OH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + hv = C4CHOBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4CHOBOOH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + hv = C4CHOBO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C4CHOBOOH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBNO3 + OH = CO3C4CHO + NO2';
k(:,i) = 2.33e-11;
Gstr{i,1} = 'C4CHOBNO3'; Gstr{i,2} = 'OH'; 
fC4CHOBNO3(i)=fC4CHOBNO3(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBNO3 + hv = C4CHOBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C4CHOBNO3'; 
fC4CHOBNO3(i)=fC4CHOBNO3(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBNO3 + hv = C4CHOBO + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C4CHOBNO3'; 
fC4CHOBNO3(i)=fC4CHOBNO3(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO = CO3C4CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'C4CHOBO'; 
fC4CHOBO(i)=fC4CHOBO(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CHO + hv = MEKCO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO3C4CHO'; 
fCO3C4CHO(i)=fCO3C4CHO(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO3C4CHO = CO3C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO3C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C4CHO = CO3C4CO3';
k(:,i) = 6.76e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C4CHO'; 
fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CHO + hv = HO3C4O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HO3C4CHO'; 
fHO3C4CHO(i)=fHO3C4CHO(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HO3C4CHO = HO3C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO3C4CHO'; 
fNO3(i)=fNO3(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C4CHO = CO3C4CHO + HO2';
k(:,i) = 5.56e-11.*0.611;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C4CHO'; 
fOH(i)=fOH(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C4CHO = HO3C4CO3';
k(:,i) = 5.56e-11.*0.389;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C4CHO'; 
fOH(i)=fOH(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5OOH + hv = HO2C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C5OOH'; 
fHO2C5OOH(i)=fHO2C5OOH(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C5OOH = HO2C4CHO + OH';
k(:,i) = 2.09e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C5OOH'; 
fOH(i)=fOH(i)-1; fHO2C5OOH(i)=fHO2C5OOH(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C5OOH = HO2C5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C5OOH'; 
fOH(i)=fOH(i)-1; fHO2C5OOH(i)=fHO2C5OOH(i)-1; fHO2C5O2(i)=fHO2C5O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5NO3 + hv = HO2C5O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO2C5NO3'; 
fHO2C5NO3(i)=fHO2C5NO3(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C5NO3 = HO2C4CHO + NO2';
k(:,i) = 1.03e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C5NO3'; 
fOH(i)=fOH(i)-1; fHO2C5NO3(i)=fHO2C5NO3(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O = CO2C5OH + HO2';
k(:,i) = 4.37e11.*exp(-2945./T);
Gstr{i,1} = 'HO2C5O'; 
fHO2C5O(i)=fHO2C5O(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CHO + hv = HO2C4O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HO2C4CHO'; 
fHO2C4CHO(i)=fHO2C4CHO(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HO2C4CHO = HO2C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2C4CHO'; 
fNO3(i)=fNO3(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4CHO = HO2C4CO3';
k(:,i) = 3.09e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4CHO'; 
fOH(i)=fOH(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'MPRKBOOH + OH = CO24C5 + OH';
k(:,i) = 1.06e-10;
Gstr{i,1} = 'MPRKBOOH'; Gstr{i,2} = 'OH'; 
fMPRKBOOH(i)=fMPRKBOOH(i)-1; fOH(i)=fOH(i)-1; fCO24C5(i)=fCO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MPRKBOOH + OH = CO2C54O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MPRKBOOH'; Gstr{i,2} = 'OH'; 
fMPRKBOOH(i)=fMPRKBOOH(i)-1; fOH(i)=fOH(i)-1; fCO2C54O2(i)=fCO2C54O2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKBOOH + hv = CO2C54O + OH';
k(:,i) = J41;
Gstr{i,1} = 'MPRKBOOH'; 
fMPRKBOOH(i)=fMPRKBOOH(i)-1; fCO2C54O(i)=fCO2C54O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MPRKBOOH + hv = IC3H7O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'MPRKBOOH'; 
fMPRKBOOH(i)=fMPRKBOOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C54O = HO2CO4C5O2';
k(:,i) = 1.30e11.*exp(-4127./T);
Gstr{i,1} = 'CO2C54O'; 
fCO2C54O(i)=fCO2C54O(i)-1; fHO2CO4C5O2(i)=fHO2CO4C5O2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKNO3 + OH = CO24C5 + NO2';
k(:,i) = 1.79e-12;
Gstr{i,1} = 'MPRKNO3'; Gstr{i,2} = 'OH'; 
fMPRKNO3(i)=fMPRKNO3(i)-1; fOH(i)=fOH(i)-1; fCO24C5(i)=fCO24C5(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKNO3 + hv = CO2C54O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'MPRKNO3'; 
fMPRKNO3(i)=fMPRKNO3(i)-1; fCO2C54O(i)=fCO2C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKNO3 + hv = CO2C54O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'MPRKNO3'; 
fMPRKNO3(i)=fMPRKNO3(i)-1; fCO2C54O(i)=fCO2C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C5 + OH = CO24C53O2';
k(:,i) = 7.02e-13;
Gstr{i,1} = 'CO24C5'; Gstr{i,2} = 'OH'; 
fCO24C5(i)=fCO24C5(i)-1; fOH(i)=fOH(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C5 + hv = CH3COCH2O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'CO24C5'; 
fCO24C5(i)=fCO24C5(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5 + OH = CO24C5 + HO2';
k(:,i) = 2.99e-11;
Gstr{i,1} = 'HO2CO4C5'; Gstr{i,2} = 'OH'; 
fHO2CO4C5(i)=fHO2CO4C5(i)-1; fOH(i)=fOH(i)-1; fCO24C5(i)=fCO24C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5 + hv = IPROPOLO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'HO2CO4C5'; 
fHO2CO4C5(i)=fHO2CO4C5(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAOOH + OH = CO23C5 + OH';
k(:,i) = 1.06e-10;
Gstr{i,1} = 'MPRKAOOH'; Gstr{i,2} = 'OH'; 
fMPRKAOOH(i)=fMPRKAOOH(i)-1; fOH(i)=fOH(i)-1; fCO23C5(i)=fCO23C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAOOH + OH = MPRKAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MPRKAOOH'; Gstr{i,2} = 'OH'; 
fMPRKAOOH(i)=fMPRKAOOH(i)-1; fOH(i)=fOH(i)-1; fMPRKAO2(i)=fMPRKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAOOH + hv = C2H5CHO + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'MPRKAOOH'; 
fMPRKAOOH(i)=fMPRKAOOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAOOH + hv = MPRKAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MPRKAOOH'; 
fMPRKAOOH(i)=fMPRKAOOH(i)-1; fMPRKAO(i)=fMPRKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAO = C2H5CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MPRKAO'; 
fMPRKAO(i)=fMPRKAO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO23C5 + OH = CO23C54O2';
k(:,i) = 1.38e-12;
Gstr{i,1} = 'CO23C5'; Gstr{i,2} = 'OH'; 
fCO23C5(i)=fCO23C5(i)-1; fOH(i)=fOH(i)-1; fCO23C54O2(i)=fCO23C54O2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C5 + hv = CH3CO3 + C2H5CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C5'; 
fCO23C5(i)=fCO23C5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAOH + OH = CO23C5 + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'MPRKAOH'; Gstr{i,2} = 'OH'; 
fMPRKAOH(i)=fMPRKAOH(i)-1; fOH(i)=fOH(i)-1; fCO23C5(i)=fCO23C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MPRKAOH + hv = C2H5CHO + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MPRKAOH'; 
fMPRKAOH(i)=fMPRKAOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAOOH + OH = CO23C5 + OH';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'DIEKAOOH'; Gstr{i,2} = 'OH'; 
fDIEKAOOH(i)=fDIEKAOOH(i)-1; fOH(i)=fOH(i)-1; fCO23C5(i)=fCO23C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAOOH + OH = DIEKAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'DIEKAOOH'; Gstr{i,2} = 'OH'; 
fDIEKAOOH(i)=fDIEKAOOH(i)-1; fOH(i)=fOH(i)-1; fDIEKAO2(i)=fDIEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAOOH + hv = CH3CHO + C2H5CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'DIEKAOOH'; 
fDIEKAOOH(i)=fDIEKAOOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAOOH + hv = DIEKAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DIEKAOOH'; 
fDIEKAOOH(i)=fDIEKAOOH(i)-1; fDIEKAO(i)=fDIEKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAO = CH3CHO + C2H5CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'DIEKAO'; 
fDIEKAO(i)=fDIEKAO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAOH + OH = CO23C5';
k(:,i) = 1.02e-11;
Gstr{i,1} = 'DIEKAOH'; Gstr{i,2} = 'OH'; 
fDIEKAOH(i)=fDIEKAOH(i)-1; fOH(i)=fOH(i)-1; fCO23C5(i)=fCO23C5(i)+1; 

i=i+1;
Rnames{i} = 'DIEKAOH + hv = CH3CHO + C2H5CO3';
k(:,i) = J22;
Gstr{i,1} = 'DIEKAOH'; 
fDIEKAOH(i)=fDIEKAOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBOOH + OH = CO3C4CHO + OH';
k(:,i) = 5.36e-11;
Gstr{i,1} = 'DIEKBOOH'; Gstr{i,2} = 'OH'; 
fDIEKBOOH(i)=fDIEKBOOH(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBOOH + OH = DIEKBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'DIEKBOOH'; Gstr{i,2} = 'OH'; 
fDIEKBOOH(i)=fDIEKBOOH(i)-1; fOH(i)=fOH(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBOOH + hv = DIEKBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DIEKBOOH'; 
fDIEKBOOH(i)=fDIEKBOOH(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBOOH + hv = DIEKBO + OH';
k(:,i) = J22;
Gstr{i,1} = 'DIEKBOOH'; 
fDIEKBOOH(i)=fDIEKBOOH(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBNO3 + OH = CO3C4CHO + NO2';
k(:,i) = 2.13e-12;
Gstr{i,1} = 'DIEKBNO3'; Gstr{i,2} = 'OH'; 
fDIEKBNO3(i)=fDIEKBNO3(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBNO3 + hv = DIEKBO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'DIEKBNO3'; 
fDIEKBNO3(i)=fDIEKBNO3(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBNO3 + hv = DIEKBO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'DIEKBNO3'; 
fDIEKBNO3(i)=fDIEKBNO3(i)-1; fDIEKBO(i)=fDIEKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DIEKBO = HOCO3C54O2';
k(:,i) = 8.40e10.*exp(-2567./T);
Gstr{i,1} = 'DIEKBO'; 
fDIEKBO(i)=fDIEKBO(i)-1; fHOCO3C54O2(i)=fHOCO3C54O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C5 + OH = CO3C4CHO + HO2';
k(:,i) = 1.46e-11;
Gstr{i,1} = 'HO1CO3C5'; Gstr{i,2} = 'OH'; 
fHO1CO3C5(i)=fHO1CO3C5(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C5 + hv = C2H5CO3 + HOCH2CH2O2';
k(:,i) = J22;
Gstr{i,1} = 'HO1CO3C5'; 
fHO1CO3C5(i)=fHO1CO3C5(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5OOH + hv = HO3C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C5OOH'; 
fHO3C5OOH(i)=fHO3C5OOH(i)-1; fHO3C5O(i)=fHO3C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5OOH = HO3C4CHO + OH';
k(:,i) = 2.28e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5OOH'; 
fOH(i)=fOH(i)-1; fHO3C5OOH(i)=fHO3C5OOH(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5OOH = HO3C5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5OOH'; 
fOH(i)=fOH(i)-1; fHO3C5OOH(i)=fHO3C5OOH(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5NO3 + hv = HO3C5O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO3C5NO3'; 
fHO3C5NO3(i)=fHO3C5NO3(i)-1; fHO3C5O(i)=fHO3C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5NO3 = HO3C4CHO + NO2';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5NO3'; 
fOH(i)=fOH(i)-1; fHO3C5NO3(i)=fHO3C5NO3(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5O = HO13C5O2';
k(:,i) = 2.03e11.*exp(-3430./T);
Gstr{i,1} = 'HO3C5O'; 
fHO3C5O(i)=fHO3C5O(i)-1; fHO13C5O2(i)=fHO13C5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C5 = HO1CO3C5 + HO2';
k(:,i) = 1.61e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C5'; 
fOH(i)=fOH(i)-1; fHO13C5(i)=fHO13C5(i)-1; fHO1CO3C5(i)=fHO1CO3C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C53OH2OOH + OH = MPRKAOH + OH';
k(:,i) = 3.19e-11;
Gstr{i,1} = 'C53OH2OOH'; Gstr{i,2} = 'OH'; 
fC53OH2OOH(i)=fC53OH2OOH(i)-1; fOH(i)=fOH(i)-1; fMPRKAOH(i)=fMPRKAOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C53OH2OOH + OH = PE2ENEBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C53OH2OOH'; Gstr{i,2} = 'OH'; 
fC53OH2OOH(i)=fC53OH2OOH(i)-1; fOH(i)=fOH(i)-1; fPE2ENEBO2(i)=fPE2ENEBO2(i)+1; 

i=i+1;
Rnames{i} = 'C53OH2OOH + hv = PE2ENEBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C53OH2OOH'; 
fC53OH2OOH(i)=fC53OH2OOH(i)-1; fPE2ENEBO(i)=fPE2ENEBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBNO3 + OH = MPRKAOH + NO2';
k(:,i) = 3.25e-12;
Gstr{i,1} = 'PE2ENEBNO3'; Gstr{i,2} = 'OH'; 
fPE2ENEBNO3(i)=fPE2ENEBNO3(i)-1; fOH(i)=fOH(i)-1; fMPRKAOH(i)=fMPRKAOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE2ENEBO = CH3CHO + C2H5CHO + HO2';
k(:,i) = 2.00e14.*exp(-4714./T);
Gstr{i,1} = 'PE2ENEBO'; 
fPE2ENEBO(i)=fPE2ENEBO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C523OH + OH = DIEKAOH + HO2';
k(:,i) = 2.14e-11;
Gstr{i,1} = 'C523OH'; Gstr{i,2} = 'OH'; 
fC523OH(i)=fC523OH(i)-1; fOH(i)=fOH(i)-1; fDIEKAOH(i)=fDIEKAOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6OOH + hv = HO1C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C6OOH'; 
fHO1C6OOH(i)=fHO1C6OOH(i)-1; fHO1C6O(i)=fHO1C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C6OOH = HO1CO4C6 + OH';
k(:,i) = 3.68e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C6OOH'; 
fOH(i)=fOH(i)-1; fHO1C6OOH(i)=fHO1C6OOH(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6NO3 + hv = HO1C6O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO1C6NO3'; 
fHO1C6NO3(i)=fHO1C6NO3(i)-1; fHO1C6O(i)=fHO1C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1C6NO3 = HO1CO4C6 + NO2';
k(:,i) = 6.28e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1C6NO3'; 
fOH(i)=fOH(i)-1; fHO1C6NO3(i)=fHO1C6NO3(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C6O = HO3C5CHO + HO2';
k(:,i) = 8.74e11.*exp(-3430./T);
Gstr{i,1} = 'HO1C6O'; 
fHO1C6O(i)=fHO1C6O(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO14C6 = HO1CO4C6 + HO2';
k(:,i) = 1.87e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO14C6'; 
fOH(i)=fOH(i)-1; fHO14C6(i)=fHO14C6(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO4C6 + hv = C2H5CO3 + HO1C3O2';
k(:,i) = J22.*0.5;
Gstr{i,1} = 'HO1CO4C6'; 
fHO1CO4C6(i)=fHO1CO4C6(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO4C6 + hv = C2H5O2 + HOC3H6CO3';
k(:,i) = J22.*0.5;
Gstr{i,1} = 'HO1CO4C6'; 
fHO1CO4C6(i)=fHO1CO4C6(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO4C6 = C63O2';
k(:,i) = 1.07e-11.*0.527;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO4C6'; 
fOH(i)=fOH(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)-1; fC63O2(i)=fC63O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO4C6 = CO3C5CHO + HO2';
k(:,i) = 1.07e-11.*0.473;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO4C6'; 
fOH(i)=fOH(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)-1; fCO3C5CHO(i)=fCO3C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O2 + HO2 = BU1ENO3OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BU1ENO3O2'; Gstr{i,2} = 'HO2'; 
fBU1ENO3O2(i)=fBU1ENO3O2(i)-1; fHO2(i)=fHO2(i)-1; fBU1ENO3OOH(i)=fBU1ENO3OOH(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O2 + NO = BU1ENO3O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'BU1ENO3O2'; Gstr{i,2} = 'NO'; 
fBU1ENO3O2(i)=fBU1ENO3O2(i)-1; fNO(i)=fNO(i)-1; fBU1ENO3O(i)=fBU1ENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O2 + NO3 = BU1ENO3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BU1ENO3O2'; Gstr{i,2} = 'NO3'; 
fBU1ENO3O2(i)=fBU1ENO3O2(i)-1; fNO3(i)=fNO3(i)-1; fBU1ENO3O(i)=fBU1ENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O2 + RO2 = BU1ENO3O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'BU1ENO3O2'; Gstr{i,2} = 'RO2';
fBU1ENO3O2(i)=fBU1ENO3O2(i)-1; fBU1ENO3O(i)=fBU1ENO3O(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O2 + RO2 = CO3C4NO3';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'BU1ENO3O2'; Gstr{i,2} = 'RO2';
fBU1ENO3O2(i)=fBU1ENO3O2(i)-1; fCO3C4NO3(i)=fCO3C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O2 + RO2 = HO3C4NO3';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'BU1ENO3O2'; Gstr{i,2} = 'RO2';
fBU1ENO3O2(i)=fBU1ENO3O2(i)-1; fHO3C4NO3(i)=fHO3C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O2 + HO2 = C43NO34OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C43NO34O2'; Gstr{i,2} = 'HO2'; 
fC43NO34O2(i)=fC43NO34O2(i)-1; fHO2(i)=fHO2(i)-1; fC43NO34OOH(i)=fC43NO34OOH(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O2 + NO = C43NO34O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C43NO34O2'; Gstr{i,2} = 'NO'; 
fC43NO34O2(i)=fC43NO34O2(i)-1; fNO(i)=fNO(i)-1; fC43NO34O(i)=fC43NO34O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O2 + NO3 = C43NO34O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C43NO34O2'; Gstr{i,2} = 'NO3'; 
fC43NO34O2(i)=fC43NO34O2(i)-1; fNO3(i)=fNO3(i)-1; fC43NO34O(i)=fC43NO34O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O2 + RO2 = BUTAL2NO3';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C43NO34O2'; Gstr{i,2} = 'RO2';
fC43NO34O2(i)=fC43NO34O2(i)-1; fBUTAL2NO3(i)=fBUTAL2NO3(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O2 + RO2 = C43NO34O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'C43NO34O2'; Gstr{i,2} = 'RO2';
fC43NO34O2(i)=fC43NO34O2(i)-1; fC43NO34O(i)=fC43NO34O(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O2 + RO2 = NBUTOLANO3';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C43NO34O2'; Gstr{i,2} = 'RO2';
fC43NO34O2(i)=fC43NO34O2(i)-1; fNBUTOLANO3(i)=fNBUTOLANO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOOA = C2H5CHOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'C2H5CHOOA'; 
fC2H5CHOOA(i)=fC2H5CHOOA(i)-1; fC2H5CHOO(i)=fC2H5CHOO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOOA = C2H5O2 + CO + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'C2H5CHOOA'; 
fC2H5CHOOA(i)=fC2H5CHOOA(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOOA = C2H5O2 + HO2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'C2H5CHOOA'; 
fC2H5CHOOA(i)=fC2H5CHOOA(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOOA = C2H6';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'C2H5CHOOA'; 
fC2H5CHOOA(i)=fC2H5CHOOA(i)-1; fC2H6(i)=fC2H6(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + HO2 = HO3C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'HO2'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHO3C4OOH(i)=fHO3C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + NO = HO3C4NO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'NO'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHO3C4NO3(i)=fHO3C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + NO = HO3C4O + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'NO'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + NO3 = HO3C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'NO3'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + RO2 = HO3C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'RO2';
fHO3C4O2(i)=fHO3C4O2(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + RO2 = HO3C4O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'RO2';
fHO3C4O2(i)=fHO3C4O2(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + RO2 = NBUTOLAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'RO2';
fHO3C4O2(i)=fHO3C4O2(i)-1; fNBUTOLAOH(i)=fNBUTOLAOH(i)+1; 

i=i+1;
Rnames{i} = 'C5H11CO3H + hv = PEAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5H11CO3H'; 
fC5H11CO3H(i)=fC5H11CO3H(i)-1; fPEAO2(i)=fPEAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H11CO3H = C5H11CO3';
k(:,i) = 1.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H11CO3H'; 
fOH(i)=fOH(i)-1; fC5H11CO3H(i)=fC5H11CO3H(i)-1; fC5H11CO3(i)=fC5H11CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + PHXN = C4H9CHO + CO + NO2';
k(:,i) = 5.00e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PHXN'; 
fOH(i)=fOH(i)-1; fPHXN(i)=fPHXN(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHXN = C5H11CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PHXN'; 
fPHXN(i)=fPHXN(i)-1; fC5H11CO3(i)=fC5H11CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6OOH + hv = HO2C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C6OOH'; 
fHO2C6OOH(i)=fHO2C6OOH(i)-1; fHO2C6O(i)=fHO2C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C6OOH = HO2CO5C6 + OH';
k(:,i) = 3.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C6OOH'; 
fOH(i)=fOH(i)-1; fHO2C6OOH(i)=fHO2C6OOH(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6NO3 + hv = HO2C6O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO2C6NO3'; 
fHO2C6NO3(i)=fHO2C6NO3(i)-1; fHO2C6O(i)=fHO2C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C6NO3 = HO2CO5C6 + NO2';
k(:,i) = 1.03e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C6NO3'; 
fOH(i)=fOH(i)-1; fHO2C6NO3(i)=fHO2C6NO3(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C6O = HO2CO5C6 + HO2';
k(:,i) = 4.37e11.*exp(-2945./T);
Gstr{i,1} = 'HO2C6O'; 
fHO2C6O(i)=fHO2C6O(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO25C6 = HO2CO5C6 + HO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO25C6'; 
fOH(i)=fOH(i)-1; fHO25C6(i)=fHO25C6(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO5C6 + hv = CH3CO3 + HO2C4O2';
k(:,i) = J22;
Gstr{i,1} = 'HO2CO5C6'; 
fHO2CO5C6(i)=fHO2CO5C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2CO5C6 = C61O2';
k(:,i) = 1.39e-11.*0.349;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2CO5C6'; 
fOH(i)=fOH(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)-1; fC61O2(i)=fC61O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2CO5C6 = CO25C6 + HO2';
k(:,i) = 1.39e-11.*0.651;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2CO5C6'; 
fOH(i)=fOH(i)-1; fHO2CO5C6(i)=fHO2CO5C6(i)-1; fCO25C6(i)=fCO25C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAOOH + OH = CO24C6 + OH';
k(:,i) = 1.37e-10;
Gstr{i,1} = 'HEX2ONAOOH'; Gstr{i,2} = 'OH'; 
fHEX2ONAOOH(i)=fHEX2ONAOOH(i)-1; fOH(i)=fOH(i)-1; fCO24C6(i)=fCO24C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAOOH + OH = HEX2ONAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX2ONAOOH'; Gstr{i,2} = 'OH'; 
fHEX2ONAOOH(i)=fHEX2ONAOOH(i)-1; fOH(i)=fOH(i)-1; fHEX2ONAO2(i)=fHEX2ONAO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAOOH + hv = HEX2ONAO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONAOOH'; 
fHEX2ONAOOH(i)=fHEX2ONAOOH(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAOOH + hv = HEX2ONAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX2ONAOOH'; 
fHEX2ONAOOH(i)=fHEX2ONAOOH(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONANO3 + OH = CO24C6 + NO2';
k(:,i) = 2.61e-12;
Gstr{i,1} = 'HEX2ONANO3'; Gstr{i,2} = 'OH'; 
fHEX2ONANO3(i)=fHEX2ONANO3(i)-1; fOH(i)=fOH(i)-1; fCO24C6(i)=fCO24C6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONANO3 + hv = HEX2ONAO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONANO3'; 
fHEX2ONANO3(i)=fHEX2ONANO3(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONANO3 + hv = HEX2ONAO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HEX2ONANO3'; 
fHEX2ONANO3(i)=fHEX2ONANO3(i)-1; fHEX2ONAO(i)=fHEX2ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONAO = CO2HOC61O2';
k(:,i) = 1.30e11.*exp(-4127./T);
Gstr{i,1} = 'HEX2ONAO'; 
fHEX2ONAO(i)=fHEX2ONAO(i)-1; fCO2HOC61O2(i)=fCO2HOC61O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6 + OH = CO24C6O2';
k(:,i) = 1.86e-12;
Gstr{i,1} = 'CO24C6'; Gstr{i,2} = 'OH'; 
fCO24C6(i)=fCO24C6(i)-1; fOH(i)=fOH(i)-1; fCO24C6O2(i)=fCO24C6O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6 + hv = CH3CO3 + MEKCO2';
k(:,i) = J22;
Gstr{i,1} = 'CO24C6'; 
fCO24C6(i)=fCO24C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6 + hv = CH3COCH2O2 + C2H5CO3';
k(:,i) = J22;
Gstr{i,1} = 'CO24C6'; 
fCO24C6(i)=fCO24C6(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2HO4C6 + OH = CO24C6 + HO2';
k(:,i) = 3.75e-11;
Gstr{i,1} = 'CO2HO4C6'; Gstr{i,2} = 'OH'; 
fCO2HO4C6(i)=fCO2HO4C6(i)-1; fOH(i)=fOH(i)-1; fCO24C6(i)=fCO24C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2HO4C6 + hv = CH3CO3 + HO3C4O2';
k(:,i) = J22;
Gstr{i,1} = 'CO2HO4C6'; 
fCO2HO4C6(i)=fCO2HO4C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBOOH + OH = CO25C6 + OH';
k(:,i) = 3.66e-11;
Gstr{i,1} = 'HEX2ONBOOH'; Gstr{i,2} = 'OH'; 
fHEX2ONBOOH(i)=fHEX2ONBOOH(i)-1; fOH(i)=fOH(i)-1; fCO25C6(i)=fCO25C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBOOH + OH = HEX2ONBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX2ONBOOH'; Gstr{i,2} = 'OH'; 
fHEX2ONBOOH(i)=fHEX2ONBOOH(i)-1; fOH(i)=fOH(i)-1; fHEX2ONBO2(i)=fHEX2ONBO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBOOH + hv = HEX2ONBO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONBOOH'; 
fHEX2ONBOOH(i)=fHEX2ONBOOH(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBOOH + hv = HEX2ONBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX2ONBOOH'; 
fHEX2ONBOOH(i)=fHEX2ONBOOH(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBNO3 + OH = CO25C6 + NO2';
k(:,i) = 2.51e-12;
Gstr{i,1} = 'HEX2ONBNO3'; Gstr{i,2} = 'OH'; 
fHEX2ONBNO3(i)=fHEX2ONBNO3(i)-1; fOH(i)=fOH(i)-1; fCO25C6(i)=fCO25C6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBNO3 + hv = HEX2ONBO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONBNO3'; 
fHEX2ONBNO3(i)=fHEX2ONBNO3(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBNO3 + hv = HEX2ONBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HEX2ONBNO3'; 
fHEX2ONBNO3(i)=fHEX2ONBNO3(i)-1; fHEX2ONBO(i)=fHEX2ONBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO = CH3CHO + MEKAO2';
k(:,i) = 2.70e14.*exp(-7398./T);
Gstr{i,1} = 'HEX2ONBO'; 
fHEX2ONBO(i)=fHEX2ONBO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONBO = CO25C6 + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'HEX2ONBO'; 
fHEX2ONBO(i)=fHEX2ONBO(i)-1; fCO25C6(i)=fCO25C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6 + hv = CH3CO3 + MEKAO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C6'; 
fCO25C6(i)=fCO25C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C6 = CO25C6O2';
k(:,i) = 5.67e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C6'; 
fOH(i)=fOH(i)-1; fCO25C6(i)=fCO25C6(i)-1; fCO25C6O2(i)=fCO25C6O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCOOH + OH = CO23C6 + OH';
k(:,i) = 2.94e-11;
Gstr{i,1} = 'HEX2ONCOOH'; Gstr{i,2} = 'OH'; 
fHEX2ONCOOH(i)=fHEX2ONCOOH(i)-1; fOH(i)=fOH(i)-1; fCO23C6(i)=fCO23C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCOOH + OH = HEX2ONCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX2ONCOOH'; Gstr{i,2} = 'OH'; 
fHEX2ONCOOH(i)=fHEX2ONCOOH(i)-1; fOH(i)=fOH(i)-1; fHEX2ONCO2(i)=fHEX2ONCO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCOOH + hv = CH3CO3 + C3H7CHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONCOOH'; 
fHEX2ONCOOH(i)=fHEX2ONCOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC3H7CHO(i)=fC3H7CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCOOH + hv = HEX2ONCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX2ONCOOH'; 
fHEX2ONCOOH(i)=fHEX2ONCOOH(i)-1; fHEX2ONCO(i)=fHEX2ONCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONCO = C3H7CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'HEX2ONCO'; 
fHEX2ONCO(i)=fHEX2ONCO(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO23C6 + OH = CO23C65O2';
k(:,i) = 4.81e-12;
Gstr{i,1} = 'CO23C6'; Gstr{i,2} = 'OH'; 
fCO23C6(i)=fCO23C6(i)-1; fOH(i)=fOH(i)-1; fCO23C65O2(i)=fCO23C65O2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C6 + hv = CH3CO3 + C3H7CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C6'; 
fCO23C6(i)=fCO23C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2HO3C6 + OH = CO23C6';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'CO2HO3C6'; Gstr{i,2} = 'OH'; 
fCO2HO3C6(i)=fCO2HO3C6(i)-1; fOH(i)=fOH(i)-1; fCO23C6(i)=fCO23C6(i)+1; 

i=i+1;
Rnames{i} = 'CO2HO3C6 + hv = CH3CO3 + C3H7CHO';
k(:,i) = J22;
Gstr{i,1} = 'CO2HO3C6'; 
fCO2HO3C6(i)=fCO2HO3C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC3H7CHO(i)=fC3H7CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6OOH + hv = HO3C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C6OOH'; 
fHO3C6OOH(i)=fHO3C6OOH(i)-1; fHO3C6O(i)=fHO3C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C6OOH = HO3C5CHO + OH';
k(:,i) = 2.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C6OOH'; 
fOH(i)=fOH(i)-1; fHO3C6OOH(i)=fHO3C6OOH(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C6OOH = HO3C6O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C6OOH'; 
fOH(i)=fOH(i)-1; fHO3C6OOH(i)=fHO3C6OOH(i)-1; fHO3C6O2(i)=fHO3C6O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6NO3 + hv = HO3C6O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO3C6NO3'; 
fHO3C6NO3(i)=fHO3C6NO3(i)-1; fHO3C6O(i)=fHO3C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C6NO3 = HO3C5CHO + NO2';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C6NO3'; 
fOH(i)=fOH(i)-1; fHO3C6NO3(i)=fHO3C6NO3(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C6O = HO1CO4C6 + HO2';
k(:,i) = 5.55e11.*exp(-2945./T);
Gstr{i,1} = 'HO3C6O'; 
fHO3C6O(i)=fHO3C6O(i)-1; fHO1CO4C6(i)=fHO1CO4C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CHO + hv = HO3C5O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HO3C5CHO'; 
fHO3C5CHO(i)=fHO3C5CHO(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HO3C5CHO = HO3C5CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO3C5CHO'; 
fNO3(i)=fNO3(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)-1; fHO3C5CO3(i)=fHO3C5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5CHO = CO3C5CHO + HO2';
k(:,i) = 3.78e-11.*0.331;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5CHO'; 
fOH(i)=fOH(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)-1; fCO3C5CHO(i)=fCO3C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5CHO = HO3C5CO3';
k(:,i) = 3.78e-11.*0.669;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5CHO'; 
fOH(i)=fOH(i)-1; fHO3C5CHO(i)=fHO3C5CHO(i)-1; fHO3C5CO3(i)=fHO3C5CO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAOOH + OH = CO24C6 + OH';
k(:,i) = 1.07e-10;
Gstr{i,1} = 'HEX3ONAOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONAOOH(i)=fHEX3ONAOOH(i)-1; fOH(i)=fOH(i)-1; fCO24C6(i)=fCO24C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAOOH + OH = HEX3ONAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX3ONAOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONAOOH(i)=fHEX3ONAOOH(i)-1; fOH(i)=fOH(i)-1; fHEX3ONAO2(i)=fHEX3ONAO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAOOH + hv = HEX3ONAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX3ONAOOH'; 
fHEX3ONAOOH(i)=fHEX3ONAOOH(i)-1; fHEX3ONAO(i)=fHEX3ONAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAOOH + hv = IC3H7O2 + C2H5CO3';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONAOOH'; 
fHEX3ONAOOH(i)=fHEX3ONAOOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONANO3 + OH = CO24C6 + NO2';
k(:,i) = 2.96e-12;
Gstr{i,1} = 'HEX3ONANO3'; Gstr{i,2} = 'OH'; 
fHEX3ONANO3(i)=fHEX3ONANO3(i)-1; fOH(i)=fOH(i)-1; fCO24C6(i)=fCO24C6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONANO3 + hv = HEX3ONAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HEX3ONANO3'; 
fHEX3ONANO3(i)=fHEX3ONANO3(i)-1; fHEX3ONAO(i)=fHEX3ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONANO3 + hv = HEX3ONAO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONANO3'; 
fHEX3ONANO3(i)=fHEX3ONANO3(i)-1; fHEX3ONAO(i)=fHEX3ONAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAO = C6CO3OH5O2';
k(:,i) = 8.40e10.*exp(-2567./T);
Gstr{i,1} = 'HEX3ONAO'; 
fHEX3ONAO(i)=fHEX3ONAO(i)-1; fC6CO3OH5O2(i)=fC6CO3OH5O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAOH + OH = CO24C6 + HO2';
k(:,i) = 2.97e-11;
Gstr{i,1} = 'HEX3ONAOH'; Gstr{i,2} = 'OH'; 
fHEX3ONAOH(i)=fHEX3ONAOH(i)-1; fOH(i)=fOH(i)-1; fCO24C6(i)=fCO24C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONAOH + hv = IPROPOLO2 + C2H5CO3';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONAOH'; 
fHEX3ONAOH(i)=fHEX3ONAOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBOOH + OH = C6CO34 + OH';
k(:,i) = 2.84e-11;
Gstr{i,1} = 'HEX3ONBOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONBOOH(i)=fHEX3ONBOOH(i)-1; fOH(i)=fOH(i)-1; fC6CO34(i)=fC6CO34(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBOOH + OH = HEX3ONBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX3ONBOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONBOOH(i)=fHEX3ONBOOH(i)-1; fOH(i)=fOH(i)-1; fHEX3ONBO2(i)=fHEX3ONBO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBOOH + hv = C2H5CHO + C2H5CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONBOOH'; 
fHEX3ONBOOH(i)=fHEX3ONBOOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBOOH + hv = HEX3ONBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX3ONBOOH'; 
fHEX3ONBOOH(i)=fHEX3ONBOOH(i)-1; fHEX3ONBO(i)=fHEX3ONBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONBO = C2H5CHO + C2H5CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'HEX3ONBO'; 
fHEX3ONBO(i)=fHEX3ONBO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34 + OH = C6CO34O2';
k(:,i) = 2.54e-12;
Gstr{i,1} = 'C6CO34'; Gstr{i,2} = 'OH'; 
fC6CO34(i)=fC6CO34(i)-1; fOH(i)=fOH(i)-1; fC6CO34O2(i)=fC6CO34O2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34 + hv = C2H5CO3 + C2H5CO3';
k(:,i) = J35;
Gstr{i,1} = 'C6CO34'; 
fC6CO34(i)=fC6CO34(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3HO4 + OH = C6CO34 + HO2';
k(:,i) = 1.13e-11;
Gstr{i,1} = 'C6CO3HO4'; Gstr{i,2} = 'OH'; 
fC6CO3HO4(i)=fC6CO3HO4(i)-1; fOH(i)=fOH(i)-1; fC6CO34(i)=fC6CO34(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3HO4 + hv = C2H5CO3 + C2H5CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C6CO3HO4'; 
fC6CO3HO4(i)=fC6CO3HO4(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCOOH + OH = CO23C6 + OH';
k(:,i) = 2.34e-11;
Gstr{i,1} = 'HEX3ONCOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONCOOH(i)=fHEX3ONCOOH(i)-1; fOH(i)=fOH(i)-1; fCO23C6(i)=fCO23C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCOOH + OH = HEX3ONCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX3ONCOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONCOOH(i)=fHEX3ONCOOH(i)-1; fOH(i)=fOH(i)-1; fHEX3ONCO2(i)=fHEX3ONCO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCOOH + hv = CH3CHO + C3H7CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONCOOH'; 
fHEX3ONCOOH(i)=fHEX3ONCOOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC3H7CO3(i)=fC3H7CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCOOH + hv = HEX3ONCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX3ONCOOH'; 
fHEX3ONCOOH(i)=fHEX3ONCOOH(i)-1; fHEX3ONCO(i)=fHEX3ONCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCO = CH3CHO + C3H7CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'HEX3ONCO'; 
fHEX3ONCO(i)=fHEX3ONCO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCOH + OH = CO23C6 + HO2';
k(:,i) = 1.01e-11;
Gstr{i,1} = 'HEX3ONCOH'; Gstr{i,2} = 'OH'; 
fHEX3ONCOH(i)=fHEX3ONCOH(i)-1; fOH(i)=fOH(i)-1; fCO23C6(i)=fCO23C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONCOH + hv = C3H7CO3 + CH3CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONCOH'; 
fHEX3ONCOH(i)=fHEX3ONCOH(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDOOH + OH = C3COCCHO + OH';
k(:,i) = 5.34e-11;
Gstr{i,1} = 'HEX3ONDOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONDOOH(i)=fHEX3ONDOOH(i)-1; fOH(i)=fOH(i)-1; fC3COCCHO(i)=fC3COCCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDOOH + OH = HEX3ONDO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HEX3ONDOOH'; Gstr{i,2} = 'OH'; 
fHEX3ONDOOH(i)=fHEX3ONDOOH(i)-1; fOH(i)=fOH(i)-1; fHEX3ONDO2(i)=fHEX3ONDO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDOOH + hv = HEX3ONDO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HEX3ONDOOH'; 
fHEX3ONDOOH(i)=fHEX3ONDOOH(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDOOH + hv = HEX3ONDO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONDOOH'; 
fHEX3ONDOOH(i)=fHEX3ONDOOH(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDNO3 + OH = C3COCCHO + NO2';
k(:,i) = 3.40e-12;
Gstr{i,1} = 'HEX3ONDNO3'; Gstr{i,2} = 'OH'; 
fHEX3ONDNO3(i)=fHEX3ONDNO3(i)-1; fOH(i)=fOH(i)-1; fC3COCCHO(i)=fC3COCCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDNO3 + hv = HEX3ONDO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HEX3ONDNO3'; 
fHEX3ONDNO3(i)=fHEX3ONDNO3(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDNO3 + hv = HEX3ONDO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONDNO3'; 
fHEX3ONDNO3(i)=fHEX3ONDNO3(i)-1; fHEX3ONDO(i)=fHEX3ONDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDO = C6HO1CO3O2';
k(:,i) = 8.40e10.*exp(-2567./T);
Gstr{i,1} = 'HEX3ONDO'; 
fHEX3ONDO(i)=fHEX3ONDO(i)-1; fC6HO1CO3O2(i)=fC6HO1CO3O2(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCHO + NO3 = C3COCCO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C3COCCHO'; Gstr{i,2} = 'NO3'; 
fC3COCCHO(i)=fC3COCCHO(i)-1; fNO3(i)=fNO3(i)-1; fC3COCCO3(i)=fC3COCCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCHO + OH = C3COCCO3';
k(:,i) = 7.61e-11;
Gstr{i,1} = 'C3COCCHO'; Gstr{i,2} = 'OH'; 
fC3COCCHO(i)=fC3COCCHO(i)-1; fOH(i)=fOH(i)-1; fC3COCCO3(i)=fC3COCCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCHO + hv = C3H7CO3 + HCOCH2O2';
k(:,i) = J22;
Gstr{i,1} = 'C3COCCHO'; 
fC3COCCHO(i)=fC3COCCHO(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCHO + hv = PEN2ONE1O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C3COCCHO'; 
fC3COCCHO(i)=fC3COCCHO(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDOH + OH = C3COCCHO + HO2';
k(:,i) = 1.81e-11;
Gstr{i,1} = 'HEX3ONDOH'; Gstr{i,2} = 'OH'; 
fHEX3ONDOH(i)=fHEX3ONDOH(i)-1; fOH(i)=fOH(i)-1; fC3COCCHO(i)=fC3COCCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONDOH + hv = HOC2H4CO3 + NC3H7O2';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONDOH'; 
fHEX3ONDOH(i)=fHEX3ONDOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76OOH + hv = HO3C76O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C76OOH'; 
fHO3C76OOH(i)=fHO3C76OOH(i)-1; fHO3C76O(i)=fHO3C76O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C76OOH = HO3CO6C7 + OH';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C76OOH'; 
fOH(i)=fOH(i)-1; fHO3C76OOH(i)=fHO3C76OOH(i)-1; fHO3CO6C7(i)=fHO3CO6C7(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76NO3 + hv = HO3C76O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO3C76NO3'; 
fHO3C76NO3(i)=fHO3C76NO3(i)-1; fHO3C76O(i)=fHO3C76O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C76NO3 = HO3CO6C7 + NO2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C76NO3'; 
fOH(i)=fOH(i)-1; fHO3C76NO3(i)=fHO3C76NO3(i)-1; fHO3CO6C7(i)=fHO3CO6C7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C76O = HO2CO5C7 + HO2';
k(:,i) = 5.55e11.*exp(-2945./T);
Gstr{i,1} = 'HO3C76O'; 
fHO3C76O(i)=fHO3C76O(i)-1; fHO2CO5C7(i)=fHO2CO5C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO25C7 = HO2CO5C7 + HO2';
k(:,i) = 2.32e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO25C7'; 
fOH(i)=fOH(i)-1; fHO25C7(i)=fHO25C7(i)-1; fHO2CO5C7(i)=fHO2CO5C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3CO6C7 + hv = HO3C5O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'HO3CO6C7'; 
fHO3CO6C7(i)=fHO3CO6C7(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3CO6C7 = CO25C7 + HO2';
k(:,i) = 1.72e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3CO6C7'; 
fOH(i)=fOH(i)-1; fHO3CO6C7(i)=fHO3CO6C7(i)-1; fCO25C7(i)=fCO25C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75OOH + hv = CO3C75O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO3C75OOH'; 
fCO3C75OOH(i)=fCO3C75OOH(i)-1; fCO3C75O(i)=fCO3C75O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75OOH + hv = CO3C75O + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO3C75OOH'; 
fCO3C75OOH(i)=fCO3C75OOH(i)-1; fCO3C75O(i)=fCO3C75O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C75OOH = CO3C75O2';
k(:,i) = 1.42e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C75OOH'; 
fOH(i)=fOH(i)-1; fCO3C75OOH(i)=fCO3C75OOH(i)-1; fCO3C75O2(i)=fCO3C75O2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C75O = C71O2';
k(:,i) = 1.45e11.*exp(-3430./T);
Gstr{i,1} = 'CO3C75O'; 
fCO3C75O(i)=fCO3C75O(i)-1; fC71O2(i)=fC71O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86OOH + hv = HO3C86O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C86OOH'; 
fHO3C86OOH(i)=fHO3C86OOH(i)-1; fHO3C86O(i)=fHO3C86O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C86OOH = HO3CO6C8 + OH';
k(:,i) = 4.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C86OOH'; 
fOH(i)=fOH(i)-1; fHO3C86OOH(i)=fHO3C86OOH(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86NO3 + hv = HO3C86O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO3C86NO3'; 
fHO3C86NO3(i)=fHO3C86NO3(i)-1; fHO3C86O(i)=fHO3C86O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C86NO3 = HO3CO6C8 + NO2';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C86NO3'; 
fOH(i)=fOH(i)-1; fHO3C86NO3(i)=fHO3C86NO3(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C86O = HO3CO6C8 + HO2';
k(:,i) = 5.55e11.*exp(-2945./T);
Gstr{i,1} = 'HO3C86O'; 
fHO3C86O(i)=fHO3C86O(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO36C8 = HO3CO6C8 + HO2';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO36C8'; 
fOH(i)=fOH(i)-1; fHO36C8(i)=fHO36C8(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3CO6C8 + hv = C2H5CO3 + HO3C5O2';
k(:,i) = J22;
Gstr{i,1} = 'HO3CO6C8'; 
fHO3CO6C8(i)=fHO3CO6C8(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHO3C5O2(i)=fHO3C5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3CO6C8 = C82O2';
k(:,i) = 1.85e-11.*0.304;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3CO6C8'; 
fOH(i)=fOH(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)-1; fC82O2(i)=fC82O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3CO6C8 = CO36C8 + HO2';
k(:,i) = 1.85e-11.*0.696;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3CO6C8'; 
fOH(i)=fOH(i)-1; fHO3CO6C8(i)=fHO3CO6C8(i)-1; fCO36C8(i)=fCO36C8(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85OOH + hv = CO3C85O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO3C85OOH'; 
fCO3C85OOH(i)=fCO3C85OOH(i)-1; fCO3C85O(i)=fCO3C85O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85OOH + hv = CO3C85O + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO3C85OOH'; 
fCO3C85OOH(i)=fCO3C85OOH(i)-1; fCO3C85O(i)=fCO3C85O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C85OOH = CO3C85O2';
k(:,i) = 8.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C85OOH'; 
fOH(i)=fOH(i)-1; fCO3C85OOH(i)=fCO3C85OOH(i)-1; fCO3C85O2(i)=fCO3C85O2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C85O = C81O2';
k(:,i) = 1.15e11.*exp(-3430./T);
Gstr{i,1} = 'CO3C85O'; 
fCO3C85O(i)=fCO3C85O(i)-1; fC81O2(i)=fC81O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO2H + OH = HCHO + NO2';
k(:,i) = 1.68e-13;
Gstr{i,1} = 'NO3CH2CO2H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO2H(i)=fNO3CH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + OH = NO3CH2CO3';
k(:,i) = 3.63e-12;
Gstr{i,1} = 'NO3CH2CO3H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + hv = HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NO3CH2CO3H'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN + OH = HCHO + CO + NO2 + NO2';
k(:,i) = 1.12e-14;
Gstr{i,1} = 'NO3CH2PAN'; Gstr{i,2} = 'OH'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN = NO3CH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NO3CH2PAN'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO2H + OH = CH3CHO + NO2';
k(:,i) = 3.14e-13;
Gstr{i,1} = 'PRNO3CO2H'; Gstr{i,2} = 'OH'; 
fPRNO3CO2H(i)=fPRNO3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3H + OH = PRNO3CO3';
k(:,i) = 3.77e-12;
Gstr{i,1} = 'PRNO3CO3H'; Gstr{i,2} = 'OH'; 
fPRNO3CO3H(i)=fPRNO3CO3H(i)-1; fOH(i)=fOH(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3H + hv = CH3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PRNO3CO3H'; 
fPRNO3CO3H(i)=fPRNO3CO3H(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3PAN + OH = CH3CHO + CO + NO2 + NO2';
k(:,i) = 1.43e-13;
Gstr{i,1} = 'PRNO3PAN'; Gstr{i,2} = 'OH'; 
fPRNO3PAN(i)=fPRNO3PAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3PAN = PRNO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PRNO3PAN'; 
fPRNO3PAN(i)=fPRNO3PAN(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + OH = CH3CHOHCO3';
k(:,i) = 9.34e-12;
Gstr{i,1} = 'IPROPOLPER'; Gstr{i,2} = 'OH'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + hv = CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLPER'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN + OH = CH3CHO + CO + NO2';
k(:,i) = 2.34e-12;
Gstr{i,1} = 'IPROPOLPAN'; Gstr{i,2} = 'OH'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN = CH3CHOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IPROPOLPAN'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + HO2 = BIACETOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'HO2'; 
fBIACETO2(i)=fBIACETO2(i)-1; fHO2(i)=fHO2(i)-1; fBIACETOOH(i)=fBIACETOOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + NO = BIACETO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'NO'; 
fBIACETO2(i)=fBIACETO2(i)-1; fNO(i)=fNO(i)-1; fBIACETO(i)=fBIACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + NO3 = BIACETO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'NO3'; 
fBIACETO2(i)=fBIACETO2(i)-1; fNO3(i)=fNO3(i)-1; fBIACETO(i)=fBIACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + RO2 = BIACETO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fBIACETO(i)=fBIACETO(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + RO2 = BIACETOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + RO2 = CO23C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + HO2 = NBZFUOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'HO2'; 
fNBZFUO2(i)=fNBZFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNBZFUOOH(i)=fNBZFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + NO = NBZFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'NO'; 
fNBZFUO2(i)=fNBZFUO2(i)-1; fNO(i)=fNO(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + NO3 = NBZFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'NO3'; 
fNBZFUO2(i)=fNBZFUO2(i)-1; fNO3(i)=fNO3(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + RO2 = NBZFUO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'RO2';
fNBZFUO2(i)=fNBZFUO2(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOOA = BZFUONOO';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZFUONOOA'; 
fBZFUONOOA(i)=fBZFUONOOA(i)-1; fBZFUONOO(i)=fBZFUONOO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOOA = CO + HCOCH2O2 + OH';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZFUONOOA'; 
fBZFUONOOA(i)=fBZFUONOOA(i)-1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + HO2 = BZFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'HO2'; 
fBZFUO2(i)=fBZFUO2(i)-1; fHO2(i)=fHO2(i)-1; fBZFUOOH(i)=fBZFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + NO = BZFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'NO'; 
fBZFUO2(i)=fBZFUO2(i)-1; fNO(i)=fNO(i)-1; fBZFUO(i)=fBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + NO3 = BZFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'NO3'; 
fBZFUO2(i)=fBZFUO2(i)-1; fNO3(i)=fNO3(i)-1; fBZFUO(i)=fBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + RO2 = BZFUCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'RO2';
fBZFUO2(i)=fBZFUO2(i)-1; fBZFUCO(i)=fBZFUCO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + RO2 = BZFUO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'RO2';
fBZFUO2(i)=fBZFUO2(i)-1; fBZFUO(i)=fBZFUO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + RO2 = BZFUOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'RO2';
fBZFUO2(i)=fBZFUO2(i)-1; fBZFUOH(i)=fBZFUOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO2H + OH = MALDIALCO2';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'MALDALCO2H'; Gstr{i,2} = 'OH'; 
fMALDALCO2H(i)=fMALDALCO2H(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO2H + hv = HCOCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'MALDALCO2H'; 
fMALDALCO2H(i)=fMALDALCO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO2H + hv = HCOCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'MALDALCO2H'; 
fMALDALCO2H(i)=fMALDALCO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO3H + OH = MALDIALCO3';
k(:,i) = 4.00e-11;
Gstr{i,1} = 'MALDALCO3H'; Gstr{i,2} = 'OH'; 
fMALDALCO3H(i)=fMALDALCO3H(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO3H + hv = MALDIALCO2 + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'MALDALCO3H'; 
fMALDALCO3H(i)=fMALDALCO3H(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO2 = GLYOX + HO2 + CO';
k(:,i) = KDEC.*0.40;
Gstr{i,1} = 'MALDIALCO2'; 
fMALDIALCO2(i)=fMALDIALCO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO2 = MALANHY + HO2';
k(:,i) = KDEC.*0.60;
Gstr{i,1} = 'MALDIALCO2'; 
fMALDIALCO2(i)=fMALDIALCO2(i)-1; fMALANHY(i)=fMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALPAN + OH = GLYOX + CO + CO + NO2';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'MALDIALPAN'; Gstr{i,2} = 'OH'; 
fMALDIALPAN(i)=fMALDIALPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALPAN = MALDIALCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MALDIALPAN'; 
fMALDIALPAN(i)=fMALDIALPAN(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO2H + OH = C3DIALO2';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'EPXDLCO2H'; Gstr{i,2} = 'OH'; 
fEPXDLCO2H(i)=fEPXDLCO2H(i)-1; fOH(i)=fOH(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO2H + hv = C3DIALO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'EPXDLCO2H'; 
fEPXDLCO2H(i)=fEPXDLCO2H(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3H + OH = EPXDLCO3';
k(:,i) = 2.62e-11;
Gstr{i,1} = 'EPXDLCO3H'; Gstr{i,2} = 'OH'; 
fEPXDLCO3H(i)=fEPXDLCO3H(i)-1; fOH(i)=fOH(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3H + hv = C3DIALO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'EPXDLCO3H'; 
fEPXDLCO3H(i)=fEPXDLCO3H(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3H + hv = C3DIALO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'EPXDLCO3H'; 
fEPXDLCO3H(i)=fEPXDLCO3H(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLPAN + OH = C33CO + CO + NO2';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'EPXDLPAN'; Gstr{i,2} = 'OH'; 
fEPXDLPAN(i)=fEPXDLPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLPAN = EPXDLCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'EPXDLPAN'; 
fEPXDLPAN(i)=fEPXDLPAN(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALOOH + OH = C33CO + OH';
k(:,i) = 1.44e-10;
Gstr{i,1} = 'C3DIALOOH'; Gstr{i,2} = 'OH'; 
fC3DIALOOH(i)=fC3DIALOOH(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALOOH + hv = C3DIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3DIALOOH'; 
fC3DIALOOH(i)=fC3DIALOOH(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALOOH + hv = GLYOX + CO + HO2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C3DIALOOH'; 
fC3DIALOOH(i)=fC3DIALOOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO = GLYOX + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C3DIALO'; 
fC3DIALO(i)=fC3DIALO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C32OH13CO + OH = HCOCOHCO3';
k(:,i) = 1.36e-10;
Gstr{i,1} = 'C32OH13CO'; Gstr{i,2} = 'OH'; 
fC32OH13CO(i)=fC32OH13CO(i)-1; fOH(i)=fOH(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C32OH13CO + hv = GLYOX + HO2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'C32OH13CO'; 
fC32OH13CO(i)=fC32OH13CO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C33CO + OH = CO + CO + CO + HO2';
k(:,i) = 5.77e-11;
Gstr{i,1} = 'C33CO'; Gstr{i,2} = 'OH'; 
fC33CO(i)=fC33CO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C33CO + hv = CO + HO2 + CO + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C33CO'; 
fC33CO(i)=fC33CO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO2H + hv = HO2 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HCOCO2H'; 
fHCOCO2H(i)=fHCOCO2H(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCO2H = CO + HO2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCO2H'; 
fOH(i)=fOH(i)-1; fHCOCO2H(i)=fHCOCO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + HO2 = GLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'HO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + HO2 = HCOCOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'HO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCOHCO3H(i)=fHCOCOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO = GLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO2 = HCOCOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fHCOCOHPAN(i)=fHCOCOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO3 = GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO3'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + RO2 = GLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'RO2';
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + OH = HOCOC4DIAL + OH';
k(:,i) = 1.22e-10;
Gstr{i,1} = 'MALDIALOOH'; Gstr{i,2} = 'OH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fOH(i)=fOH(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + OH = MALDIALO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MALDIALOOH'; Gstr{i,2} = 'OH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fOH(i)=fOH(i)-1; fMALDIALO2(i)=fMALDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + hv = C32OH13CO + CO + OH + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'MALDIALOOH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + hv = MALDIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MALDIALOOH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO = GLYOX + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MALDIALO'; 
fMALDIALO(i)=fMALDIALO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCOC4DIAL + OH = CO2C4DIAL + HO2';
k(:,i) = 3.67e-11;
Gstr{i,1} = 'HOCOC4DIAL'; Gstr{i,2} = 'OH'; 
fHOCOC4DIAL(i)=fHOCOC4DIAL(i)-1; fOH(i)=fOH(i)-1; fCO2C4DIAL(i)=fCO2C4DIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCOC4DIAL + hv = HCOCOHCO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HOCOC4DIAL'; 
fHOCOC4DIAL(i)=fHOCOC4DIAL(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HOCOC4DIAL + hv = HCOCOHCO3 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOCOC4DIAL'; 
fHOCOC4DIAL(i)=fHOCOC4DIAL(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HOHOC4DIAL + OH = HOCOC4DIAL + HO2';
k(:,i) = 8.13e-11;
Gstr{i,1} = 'HOHOC4DIAL'; Gstr{i,2} = 'OH'; 
fHOHOC4DIAL(i)=fHOHOC4DIAL(i)-1; fOH(i)=fOH(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOHOC4DIAL + hv = C32OH13CO + HO2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'HOHOC4DIAL'; 
fHOHOC4DIAL(i)=fHOHOC4DIAL(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O + NO2 = DNPHEN';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'NPHEN1O'; Gstr{i,2} = 'NO2'; 
fNPHEN1O(i)=fNPHEN1O(i)-1; fNO2(i)=fNO2(i)-1; fDNPHEN(i)=fDNPHEN(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O + O3 = NPHEN1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'NPHEN1O'; Gstr{i,2} = 'O3'; 
fNPHEN1O(i)=fNPHEN1O(i)-1; fO3(i)=fO3(i)-1; fNPHEN1O2(i)=fNPHEN1O2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5OOH + OH = C6H5O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'C6H5OOH'; Gstr{i,2} = 'OH'; 
fC6H5OOH(i)=fC6H5OOH(i)-1; fOH(i)=fOH(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5OOH + hv = C6H5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6H5OOH'; 
fC6H5OOH(i)=fC6H5OOH(i)-1; fC6H5O(i)=fC6H5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NCATECHOL + NO3 = NNCATECO2';
k(:,i) = 2.60e-12;
Gstr{i,1} = 'NCATECHOL'; Gstr{i,2} = 'NO3'; 
fNCATECHOL(i)=fNCATECHOL(i)-1; fNO3(i)=fNO3(i)-1; fNNCATECO2(i)=fNNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECHOL + OH = NCATECO2';
k(:,i) = 3.47e-12;
Gstr{i,1} = 'NCATECHOL'; Gstr{i,2} = 'OH'; 
fNCATECHOL(i)=fNCATECHOL(i)-1; fOH(i)=fOH(i)-1; fNCATECO2(i)=fNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + HO2 = CATEC1OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'HO2'; 
fCATEC1O2(i)=fCATEC1O2(i)-1; fHO2(i)=fHO2(i)-1; fCATEC1OOH(i)=fCATEC1OOH(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + NO = CATEC1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'NO'; 
fCATEC1O2(i)=fCATEC1O2(i)-1; fNO(i)=fNO(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + NO3 = CATEC1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'NO3'; 
fCATEC1O2(i)=fCATEC1O2(i)-1; fNO3(i)=fNO3(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + RO2 = CATEC1O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'RO2';
fCATEC1O2(i)=fCATEC1O2(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'PBZQONE + NO3 = NBZQO2';
k(:,i) = 3.00e-13;
Gstr{i,1} = 'PBZQONE'; Gstr{i,2} = 'NO3'; 
fPBZQONE(i)=fPBZQONE(i)-1; fNO3(i)=fNO3(i)-1; fNBZQO2(i)=fNBZQO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQONE + OH = PBZQO2';
k(:,i) = 4.6e-12;
Gstr{i,1} = 'PBZQONE'; Gstr{i,2} = 'OH'; 
fPBZQONE(i)=fPBZQONE(i)-1; fOH(i)=fOH(i)-1; fPBZQO2(i)=fPBZQO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3H + OH = C6H5CO3';
k(:,i) = 4.66e-12;
Gstr{i,1} = 'C6H5CO3H'; Gstr{i,2} = 'OH'; 
fC6H5CO3H(i)=fC6H5CO3H(i)-1; fOH(i)=fOH(i)-1; fC6H5CO3(i)=fC6H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6H5CO3H + hv = C6H5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6H5CO3H'; 
fC6H5CO3H(i)=fC6H5CO3H(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHCOOH + OH = C6H5O2';
k(:,i) = 1.10e-12;
Gstr{i,1} = 'PHCOOH'; Gstr{i,2} = 'OH'; 
fPHCOOH(i)=fPHCOOH(i)-1; fOH(i)=fOH(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'PBZN + OH = C6H5OOH + CO + NO2';
k(:,i) = 1.06e-12;
Gstr{i,1} = 'PBZN'; Gstr{i,2} = 'OH'; 
fPBZN(i)=fPBZN(i)-1; fOH(i)=fOH(i)-1; fC6H5OOH(i)=fC6H5OOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZN = C6H5CO3 + NO2';
k(:,i) = KBPAN.*0.67;
Gstr{i,1} = 'PBZN'; 
fPBZN(i)=fPBZN(i)-1; fC6H5CO3(i)=fC6H5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14OH + OH = C5CO14CO2';
k(:,i) = 5.44e-11;
Gstr{i,1} = 'C5CO14OH'; Gstr{i,2} = 'OH'; 
fC5CO14OH(i)=fC5CO14OH(i)-1; fOH(i)=fOH(i)-1; fC5CO14CO2(i)=fC5CO14CO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14OH + hv = CH3CO3 + HCOCO2H + HO2 + CO';
k(:,i) = J23;
Gstr{i,1} = 'C5CO14OH'; 
fC5CO14OH(i)=fC5CO14OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14OH + hv = CH3CO3 + HCOCO2H + HO2 + CO';
k(:,i) = J24;
Gstr{i,1} = 'C5CO14OH'; 
fC5CO14OH(i)=fC5CO14OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'PTLQONE + NO3 = NPTLQO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'PTLQONE'; Gstr{i,2} = 'NO3'; 
fPTLQONE(i)=fPTLQONE(i)-1; fNO3(i)=fNO3(i)-1; fNPTLQO2(i)=fNPTLQO2(i)+1; 

i=i+1;
Rnames{i} = 'PTLQONE + OH = PTLQO2';
k(:,i) = 2.3e-11;
Gstr{i,1} = 'PTLQONE'; Gstr{i,2} = 'OH'; 
fPTLQONE(i)=fPTLQONE(i)-1; fOH(i)=fOH(i)-1; fPTLQO2(i)=fPTLQO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1O + NO2 = DNCRES';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'NCRES1O'; Gstr{i,2} = 'NO2'; 
fNCRES1O(i)=fNCRES1O(i)-1; fNO2(i)=fNO2(i)-1; fDNCRES(i)=fDNCRES(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1O + O3 = NCRES1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'NCRES1O'; Gstr{i,2} = 'O3'; 
fNCRES1O(i)=fNCRES1O(i)-1; fO3(i)=fO3(i)-1; fNCRES1O2(i)=fNCRES1O2(i)+1; 

i=i+1;
Rnames{i} = 'OXYL1OOH + OH = OXYL1O2';
k(:,i) = 4.65e-11;
Gstr{i,1} = 'OXYL1OOH'; Gstr{i,2} = 'OH'; 
fOXYL1OOH(i)=fOXYL1OOH(i)-1; fOH(i)=fOH(i)-1; fOXYL1O2(i)=fOXYL1O2(i)+1; 

i=i+1;
Rnames{i} = 'OXYL1OOH + hv = TOL1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'OXYL1OOH'; 
fOXYL1OOH(i)=fOXYL1OOH(i)-1; fTOL1O(i)=fTOL1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECH + NO3 = MNNCATECO2';
k(:,i) = 5.03e-12;
Gstr{i,1} = 'MNCATECH'; Gstr{i,2} = 'NO3'; 
fMNCATECH(i)=fMNCATECH(i)-1; fNO3(i)=fNO3(i)-1; fMNNCATECO2(i)=fMNNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECH + OH = MNCATECO2';
k(:,i) = 6.83e-12;
Gstr{i,1} = 'MNCATECH'; Gstr{i,2} = 'OH'; 
fMNCATECH(i)=fMNCATECH(i)-1; fOH(i)=fOH(i)-1; fMNCATECO2(i)=fMNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1O2 + HO2 = MCATEC1OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'MCATEC1O2'; Gstr{i,2} = 'HO2'; 
fMCATEC1O2(i)=fMCATEC1O2(i)-1; fHO2(i)=fHO2(i)-1; fMCATEC1OOH(i)=fMCATEC1OOH(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1O2 + NO = MCATEC1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MCATEC1O2'; Gstr{i,2} = 'NO'; 
fMCATEC1O2(i)=fMCATEC1O2(i)-1; fNO(i)=fNO(i)-1; fMCATEC1O(i)=fMCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1O2 + NO3 = MCATEC1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MCATEC1O2'; Gstr{i,2} = 'NO3'; 
fMCATEC1O2(i)=fMCATEC1O2(i)-1; fNO3(i)=fNO3(i)-1; fMCATEC1O(i)=fMCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1O2 + RO2 = MCATEC1O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'MCATEC1O2'; Gstr{i,2} = 'RO2';
fMCATEC1O2(i)=fMCATEC1O2(i)-1; fMCATEC1O(i)=fMCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + OH = MC3CODBCO2';
k(:,i) = 4.38e-11;
Gstr{i,1} = 'MC3ODBCO2H'; Gstr{i,2} = 'OH'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fOH(i)=fOH(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + hv = CH3COCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'MC3ODBCO2H'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + hv = CH3COCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'MC3ODBCO2H'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = C5PACALD2';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = MC3CODBCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = MC3ODBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO = MC3CODBCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO(i)=fNO(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO2 = MC3CODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMC3CODBPAN(i)=fMC3CODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO3 = MC3CODBCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO3'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + RO2 = MC3CODBCO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'RO2';
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + RO2 = MC3ODBCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'RO2';
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOOA = MGLYOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'MGLYOOA'; 
fMGLYOOA(i)=fMGLYOOA(i)-1; fMGLYOO(i)=fMGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOOA = OH + CO + CH3CO3';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'MGLYOOA'; 
fMGLYOOA(i)=fMGLYOOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOC = GLYOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'GLYOOC'; 
fGLYOOC(i)=fGLYOOC(i)-1; fGLYOO(i)=fGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOC = OH + HO2 + CO + CO';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'GLYOOC'; 
fGLYOOC(i)=fGLYOOC(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + HO2 = C4MALOHOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'HO2'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fHO2(i)=fHO2(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + NO = C4M2ALOHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'NO'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fNO(i)=fNO(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + NO3 = C4M2ALOHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'NO3'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fNO3(i)=fNO3(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + RO2 = C4M2AL2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'RO2';
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fC4M2AL2OH(i)=fC4M2AL2OH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + RO2 = C4M2ALOHO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'RO2';
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO2 + HO2 = C5DICAROOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C5DICARBO2'; Gstr{i,2} = 'HO2'; 
fC5DICARBO2(i)=fC5DICARBO2(i)-1; fHO2(i)=fHO2(i)-1; fC5DICAROOH(i)=fC5DICAROOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO2 + NO = C5DICARBO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5DICARBO2'; Gstr{i,2} = 'NO'; 
fC5DICARBO2(i)=fC5DICARBO2(i)-1; fNO(i)=fNO(i)-1; fC5DICARBO(i)=fC5DICARBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO2 + NO3 = C5DICARBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5DICARBO2'; Gstr{i,2} = 'NO3'; 
fC5DICARBO2(i)=fC5DICARBO2(i)-1; fNO3(i)=fNO3(i)-1; fC5DICARBO(i)=fC5DICARBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO2 + RO2 = C5134CO2OH';
k(:,i) = 1.40e-12.*0.20;
Gstr{i,1} = 'C5DICARBO2'; Gstr{i,2} = 'RO2';
fC5DICARBO2(i)=fC5DICARBO2(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO2 + RO2 = C514CO23OH';
k(:,i) = 1.40e-12.*0.20;
Gstr{i,1} = 'C5DICARBO2'; Gstr{i,2} = 'RO2';
fC5DICARBO2(i)=fC5DICARBO2(i)-1; fC514CO23OH(i)=fC514CO23OH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO2 + RO2 = C5DICARBO';
k(:,i) = 1.40e-12.*0.60;
Gstr{i,1} = 'C5DICARBO2'; Gstr{i,2} = 'RO2';
fC5DICARBO2(i)=fC5DICARBO2(i)-1; fC5DICARBO(i)=fC5DICARBO(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUO2 + HO2 = NTLFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NTLFUO2'; Gstr{i,2} = 'HO2'; 
fNTLFUO2(i)=fNTLFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNTLFUOOH(i)=fNTLFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUO2 + NO = NTLFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NTLFUO2'; Gstr{i,2} = 'NO'; 
fNTLFUO2(i)=fNTLFUO2(i)-1; fNO(i)=fNO(i)-1; fNTLFUO(i)=fNTLFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUO2 + NO3 = NTLFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NTLFUO2'; Gstr{i,2} = 'NO3'; 
fNTLFUO2(i)=fNTLFUO2(i)-1; fNO3(i)=fNO3(i)-1; fNTLFUO(i)=fNTLFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUO2 + RO2 = NTLFUO';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NTLFUO2'; Gstr{i,2} = 'RO2';
fNTLFUO2(i)=fNTLFUO2(i)-1; fNTLFUO(i)=fNTLFUO(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOOA = CO + OH + MECOACETO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'TLFUONOOA'; 
fTLFUONOOA(i)=fTLFUONOOA(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fMECOACETO2(i)=fMECOACETO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOOA = TLFUONOO';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'TLFUONOOA'; 
fTLFUONOOA(i)=fTLFUONOOA(i)-1; fTLFUONOO(i)=fTLFUONOO(i)+1; 

i=i+1;
Rnames{i} = 'TLFUO2 + HO2 = TLFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'TLFUO2'; Gstr{i,2} = 'HO2'; 
fTLFUO2(i)=fTLFUO2(i)-1; fHO2(i)=fHO2(i)-1; fTLFUOOH(i)=fTLFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'TLFUO2 + NO = TLFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'TLFUO2'; Gstr{i,2} = 'NO'; 
fTLFUO2(i)=fTLFUO2(i)-1; fNO(i)=fNO(i)-1; fTLFUO(i)=fTLFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUO2 + NO3 = TLFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'TLFUO2'; Gstr{i,2} = 'NO3'; 
fTLFUO2(i)=fTLFUO2(i)-1; fNO3(i)=fNO3(i)-1; fTLFUO(i)=fTLFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUO2 + RO2 = TLFUO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'TLFUO2'; Gstr{i,2} = 'RO2';
fTLFUO2(i)=fTLFUO2(i)-1; fTLFUO(i)=fTLFUO(i)+1; 

i=i+1;
Rnames{i} = 'TLFUO2 + RO2 = TLFUOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'TLFUO2'; Gstr{i,2} = 'RO2';
fTLFUO2(i)=fTLFUO2(i)-1; fTLFUOH(i)=fTLFUOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14CO2 = MALANHY + CH3O2';
k(:,i) = KDEC.*0.83;
Gstr{i,1} = 'C5CO14CO2'; 
fC5CO14CO2(i)=fC5CO14CO2(i)-1; fMALANHY(i)=fMALANHY(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14CO2 = MGLYOX + HO2 + CO';
k(:,i) = KDEC.*0.17;
Gstr{i,1} = 'C5CO14CO2'; 
fC5CO14CO2(i)=fC5CO14CO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14OOH + OH = C5CO14O2';
k(:,i) = 3.59e-12;
Gstr{i,1} = 'C5CO14OOH'; Gstr{i,2} = 'OH'; 
fC5CO14OOH(i)=fC5CO14OOH(i)-1; fOH(i)=fOH(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO14OOH + hv = C5CO14CO2 + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5CO14OOH'; 
fC5CO14OOH(i)=fC5CO14OOH(i)-1; fC5CO14CO2(i)=fC5CO14CO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5COO2NO2 + OH = MGLYOX + CO + CO + NO2';
k(:,i) = 5.43e-11;
Gstr{i,1} = 'C5COO2NO2'; Gstr{i,2} = 'OH'; 
fC5COO2NO2(i)=fC5COO2NO2(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5COO2NO2 = C5CO14O2 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5COO2NO2'; 
fC5COO2NO2(i)=fC5COO2NO2(i)-1; fC5CO14O2(i)=fC5CO14O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO2H + hv = CH3CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CH3COCO2H'; 
fCH3COCO2H(i)=fCH3COCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3COCO2H = CH3CO3';
k(:,i) = 8.0e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3COCO2H'; 
fOH(i)=fOH(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CHO + hv = MGLYOX + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO2H3CHO'; 
fCO2H3CHO(i)=fCO2H3CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO2H3CHO = CO2H3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO2H3CHO'; 
fNO3(i)=fNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2H3CHO = CO2H3CO3';
k(:,i) = 2.45e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2H3CHO'; 
fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO2H + OH = MXYL1O2';
k(:,i) = 1.10e-12;
Gstr{i,1} = 'MXYLCO2H'; Gstr{i,2} = 'OH'; 
fMXYLCO2H(i)=fMXYLCO2H(i)-1; fOH(i)=fOH(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3H + OH = MXYLCO3';
k(:,i) = 4.66e-12;
Gstr{i,1} = 'MXYLCO3H'; Gstr{i,2} = 'OH'; 
fMXYLCO3H(i)=fMXYLCO3H(i)-1; fOH(i)=fOH(i)-1; fMXYLCO3(i)=fMXYLCO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYLCO3H + hv = MXYL1O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYLCO3H'; 
fMXYLCO3H(i)=fMXYLCO3H(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYLPAN + OH = MXYL1OOH + CO + NO2';
k(:,i) = 1.06e-12;
Gstr{i,1} = 'MXYLPAN'; Gstr{i,2} = 'OH'; 
fMXYLPAN(i)=fMXYLPAN(i)-1; fOH(i)=fOH(i)-1; fMXYL1OOH(i)=fMXYL1OOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYLPAN = MXYLCO3 + NO2';
k(:,i) = KBPAN.*0.67;
Gstr{i,1} = 'MXYLPAN'; 
fMXYLPAN(i)=fMXYLPAN(i)-1; fMXYLCO3(i)=fMXYLCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1OOH + OH = MXYL1O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MXYL1OOH'; Gstr{i,2} = 'OH'; 
fMXYL1OOH(i)=fMXYL1OOH(i)-1; fOH(i)=fOH(i)-1; fMXYL1O2(i)=fMXYL1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1OOH + hv = MXYL1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYL1OOH'; 
fMXYL1OOH(i)=fMXYL1OOH(i)-1; fMXYL1O(i)=fMXYL1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYL1O + NO2 = TOL1OHNO2';
k(:,i) = 3.90e-13;
Gstr{i,1} = 'MXYL1O'; Gstr{i,2} = 'NO2'; 
fMXYL1O(i)=fMXYL1O(i)-1; fNO2(i)=fNO2(i)-1; fTOL1OHNO2(i)=fTOL1OHNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5MCO2OHO2 + HO2 = C6CO2OHOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C5MCO2OHO2'; Gstr{i,2} = 'HO2'; 
fC5MCO2OHO2(i)=fC5MCO2OHO2(i)-1; fHO2(i)=fHO2(i)-1; fC6CO2OHOOH(i)=fC6CO2OHOOH(i)+1; 

i=i+1;
Rnames{i} = 'C5MCO2OHO2 + NO = NO2 + C5MCO2OHO';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5MCO2OHO2'; Gstr{i,2} = 'NO'; 
fC5MCO2OHO2(i)=fC5MCO2OHO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fC5MCO2OHO(i)=fC5MCO2OHO(i)+1; 

i=i+1;
Rnames{i} = 'C5MCO2OHO2 + NO3 = NO2 + C5MCO2OHO';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5MCO2OHO2'; Gstr{i,2} = 'NO3'; 
fC5MCO2OHO2(i)=fC5MCO2OHO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fC5MCO2OHO(i)=fC5MCO2OHO(i)+1; 

i=i+1;
Rnames{i} = 'C5MCO2OHO2 + RO2 = C5MCO2OHO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'C5MCO2OHO2'; Gstr{i,2} = 'RO2';
fC5MCO2OHO2(i)=fC5MCO2OHO2(i)-1; fC5MCO2OHO(i)=fC5MCO2OHO(i)+1; 

i=i+1;
Rnames{i} = 'C5MCO2OHO2 + RO2 = C6CO2M2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'C5MCO2OHO2'; Gstr{i,2} = 'RO2';
fC5MCO2OHO2(i)=fC5MCO2OHO2(i)-1; fC6CO2M2OH(i)=fC6CO2M2OH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUO2 + HO2 = NMXYFUOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NMXYFUO2'; Gstr{i,2} = 'HO2'; 
fNMXYFUO2(i)=fNMXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNMXYFUOOH(i)=fNMXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUO2 + NO = NMXYFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NMXYFUO2'; Gstr{i,2} = 'NO'; 
fNMXYFUO2(i)=fNMXYFUO2(i)-1; fNO(i)=fNO(i)-1; fNMXYFUO(i)=fNMXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUO2 + NO3 = NMXYFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NMXYFUO2'; Gstr{i,2} = 'NO3'; 
fNMXYFUO2(i)=fNMXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fNMXYFUO(i)=fNMXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUO2 + RO2 = NMXYFUO';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NMXYFUO2'; Gstr{i,2} = 'RO2';
fNMXYFUO2(i)=fNMXYFUO2(i)-1; fNMXYFUO(i)=fNMXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO2 + HO2 = C23O3MCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C23O3MO2'; Gstr{i,2} = 'HO2'; 
fC23O3MO2(i)=fC23O3MO2(i)-1; fHO2(i)=fHO2(i)-1; fC23O3MCOOH(i)=fC23O3MCOOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO2 + NO = C23O3MO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C23O3MO2'; Gstr{i,2} = 'NO'; 
fC23O3MO2(i)=fC23O3MO2(i)-1; fNO(i)=fNO(i)-1; fC23O3MO(i)=fC23O3MO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO2 + NO3 = C23O3MO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C23O3MO2'; Gstr{i,2} = 'NO3'; 
fC23O3MO2(i)=fC23O3MO2(i)-1; fNO3(i)=fNO3(i)-1; fC23O3MO(i)=fC23O3MO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO2 + RO2 = ACECOCOCH3';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C23O3MO2'; Gstr{i,2} = 'RO2';
fC23O3MO2(i)=fC23O3MO2(i)-1; fACECOCOCH3(i)=fACECOCOCH3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO2 + RO2 = C23O3MO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C23O3MO2'; Gstr{i,2} = 'RO2';
fC23O3MO2(i)=fC23O3MO2(i)-1; fC23O3MO(i)=fC23O3MO(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO2 + RO2 = C23O3MOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C23O3MO2'; Gstr{i,2} = 'RO2';
fC23O3MO2(i)=fC23O3MO2(i)-1; fC23O3MOH(i)=fC23O3MOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUO2 + HO2 = MXYFUOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'MXYFUO2'; Gstr{i,2} = 'HO2'; 
fMXYFUO2(i)=fMXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fMXYFUOOH(i)=fMXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUO2 + NO = MXYFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXYFUO2'; Gstr{i,2} = 'NO'; 
fMXYFUO2(i)=fMXYFUO2(i)-1; fNO(i)=fNO(i)-1; fMXYFUO(i)=fMXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUO2 + NO3 = MXYFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYFUO2'; Gstr{i,2} = 'NO3'; 
fMXYFUO2(i)=fMXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fMXYFUO(i)=fMXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUO2 + RO2 = MXYFUO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'MXYFUO2'; Gstr{i,2} = 'RO2';
fMXYFUO2(i)=fMXYFUO2(i)-1; fMXYFUO(i)=fMXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUO2 + RO2 = MXYFUOH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'MXYFUO2'; Gstr{i,2} = 'RO2';
fMXYFUO2(i)=fMXYFUO2(i)-1; fMXYFUOH(i)=fMXYFUOH(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + HO2 = NPXYFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'HO2'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNPXYFUOOH(i)=fNPXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + NO = NPXYFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'NO'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNO(i)=fNO(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + NO3 = NPXYFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'NO3'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + RO2 = NPXYFUO';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'RO2';
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + HO2 = MCOCOMOOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'HO2'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fHO2(i)=fHO2(i)-1; fMCOCOMOOOH(i)=fMCOCOMOOOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + NO = MCOCOMOXO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'NO'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fNO(i)=fNO(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + NO3 = MCOCOMOXO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'NO3'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fNO3(i)=fNO3(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + RO2 = MCOCOMOXO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'RO2';
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + HO2 = PXYFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'HO2'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fPXYFUOOH(i)=fPXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + NO = PXYFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'NO'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fNO(i)=fNO(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + NO3 = PXYFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'NO3'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + RO2 = PXYFUO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'RO2';
fPXYFUO2(i)=fPXYFUO2(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + RO2 = PXYFUOH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'RO2';
fPXYFUO2(i)=fPXYFUO2(i)-1; fPXYFUOH(i)=fPXYFUOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO2 = MGLYOX + HO2 + CO';
k(:,i) = KDEC.*0.35;
Gstr{i,1} = 'C3MCODBCO2'; 
fC3MCODBCO2(i)=fC3MCODBCO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO2 = MMALANHY + HO2';
k(:,i) = KDEC.*0.65;
Gstr{i,1} = 'C3MCODBCO2'; 
fC3MCODBCO2(i)=fC3MCODBCO2(i)-1; fMMALANHY(i)=fMMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + O3 = GLYOOC + CH3COCO3H';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'O3'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fO3(i)=fO3(i)-1; fGLYOOC(i)=fGLYOOC(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + O3 = GLYOX + PPACLOOA';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'O3'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fO3(i)=fO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fPPACLOOA(i)=fPPACLOOA(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + OH = C534O2';
k(:,i) = 4.72e-11;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'OH'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fOH(i)=fOH(i)-1; fC534O2(i)=fC534O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + hv = CH3CO3 + GLYOX + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5PACALD1'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBPAN + OH = MGLYOX + CO + CO + NO2';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'C3MCODBPAN'; Gstr{i,2} = 'OH'; 
fC3MCODBPAN(i)=fC3MCODBPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBPAN = C3MCODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3MCODBPAN'; 
fC3MCODBPAN(i)=fC3MCODBPAN(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO2H + OH = C3MDIALO2';
k(:,i) = 2.27e-11;
Gstr{i,1} = 'EPXMDLCO2H'; Gstr{i,2} = 'OH'; 
fEPXMDLCO2H(i)=fEPXMDLCO2H(i)-1; fOH(i)=fOH(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO2H + hv = C3MDIALO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'EPXMDLCO2H'; 
fEPXMDLCO2H(i)=fEPXMDLCO2H(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3H + OH = EPXMDLCO3';
k(:,i) = 2.57e-11;
Gstr{i,1} = 'EPXMDLCO3H'; Gstr{i,2} = 'OH'; 
fEPXMDLCO3H(i)=fEPXMDLCO3H(i)-1; fOH(i)=fOH(i)-1; fEPXMDLCO3(i)=fEPXMDLCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3H + hv = C3MDIALO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'EPXMDLCO3H'; 
fEPXMDLCO3H(i)=fEPXMDLCO3H(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLCO3H + hv = C3MDIALO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'EPXMDLCO3H'; 
fEPXMDLCO3H(i)=fEPXMDLCO3H(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLPAN + OH = MGLYOX + CO + NO2';
k(:,i) = 2.25e-11;
Gstr{i,1} = 'EPXMDLPAN'; Gstr{i,2} = 'OH'; 
fEPXMDLPAN(i)=fEPXMDLPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMDLPAN = EPXMDLCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'EPXMDLPAN'; 
fEPXMDLPAN(i)=fEPXMDLPAN(i)-1; fEPXMDLCO3(i)=fEPXMDLCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH + OH = C3MDIALO2';
k(:,i) = 1.35e-10;
Gstr{i,1} = 'C3MDIALOOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fOH(i)=fOH(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH + hv = C3MDIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3MDIALOOH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH + hv = MGLYOX + OH + HO2 + CO';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOOH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO = MGLYOX + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C3MDIALO'; 
fC3MDIALO(i)=fC3MDIALO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + OH = CHOMOHCO3';
k(:,i) = 4.18e-11;
Gstr{i,1} = 'C3MDIALOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + hv = MGLYOX + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1O + NO2 = DNMXYOL';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'NMXYOL1O'; Gstr{i,2} = 'NO2'; 
fNMXYOL1O(i)=fNMXYOL1O(i)-1; fNO2(i)=fNO2(i)-1; fDNMXYOL(i)=fDNMXYOL(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1O + O3 = NMXYOL1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'NMXYOL1O'; Gstr{i,2} = 'O3'; 
fNMXYOL1O(i)=fNMXYOL1O(i)-1; fO3(i)=fO3(i)-1; fNMXYOL1O2(i)=fNMXYOL1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXY1OOH + OH = MXY1O2';
k(:,i) = 4.65e-11;
Gstr{i,1} = 'MXY1OOH'; Gstr{i,2} = 'OH'; 
fMXY1OOH(i)=fMXY1OOH(i)-1; fOH(i)=fOH(i)-1; fMXY1O2(i)=fMXY1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXY1OOH + hv = MXY1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXY1OOH'; 
fMXY1OOH(i)=fMXY1OOH(i)-1; fMXY1O(i)=fMXY1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYQONE + NO3 = NMXYQO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'MXYQONE'; Gstr{i,2} = 'NO3'; 
fMXYQONE(i)=fMXYQONE(i)-1; fNO3(i)=fNO3(i)-1; fNMXYQO2(i)=fNMXYQO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYQONE + OH = MXYQO2';
k(:,i) = 2.35e-11;
Gstr{i,1} = 'MXYQONE'; Gstr{i,2} = 'OH'; 
fMXYQONE(i)=fMXYQONE(i)-1; fOH(i)=fOH(i)-1; fMXYQO2(i)=fMXYQO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECH + NO3 = MXNNCATCO2';
k(:,i) = 5.03e-12;
Gstr{i,1} = 'MXNCATECH'; Gstr{i,2} = 'NO3'; 
fMXNCATECH(i)=fMXNCATECH(i)-1; fNO3(i)=fNO3(i)-1; fMXNNCATCO2(i)=fMXNNCATCO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECH + OH = MXNCATECO2';
k(:,i) = 6.83e-12;
Gstr{i,1} = 'MXNCATECH'; Gstr{i,2} = 'OH'; 
fMXNCATECH(i)=fMXNCATECH(i)-1; fOH(i)=fOH(i)-1; fMXNCATECO2(i)=fMXNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'MXCATEC1O2 + HO2 = MXCTEC1OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXCATEC1O2'; Gstr{i,2} = 'HO2'; 
fMXCATEC1O2(i)=fMXCATEC1O2(i)-1; fHO2(i)=fHO2(i)-1; fMXCTEC1OOH(i)=fMXCTEC1OOH(i)+1; 

i=i+1;
Rnames{i} = 'MXCATEC1O2 + NO = MXCATEC1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXCATEC1O2'; Gstr{i,2} = 'NO'; 
fMXCATEC1O2(i)=fMXCATEC1O2(i)-1; fNO(i)=fNO(i)-1; fMXCATEC1O(i)=fMXCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXCATEC1O2 + NO3 = MXCATEC1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXCATEC1O2'; Gstr{i,2} = 'NO3'; 
fMXCATEC1O2(i)=fMXCATEC1O2(i)-1; fNO3(i)=fNO3(i)-1; fMXCATEC1O(i)=fMXCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXCATEC1O2 + RO2 = MXCATEC1O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'MXCATEC1O2'; Gstr{i,2} = 'RO2';
fMXCATEC1O2(i)=fMXCATEC1O2(i)-1; fMXCATEC1O(i)=fMXCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'C3MCOCO2H + OH = MGLYOX + HO2 + CO';
k(:,i) = 4.66e-11;
Gstr{i,1} = 'C3MCOCO2H'; Gstr{i,2} = 'OH'; 
fC3MCOCO2H(i)=fC3MCOCO2H(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C3MCOCO2H + hv = HCOCO2H + HO2 + CO + CH3O2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'C3MCOCO2H'; 
fC3MCOCO2H(i)=fC3MCOCO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C3MCOCO2H + hv = HCOCO2H + HO2 + CO + CH3O2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'C3MCOCO2H'; 
fC3MCOCO2H(i)=fC3MCOCO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO2H + OH = DMPHO2';
k(:,i) = 1.10e-12;
Gstr{i,1} = 'TMBCO2H'; Gstr{i,2} = 'OH'; 
fTMBCO2H(i)=fTMBCO2H(i)-1; fOH(i)=fOH(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3H + OH = TMBCO3';
k(:,i) = 4.66e-12;
Gstr{i,1} = 'TMBCO3H'; Gstr{i,2} = 'OH'; 
fTMBCO3H(i)=fTMBCO3H(i)-1; fOH(i)=fOH(i)-1; fTMBCO3(i)=fTMBCO3(i)+1; 

i=i+1;
Rnames{i} = 'TMBCO3H + hv = DMPHO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'TMBCO3H'; 
fTMBCO3H(i)=fTMBCO3H(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TMBPAN + OH = DMPHOOH + CO + NO2';
k(:,i) = 1.06e-12;
Gstr{i,1} = 'TMBPAN'; Gstr{i,2} = 'OH'; 
fTMBPAN(i)=fTMBPAN(i)-1; fOH(i)=fOH(i)-1; fDMPHOOH(i)=fDMPHOOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TMBPAN = TMBCO3 + NO2';
k(:,i) = KBPAN.*0.67;
Gstr{i,1} = 'TMBPAN'; 
fTMBPAN(i)=fTMBPAN(i)-1; fTMBCO3(i)=fTMBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DMPHOOH + OH = DMPHO2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'DMPHOOH'; Gstr{i,2} = 'OH'; 
fDMPHOOH(i)=fDMPHOOH(i)-1; fOH(i)=fOH(i)-1; fDMPHO2(i)=fDMPHO2(i)+1; 

i=i+1;
Rnames{i} = 'DMPHOOH + hv = DMPHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DMPHOOH'; 
fDMPHOOH(i)=fDMPHOOH(i)-1; fDMPHO(i)=fDMPHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DMPHO + NO2 = DMPHOHNO2';
k(:,i) = 3.90e-13;
Gstr{i,1} = 'DMPHO'; Gstr{i,2} = 'NO2'; 
fDMPHO(i)=fDMPHO(i)-1; fNO2(i)=fNO2(i)-1; fDMPHOHNO2(i)=fDMPHOHNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO2 = MGLYOX + CH3CO3';
k(:,i) = KDEC.*0.35;
Gstr{i,1} = 'C4MCODBCO2'; 
fC4MCODBCO2(i)=fC4MCODBCO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBCO2 = MMALANHY + CH3O2';
k(:,i) = KDEC.*0.65;
Gstr{i,1} = 'C4MCODBCO2'; 
fC4MCODBCO2(i)=fC4MCODBCO2(i)-1; fMMALANHY(i)=fMMALANHY(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CODBCO3H + OH = C4MCODBCO3';
k(:,i) = 3.90e-11;
Gstr{i,1} = 'C5CODBCO3H'; Gstr{i,2} = 'OH'; 
fC5CODBCO3H(i)=fC5CODBCO3H(i)-1; fOH(i)=fOH(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5CODBCO3H + hv = C4MCODBCO2 + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5CODBCO3H'; 
fC5CODBCO3H(i)=fC5CODBCO3H(i)-1; fC4MCODBCO2(i)=fC4MCODBCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBPAN + OH = MGLYOX + HCHO + CO + CO + NO2';
k(:,i) = 3.54e-11;
Gstr{i,1} = 'C4MCODBPAN'; Gstr{i,2} = 'OH'; 
fC4MCODBPAN(i)=fC4MCODBPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MCODBPAN = C4MCODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4MCODBPAN'; 
fC4MCODBPAN(i)=fC4MCODBPAN(i)-1; fC4MCODBCO3(i)=fC4MCODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CODBCO2H + OH = C4MCODBCO2';
k(:,i) = 3.54e-11;
Gstr{i,1} = 'C5CODBCO2H'; Gstr{i,2} = 'OH'; 
fC5CODBCO2H(i)=fC5CODBCO2H(i)-1; fOH(i)=fOH(i)-1; fC4MCODBCO2(i)=fC4MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CODBCO2H + hv = CH3COCO2H + CH3CO3 + HO2 + CO';
k(:,i) = J24;
Gstr{i,1} = 'C5CODBCO2H'; 
fC5CODBCO2H(i)=fC5CODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO2H + OH = CO24C53O2';
k(:,i) = 2.11e-12;
Gstr{i,1} = 'EPXMKTCO2H'; Gstr{i,2} = 'OH'; 
fEPXMKTCO2H(i)=fEPXMKTCO2H(i)-1; fOH(i)=fOH(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO2H + hv = CO24C53O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'EPXMKTCO2H'; 
fEPXMKTCO2H(i)=fEPXMKTCO2H(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3H + OH = EPXMKTCO3';
k(:,i) = 5.17e-12;
Gstr{i,1} = 'EPXMKTCO3H'; Gstr{i,2} = 'OH'; 
fEPXMKTCO3H(i)=fEPXMKTCO3H(i)-1; fOH(i)=fOH(i)-1; fEPXMKTCO3(i)=fEPXMKTCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3H + hv = CO24C53O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'EPXMKTCO3H'; 
fEPXMKTCO3H(i)=fEPXMKTCO3H(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTCO3H + hv = CO24C53O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'EPXMKTCO3H'; 
fEPXMKTCO3H(i)=fEPXMKTCO3H(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTPAN + OH = C5CO234 + CO + NO2';
k(:,i) = 1.95e-12;
Gstr{i,1} = 'EPXMKTPAN'; Gstr{i,2} = 'OH'; 
fEPXMKTPAN(i)=fEPXMKTPAN(i)-1; fOH(i)=fOH(i)-1; fC5CO234(i)=fC5CO234(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXMKTPAN = EPXMKTCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'EPXMKTPAN'; 
fEPXMKTPAN(i)=fEPXMKTPAN(i)-1; fEPXMKTCO3(i)=fEPXMKTCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53OOH + OH = CO24C53O2';
k(:,i) = 1.75e-11;
Gstr{i,1} = 'CO24C53OOH'; Gstr{i,2} = 'OH'; 
fCO24C53OOH(i)=fCO24C53OOH(i)-1; fOH(i)=fOH(i)-1; fCO24C53O2(i)=fCO24C53O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53OOH + hv = CO24C53O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO24C53OOH'; 
fCO24C53OOH(i)=fCO24C53OOH(i)-1; fCO24C53O(i)=fCO24C53O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53OOH + hv = MGLYOX + CH3CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO24C53OOH'; 
fCO24C53OOH(i)=fCO24C53OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C53O = MGLYOX + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'CO24C53O'; 
fCO24C53O(i)=fCO24C53O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5CO243OH + OH = C5CO234 + HO2';
k(:,i) = 4.06e-12;
Gstr{i,1} = 'C5CO243OH'; Gstr{i,2} = 'OH'; 
fC5CO243OH(i)=fC5CO243OH(i)-1; fOH(i)=fOH(i)-1; fC5CO234(i)=fC5CO234(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO243OH + hv = MGLYOX + CH3CO3 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C5CO243OH'; 
fC5CO243OH(i)=fC5CO243OH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234 + OH = C5CO234O2';
k(:,i) = 2.04e-13;
Gstr{i,1} = 'C5CO234'; Gstr{i,2} = 'OH'; 
fC5CO234(i)=fC5CO234(i)-1; fOH(i)=fOH(i)-1; fC5CO234O2(i)=fC5CO234O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234 + hv = CH3CO3 + CH3CO3 + CO';
k(:,i) = J35;
Gstr{i,1} = 'C5CO234'; 
fC5CO234(i)=fC5CO234(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + hv = HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + hv = HO2 + CO + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCO3H = HCOCO3';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCO3H'; 
fOH(i)=fOH(i)-1; fHCOCO3H(i)=fHCOCO3H(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + HO2 = HOC2H4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'HO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + HO2 = HOC2H4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'HO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC2H4CO3H(i)=fHOC2H4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + HO2 = HOCH2CH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'HO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO = HOCH2CH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO2 = C3PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC3PAN1(i)=fC3PAN1(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO3 = HOCH2CH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO3'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + RO2 = HOC2H4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'RO2';
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + RO2 = HOCH2CH2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'RO2';
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + HO2 = HO1C3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'HO2'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + HO2 = HOC3H6CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'HO2'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC3H6CO2H(i)=fHOC3H6CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + HO2 = HOC3H6CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'HO2'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC3H6CO3H(i)=fHOC3H6CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + NO = HO1C3O2 + NO2';
k(:,i) = KAPNO.*4.0;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'NO'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fNO(i)=fNO(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + NO2 = C4PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'NO2'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN1(i)=fC4PAN1(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + NO3 = HO1C3O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'NO3'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + RO2 = HO1C3O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'RO2';
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + RO2 = HOC3H6CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'RO2';
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHOC3H6CO2H(i)=fHOC3H6CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CH3COCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CO2C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C3CO3H(i)=fCO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO = CH3COCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO2 = CO2C3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO2C3PAN(i)=fCO2C3PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO3 = CH3COCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO3'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + RO2 = CH3COCH2O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'RO2';
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + HO2 = HO2C3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'HO2'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2C3CO2H(i)=fHO2C3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + HO2 = HO2C3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'HO2'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2C3CO3H(i)=fHO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + HO2 = IPROPOLO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'HO2'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + NO = IPROPOLO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'NO'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fNO(i)=fNO(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + NO2 = C4PAN3';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'NO2'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN3(i)=fC4PAN3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + NO3 = IPROPOLO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'NO3'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + RO2 = HO2C3CO3H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'RO2';
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2C3CO3H(i)=fHO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + RO2 = IPROPOLO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'RO2';
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + HO2 = HOCO3C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'HO2'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHOCO3C4OOH(i)=fHOCO3C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + NO = HO1CO3C4O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'NO'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + NO3 = HO1CO3C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'NO3'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + RO2 = HO14CO2C4';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO14CO2C4(i)=fHO14CO2C4(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + RO2 = HO1CO3C4O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + RO2 = HO1CO3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + HO2 = C51OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'HO2'; 
fC51O2(i)=fC51O2(i)-1; fHO2(i)=fHO2(i)-1; fC51OOH(i)=fC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51NO3(i)=fC51NO3(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51O + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO3 = C51O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO3'; 
fC51O2(i)=fC51O2(i)-1; fNO3(i)=fNO3(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = C51O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51O(i)=fC51O(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = C51OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51OH(i)=fC51OH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = HO1CO24C5';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CHO + hv = MEKAO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO2C4CHO'; 
fCO2C4CHO(i)=fCO2C4CHO(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO2C4CHO = CO2C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO2C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO2C4CHO(i)=fCO2C4CHO(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C4CHO = CO2C4CO3';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C4CHO'; 
fOH(i)=fOH(i)-1; fCO2C4CHO(i)=fCO2C4CHO(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + HO2 = CO3C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'HO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO3C4CO2H(i)=fCO3C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + HO2 = CO3C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'HO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO3C4CO3H(i)=fCO3C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + HO2 = MEKCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'HO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + NO = MEKCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'NO'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fNO(i)=fNO(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + NO2 = C5PAN16';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'NO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN16(i)=fC5PAN16(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + NO3 = MEKCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'NO3'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + RO2 = CO3C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'RO2';
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fCO3C4CO2H(i)=fCO3C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + RO2 = MEKCO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'RO2';
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + HO2 = HO3C4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'HO2'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO3C4CO3H(i)=fHO3C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + HO2 = HO3C4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'HO2'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + NO = HO3C4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'NO'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fNO(i)=fNO(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + NO2 = C5PAN8';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'NO2'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN8(i)=fC5PAN8(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + NO3 = HO3C4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'NO3'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + RO2 = HO3C4O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'RO2';
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + HO2 = HO2C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'HO2'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHO2C4OOH(i)=fHO2C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + NO = HO2C4NO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'NO'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fNO(i)=fNO(i)-1; fHO2C4NO3(i)=fHO2C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + NO = HO2C4O + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'NO'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fNO(i)=fNO(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + NO3 = HO2C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'NO3'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + RO2 = HO2C3CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'RO2';
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + RO2 = HO2C4O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'RO2';
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + RO2 = HO2C4OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'RO2';
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C4OH(i)=fHO2C4OH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + HO2 = HO2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'HO2'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2C4CO2H(i)=fHO2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + HO2 = HO2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'HO2'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2C4CO3H(i)=fHO2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + HO2 = HO2C4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'HO2'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + NO = HO2C4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'NO'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fNO(i)=fNO(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + NO2 = C5PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'NO2'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN1(i)=fC5PAN1(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + NO3 = HO2C4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'NO3'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + RO2 = HO2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'RO2';
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4CO2H(i)=fHO2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + RO2 = HO2C4O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'RO2';
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O2 + HO2 = HOCO4C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2CO4C5O2'; Gstr{i,2} = 'HO2'; 
fHO2CO4C5O2(i)=fHO2CO4C5O2(i)-1; fHO2(i)=fHO2(i)-1; fHOCO4C5OOH(i)=fHOCO4C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O2 + NO = HO2CO4C5O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HO2CO4C5O2'; Gstr{i,2} = 'NO'; 
fHO2CO4C5O2(i)=fHO2CO4C5O2(i)-1; fNO(i)=fNO(i)-1; fHO2CO4C5O(i)=fHO2CO4C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O2 + NO3 = HO2CO4C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO2CO4C5O2'; Gstr{i,2} = 'NO3'; 
fHO2CO4C5O2(i)=fHO2CO4C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2CO4C5O(i)=fHO2CO4C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O2 + RO2 = HO14CO2C5';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO2CO4C5O2'; Gstr{i,2} = 'RO2';
fHO2CO4C5O2(i)=fHO2CO4C5O2(i)-1; fHO14CO2C5(i)=fHO14CO2C5(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O2 + RO2 = HO2CO4C5O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO2CO4C5O2'; Gstr{i,2} = 'RO2';
fHO2CO4C5O2(i)=fHO2CO4C5O2(i)-1; fHO2CO4C5O(i)=fHO2CO4C5O(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O2 + RO2 = HO2CO4CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO2CO4C5O2'; Gstr{i,2} = 'RO2';
fHO2CO4C5O2(i)=fHO2CO4C5O2(i)-1; fHO2CO4CHO(i)=fHO2CO4CHO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54O2 + HO2 = CO23C54OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CO23C54O2'; Gstr{i,2} = 'HO2'; 
fCO23C54O2(i)=fCO23C54O2(i)-1; fHO2(i)=fHO2(i)-1; fCO23C54OOH(i)=fCO23C54OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54O2 + NO = CO23C54O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO23C54O2'; Gstr{i,2} = 'NO'; 
fCO23C54O2(i)=fCO23C54O2(i)-1; fNO(i)=fNO(i)-1; fCO23C54O(i)=fCO23C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54O2 + NO3 = CO23C54O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO23C54O2'; Gstr{i,2} = 'NO3'; 
fCO23C54O2(i)=fCO23C54O2(i)-1; fNO3(i)=fNO3(i)-1; fCO23C54O(i)=fCO23C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54O2 + RO2 = CO23C54O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'CO23C54O2'; Gstr{i,2} = 'RO2';
fCO23C54O2(i)=fCO23C54O2(i)-1; fCO23C54O(i)=fCO23C54O(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O2 + HO2 = HOCO3C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HOCO3C54O2'; Gstr{i,2} = 'HO2'; 
fHOCO3C54O2(i)=fHOCO3C54O2(i)-1; fHO2(i)=fHO2(i)-1; fHOCO3C5OOH(i)=fHOCO3C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O2 + NO = HOCO3C54O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HOCO3C54O2'; Gstr{i,2} = 'NO'; 
fHOCO3C54O2(i)=fHOCO3C54O2(i)-1; fNO(i)=fNO(i)-1; fHOCO3C54O(i)=fHOCO3C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O2 + NO3 = HOCO3C54O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HOCO3C54O2'; Gstr{i,2} = 'NO3'; 
fHOCO3C54O2(i)=fHOCO3C54O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCO3C54O(i)=fHOCO3C54O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O2 + RO2 = HO14CO3C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HOCO3C54O2'; Gstr{i,2} = 'RO2';
fHOCO3C54O2(i)=fHOCO3C54O2(i)-1; fHO14CO3C5(i)=fHO14CO3C5(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O2 + RO2 = HO1CO34C5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HOCO3C54O2'; Gstr{i,2} = 'RO2';
fHOCO3C54O2(i)=fHOCO3C54O2(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O2 + RO2 = HOCO3C54O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HOCO3C54O2'; Gstr{i,2} = 'RO2';
fHOCO3C54O2(i)=fHOCO3C54O2(i)-1; fHOCO3C54O(i)=fHOCO3C54O(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + HO2 = HO13C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'HO2'; 
fHO13C5O2(i)=fHO13C5O2(i)-1; fHO2(i)=fHO2(i)-1; fHO13C5OOH(i)=fHO13C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + NO = HO13C5NO3';
k(:,i) = KRO2NO.*0.026;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'NO'; 
fHO13C5O2(i)=fHO13C5O2(i)-1; fNO(i)=fNO(i)-1; fHO13C5NO3(i)=fHO13C5NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + NO = HO13C5O + NO2';
k(:,i) = KRO2NO.*0.974;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'NO'; 
fHO13C5O2(i)=fHO13C5O2(i)-1; fNO(i)=fNO(i)-1; fHO13C5O(i)=fHO13C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + NO3 = HO13C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'NO3'; 
fHO13C5O2(i)=fHO13C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO13C5O(i)=fHO13C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + RO2 = HO134C5';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'RO2';
fHO13C5O2(i)=fHO13C5O2(i)-1; fHO134C5(i)=fHO134C5(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + RO2 = HO13C5O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'RO2';
fHO13C5O2(i)=fHO13C5O2(i)-1; fHO13C5O(i)=fHO13C5O(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O2 + RO2 = HO13CO4C5';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'HO13C5O2'; Gstr{i,2} = 'RO2';
fHO13C5O2(i)=fHO13C5O2(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + HO2 = C63OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'HO2'; 
fC63O2(i)=fC63O2(i)-1; fHO2(i)=fHO2(i)-1; fC63OOH(i)=fC63OOH(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + NO = C63NO3';
k(:,i) = KRO2NO.*0.039;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'NO'; 
fC63O2(i)=fC63O2(i)-1; fNO(i)=fNO(i)-1; fC63NO3(i)=fC63NO3(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + NO = C63O + NO2';
k(:,i) = KRO2NO.*0.961;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'NO'; 
fC63O2(i)=fC63O2(i)-1; fNO(i)=fNO(i)-1; fC63O(i)=fC63O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + NO3 = C63O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'NO3'; 
fC63O2(i)=fC63O2(i)-1; fNO3(i)=fNO3(i)-1; fC63O(i)=fC63O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + RO2 = C63O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'RO2';
fC63O2(i)=fC63O2(i)-1; fC63O(i)=fC63O(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + RO2 = C63OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'RO2';
fC63O2(i)=fC63O2(i)-1; fC63OH(i)=fC63OH(i)+1; 

i=i+1;
Rnames{i} = 'C63O2 + RO2 = HO1CO24C6';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C63O2'; Gstr{i,2} = 'RO2';
fC63O2(i)=fC63O2(i)-1; fHO1CO24C6(i)=fHO1CO24C6(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CHO + hv = DIEKBO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO3C5CHO'; 
fCO3C5CHO(i)=fCO3C5CHO(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO3C5CHO = CO3C5CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO3C5CHO'; 
fNO3(i)=fNO3(i)-1; fCO3C5CHO(i)=fCO3C5CHO(i)-1; fCO3C5CO3(i)=fCO3C5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C5CHO = CO3C5CO3';
k(:,i) = 2.75e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C5CHO'; 
fOH(i)=fOH(i)-1; fCO3C5CHO(i)=fCO3C5CHO(i)-1; fCO3C5CO3(i)=fCO3C5CO3(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3OOH + OH = BU1ENO3O2';
k(:,i) = 8.97e-12;
Gstr{i,1} = 'BU1ENO3OOH'; Gstr{i,2} = 'OH'; 
fBU1ENO3OOH(i)=fBU1ENO3OOH(i)-1; fOH(i)=fOH(i)-1; fBU1ENO3O2(i)=fBU1ENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3OOH + hv = BU1ENO3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'BU1ENO3OOH'; 
fBU1ENO3OOH(i)=fBU1ENO3OOH(i)-1; fBU1ENO3O(i)=fBU1ENO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O = C2H5CHO + HCHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'BU1ENO3O'; 
fBU1ENO3O(i)=fBU1ENO3O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BU1ENO3O = CO3C4NO3 + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'BU1ENO3O'; 
fBU1ENO3O(i)=fBU1ENO3O(i)-1; fCO3C4NO3(i)=fCO3C4NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3 + OH = CO3C4NO3O2';
k(:,i) = 8.2e-13;
Gstr{i,1} = 'CO3C4NO3'; Gstr{i,2} = 'OH'; 
fCO3C4NO3(i)=fCO3C4NO3(i)-1; fOH(i)=fOH(i)-1; fCO3C4NO3O2(i)=fCO3C4NO3O2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3 + hv = MEKCO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'CO3C4NO3'; 
fCO3C4NO3(i)=fCO3C4NO3(i)-1; fMEKCO(i)=fMEKCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4NO3 + OH = HO3C3CHO + NO2';
k(:,i) = 3.03e-12;
Gstr{i,1} = 'HO3C4NO3'; Gstr{i,2} = 'OH'; 
fHO3C4NO3(i)=fHO3C4NO3(i)-1; fOH(i)=fOH(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34OOH + OH = C43NO34O2';
k(:,i) = 5.64e-12;
Gstr{i,1} = 'C43NO34OOH'; Gstr{i,2} = 'OH'; 
fC43NO34OOH(i)=fC43NO34OOH(i)-1; fOH(i)=fOH(i)-1; fC43NO34O2(i)=fC43NO34O2(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34OOH + hv = C43NO34O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C43NO34OOH'; 
fC43NO34OOH(i)=fC43NO34OOH(i)-1; fC43NO34O(i)=fC43NO34O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O = BUTAL2NO3 + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'C43NO34O'; 
fC43NO34O(i)=fC43NO34O(i)-1; fBUTAL2NO3(i)=fBUTAL2NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C43NO34O = C2H5CHO + HCHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'C43NO34O'; 
fC43NO34O(i)=fC43NO34O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTAL2NO3 + OH = EGLYOX + NO2';
k(:,i) = 4.44e-12;
Gstr{i,1} = 'BUTAL2NO3'; Gstr{i,2} = 'OH'; 
fBUTAL2NO3(i)=fBUTAL2NO3(i)-1; fOH(i)=fOH(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTAL2NO3 + hv = BUTAL2O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'BUTAL2NO3'; 
fBUTAL2NO3(i)=fBUTAL2NO3(i)-1; fBUTAL2O(i)=fBUTAL2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTAL2NO3 + hv = C2H5CHO + HO2 + CO + NO2';
k(:,i) = J17;
Gstr{i,1} = 'BUTAL2NO3'; 
fBUTAL2NO3(i)=fBUTAL2NO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOO + CO = C2H5CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'C2H5CHOO'; Gstr{i,2} = 'CO'; 
fC2H5CHOO(i)=fC2H5CHOO(i)-1; fCO(i)=fCO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOO + NO = C2H5CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'C2H5CHOO'; Gstr{i,2} = 'NO'; 
fC2H5CHOO(i)=fC2H5CHOO(i)-1; fNO(i)=fNO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOO + NO2 = C2H5CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'C2H5CHOO'; Gstr{i,2} = 'NO2'; 
fC2H5CHOO(i)=fC2H5CHOO(i)-1; fNO2(i)=fNO2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOO + SO2 = C2H5CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'C2H5CHOO'; Gstr{i,2} = 'SO2'; 
fC2H5CHOO(i)=fC2H5CHOO(i)-1; fSO2(i)=fSO2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOO = C2H5CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'C2H5CHOO'; 
fC2H5CHOO(i)=fC2H5CHOO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHOO = PROPACID';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'C2H5CHOO'; 
fC2H5CHOO(i)=fC2H5CHOO(i)-1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4OOH + OH = HO3C3CHO + OH';
k(:,i) = 2.14e-11;
Gstr{i,1} = 'HO3C4OOH'; Gstr{i,2} = 'OH'; 
fHO3C4OOH(i)=fHO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4OOH + OH = HO3C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO3C4OOH'; Gstr{i,2} = 'OH'; 
fHO3C4OOH(i)=fHO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4OOH + hv = HO3C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C4OOH'; 
fHO3C4OOH(i)=fHO3C4OOH(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O = C2H5CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5538./T);
Gstr{i,1} = 'HO3C4O'; 
fHO3C4O(i)=fHO3C4O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CHO + NO3 = HO3C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO3C3CHO'; Gstr{i,2} = 'NO3'; 
fHO3C3CHO(i)=fHO3C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CHO + OH = HO3C3CO3';
k(:,i) = 3.08e-11;
Gstr{i,1} = 'HO3C3CHO'; Gstr{i,2} = 'OH'; 
fHO3C3CHO(i)=fHO3C3CHO(i)-1; fOH(i)=fOH(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CHO + hv = C2H5CHO + HCHO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HO3C3CHO'; 
fHO3C3CHO(i)=fHO3C3CHO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + HO2 = C61OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'HO2'; 
fC61O2(i)=fC61O2(i)-1; fHO2(i)=fHO2(i)-1; fC61OOH(i)=fC61OOH(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + NO = C61NO3';
k(:,i) = KRO2NO.*0.098;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'NO'; 
fC61O2(i)=fC61O2(i)-1; fNO(i)=fNO(i)-1; fC61NO3(i)=fC61NO3(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + NO = C61O + NO2';
k(:,i) = KRO2NO.*0.902;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'NO'; 
fC61O2(i)=fC61O2(i)-1; fNO(i)=fNO(i)-1; fC61O(i)=fC61O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + NO3 = C61O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'NO3'; 
fC61O2(i)=fC61O2(i)-1; fNO3(i)=fNO3(i)-1; fC61O(i)=fC61O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + RO2 = C61CO';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'RO2';
fC61O2(i)=fC61O2(i)-1; fC61CO(i)=fC61CO(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + RO2 = C61O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'RO2';
fC61O2(i)=fC61O2(i)-1; fC61O(i)=fC61O(i)+1; 

i=i+1;
Rnames{i} = 'C61O2 + RO2 = C61OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C61O2'; Gstr{i,2} = 'RO2';
fC61O2(i)=fC61O2(i)-1; fC61OH(i)=fC61OH(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC61O2 + HO2 = CO2HOC6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CO2HOC61O2'; Gstr{i,2} = 'HO2'; 
fCO2HOC61O2(i)=fCO2HOC61O2(i)-1; fHO2(i)=fHO2(i)-1; fCO2HOC6OOH(i)=fCO2HOC6OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC61O2 + NO = CO2HOC61O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO2HOC61O2'; Gstr{i,2} = 'NO'; 
fCO2HOC61O2(i)=fCO2HOC61O2(i)-1; fNO(i)=fNO(i)-1; fCO2HOC61O(i)=fCO2HOC61O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC61O2 + NO3 = CO2HOC61O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO2HOC61O2'; Gstr{i,2} = 'NO3'; 
fCO2HOC61O2(i)=fCO2HOC61O2(i)-1; fNO3(i)=fNO3(i)-1; fCO2HOC61O(i)=fCO2HOC61O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC61O2 + RO2 = CO2HOC61O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CO2HOC61O2'; Gstr{i,2} = 'RO2';
fCO2HOC61O2(i)=fCO2HOC61O2(i)-1; fCO2HOC61O(i)=fCO2HOC61O(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6O2 + HO2 = CO24C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CO24C6O2'; Gstr{i,2} = 'HO2'; 
fCO24C6O2(i)=fCO24C6O2(i)-1; fHO2(i)=fHO2(i)-1; fCO24C6OOH(i)=fCO24C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6O2 + NO = CO24C6O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO24C6O2'; Gstr{i,2} = 'NO'; 
fCO24C6O2(i)=fCO24C6O2(i)-1; fNO(i)=fNO(i)-1; fCO24C6O(i)=fCO24C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6O2 + NO3 = CO24C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO24C6O2'; Gstr{i,2} = 'NO3'; 
fCO24C6O2(i)=fCO24C6O2(i)-1; fNO3(i)=fNO3(i)-1; fCO24C6O(i)=fCO24C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6O2 + RO2 = CO24C6O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'CO24C6O2'; Gstr{i,2} = 'RO2';
fCO24C6O2(i)=fCO24C6O2(i)-1; fCO24C6O(i)=fCO24C6O(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O2 + HO2 = CO25C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CO25C6O2'; Gstr{i,2} = 'HO2'; 
fCO25C6O2(i)=fCO25C6O2(i)-1; fHO2(i)=fHO2(i)-1; fCO25C6OOH(i)=fCO25C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O2 + NO = CO25C6O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO25C6O2'; Gstr{i,2} = 'NO'; 
fCO25C6O2(i)=fCO25C6O2(i)-1; fNO(i)=fNO(i)-1; fCO25C6O(i)=fCO25C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O2 + NO3 = CO25C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO25C6O2'; Gstr{i,2} = 'NO3'; 
fCO25C6O2(i)=fCO25C6O2(i)-1; fNO3(i)=fNO3(i)-1; fCO25C6O(i)=fCO25C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O2 + RO2 = CO235C6';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'CO25C6O2'; Gstr{i,2} = 'RO2';
fCO25C6O2(i)=fCO25C6O2(i)-1; fCO235C6(i)=fCO235C6(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O2 + RO2 = CO25C6O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'CO25C6O2'; Gstr{i,2} = 'RO2';
fCO25C6O2(i)=fCO25C6O2(i)-1; fCO25C6O(i)=fCO25C6O(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O2 + RO2 = CO25C6OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'CO25C6O2'; Gstr{i,2} = 'RO2';
fCO25C6O2(i)=fCO25C6O2(i)-1; fCO25C6OH(i)=fCO25C6OH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65O2 + HO2 = CO23C65OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CO23C65O2'; Gstr{i,2} = 'HO2'; 
fCO23C65O2(i)=fCO23C65O2(i)-1; fHO2(i)=fHO2(i)-1; fCO23C65OOH(i)=fCO23C65OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65O2 + NO = CO23C65O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO23C65O2'; Gstr{i,2} = 'NO'; 
fCO23C65O2(i)=fCO23C65O2(i)-1; fNO(i)=fNO(i)-1; fCO23C65O(i)=fCO23C65O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65O2 + NO3 = CO23C65O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO23C65O2'; Gstr{i,2} = 'NO3'; 
fCO23C65O2(i)=fCO23C65O2(i)-1; fNO3(i)=fNO3(i)-1; fCO23C65O(i)=fCO23C65O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65O2 + RO2 = CO23C65O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'CO23C65O2'; Gstr{i,2} = 'RO2';
fCO23C65O2(i)=fCO23C65O2(i)-1; fCO23C65O(i)=fCO23C65O(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + HO2 = HO3C5CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'HO2'; 
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO3C5CO2H(i)=fHO3C5CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + HO2 = HO3C5CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'HO2'; 
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO3C5CO3H(i)=fHO3C5CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + HO2 = HO3C5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'HO2'; 
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + NO = HO3C5O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'NO'; 
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fNO(i)=fNO(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + NO2 = C6PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'NO2'; 
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fNO2(i)=fNO2(i)-1; fC6PAN1(i)=fC6PAN1(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + NO3 = HO3C5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'NO3'; 
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + RO2 = HO3C5CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'RO2';
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fHO3C5CO2H(i)=fHO3C5CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3 + RO2 = HO3C5O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HO3C5CO3'; Gstr{i,2} = 'RO2';
fHO3C5CO3(i)=fHO3C5CO3(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O2 + HO2 = C6CO3OHOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C6CO3OH5O2'; Gstr{i,2} = 'HO2'; 
fC6CO3OH5O2(i)=fC6CO3OH5O2(i)-1; fHO2(i)=fHO2(i)-1; fC6CO3OHOOH(i)=fC6CO3OHOOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O2 + NO = C6CO3OH5O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C6CO3OH5O2'; Gstr{i,2} = 'NO'; 
fC6CO3OH5O2(i)=fC6CO3OH5O2(i)-1; fNO(i)=fNO(i)-1; fC6CO3OH5O(i)=fC6CO3OH5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O2 + NO3 = C6CO3OH5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C6CO3OH5O2'; Gstr{i,2} = 'NO3'; 
fC6CO3OH5O2(i)=fC6CO3OH5O2(i)-1; fNO3(i)=fNO3(i)-1; fC6CO3OH5O(i)=fC6CO3OH5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O2 + RO2 = C6CO23HO5';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C6CO3OH5O2'; Gstr{i,2} = 'RO2';
fC6CO3OH5O2(i)=fC6CO3OH5O2(i)-1; fC6CO23HO5(i)=fC6CO23HO5(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O2 + RO2 = C6CO3HO25';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C6CO3OH5O2'; Gstr{i,2} = 'RO2';
fC6CO3OH5O2(i)=fC6CO3OH5O2(i)-1; fC6CO3HO25(i)=fC6CO3HO25(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O2 + RO2 = C6CO3OH5O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C6CO3OH5O2'; Gstr{i,2} = 'RO2';
fC6CO3OH5O2(i)=fC6CO3OH5O2(i)-1; fC6CO3OH5O(i)=fC6CO3OH5O(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34O2 + HO2 = C6CO34OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C6CO34O2'; Gstr{i,2} = 'HO2'; 
fC6CO34O2(i)=fC6CO34O2(i)-1; fHO2(i)=fHO2(i)-1; fC6CO34OOH(i)=fC6CO34OOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34O2 + NO = C6CO34O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C6CO34O2'; Gstr{i,2} = 'NO'; 
fC6CO34O2(i)=fC6CO34O2(i)-1; fNO(i)=fNO(i)-1; fC6CO34O(i)=fC6CO34O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34O2 + NO3 = C6CO34O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C6CO34O2'; Gstr{i,2} = 'NO3'; 
fC6CO34O2(i)=fC6CO34O2(i)-1; fNO3(i)=fNO3(i)-1; fC6CO34O(i)=fC6CO34O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34O2 + RO2 = C6CO34O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C6CO34O2'; Gstr{i,2} = 'RO2';
fC6CO34O2(i)=fC6CO34O2(i)-1; fC6CO34O(i)=fC6CO34O(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O2 + HO2 = C6HOCOOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C6HO1CO3O2'; Gstr{i,2} = 'HO2'; 
fC6HO1CO3O2(i)=fC6HO1CO3O2(i)-1; fHO2(i)=fHO2(i)-1; fC6HOCOOOH(i)=fC6HOCOOOH(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O2 + NO = C6HO1CO3O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C6HO1CO3O2'; Gstr{i,2} = 'NO'; 
fC6HO1CO3O2(i)=fC6HO1CO3O2(i)-1; fNO(i)=fNO(i)-1; fC6HO1CO3O(i)=fC6HO1CO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O2 + NO3 = C6HO1CO3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C6HO1CO3O2'; Gstr{i,2} = 'NO3'; 
fC6HO1CO3O2(i)=fC6HO1CO3O2(i)-1; fNO3(i)=fNO3(i)-1; fC6HO1CO3O(i)=fC6HO1CO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O2 + RO2 = C6CO34HO1';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C6HO1CO3O2'; Gstr{i,2} = 'RO2';
fC6HO1CO3O2(i)=fC6HO1CO3O2(i)-1; fC6CO34HO1(i)=fC6CO34HO1(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O2 + RO2 = C6CO3HO14';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C6HO1CO3O2'; Gstr{i,2} = 'RO2';
fC6HO1CO3O2(i)=fC6HO1CO3O2(i)-1; fC6CO3HO14(i)=fC6CO3HO14(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O2 + RO2 = C6HO1CO3O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C6HO1CO3O2'; Gstr{i,2} = 'RO2';
fC6HO1CO3O2(i)=fC6HO1CO3O2(i)-1; fC6HO1CO3O(i)=fC6HO1CO3O(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3 + HO2 = C3COCCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C3COCCO3'; Gstr{i,2} = 'HO2'; 
fC3COCCO3(i)=fC3COCCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3COCCO3H(i)=fC3COCCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3 + HO2 = PEN2ONE1O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C3COCCO3'; Gstr{i,2} = 'HO2'; 
fC3COCCO3(i)=fC3COCCO3(i)-1; fHO2(i)=fHO2(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3 + NO = PEN2ONE1O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C3COCCO3'; Gstr{i,2} = 'NO'; 
fC3COCCO3(i)=fC3COCCO3(i)-1; fNO(i)=fNO(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3 + NO2 = C3COCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C3COCCO3'; Gstr{i,2} = 'NO2'; 
fC3COCCO3(i)=fC3COCCO3(i)-1; fNO2(i)=fNO2(i)-1; fC3COCPAN(i)=fC3COCPAN(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3 + NO3 = PEN2ONE1O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C3COCCO3'; Gstr{i,2} = 'NO3'; 
fC3COCCO3(i)=fC3COCCO3(i)-1; fNO3(i)=fNO3(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3 + RO2 = PEN2ONE1O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C3COCCO3'; Gstr{i,2} = 'RO2';
fC3COCCO3(i)=fC3COCCO3(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; 

i=i+1;
Rnames{i} = 'PEN2ONE1O2 + HO2 = PE2ONE1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PEN2ONE1O2'; Gstr{i,2} = 'HO2'; 
fPEN2ONE1O2(i)=fPEN2ONE1O2(i)-1; fHO2(i)=fHO2(i)-1; fPE2ONE1OOH(i)=fPE2ONE1OOH(i)+1; 

i=i+1;
Rnames{i} = 'PEN2ONE1O2 + NO = PEN2ONE1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PEN2ONE1O2'; Gstr{i,2} = 'NO'; 
fPEN2ONE1O2(i)=fPEN2ONE1O2(i)-1; fNO(i)=fNO(i)-1; fPEN2ONE1O(i)=fPEN2ONE1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEN2ONE1O2 + NO3 = PEN2ONE1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PEN2ONE1O2'; Gstr{i,2} = 'NO3'; 
fPEN2ONE1O2(i)=fPEN2ONE1O2(i)-1; fNO3(i)=fNO3(i)-1; fPEN2ONE1O(i)=fPEN2ONE1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEN2ONE1O2 + RO2 = PEN2ONE1O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'PEN2ONE1O2'; Gstr{i,2} = 'RO2';
fPEN2ONE1O2(i)=fPEN2ONE1O2(i)-1; fPEN2ONE1O(i)=fPEN2ONE1O(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO5C7 + hv = C2H5CO3 + HO2C4O2';
k(:,i) = J22;
Gstr{i,1} = 'HO2CO5C7'; 
fHO2CO5C7(i)=fHO2CO5C7(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2CO5C7 = C72O2';
k(:,i) = 1.52e-11.*0.349;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2CO5C7'; 
fOH(i)=fOH(i)-1; fHO2CO5C7(i)=fHO2CO5C7(i)-1; fC72O2(i)=fC72O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2CO5C7 = CO25C7 + HO2';
k(:,i) = 1.52e-11.*0.651;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2CO5C7'; 
fOH(i)=fOH(i)-1; fHO2CO5C7(i)=fHO2CO5C7(i)-1; fCO25C7(i)=fCO25C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C7 + hv = C2H5CO3 + MEKAO2';
k(:,i) = J22;
Gstr{i,1} = 'CO25C7'; 
fCO25C7(i)=fCO25C7(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C7 + hv = CH3CO3 + DIEKBO2';
k(:,i) = J22;
Gstr{i,1} = 'CO25C7'; 
fCO25C7(i)=fCO25C7(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fDIEKBO2(i)=fDIEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C7 = CO25C73O2';
k(:,i) = 6.60e-12.*0.500;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C7'; 
fOH(i)=fOH(i)-1; fCO25C7(i)=fCO25C7(i)-1; fCO25C73O2(i)=fCO25C73O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C7 = CO25C74O2';
k(:,i) = 6.60e-12.*0.500;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C7'; 
fOH(i)=fOH(i)-1; fCO25C7(i)=fCO25C7(i)-1; fCO25C74O2(i)=fCO25C74O2(i)+1; 

i=i+1;
Rnames{i} = 'C71O2 + HO2 = C71OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C71O2'; Gstr{i,2} = 'HO2'; 
fC71O2(i)=fC71O2(i)-1; fHO2(i)=fHO2(i)-1; fC71OOH(i)=fC71OOH(i)+1; 

i=i+1;
Rnames{i} = 'C71O2 + NO = C71O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C71O2'; Gstr{i,2} = 'NO'; 
fC71O2(i)=fC71O2(i)-1; fNO(i)=fNO(i)-1; fC71O(i)=fC71O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C71O2 + NO3 = C71O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C71O2'; Gstr{i,2} = 'NO3'; 
fC71O2(i)=fC71O2(i)-1; fNO3(i)=fNO3(i)-1; fC71O(i)=fC71O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C71O2 + RO2 = C71O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C71O2'; Gstr{i,2} = 'RO2';
fC71O2(i)=fC71O2(i)-1; fC71O(i)=fC71O(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + HO2 = C82OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'HO2'; 
fC82O2(i)=fC82O2(i)-1; fHO2(i)=fHO2(i)-1; fC82OOH(i)=fC82OOH(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + NO = C82NO3';
k(:,i) = KRO2NO.*0.173;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'NO'; 
fC82O2(i)=fC82O2(i)-1; fNO(i)=fNO(i)-1; fC82NO3(i)=fC82NO3(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + NO = C82O + NO2';
k(:,i) = KRO2NO.*0.827;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'NO'; 
fC82O2(i)=fC82O2(i)-1; fNO(i)=fNO(i)-1; fC82O(i)=fC82O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + NO3 = C82O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'NO3'; 
fC82O2(i)=fC82O2(i)-1; fNO3(i)=fNO3(i)-1; fC82O(i)=fC82O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + RO2 = C82O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'RO2';
fC82O2(i)=fC82O2(i)-1; fC82O(i)=fC82O(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + RO2 = HO34CO6C8';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'RO2';
fC82O2(i)=fC82O2(i)-1; fHO34CO6C8(i)=fHO34CO6C8(i)+1; 

i=i+1;
Rnames{i} = 'C82O2 + RO2 = HO3CO46C8';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C82O2'; Gstr{i,2} = 'RO2';
fC82O2(i)=fC82O2(i)-1; fHO3CO46C8(i)=fHO3CO46C8(i)+1; 

i=i+1;
Rnames{i} = 'CO36C8 + hv = C2H5CO3 + DIEKBO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO36C8'; 
fCO36C8(i)=fCO36C8(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fDIEKBO2(i)=fDIEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO36C8 = C84O2';
k(:,i) = 7.93e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO36C8'; 
fOH(i)=fOH(i)-1; fCO36C8(i)=fCO36C8(i)-1; fC84O2(i)=fC84O2(i)+1; 

i=i+1;
Rnames{i} = 'C81O2 + HO2 = C81OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C81O2'; Gstr{i,2} = 'HO2'; 
fC81O2(i)=fC81O2(i)-1; fHO2(i)=fHO2(i)-1; fC81OOH(i)=fC81OOH(i)+1; 

i=i+1;
Rnames{i} = 'C81O2 + NO = C81O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C81O2'; Gstr{i,2} = 'NO'; 
fC81O2(i)=fC81O2(i)-1; fNO(i)=fNO(i)-1; fC81O(i)=fC81O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C81O2 + NO3 = C81O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C81O2'; Gstr{i,2} = 'NO3'; 
fC81O2(i)=fC81O2(i)-1; fNO3(i)=fNO3(i)-1; fC81O(i)=fC81O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C81O2 + RO2 = C81O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C81O2'; Gstr{i,2} = 'RO2';
fC81O2(i)=fC81O2(i)-1; fC81O(i)=fC81O(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOOH + hv = BIACETO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BIACETOOH'; 
fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO(i)=fBIACETO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOOH + hv = BIACETO + OH';
k(:,i) = J35;
Gstr{i,1} = 'BIACETOOH'; 
fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO(i)=fBIACETO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOOH = BIACETO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOOH'; 
fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOOH = CO23C3CHO + OH';
k(:,i) = 5.99e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOOH'; 
fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO = CH3CO3 + HCHO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'BIACETO'; 
fBIACETO(i)=fBIACETO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOH + hv = CH3CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'BIACETOH'; 
fBIACETOH(i)=fBIACETOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOH = CO23C3CHO + HO2';
k(:,i) = 2.69e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOH'; 
fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO + hv = CH3CO3 + CO + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO + hv = CH3CO3 + HCOCO';
k(:,i) = J35;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCO(i)=fHCOCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO23C3CHO = CH3CO3 + CO + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO23C3CHO'; 
fNO3(i)=fNO3(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C3CHO = CH3CO3 + CO + CO';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C3CHO'; 
fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUOOH + OH = NBZFUO2';
k(:,i) = 6.18e-12;
Gstr{i,1} = 'NBZFUOOH'; Gstr{i,2} = 'OH'; 
fNBZFUOOH(i)=fNBZFUOOH(i)-1; fOH(i)=fOH(i)-1; fNBZFUO2(i)=fNBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUOOH + hv = NBZFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBZFUOOH'; 
fNBZFUOOH(i)=fNBZFUOOH(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO = CO14O3CHO + NO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'NBZFUO'; 
fNBZFUO(i)=fNBZFUO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO = NBZFUONE + HO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'NBZFUO'; 
fNBZFUO(i)=fNBZFUO(i)-1; fNBZFUONE(i)=fNBZFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + CO = CO14O3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'CO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fCO(i)=fCO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + NO = CO14O3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'NO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fNO(i)=fNO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + NO2 = CO14O3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'NO2'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fNO2(i)=fNO2(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + SO2 = CO14O3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'SO2'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fSO2(i)=fSO2(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO = CO14O3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'BZFUONOO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO = CO14O3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'BZFUONOO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fCO14O3CO2H(i)=fCO14O3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'BZFUOOH + OH = BZFUO2';
k(:,i) = 3.68e-11;
Gstr{i,1} = 'BZFUOOH'; Gstr{i,2} = 'OH'; 
fBZFUOOH(i)=fBZFUOOH(i)-1; fOH(i)=fOH(i)-1; fBZFUO2(i)=fBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUOOH + hv = BZFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZFUOOH'; 
fBZFUOOH(i)=fBZFUOOH(i)-1; fBZFUO(i)=fBZFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO = CO14O3CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'BZFUO'; 
fBZFUO(i)=fBZFUO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUCO + OH = CO14O3CHO + HO2';
k(:,i) = 1.78e-11;
Gstr{i,1} = 'BZFUCO'; Gstr{i,2} = 'OH'; 
fBZFUCO(i)=fBZFUCO(i)-1; fOH(i)=fOH(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUOH + OH = BZFUCO + HO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'BZFUOH'; Gstr{i,2} = 'OH'; 
fBZFUOH(i)=fBZFUOH(i)-1; fOH(i)=fOH(i)-1; fBZFUCO(i)=fBZFUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHY + OH = MALANHYO2';
k(:,i) = 1.4e-12;
Gstr{i,1} = 'MALANHY'; Gstr{i,2} = 'OH'; 
fMALANHY(i)=fMALANHY(i)-1; fOH(i)=fOH(i)-1; fMALANHYO2(i)=fMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3H + OH = HCOCOHCO3';
k(:,i) = 7.33e-11;
Gstr{i,1} = 'HCOCOHCO3H'; Gstr{i,2} = 'OH'; 
fHCOCOHCO3H(i)=fHCOCOHCO3H(i)-1; fOH(i)=fOH(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3H + hv = GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCOHCO3H'; 
fHCOCOHCO3H(i)=fHCOCOHCO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHPAN + OH = GLYOX + CO + NO2';
k(:,i) = 6.97e-11;
Gstr{i,1} = 'HCOCOHPAN'; Gstr{i,2} = 'OH'; 
fHCOCOHPAN(i)=fHCOCOHPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHPAN = HCOCOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HCOCOHPAN'; 
fHCOCOHPAN(i)=fHCOCOHPAN(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4DIAL + OH = CO + CO + CO + CO + HO2';
k(:,i) = 2.45e-11;
Gstr{i,1} = 'CO2C4DIAL'; Gstr{i,2} = 'OH'; 
fCO2C4DIAL(i)=fCO2C4DIAL(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4DIAL + hv = CO + CO + HO2 + HO2 + CO + CO';
k(:,i) = J34.*2;
Gstr{i,1} = 'CO2C4DIAL'; 
fCO2C4DIAL(i)=fCO2C4DIAL(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'DNPHEN + NO3 = NDNPHENO2';
k(:,i) = 2.25e-15;
Gstr{i,1} = 'DNPHEN'; Gstr{i,2} = 'NO3'; 
fDNPHEN(i)=fDNPHEN(i)-1; fNO3(i)=fNO3(i)-1; fNDNPHENO2(i)=fNDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHEN + OH = DNPHENO2';
k(:,i) = 3.00e-14;
Gstr{i,1} = 'DNPHEN'; Gstr{i,2} = 'OH'; 
fDNPHEN(i)=fDNPHEN(i)-1; fOH(i)=fOH(i)-1; fDNPHENO2(i)=fDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + HO2 = NPHEN1OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'HO2'; 
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fHO2(i)=fHO2(i)-1; fNPHEN1OOH(i)=fNPHEN1OOH(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + NO = NPHEN1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'NO'; 
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fNO(i)=fNO(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + NO3 = NPHEN1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'NO3'; 
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fNO3(i)=fNO3(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + RO2 = NPHEN1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'RO2';
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + HO2 = NNCATECOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'HO2'; 
fNNCATECO2(i)=fNNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fNNCATECOOH(i)=fNNCATECOOH(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + NO = NNCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'NO'; 
fNNCATECO2(i)=fNNCATECO2(i)-1; fNO(i)=fNO(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + NO3 = NNCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'NO3'; 
fNNCATECO2(i)=fNNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + RO2 = NNCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'RO2';
fNNCATECO2(i)=fNNCATECO2(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + HO2 = NCATECOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'HO2'; 
fNCATECO2(i)=fNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fNCATECOOH(i)=fNCATECOOH(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + NO = NCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'NO'; 
fNCATECO2(i)=fNCATECO2(i)-1; fNO(i)=fNO(i)-1; fNCATECO(i)=fNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + NO3 = NCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'NO3'; 
fNCATECO2(i)=fNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fNCATECO(i)=fNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + RO2 = NCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'RO2';
fNCATECO2(i)=fNCATECO2(i)-1; fNCATECO(i)=fNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1OOH + OH = CATEC1O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'CATEC1OOH'; Gstr{i,2} = 'OH'; 
fCATEC1OOH(i)=fCATEC1OOH(i)-1; fOH(i)=fOH(i)-1; fCATEC1O2(i)=fCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1OOH + hv = CATEC1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CATEC1OOH'; 
fCATEC1OOH(i)=fCATEC1OOH(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + HO2 = NBZQOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'HO2'; 
fNBZQO2(i)=fNBZQO2(i)-1; fHO2(i)=fHO2(i)-1; fNBZQOOH(i)=fNBZQOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + NO = NBZQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'NO'; 
fNBZQO2(i)=fNBZQO2(i)-1; fNO(i)=fNO(i)-1; fNBZQO(i)=fNBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + NO3 = NBZQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'NO3'; 
fNBZQO2(i)=fNBZQO2(i)-1; fNO3(i)=fNO3(i)-1; fNBZQO(i)=fNBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + RO2 = NBZQO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'RO2';
fNBZQO2(i)=fNBZQO2(i)-1; fNBZQO(i)=fNBZQO(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + HO2 = PBZQOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'HO2'; 
fPBZQO2(i)=fPBZQO2(i)-1; fHO2(i)=fHO2(i)-1; fPBZQOOH(i)=fPBZQOOH(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + NO = PBZQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'NO'; 
fPBZQO2(i)=fPBZQO2(i)-1; fNO(i)=fNO(i)-1; fPBZQO(i)=fPBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + NO3 = PBZQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'NO3'; 
fPBZQO2(i)=fPBZQO2(i)-1; fNO3(i)=fNO3(i)-1; fPBZQO(i)=fPBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + RO2 = PBZQCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'RO2';
fPBZQO2(i)=fPBZQO2(i)-1; fPBZQCO(i)=fPBZQCO(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + RO2 = PBZQO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'RO2';
fPBZQO2(i)=fPBZQO2(i)-1; fPBZQO(i)=fPBZQO(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + RO2 = PBZQOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'RO2';
fPBZQO2(i)=fPBZQO2(i)-1; fPBZQOH(i)=fPBZQOH(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQO2 + HO2 = NPTLQOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NPTLQO2'; Gstr{i,2} = 'HO2'; 
fNPTLQO2(i)=fNPTLQO2(i)-1; fHO2(i)=fHO2(i)-1; fNPTLQOOH(i)=fNPTLQOOH(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQO2 + NO = NPTLQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPTLQO2'; Gstr{i,2} = 'NO'; 
fNPTLQO2(i)=fNPTLQO2(i)-1; fNO(i)=fNO(i)-1; fNPTLQO(i)=fNPTLQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQO2 + NO3 = NPTLQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPTLQO2'; Gstr{i,2} = 'NO3'; 
fNPTLQO2(i)=fNPTLQO2(i)-1; fNO3(i)=fNO3(i)-1; fNPTLQO(i)=fNPTLQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQO2 + RO2 = NPTLQO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NPTLQO2'; Gstr{i,2} = 'RO2';
fNPTLQO2(i)=fNPTLQO2(i)-1; fNPTLQO(i)=fNPTLQO(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO2 + HO2 = PTLQOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'PTLQO2'; Gstr{i,2} = 'HO2'; 
fPTLQO2(i)=fPTLQO2(i)-1; fHO2(i)=fHO2(i)-1; fPTLQOOH(i)=fPTLQOOH(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO2 + NO = PTLQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PTLQO2'; Gstr{i,2} = 'NO'; 
fPTLQO2(i)=fPTLQO2(i)-1; fNO(i)=fNO(i)-1; fPTLQO(i)=fPTLQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO2 + NO3 = PTLQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PTLQO2'; Gstr{i,2} = 'NO3'; 
fPTLQO2(i)=fPTLQO2(i)-1; fNO3(i)=fNO3(i)-1; fPTLQO(i)=fPTLQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO2 + RO2 = PTLQCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PTLQO2'; Gstr{i,2} = 'RO2';
fPTLQO2(i)=fPTLQO2(i)-1; fPTLQCO(i)=fPTLQCO(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO2 + RO2 = PTLQO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'PTLQO2'; Gstr{i,2} = 'RO2';
fPTLQO2(i)=fPTLQO2(i)-1; fPTLQO(i)=fPTLQO(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO2 + RO2 = PTLQOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PTLQO2'; Gstr{i,2} = 'RO2';
fPTLQO2(i)=fPTLQO2(i)-1; fPTLQOH(i)=fPTLQOH(i)+1; 

i=i+1;
Rnames{i} = 'DNCRES + NO3 = NDNCRESO2';
k(:,i) = 7.83e-15;
Gstr{i,1} = 'DNCRES'; Gstr{i,2} = 'NO3'; 
fDNCRES(i)=fDNCRES(i)-1; fNO3(i)=fNO3(i)-1; fNDNCRESO2(i)=fNDNCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'DNCRES + OH = DNCRESO2';
k(:,i) = 5.10e-14;
Gstr{i,1} = 'DNCRES'; Gstr{i,2} = 'OH'; 
fDNCRES(i)=fDNCRES(i)-1; fOH(i)=fOH(i)-1; fDNCRESO2(i)=fDNCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1O2 + HO2 = NCRES1OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NCRES1O2'; Gstr{i,2} = 'HO2'; 
fNCRES1O2(i)=fNCRES1O2(i)-1; fHO2(i)=fHO2(i)-1; fNCRES1OOH(i)=fNCRES1OOH(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1O2 + NO = NCRES1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NCRES1O2'; Gstr{i,2} = 'NO'; 
fNCRES1O2(i)=fNCRES1O2(i)-1; fNO(i)=fNO(i)-1; fNCRES1O(i)=fNCRES1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1O2 + NO3 = NCRES1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NCRES1O2'; Gstr{i,2} = 'NO3'; 
fNCRES1O2(i)=fNCRES1O2(i)-1; fNO3(i)=fNO3(i)-1; fNCRES1O(i)=fNCRES1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1O2 + RO2 = NCRES1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NCRES1O2'; Gstr{i,2} = 'RO2';
fNCRES1O2(i)=fNCRES1O2(i)-1; fNCRES1O(i)=fNCRES1O(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATECO2 + HO2 = MNNCATCOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'MNNCATECO2'; Gstr{i,2} = 'HO2'; 
fMNNCATECO2(i)=fMNNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fMNNCATCOOH(i)=fMNNCATCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATECO2 + NO = MNNCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MNNCATECO2'; Gstr{i,2} = 'NO'; 
fMNNCATECO2(i)=fMNNCATECO2(i)-1; fNO(i)=fNO(i)-1; fMNNCATECO(i)=fMNNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATECO2 + NO3 = MNNCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MNNCATECO2'; Gstr{i,2} = 'NO3'; 
fMNNCATECO2(i)=fMNNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fMNNCATECO(i)=fMNNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATECO2 + RO2 = MNNCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'MNNCATECO2'; Gstr{i,2} = 'RO2';
fMNNCATECO2(i)=fMNNCATECO2(i)-1; fMNNCATECO(i)=fMNNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECO2 + HO2 = MNCATECOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'MNCATECO2'; Gstr{i,2} = 'HO2'; 
fMNCATECO2(i)=fMNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fMNCATECOOH(i)=fMNCATECOOH(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECO2 + NO = MNCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MNCATECO2'; Gstr{i,2} = 'NO'; 
fMNCATECO2(i)=fMNCATECO2(i)-1; fNO(i)=fNO(i)-1; fMNCATECO(i)=fMNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECO2 + NO3 = MNCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MNCATECO2'; Gstr{i,2} = 'NO3'; 
fMNCATECO2(i)=fMNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fMNCATECO(i)=fMNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECO2 + RO2 = MNCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'MNCATECO2'; Gstr{i,2} = 'RO2';
fMNCATECO2(i)=fMNCATECO2(i)-1; fMNCATECO(i)=fMNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1OOH + OH = MCATEC1O2';
k(:,i) = 2.05e-10;
Gstr{i,1} = 'MCATEC1OOH'; Gstr{i,2} = 'OH'; 
fMCATEC1OOH(i)=fMCATEC1OOH(i)-1; fOH(i)=fOH(i)-1; fMCATEC1O2(i)=fMCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'MCATEC1OOH + hv = MCATEC1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'MCATEC1OOH'; 
fMCATEC1OOH(i)=fMCATEC1OOH(i)-1; fMCATEC1O(i)=fMCATEC1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO2 = GLYOX + CH3O2 + CO';
k(:,i) = KDEC.*0.35;
Gstr{i,1} = 'MC3CODBCO2'; 
fMC3CODBCO2(i)=fMC3CODBCO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO2 = MMALANHY + HO2';
k(:,i) = KDEC.*0.65;
Gstr{i,1} = 'MC3CODBCO2'; 
fMC3CODBCO2(i)=fMC3CODBCO2(i)-1; fMMALANHY(i)=fMMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + O3 = MGLYOOA + HCOCO3H';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'O3'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + O3 = MGLYOX + PPGAOOB';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'O3'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fPPGAOOB(i)=fPPGAOOB(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + OH = C535O2';
k(:,i) = 4.72e-11;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'OH'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fOH(i)=fOH(i)-1; fC535O2(i)=fC535O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + hv = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5PACALD2'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBPAN + OH = GLYOX + HCHO + CO + NO2';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'MC3CODBPAN'; Gstr{i,2} = 'OH'; 
fMC3CODBPAN(i)=fMC3CODBPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBPAN = MC3CODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MC3CODBPAN'; 
fMC3CODBPAN(i)=fMC3CODBPAN(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + CO = MGLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'CO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fCO(i)=fCO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO = MGLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO2 = MGLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + SO2 = MGLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'SO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO = MGLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MGLYOO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + OH = CO2H3CHO + CO + OH';
k(:,i) = 4.58e-11;
Gstr{i,1} = 'C4MALOHOOH'; Gstr{i,2} = 'OH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + hv = C4M2ALOHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4MALOHOOH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + hv = CO2H3CHO + HO2 + CO + OH';
k(:,i) = J17.*2;
Gstr{i,1} = 'C4MALOHOOH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO = GLYOX + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C4M2ALOHO'; 
fC4M2ALOHO(i)=fC4M2ALOHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2AL2OH + OH = C4M2ALOHO';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'C4M2AL2OH'; Gstr{i,2} = 'OH'; 
fC4M2AL2OH(i)=fC4M2AL2OH(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; 

i=i+1;
Rnames{i} = 'C4M2AL2OH + hv = CO2H3CHO + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C4M2AL2OH'; 
fC4M2AL2OH(i)=fC4M2AL2OH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICAROOH + OH = C5134CO2OH + OH';
k(:,i) = 1.21e-10;
Gstr{i,1} = 'C5DICAROOH'; Gstr{i,2} = 'OH'; 
fC5DICAROOH(i)=fC5DICAROOH(i)-1; fOH(i)=fOH(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICAROOH + OH = C5DICARBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C5DICAROOH'; Gstr{i,2} = 'OH'; 
fC5DICAROOH(i)=fC5DICAROOH(i)-1; fOH(i)=fOH(i)-1; fC5DICARBO2(i)=fC5DICARBO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DICAROOH + hv = C5DICARBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5DICAROOH'; 
fC5DICAROOH(i)=fC5DICAROOH(i)-1; fC5DICARBO(i)=fC5DICARBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICAROOH + hv = C5DICARBO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C5DICAROOH'; 
fC5DICAROOH(i)=fC5DICAROOH(i)-1; fC5DICARBO(i)=fC5DICARBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICAROOH + hv = C5DICARBO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C5DICAROOH'; 
fC5DICAROOH(i)=fC5DICAROOH(i)-1; fC5DICARBO(i)=fC5DICARBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DICARBO = MGLYOX + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C5DICARBO'; 
fC5DICARBO(i)=fC5DICARBO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5134CO2OH + OH = C54CO + HO2';
k(:,i) = 7.48e-11;
Gstr{i,1} = 'C5134CO2OH'; Gstr{i,2} = 'OH'; 
fC5134CO2OH(i)=fC5134CO2OH(i)-1; fOH(i)=fOH(i)-1; fC54CO(i)=fC54CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5134CO2OH + hv = CO23C3CHO + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C5134CO2OH'; 
fC5134CO2OH(i)=fC5134CO2OH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5134CO2OH + hv = CO23C3CHO + HO2 + CO + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C5134CO2OH'; 
fC5134CO2OH(i)=fC5134CO2OH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514CO23OH + OH = C5134CO2OH + HO2';
k(:,i) = 6.26e-11;
Gstr{i,1} = 'C514CO23OH'; Gstr{i,2} = 'OH'; 
fC514CO23OH(i)=fC514CO23OH(i)-1; fOH(i)=fOH(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514CO23OH + hv = CO2H3CHO + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C514CO23OH'; 
fC514CO23OH(i)=fC514CO23OH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514CO23OH + hv = CO2H3CHO + HO2 + CO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C514CO23OH'; 
fC514CO23OH(i)=fC514CO23OH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUOOH + OH = NTLFUO2';
k(:,i) = 4.44e-12;
Gstr{i,1} = 'NTLFUOOH'; Gstr{i,2} = 'OH'; 
fNTLFUOOH(i)=fNTLFUOOH(i)-1; fOH(i)=fOH(i)-1; fNTLFUO2(i)=fNTLFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUOOH + hv = NTLFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NTLFUOOH'; 
fNTLFUOOH(i)=fNTLFUOOH(i)-1; fNTLFUO(i)=fNTLFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NTLFUO = ACCOMECHO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NTLFUO'; 
fNTLFUO(i)=fNTLFUO(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MECOACETO2 + HO2 = MECOACEOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MECOACETO2'; Gstr{i,2} = 'HO2'; 
fMECOACETO2(i)=fMECOACETO2(i)-1; fHO2(i)=fHO2(i)-1; fMECOACEOOH(i)=fMECOACEOOH(i)+1; 

i=i+1;
Rnames{i} = 'MECOACETO2 + NO = MECOACETO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MECOACETO2'; Gstr{i,2} = 'NO'; 
fMECOACETO2(i)=fMECOACETO2(i)-1; fNO(i)=fNO(i)-1; fMECOACETO(i)=fMECOACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MECOACETO2 + NO3 = MECOACETO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MECOACETO2'; Gstr{i,2} = 'NO3'; 
fMECOACETO2(i)=fMECOACETO2(i)-1; fNO3(i)=fNO3(i)-1; fMECOACETO(i)=fMECOACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MECOACETO2 + RO2 = MECOACETO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'MECOACETO2'; Gstr{i,2} = 'RO2';
fMECOACETO2(i)=fMECOACETO2(i)-1; fMECOACETO(i)=fMECOACETO(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOO + CO = ACCOMECHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'TLFUONOO'; Gstr{i,2} = 'CO'; 
fTLFUONOO(i)=fTLFUONOO(i)-1; fCO(i)=fCO(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOO + NO = ACCOMECHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'TLFUONOO'; Gstr{i,2} = 'NO'; 
fTLFUONOO(i)=fTLFUONOO(i)-1; fNO(i)=fNO(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOO + NO2 = ACCOMECHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'TLFUONOO'; Gstr{i,2} = 'NO2'; 
fTLFUONOO(i)=fTLFUONOO(i)-1; fNO2(i)=fNO2(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOO + SO2 = ACCOMECHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'TLFUONOO'; Gstr{i,2} = 'SO2'; 
fTLFUONOO(i)=fTLFUONOO(i)-1; fSO2(i)=fSO2(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOO = ACCOMECHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'TLFUONOO'; 
fTLFUONOO(i)=fTLFUONOO(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUONOO = C24O3CCO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'TLFUONOO'; 
fTLFUONOO(i)=fTLFUONOO(i)-1; fC24O3CCO2H(i)=fC24O3CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'TLFUOOH + OH = TLFUO2';
k(:,i) = 2.53e-11;
Gstr{i,1} = 'TLFUOOH'; Gstr{i,2} = 'OH'; 
fTLFUOOH(i)=fTLFUOOH(i)-1; fOH(i)=fOH(i)-1; fTLFUO2(i)=fTLFUO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUOOH + hv = TLFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'TLFUOOH'; 
fTLFUOOH(i)=fTLFUOOH(i)-1; fTLFUO(i)=fTLFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TLFUO = ACCOMECHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'TLFUO'; 
fTLFUO(i)=fTLFUO(i)-1; fACCOMECHO(i)=fACCOMECHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'TLFUOH + OH = TLFUO';
k(:,i) = 2.19e-11;
Gstr{i,1} = 'TLFUOH'; Gstr{i,2} = 'OH'; 
fTLFUOH(i)=fTLFUOH(i)-1; fOH(i)=fOH(i)-1; fTLFUO(i)=fTLFUO(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + HO2 = CO2H3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'HO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + HO2 = MGLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'HO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO = MGLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO2 = C4PAN6';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN6(i)=fC4PAN6(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO3 = MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO3'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + RO2 = MGLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'RO2';
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHOOH + OH = C5MCO2OHO2';
k(:,i) = 4.46e-11;
Gstr{i,1} = 'C6CO2OHOOH'; Gstr{i,2} = 'OH'; 
fC6CO2OHOOH(i)=fC6CO2OHOOH(i)-1; fOH(i)=fOH(i)-1; fC5MCO2OHO2(i)=fC5MCO2OHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHOOH + hv = C5CO243OH + OH + HO2 + CO';
k(:,i) = J17;
Gstr{i,1} = 'C6CO2OHOOH'; 
fC6CO2OHOOH(i)=fC6CO2OHOOH(i)-1; fC5CO243OH(i)=fC5CO243OH(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHOOH + hv = C5MCO2OHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6CO2OHOOH'; 
fC6CO2OHOOH(i)=fC6CO2OHOOH(i)-1; fC5MCO2OHO(i)=fC5MCO2OHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHOOH + hv = C5MCO2OHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C6CO2OHOOH'; 
fC6CO2OHOOH(i)=fC6CO2OHOOH(i)-1; fC5MCO2OHO(i)=fC5MCO2OHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5MCO2OHO = MGLYOX + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C5MCO2OHO'; 
fC5MCO2OHO(i)=fC5MCO2OHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2M2OH + OH = C6CO3MOH + HO2';
k(:,i) = 4.13e-11;
Gstr{i,1} = 'C6CO2M2OH'; Gstr{i,2} = 'OH'; 
fC6CO2M2OH(i)=fC6CO2M2OH(i)-1; fOH(i)=fOH(i)-1; fC6CO3MOH(i)=fC6CO3MOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2M2OH + hv = C5CO243OH + HO2 + CO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C6CO2M2OH'; 
fC6CO2M2OH(i)=fC6CO2M2OH(i)-1; fC5CO243OH(i)=fC5CO243OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2M2OH + hv = C5CO243OH + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C6CO2M2OH'; 
fC6CO2M2OH(i)=fC6CO2M2OH(i)-1; fC5CO243OH(i)=fC5CO243OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUOOH + OH = NMXYFUO2';
k(:,i) = 5.80e-12;
Gstr{i,1} = 'NMXYFUOOH'; Gstr{i,2} = 'OH'; 
fNMXYFUOOH(i)=fNMXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fNMXYFUO2(i)=fNMXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUOOH + hv = NMXYFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NMXYFUOOH'; 
fNMXYFUOOH(i)=fNMXYFUOOH(i)-1; fNMXYFUO(i)=fNMXYFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYFUO = C23O3MCHO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NMXYFUO'; 
fNMXYFUO(i)=fNMXYFUO(i)-1; fC23O3MCHO(i)=fC23O3MCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCOOH + OH = ACECOCOCH3 + OH';
k(:,i) = 6.01e-11;
Gstr{i,1} = 'C23O3MCOOH'; Gstr{i,2} = 'OH'; 
fC23O3MCOOH(i)=fC23O3MCOOH(i)-1; fOH(i)=fOH(i)-1; fACECOCOCH3(i)=fACECOCOCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCOOH + OH = C23O3MO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C23O3MCOOH'; Gstr{i,2} = 'OH'; 
fC23O3MCOOH(i)=fC23O3MCOOH(i)-1; fOH(i)=fOH(i)-1; fC23O3MO2(i)=fC23O3MO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCOOH + hv = C23O3MO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C23O3MCOOH'; 
fC23O3MCOOH(i)=fC23O3MCOOH(i)-1; fC23O3MO(i)=fC23O3MO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MO = CH3CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C23O3MO'; 
fC23O3MO(i)=fC23O3MO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'ACECOCOCH3 + OH = ACCOCOMEO2';
k(:,i) = 1.09e-13;
Gstr{i,1} = 'ACECOCOCH3'; Gstr{i,2} = 'OH'; 
fACECOCOCH3(i)=fACECOCOCH3(i)-1; fOH(i)=fOH(i)-1; fACCOCOMEO2(i)=fACCOCOMEO2(i)+1; 

i=i+1;
Rnames{i} = 'ACECOCOCH3 + hv = CH3CO3 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'ACECOCOCH3'; 
fACECOCOCH3(i)=fACECOCOCH3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MOH + OH = ACECOCOCH3 + HO2';
k(:,i) = 2.54e-11;
Gstr{i,1} = 'C23O3MOH'; Gstr{i,2} = 'OH'; 
fC23O3MOH(i)=fC23O3MOH(i)-1; fOH(i)=fOH(i)-1; fACECOCOCH3(i)=fACECOCOCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUOOH + OH = MXYFUO2';
k(:,i) = 3.09e-11;
Gstr{i,1} = 'MXYFUOOH'; Gstr{i,2} = 'OH'; 
fMXYFUOOH(i)=fMXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fMXYFUO2(i)=fMXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUOOH + hv = MXYFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYFUOOH'; 
fMXYFUOOH(i)=fMXYFUOOH(i)-1; fMXYFUO(i)=fMXYFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUO = C23O3MCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MXYFUO'; 
fMXYFUO(i)=fMXYFUO(i)-1; fC23O3MCHO(i)=fC23O3MCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYFUOH + OH = MXYFUO';
k(:,i) = 2.74e-11;
Gstr{i,1} = 'MXYFUOH'; Gstr{i,2} = 'OH'; 
fMXYFUOH(i)=fMXYFUOH(i)-1; fOH(i)=fOH(i)-1; fMXYFUO(i)=fMXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUOOH + OH = NPXYFUO2';
k(:,i) = 5.16e-12;
Gstr{i,1} = 'NPXYFUOOH'; Gstr{i,2} = 'OH'; 
fNPXYFUOOH(i)=fNPXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fNPXYFUO2(i)=fNPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUOOH + hv = NPXYFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPXYFUOOH'; 
fNPXYFUOOH(i)=fNPXYFUOOH(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO = C23O3CCHO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NPXYFUO'; 
fNPXYFUO(i)=fNPXYFUO(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + OH = MCOCOMOXO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'MCOCOMOOOH'; Gstr{i,2} = 'OH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fOH(i)=fOH(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + hv = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MCOCOMOOOH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + hv = MCOCOMOXO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MCOCOMOOOH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO = HCHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MCOCOMOXO'; 
fMCOCOMOXO(i)=fMCOCOMOXO(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOOH + OH = PXYFUO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'PXYFUOOH'; Gstr{i,2} = 'OH'; 
fPXYFUOOH(i)=fPXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fPXYFUO2(i)=fPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOOH + hv = PXYFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PXYFUOOH'; 
fPXYFUOOH(i)=fPXYFUOOH(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO = C23O3CCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'PXYFUO'; 
fPXYFUO(i)=fPXYFUO(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOH + OH = PXYFUO';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'PXYFUOH'; Gstr{i,2} = 'OH'; 
fPXYFUOH(i)=fPXYFUOH(i)-1; fOH(i)=fOH(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHY + OH = MMALANHYO2';
k(:,i) = 1.50e-12;
Gstr{i,1} = 'MMALANHY'; Gstr{i,2} = 'OH'; 
fMMALANHY(i)=fMMALANHY(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO2(i)=fMMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + OH = CH3COCO3';
k(:,i) = 3.69e-12;
Gstr{i,1} = 'CH3COCO3H'; Gstr{i,2} = 'OH'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fOH(i)=fOH(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + hv = CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3COCO3H'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + hv = CH3CO3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'CH3COCO3H'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PPACLOOA = CH3COCO3 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'PPACLOOA'; 
fPPACLOOA(i)=fPPACLOOA(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + HO2 = C534OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'HO2'; 
fC534O2(i)=fC534O2(i)-1; fHO2(i)=fHO2(i)-1; fC534OOH(i)=fC534OOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + NO = C534O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'NO'; 
fC534O2(i)=fC534O2(i)-1; fNO(i)=fNO(i)-1; fC534O(i)=fC534O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + NO3 = C534O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'NO3'; 
fC534O2(i)=fC534O2(i)-1; fNO3(i)=fNO3(i)-1; fC534O(i)=fC534O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + RO2 = C534O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'RO2';
fC534O2(i)=fC534O2(i)-1; fC534O(i)=fC534O(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + HO2 = CHOMOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'HO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOMOHCO3H(i)=fCHOMOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + HO2 = MGLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'HO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO = MGLYOX + NO2 + HO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO2 = CHOMOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fCHOMOHPAN(i)=fCHOMOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO3 = MGLYOX + NO2 + HO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO3'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + RO2 = MGLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'RO2';
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOL + NO3 = NDNMXYOLO2';
k(:,i) = 7.83e-15;
Gstr{i,1} = 'DNMXYOL'; Gstr{i,2} = 'NO3'; 
fDNMXYOL(i)=fDNMXYOL(i)-1; fNO3(i)=fNO3(i)-1; fNDNMXYOLO2(i)=fNDNMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOL + OH = DNMXYOLO2';
k(:,i) = 5.10e-14;
Gstr{i,1} = 'DNMXYOL'; Gstr{i,2} = 'OH'; 
fDNMXYOL(i)=fDNMXYOL(i)-1; fOH(i)=fOH(i)-1; fDNMXYOLO2(i)=fDNMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1O2 + HO2 = NMXYOL1OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'NMXYOL1O2'; Gstr{i,2} = 'HO2'; 
fNMXYOL1O2(i)=fNMXYOL1O2(i)-1; fHO2(i)=fHO2(i)-1; fNMXYOL1OOH(i)=fNMXYOL1OOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1O2 + NO = NMXYOL1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NMXYOL1O2'; Gstr{i,2} = 'NO'; 
fNMXYOL1O2(i)=fNMXYOL1O2(i)-1; fNO(i)=fNO(i)-1; fNMXYOL1O(i)=fNMXYOL1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1O2 + NO3 = NMXYOL1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NMXYOL1O2'; Gstr{i,2} = 'NO3'; 
fNMXYOL1O2(i)=fNMXYOL1O2(i)-1; fNO3(i)=fNO3(i)-1; fNMXYOL1O(i)=fNMXYOL1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1O2 + RO2 = NMXYOL1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NMXYOL1O2'; Gstr{i,2} = 'RO2';
fNMXYOL1O2(i)=fNMXYOL1O2(i)-1; fNMXYOL1O(i)=fNMXYOL1O(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQO2 + HO2 = NMXYQOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'NMXYQO2'; Gstr{i,2} = 'HO2'; 
fNMXYQO2(i)=fNMXYQO2(i)-1; fHO2(i)=fHO2(i)-1; fNMXYQOOH(i)=fNMXYQOOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQO2 + NO = NMXYQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NMXYQO2'; Gstr{i,2} = 'NO'; 
fNMXYQO2(i)=fNMXYQO2(i)-1; fNO(i)=fNO(i)-1; fNMXYQO(i)=fNMXYQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQO2 + NO3 = NMXYQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NMXYQO2'; Gstr{i,2} = 'NO3'; 
fNMXYQO2(i)=fNMXYQO2(i)-1; fNO3(i)=fNO3(i)-1; fNMXYQO(i)=fNMXYQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQO2 + RO2 = NMXYQO';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NMXYQO2'; Gstr{i,2} = 'RO2';
fNMXYQO2(i)=fNMXYQO2(i)-1; fNMXYQO(i)=fNMXYQO(i)+1; 

i=i+1;
Rnames{i} = 'MXYQO2 + HO2 = MXYQOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXYQO2'; Gstr{i,2} = 'HO2'; 
fMXYQO2(i)=fMXYQO2(i)-1; fHO2(i)=fHO2(i)-1; fMXYQOOH(i)=fMXYQOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYQO2 + NO = MXYQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXYQO2'; Gstr{i,2} = 'NO'; 
fMXYQO2(i)=fMXYQO2(i)-1; fNO(i)=fNO(i)-1; fMXYQO(i)=fMXYQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYQO2 + NO3 = MXYQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYQO2'; Gstr{i,2} = 'NO3'; 
fMXYQO2(i)=fMXYQO2(i)-1; fNO3(i)=fNO3(i)-1; fMXYQO(i)=fMXYQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYQO2 + RO2 = MXYQO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'MXYQO2'; Gstr{i,2} = 'RO2';
fMXYQO2(i)=fMXYQO2(i)-1; fMXYQO(i)=fMXYQO(i)+1; 

i=i+1;
Rnames{i} = 'MXYQO2 + RO2 = MXYQOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'MXYQO2'; Gstr{i,2} = 'RO2';
fMXYQO2(i)=fMXYQO2(i)-1; fMXYQOH(i)=fMXYQOH(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATCO2 + HO2 = MXNNCATOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXNNCATCO2'; Gstr{i,2} = 'HO2'; 
fMXNNCATCO2(i)=fMXNNCATCO2(i)-1; fHO2(i)=fHO2(i)-1; fMXNNCATOOH(i)=fMXNNCATOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATCO2 + NO = MXNNCATCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXNNCATCO2'; Gstr{i,2} = 'NO'; 
fMXNNCATCO2(i)=fMXNNCATCO2(i)-1; fNO(i)=fNO(i)-1; fMXNNCATCO(i)=fMXNNCATCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATCO2 + NO3 = MXNNCATCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXNNCATCO2'; Gstr{i,2} = 'NO3'; 
fMXNNCATCO2(i)=fMXNNCATCO2(i)-1; fNO3(i)=fNO3(i)-1; fMXNNCATCO(i)=fMXNNCATCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATCO2 + RO2 = MXNNCATCO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'MXNNCATCO2'; Gstr{i,2} = 'RO2';
fMXNNCATCO2(i)=fMXNNCATCO2(i)-1; fMXNNCATCO(i)=fMXNNCATCO(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECO2 + HO2 = MXNCATCOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXNCATECO2'; Gstr{i,2} = 'HO2'; 
fMXNCATECO2(i)=fMXNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fMXNCATCOOH(i)=fMXNCATCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECO2 + NO = MXNCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXNCATECO2'; Gstr{i,2} = 'NO'; 
fMXNCATECO2(i)=fMXNCATECO2(i)-1; fNO(i)=fNO(i)-1; fMXNCATECO(i)=fMXNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECO2 + NO3 = MXNCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXNCATECO2'; Gstr{i,2} = 'NO3'; 
fMXNCATECO2(i)=fMXNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fMXNCATECO(i)=fMXNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECO2 + RO2 = MXNCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'MXNCATECO2'; Gstr{i,2} = 'RO2';
fMXNCATECO2(i)=fMXNCATECO2(i)-1; fMXNCATECO(i)=fMXNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'MXCTEC1OOH + OH = MXCATEC1O2';
k(:,i) = 2.05e-10;
Gstr{i,1} = 'MXCTEC1OOH'; Gstr{i,2} = 'OH'; 
fMXCTEC1OOH(i)=fMXCTEC1OOH(i)-1; fOH(i)=fOH(i)-1; fMXCATEC1O2(i)=fMXCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'MXCTEC1OOH + hv = MXCATEC1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXCTEC1OOH'; 
fMXCTEC1OOH(i)=fMXCTEC1OOH(i)-1; fMXCATEC1O(i)=fMXCATEC1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DMPHOHNO2 + OH = MXYOHNO2O2';
k(:,i) = 1.53e-12;
Gstr{i,1} = 'DMPHOHNO2'; Gstr{i,2} = 'OH'; 
fDMPHOHNO2(i)=fDMPHOHNO2(i)-1; fOH(i)=fOH(i)-1; fMXYOHNO2O2(i)=fMXYOHNO2O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234O2 + HO2 = C5CO234OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C5CO234O2'; Gstr{i,2} = 'HO2'; 
fC5CO234O2(i)=fC5CO234O2(i)-1; fHO2(i)=fHO2(i)-1; fC5CO234OOH(i)=fC5CO234OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234O2 + NO = C5CO234O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5CO234O2'; Gstr{i,2} = 'NO'; 
fC5CO234O2(i)=fC5CO234O2(i)-1; fNO(i)=fNO(i)-1; fC5CO234O(i)=fC5CO234O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234O2 + NO3 = C5CO234O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5CO234O2'; Gstr{i,2} = 'NO3'; 
fC5CO234O2(i)=fC5CO234O2(i)-1; fNO3(i)=fNO3(i)-1; fC5CO234O(i)=fC5CO234O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234O2 + RO2 = C5CO234O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C5CO234O2'; Gstr{i,2} = 'RO2';
fC5CO234O2(i)=fC5CO234O2(i)-1; fC5CO234O(i)=fC5CO234O(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC2H4CO2H = HOCH2CH2O2';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC2H4CO2H'; 
fOH(i)=fOH(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3H + hv = HOCH2CH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOC2H4CO3H'; 
fHOC2H4CO3H(i)=fHOC2H4CO3H(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC2H4CO3H = HOC2H4CO3';
k(:,i) = 1.73e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC2H4CO3H'; 
fOH(i)=fOH(i)-1; fHOC2H4CO3H(i)=fHOC2H4CO3H(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3PAN1 = HOC2H4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3PAN1'; 
fC3PAN1(i)=fC3PAN1(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3PAN1 = HOCH2CHO + CO + NO2';
k(:,i) = 4.51e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3PAN1'; 
fOH(i)=fOH(i)-1; fC3PAN1(i)=fC3PAN1(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC3H6CO2H = HO1C3O2';
k(:,i) = 9.64e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC3H6CO2H'; 
fOH(i)=fOH(i)-1; fHOC3H6CO2H(i)=fHOC3H6CO2H(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3H + hv = HO1C3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOC3H6CO3H'; 
fHOC3H6CO3H(i)=fHOC3H6CO3H(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOC3H6CO3H = HOC3H6CO3';
k(:,i) = 1.31e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOC3H6CO3H'; 
fOH(i)=fOH(i)-1; fHOC3H6CO3H(i)=fHOC3H6CO3H(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN1 = HOC3H6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN1'; 
fC4PAN1(i)=fC4PAN1(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN1 = HOC2H4CHO + CO + NO2';
k(:,i) = 5.92e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN1'; 
fOH(i)=fOH(i)-1; fC4PAN1(i)=fC4PAN1(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + OH = CO2C3CO3';
k(:,i) = 4.18e-12;
Gstr{i,1} = 'CO2C3CO3H'; Gstr{i,2} = 'OH'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + hv = CH3COCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + hv = CH3COCH2O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN + OH = MGLYOX + CO + NO2';
k(:,i) = 5.93e-13;
Gstr{i,1} = 'CO2C3PAN'; Gstr{i,2} = 'OH'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN = CO2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO2C3PAN'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C3CO2H = IPROPOLO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C3CO2H'; 
fOH(i)=fOH(i)-1; fHO2C3CO2H(i)=fHO2C3CO2H(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3H + hv = IPROPOLO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C3CO3H'; 
fHO2C3CO3H(i)=fHO2C3CO3H(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C3CO3H = HO2C3CO3';
k(:,i) = 3.12e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C3CO3H'; 
fOH(i)=fOH(i)-1; fHO2C3CO3H(i)=fHO2C3CO3H(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN3 = HO2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN3'; 
fC4PAN3(i)=fC4PAN3(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN3 = CH3CHOHCHO + CO + NO2';
k(:,i) = 9.00e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN3'; 
fOH(i)=fOH(i)-1; fC4PAN3(i)=fC4PAN3(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + OH = HO1CO3C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HOCO3C4OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + OH = HO1CO3CHO + OH';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'HOCO3C4OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + hv = HO1CO3C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCO3C4OOH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + hv = HO1CO3C4O + OH';
k(:,i) = J22;
Gstr{i,1} = 'HOCO3C4OOH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O = HOC2H4CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'HO1CO3C4O'; 
fHO1CO3C4O(i)=fHO1CO3C4O(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C4 + OH = HO1CO3CHO + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'HO14CO2C4'; Gstr{i,2} = 'OH'; 
fHO14CO2C4(i)=fHO14CO2C4(i)-1; fOH(i)=fOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C4 + hv = HOCH2CO3 + HOCH2CH2O2';
k(:,i) = J22;
Gstr{i,1} = 'HO14CO2C4'; 
fHO14CO2C4(i)=fHO14CO2C4(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + NO3 = HOC2H4CO3 + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO1CO3CHO'; Gstr{i,2} = 'NO3'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fNO3(i)=fNO3(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + OH = HOC2H4CO3 + CO';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'HO1CO3CHO'; Gstr{i,2} = 'OH'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + hv = HOC2H4CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HO1CO3CHO'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + hv = C51O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fC51O(i)=fC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + hv = C51O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fC51O(i)=fC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51OOH = HO1CO24C5 + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51OOH'; 
fOH(i)=fOH(i)-1; fC51OOH(i)=fC51OOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51NO3 + hv = C51O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C51NO3'; 
fC51NO3(i)=fC51NO3(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51NO3 = HO1CO24C5 + NO2';
k(:,i) = 1.55e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51NO3'; 
fOH(i)=fOH(i)-1; fC51NO3(i)=fC51NO3(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O = CO2C3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6382./T);
Gstr{i,1} = 'C51O'; 
fC51O(i)=fC51O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51OH = HO1CO24C5 + OH';
k(:,i) = 3.78e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51OH'; 
fOH(i)=fOH(i)-1; fC51OH(i)=fC51OH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO24C5 + hv = CH3COCH2O2 + HOCH2CO3';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO1CO24C5'; 
fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO24C5 = CO24C4CHO + HO2';
k(:,i) = 3.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO24C5'; 
fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = CO2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = CO2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C4CO3H(i)=fCO2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = MEKAO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO = MEKAO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO(i)=fNO(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO2 = C5PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN2(i)=fC5PAN2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO3 = MEKAO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO3'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + RO2 = CO2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'RO2';
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + RO2 = MEKAO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'RO2';
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO2H + hv = MEKCO2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'CO3C4CO2H'; 
fCO3C4CO2H(i)=fCO3C4CO2H(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C4CO2H = MEKCO2';
k(:,i) = 1.90e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C4CO2H'; 
fOH(i)=fOH(i)-1; fCO3C4CO2H(i)=fCO3C4CO2H(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3H + hv = MEKCO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO3C4CO3H'; 
fCO3C4CO3H(i)=fCO3C4CO3H(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3H + hv = MEKCO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO3C4CO3H'; 
fCO3C4CO3H(i)=fCO3C4CO3H(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C4CO3H = CO3C4CO3';
k(:,i) = 5.36e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C4CO3H'; 
fOH(i)=fOH(i)-1; fCO3C4CO3H(i)=fCO3C4CO3H(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN16 = CO3C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN16'; 
fC5PAN16(i)=fC5PAN16(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN16 = EGLYOX + CO + NO2';
k(:,i) = 1.44e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN16'; 
fOH(i)=fOH(i)-1; fC5PAN16(i)=fC5PAN16(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3H + hv = HO3C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C4CO3H'; 
fHO3C4CO3H(i)=fHO3C4CO3H(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C4CO3H = HO3C4CO3';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C4CO3H'; 
fOH(i)=fOH(i)-1; fHO3C4CO3H(i)=fHO3C4CO3H(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN8 = HO3C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN8'; 
fC5PAN8(i)=fC5PAN8(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN8 = HO3C3CHO + CO + NO2';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN8'; 
fOH(i)=fOH(i)-1; fC5PAN8(i)=fC5PAN8(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4OOH + hv = HO2C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C4OOH'; 
fHO2C4OOH(i)=fHO2C4OOH(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4OOH = HO2C3CHO + OH';
k(:,i) = 1.97e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4OOH'; 
fOH(i)=fOH(i)-1; fHO2C4OOH(i)=fHO2C4OOH(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4OOH = HO2C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4OOH'; 
fOH(i)=fOH(i)-1; fHO2C4OOH(i)=fHO2C4OOH(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4NO3 + hv = HO2C4O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO2C4NO3'; 
fHO2C4NO3(i)=fHO2C4NO3(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4NO3 = HO2C3CHO + NO2';
k(:,i) = 8.93e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4NO3'; 
fOH(i)=fOH(i)-1; fHO2C4NO3(i)=fHO2C4NO3(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O = HO13C4O2';
k(:,i) = 3.05e11.*exp(-4240./T);
Gstr{i,1} = 'HO2C4O'; 
fHO2C4O(i)=fHO2C4O(i)-1; fHO13C4O2(i)=fHO13C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O = HO2C3CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HO2C4O'; 
fHO2C4O(i)=fHO2C4O(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4CO2H = HO2C4O2';
k(:,i) = 1.11e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4CO2H'; 
fOH(i)=fOH(i)-1; fHO2C4CO2H(i)=fHO2C4CO2H(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3H + hv = HO2C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C4CO3H'; 
fHO2C4CO3H(i)=fHO2C4CO3H(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2C4CO3H = HO2C4CO3';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2C4CO3H'; 
fOH(i)=fOH(i)-1; fHO2C4CO3H(i)=fHO2C4CO3H(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN1 = HO2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN1'; 
fC5PAN1(i)=fC5PAN1(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN1 = HO2C3CHO + CO + NO2';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN1'; 
fOH(i)=fOH(i)-1; fC5PAN1(i)=fC5PAN1(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO4C5OOH + OH = HO2CO4C5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HOCO4C5OOH'; Gstr{i,2} = 'OH'; 
fHOCO4C5OOH(i)=fHOCO4C5OOH(i)-1; fOH(i)=fOH(i)-1; fHO2CO4C5O2(i)=fHO2CO4C5O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO4C5OOH + OH = HO2CO4CHO + OH';
k(:,i) = 3.67e-11;
Gstr{i,1} = 'HOCO4C5OOH'; Gstr{i,2} = 'OH'; 
fHOCO4C5OOH(i)=fHOCO4C5OOH(i)-1; fOH(i)=fOH(i)-1; fHO2CO4CHO(i)=fHO2CO4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO4C5OOH + hv = HO2CO4C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCO4C5OOH'; 
fHOCO4C5OOH(i)=fHOCO4C5OOH(i)-1; fHO2CO4C5O(i)=fHO2CO4C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO4C5OOH + hv = HO2CO4C5O + OH';
k(:,i) = J22;
Gstr{i,1} = 'HOCO4C5OOH'; 
fHOCO4C5OOH(i)=fHOCO4C5OOH(i)-1; fHO2CO4C5O(i)=fHO2CO4C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4C5O = CO2C3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'HO2CO4C5O'; 
fHO2CO4C5O(i)=fHO2CO4C5O(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C5 + OH = HO1CO24C5 + HO2';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'HO14CO2C5'; Gstr{i,2} = 'OH'; 
fHO14CO2C5(i)=fHO14CO2C5(i)-1; fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C5 + hv = IPROPOLO2 + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'HO14CO2C5'; 
fHO14CO2C5(i)=fHO14CO2C5(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4CHO + OH = CO24C4CHO + HO2';
k(:,i) = 3.02e-11;
Gstr{i,1} = 'HO2CO4CHO'; Gstr{i,2} = 'OH'; 
fHO2CO4CHO(i)=fHO2CO4CHO(i)-1; fOH(i)=fOH(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO4CHO + hv = HO2C3CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HO2CO4CHO'; 
fHO2CO4CHO(i)=fHO2CO4CHO(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54OOH + OH = CO23C54O2';
k(:,i) = 2.24e-11;
Gstr{i,1} = 'CO23C54OOH'; Gstr{i,2} = 'OH'; 
fCO23C54OOH(i)=fCO23C54OOH(i)-1; fOH(i)=fOH(i)-1; fCO23C54O2(i)=fCO23C54O2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54OOH + hv = CO23C54O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO23C54OOH'; 
fCO23C54OOH(i)=fCO23C54OOH(i)-1; fCO23C54O(i)=fCO23C54O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54OOH + hv = CO23C54O + OH';
k(:,i) = J35;
Gstr{i,1} = 'CO23C54OOH'; 
fCO23C54OOH(i)=fCO23C54OOH(i)-1; fCO23C54O(i)=fCO23C54O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C54O = CH3CHO + CH3CO3 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'CO23C54O'; 
fCO23C54O(i)=fCO23C54O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C5OOH + OH = HOCO3C54O2';
k(:,i) = 3.57e-11;
Gstr{i,1} = 'HOCO3C5OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C5OOH(i)=fHOCO3C5OOH(i)-1; fOH(i)=fOH(i)-1; fHOCO3C54O2(i)=fHOCO3C54O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C5OOH + hv = CH3CHO + HOC2H4CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'HOCO3C5OOH'; 
fHOCO3C5OOH(i)=fHOCO3C5OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C5OOH + hv = HOCO3C54O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCO3C5OOH'; 
fHOCO3C5OOH(i)=fHOCO3C5OOH(i)-1; fHOCO3C54O(i)=fHOCO3C54O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C54O = CH3CHO + HOC2H4CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'HOCO3C54O'; 
fHOCO3C54O(i)=fHOCO3C54O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO3C5 + OH = HO1CO34C5 + HO2';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'HO14CO3C5'; Gstr{i,2} = 'OH'; 
fHO14CO3C5(i)=fHO14CO3C5(i)-1; fOH(i)=fOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO3C5 + hv = CH3CHO + HOC2H4CO3';
k(:,i) = J22;
Gstr{i,1} = 'HO14CO3C5'; 
fHO14CO3C5(i)=fHO14CO3C5(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO34C5 + hv = CH3CO3 + HOC2H4CO3';
k(:,i) = J35;
Gstr{i,1} = 'HO1CO34C5'; 
fHO1CO34C5(i)=fHO1CO34C5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO34C5 = CO23C4CHO + HO2';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO34C5'; 
fOH(i)=fOH(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5OOH + hv = HO13C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO13C5OOH'; 
fHO13C5OOH(i)=fHO13C5OOH(i)-1; fHO13C5O(i)=fHO13C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C5OOH = HO13CO4C5 + OH';
k(:,i) = 3.98e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C5OOH'; 
fOH(i)=fOH(i)-1; fHO13C5OOH(i)=fHO13C5OOH(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5NO3 + hv = HO13C5O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO13C5NO3'; 
fHO13C5NO3(i)=fHO13C5NO3(i)-1; fHO13C5O(i)=fHO13C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C5NO3 = HO13CO4C5 + NO2';
k(:,i) = 7.51e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C5NO3'; 
fOH(i)=fOH(i)-1; fHO13C5NO3(i)=fHO13C5NO3(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C5O = HOC2H4CHO + CH3CHO + HO2';
k(:,i) = 2.00e14.*exp(-4714./T);
Gstr{i,1} = 'HO13C5O'; 
fHO13C5O(i)=fHO13C5O(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO134C5 = HO13CO4C5 + HO2';
k(:,i) = 2.46e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO134C5'; 
fOH(i)=fOH(i)-1; fHO134C5(i)=fHO134C5(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13CO4C5 + hv = CH3CO3 + HOC2H4CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HO13CO4C5'; 
fHO13CO4C5(i)=fHO13CO4C5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13CO4C5 = HO1CO34C5 + HO2';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13CO4C5'; 
fOH(i)=fOH(i)-1; fHO13CO4C5(i)=fHO13CO4C5(i)-1; fHO1CO34C5(i)=fHO1CO34C5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C63OOH + hv = C63O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C63OOH'; 
fC63OOH(i)=fC63OOH(i)-1; fC63O(i)=fC63O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C63OOH + hv = C63O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C63OOH'; 
fC63OOH(i)=fC63OOH(i)-1; fC63O(i)=fC63O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C63OOH = HO1CO24C6 + OH';
k(:,i) = 8.80e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C63OOH'; 
fOH(i)=fOH(i)-1; fC63OOH(i)=fC63OOH(i)-1; fHO1CO24C6(i)=fHO1CO24C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C63NO3 + hv = C63O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C63NO3'; 
fC63NO3(i)=fC63NO3(i)-1; fC63O(i)=fC63O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C63NO3 = HO1CO24C6 + NO2';
k(:,i) = 2.54e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C63NO3'; 
fOH(i)=fOH(i)-1; fC63NO3(i)=fC63NO3(i)-1; fHO1CO24C6(i)=fHO1CO24C6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C63O = CO3C4CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6261./T);
Gstr{i,1} = 'C63O'; 
fC63O(i)=fC63O(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C63OH + hv = C63O + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C63OH'; 
fC63OH(i)=fC63OH(i)-1; fC63O(i)=fC63O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C63OH = HO1CO24C6 + HO2';
k(:,i) = 3.90e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C63OH'; 
fOH(i)=fOH(i)-1; fC63OH(i)=fC63OH(i)-1; fHO1CO24C6(i)=fHO1CO24C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO24C6 + hv = HOCH2CO3 + MEKCO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO1CO24C6'; 
fHO1CO24C6(i)=fHO1CO24C6(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO24C6 = CO35C5CHO + HO2';
k(:,i) = 4.35e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO24C6'; 
fOH(i)=fOH(i)-1; fHO1CO24C6(i)=fHO1CO24C6(i)-1; fCO35C5CHO(i)=fCO35C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + HO2 = CO3C5CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'HO2'; 
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO3C5CO2H(i)=fCO3C5CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + HO2 = CO3C5CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'HO2'; 
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO3C5CO3H(i)=fCO3C5CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + HO2 = DIEKBO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'HO2'; 
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + NO = DIEKBO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'NO'; 
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fNO(i)=fNO(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + NO2 = C6PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'NO2'; 
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fNO2(i)=fNO2(i)-1; fC6PAN2(i)=fC6PAN2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + NO3 = DIEKBO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'NO3'; 
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fNO3(i)=fNO3(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + RO2 = CO3C5CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'RO2';
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fCO3C5CO2H(i)=fCO3C5CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3 + RO2 = DIEKBO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO3C5CO3'; Gstr{i,2} = 'RO2';
fCO3C5CO3(i)=fCO3C5CO3(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O2 + HO2 = COC4NO3OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'CO3C4NO3O2'; Gstr{i,2} = 'HO2'; 
fCO3C4NO3O2(i)=fCO3C4NO3O2(i)-1; fHO2(i)=fHO2(i)-1; fCOC4NO3OOH(i)=fCOC4NO3OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O2 + NO = CO3C4NO3O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO3C4NO3O2'; Gstr{i,2} = 'NO'; 
fCO3C4NO3O2(i)=fCO3C4NO3O2(i)-1; fNO(i)=fNO(i)-1; fCO3C4NO3O(i)=fCO3C4NO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O2 + NO3 = CO3C4NO3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO3C4NO3O2'; Gstr{i,2} = 'NO3'; 
fCO3C4NO3O2(i)=fCO3C4NO3O2(i)-1; fNO3(i)=fNO3(i)-1; fCO3C4NO3O(i)=fCO3C4NO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O2 + RO2 = CO23C4NO3';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'CO3C4NO3O2'; Gstr{i,2} = 'RO2';
fCO3C4NO3O2(i)=fCO3C4NO3O2(i)-1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O2 + RO2 = CO3C4NO3O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'CO3C4NO3O2'; Gstr{i,2} = 'RO2';
fCO3C4NO3O2(i)=fCO3C4NO3O2(i)-1; fCO3C4NO3O(i)=fCO3C4NO3O(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O2 + RO2 = CO3C4NO3OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'CO3C4NO3O2'; Gstr{i,2} = 'RO2';
fCO3C4NO3O2(i)=fCO3C4NO3O2(i)-1; fCO3C4NO3OH(i)=fCO3C4NO3OH(i)+1; 

i=i+1;
Rnames{i} = 'BUTAL2O = C2H5CHO + HO2 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'BUTAL2O'; 
fBUTAL2O(i)=fBUTAL2O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + HO2 = C2H5CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'HO2'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + HO2 = HO3C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'HO2'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO3C3CO3H(i)=fHO3C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + NO = C2H5CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'NO'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fNO(i)=fNO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + NO2 = HO3C3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'NO2'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fHO3C3PAN(i)=fHO3C3PAN(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + NO3 = C2H5CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'NO3'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + RO2 = C2H5CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'RO2';
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C61OOH + hv = C61O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C61OOH'; 
fC61OOH(i)=fC61OOH(i)-1; fC61O(i)=fC61O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C61OOH + hv = C61O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C61OOH'; 
fC61OOH(i)=fC61OOH(i)-1; fC61O(i)=fC61O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C61OOH = C61CO + OH';
k(:,i) = 9.12e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C61OOH'; 
fOH(i)=fOH(i)-1; fC61OOH(i)=fC61OOH(i)-1; fC61CO(i)=fC61CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C61NO3 + hv = C61O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C61NO3'; 
fC61NO3(i)=fC61NO3(i)-1; fC61O(i)=fC61O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C61NO3 + hv = C61O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C61NO3'; 
fC61NO3(i)=fC61NO3(i)-1; fC61O(i)=fC61O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C61NO3 = C61CO + NO2';
k(:,i) = 2.04e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C61NO3'; 
fOH(i)=fOH(i)-1; fC61NO3(i)=fC61NO3(i)-1; fC61CO(i)=fC61CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C61O = CO2C3CHO + CH3CHO + HO2';
k(:,i) = 2.00e14.*exp(-4714./T);
Gstr{i,1} = 'C61O'; 
fC61O(i)=fC61O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C61CO + hv = CO2C3CO3 + CH3CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C61CO'; 
fC61CO(i)=fC61CO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C61CO = CO235C6 + HO2';
k(:,i) = 6.03e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C61CO'; 
fOH(i)=fOH(i)-1; fC61CO(i)=fC61CO(i)-1; fCO235C6(i)=fCO235C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C61OH + hv = C61O + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C61OH'; 
fC61OH(i)=fC61OH(i)-1; fC61O(i)=fC61O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C61OH = C61CO + HO2';
k(:,i) = 4.22e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C61OH'; 
fOH(i)=fOH(i)-1; fC61OH(i)=fC61OH(i)-1; fC61CO(i)=fC61CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC6OOH + OH = CO2HOC61O2';
k(:,i) = 4.93e-11;
Gstr{i,1} = 'CO2HOC6OOH'; Gstr{i,2} = 'OH'; 
fCO2HOC6OOH(i)=fCO2HOC6OOH(i)-1; fOH(i)=fOH(i)-1; fCO2HOC61O2(i)=fCO2HOC61O2(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC6OOH + hv = CO2HOC61O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2HOC6OOH'; 
fCO2HOC6OOH(i)=fCO2HOC6OOH(i)-1; fCO2HOC61O(i)=fCO2HOC61O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC6OOH + hv = CO2HOC61O + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2HOC6OOH'; 
fCO2HOC6OOH(i)=fCO2HOC6OOH(i)-1; fCO2HOC61O(i)=fCO2HOC61O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2HOC61O = HO3C4CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CO2HOC61O'; 
fCO2HOC61O(i)=fCO2HOC61O(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6OOH + OH = CO235C6 + OH';
k(:,i) = 1.93e-11;
Gstr{i,1} = 'CO24C6OOH'; Gstr{i,2} = 'OH'; 
fCO24C6OOH(i)=fCO24C6OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6(i)=fCO235C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6OOH + OH = CO24C6O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'CO24C6OOH'; Gstr{i,2} = 'OH'; 
fCO24C6OOH(i)=fCO24C6OOH(i)-1; fOH(i)=fOH(i)-1; fCO24C6O2(i)=fCO24C6O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6OOH + hv = CH3CHO + CO2C3CO3';
k(:,i) = J22;
Gstr{i,1} = 'CO24C6OOH'; 
fCO24C6OOH(i)=fCO24C6OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6OOH + hv = CO24C6O + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO24C6OOH'; 
fCO24C6OOH(i)=fCO24C6OOH(i)-1; fCO24C6O(i)=fCO24C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6OOH + hv = CO24C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO24C6OOH'; 
fCO24C6OOH(i)=fCO24C6OOH(i)-1; fCO24C6O(i)=fCO24C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO24C6O = CO2C3CO3 + CH3CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CO24C6O'; 
fCO24C6O(i)=fCO24C6O(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6OOH + hv = CH3CO3 + CO2C3CHO + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C6OOH'; 
fCO25C6OOH(i)=fCO25C6OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6OOH + hv = CO25C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO25C6OOH'; 
fCO25C6OOH(i)=fCO25C6OOH(i)-1; fCO25C6O(i)=fCO25C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C6OOH = CO235C6 + OH';
k(:,i) = 5.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C6OOH'; 
fOH(i)=fOH(i)-1; fCO25C6OOH(i)=fCO25C6OOH(i)-1; fCO235C6(i)=fCO235C6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6O = CO2C3CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'CO25C6O'; 
fCO25C6O(i)=fCO25C6O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6 + hv = CH3CO3 + CH3COCH2O2 + CO';
k(:,i) = J22;
Gstr{i,1} = 'CO235C6'; 
fCO235C6(i)=fCO235C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6 + hv = CH3CO3 + CO2C3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO235C6'; 
fCO235C6(i)=fCO235C6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO235C6 = C62O2';
k(:,i) = 7.29e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO235C6'; 
fOH(i)=fOH(i)-1; fCO235C6(i)=fCO235C6(i)-1; fC62O2(i)=fC62O2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C6OH + hv = CH3CO3 + CO2C3CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C6OH'; 
fCO25C6OH(i)=fCO25C6OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C6OH = CO235C6 + HO2';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C6OH'; 
fOH(i)=fOH(i)-1; fCO25C6OH(i)=fCO25C6OH(i)-1; fCO235C6(i)=fCO235C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65OOH + OH = CO23C65O2';
k(:,i) = 1.06e-10;
Gstr{i,1} = 'CO23C65OOH'; Gstr{i,2} = 'OH'; 
fCO23C65OOH(i)=fCO23C65OOH(i)-1; fOH(i)=fOH(i)-1; fCO23C65O2(i)=fCO23C65O2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65OOH + hv = CO23C65O + OH';
k(:,i) = J35;
Gstr{i,1} = 'CO23C65OOH'; 
fCO23C65OOH(i)=fCO23C65OOH(i)-1; fCO23C65O(i)=fCO23C65O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65OOH + hv = CO23C65O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO23C65OOH'; 
fCO23C65OOH(i)=fCO23C65OOH(i)-1; fCO23C65O(i)=fCO23C65O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65O = CH3CHO + BIACETO2';
k(:,i) = 2.70e14.*exp(-7398./T);
Gstr{i,1} = 'CO23C65O'; 
fCO23C65O(i)=fCO23C65O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C65O = CO235C6 + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'CO23C65O'; 
fCO23C65O(i)=fCO23C65O(i)-1; fCO235C6(i)=fCO235C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5CO2H = HO3C5O2';
k(:,i) = 1.72e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5CO2H'; 
fOH(i)=fOH(i)-1; fHO3C5CO2H(i)=fHO3C5CO2H(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C5CO3H + hv = HO3C5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C5CO3H'; 
fHO3C5CO3H(i)=fHO3C5CO3H(i)-1; fHO3C5O2(i)=fHO3C5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3C5CO3H = HO3C5CO3';
k(:,i) = 2.07e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3C5CO3H'; 
fOH(i)=fOH(i)-1; fHO3C5CO3H(i)=fHO3C5CO3H(i)-1; fHO3C5CO3(i)=fHO3C5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6PAN1 = HO3C5CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C6PAN1'; 
fC6PAN1(i)=fC6PAN1(i)-1; fHO3C5CO3(i)=fHO3C5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C6PAN1 = HO3C4CHO + CO + NO2';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C6PAN1'; 
fOH(i)=fOH(i)-1; fC6PAN1(i)=fC6PAN1(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OHOOH + OH = C6CO23HO5 + OH';
k(:,i) = 4.67e-11;
Gstr{i,1} = 'C6CO3OHOOH'; Gstr{i,2} = 'OH'; 
fC6CO3OHOOH(i)=fC6CO3OHOOH(i)-1; fOH(i)=fOH(i)-1; fC6CO23HO5(i)=fC6CO23HO5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OHOOH + OH = C6CO3OH5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C6CO3OHOOH'; Gstr{i,2} = 'OH'; 
fC6CO3OHOOH(i)=fC6CO3OHOOH(i)-1; fOH(i)=fOH(i)-1; fC6CO3OH5O2(i)=fC6CO3OH5O2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OHOOH + hv = C6CO3OH5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6CO3OHOOH'; 
fC6CO3OHOOH(i)=fC6CO3OHOOH(i)-1; fC6CO3OH5O(i)=fC6CO3OH5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OHOOH + hv = C6CO3OH5O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C6CO3OHOOH'; 
fC6CO3OHOOH(i)=fC6CO3OHOOH(i)-1; fC6CO3OH5O(i)=fC6CO3OH5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3OH5O = CH3CHO + HO2C3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C6CO3OH5O'; 
fC6CO3OH5O(i)=fC6CO3OH5O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO23HO5 + OH = CO235C6 + HO2';
k(:,i) = 2.86e-11;
Gstr{i,1} = 'C6CO23HO5'; Gstr{i,2} = 'OH'; 
fC6CO23HO5(i)=fC6CO23HO5(i)-1; fOH(i)=fOH(i)-1; fCO235C6(i)=fCO235C6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO23HO5 + hv = HO2C3CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'C6CO23HO5'; 
fC6CO23HO5(i)=fC6CO23HO5(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3HO25 + OH = C61CO + HO2';
k(:,i) = 3.38e-11;
Gstr{i,1} = 'C6CO3HO25'; Gstr{i,2} = 'OH'; 
fC6CO3HO25(i)=fC6CO3HO25(i)-1; fOH(i)=fOH(i)-1; fC61CO(i)=fC61CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3HO25 + hv = IPROPOLO2 + CH3CHOHCO3';
k(:,i) = J22;
Gstr{i,1} = 'C6CO3HO25'; 
fC6CO3HO25(i)=fC6CO3HO25(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34OOH + OH = C6CO34O2';
k(:,i) = 2.36e-11;
Gstr{i,1} = 'C6CO34OOH'; Gstr{i,2} = 'OH'; 
fC6CO34OOH(i)=fC6CO34OOH(i)-1; fOH(i)=fOH(i)-1; fC6CO34O2(i)=fC6CO34O2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34OOH + hv = C6CO34O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6CO34OOH'; 
fC6CO34OOH(i)=fC6CO34OOH(i)-1; fC6CO34O(i)=fC6CO34O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34OOH + hv = C6CO34O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C6CO34OOH'; 
fC6CO34OOH(i)=fC6CO34OOH(i)-1; fC6CO34O(i)=fC6CO34O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34O = CH3CHO + C2H5CO3 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'C6CO34O'; 
fC6CO34O(i)=fC6CO34O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C6HOCOOOH + OH = C6CO34HO1 + OH';
k(:,i) = 4.05e-11;
Gstr{i,1} = 'C6HOCOOOH'; Gstr{i,2} = 'OH'; 
fC6HOCOOOH(i)=fC6HOCOOOH(i)-1; fOH(i)=fOH(i)-1; fC6CO34HO1(i)=fC6CO34HO1(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6HOCOOOH + OH = C6HO1CO3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C6HOCOOOH'; Gstr{i,2} = 'OH'; 
fC6HOCOOOH(i)=fC6HOCOOOH(i)-1; fOH(i)=fOH(i)-1; fC6HO1CO3O2(i)=fC6HO1CO3O2(i)+1; 

i=i+1;
Rnames{i} = 'C6HOCOOOH + hv = C2H5CHO + HOC2H4CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C6HOCOOOH'; 
fC6HOCOOOH(i)=fC6HOCOOOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6HOCOOOH + hv = C6HO1CO3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6HOCOOOH'; 
fC6HOCOOOH(i)=fC6HOCOOOH(i)-1; fC6HO1CO3O(i)=fC6HO1CO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6HO1CO3O = C2H5CHO + HOC2H4CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C6HO1CO3O'; 
fC6HO1CO3O(i)=fC6HO1CO3O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34HO1 + OH = C6CO134 + HO2';
k(:,i) = 1.46e-11;
Gstr{i,1} = 'C6CO34HO1'; Gstr{i,2} = 'OH'; 
fC6CO34HO1(i)=fC6CO34HO1(i)-1; fOH(i)=fOH(i)-1; fC6CO134(i)=fC6CO134(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO34HO1 + hv = C2H5CO3 + HOC2H4CO3';
k(:,i) = J35;
Gstr{i,1} = 'C6CO34HO1'; 
fC6CO34HO1(i)=fC6CO34HO1(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3HO14 + OH = C6CO34HO1 + HO2';
k(:,i) = 2.34e-11;
Gstr{i,1} = 'C6CO3HO14'; Gstr{i,2} = 'OH'; 
fC6CO3HO14(i)=fC6CO3HO14(i)-1; fOH(i)=fOH(i)-1; fC6CO34HO1(i)=fC6CO34HO1(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3HO14 + hv = C2H5CHO + HOC2H4CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C6CO3HO14'; 
fC6CO3HO14(i)=fC6CO3HO14(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3H + OH = C3COCCO3';
k(:,i) = 8.77e-12;
Gstr{i,1} = 'C3COCCO3H'; Gstr{i,2} = 'OH'; 
fC3COCCO3H(i)=fC3COCCO3H(i)-1; fOH(i)=fOH(i)-1; fC3COCCO3(i)=fC3COCCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3COCCO3H + hv = PEN2ONE1O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3COCCO3H'; 
fC3COCCO3H(i)=fC3COCCO3H(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3COCPAN + OH = PGLYOX + CO + NO2';
k(:,i) = 5.18e-12;
Gstr{i,1} = 'C3COCPAN'; Gstr{i,2} = 'OH'; 
fC3COCPAN(i)=fC3COCPAN(i)-1; fOH(i)=fOH(i)-1; fPGLYOX(i)=fPGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3COCPAN = C3COCCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3COCPAN'; 
fC3COCPAN(i)=fC3COCPAN(i)-1; fC3COCCO3(i)=fC3COCCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE2ONE1OOH + OH = PEN2ONE1O2';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'PE2ONE1OOH'; Gstr{i,2} = 'OH'; 
fPE2ONE1OOH(i)=fPE2ONE1OOH(i)-1; fOH(i)=fOH(i)-1; fPEN2ONE1O2(i)=fPEN2ONE1O2(i)+1; 

i=i+1;
Rnames{i} = 'PE2ONE1OOH + hv = PEN2ONE1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'PE2ONE1OOH'; 
fPE2ONE1OOH(i)=fPE2ONE1OOH(i)-1; fPEN2ONE1O(i)=fPEN2ONE1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PEN2ONE1O = C3H7CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'PEN2ONE1O'; 
fPEN2ONE1O(i)=fPEN2ONE1O(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + HO2 = C72OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'HO2'; 
fC72O2(i)=fC72O2(i)-1; fHO2(i)=fHO2(i)-1; fC72OOH(i)=fC72OOH(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + NO = C72NO3';
k(:,i) = KRO2NO.*0.139;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'NO'; 
fC72O2(i)=fC72O2(i)-1; fNO(i)=fNO(i)-1; fC72NO3(i)=fC72NO3(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + NO = C72O + NO2';
k(:,i) = KRO2NO.*0.861;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'NO'; 
fC72O2(i)=fC72O2(i)-1; fNO(i)=fNO(i)-1; fC72O(i)=fC72O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + NO3 = C72O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'NO3'; 
fC72O2(i)=fC72O2(i)-1; fNO3(i)=fNO3(i)-1; fC72O(i)=fC72O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + RO2 = C72O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'RO2';
fC72O2(i)=fC72O2(i)-1; fC72O(i)=fC72O(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + RO2 = C72OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'RO2';
fC72O2(i)=fC72O2(i)-1; fC72OH(i)=fC72OH(i)+1; 

i=i+1;
Rnames{i} = 'C72O2 + RO2 = HO2CO35C7';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C72O2'; Gstr{i,2} = 'RO2';
fC72O2(i)=fC72O2(i)-1; fHO2CO35C7(i)=fHO2CO35C7(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O2 + HO2 = CO25C73OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'CO25C73O2'; Gstr{i,2} = 'HO2'; 
fCO25C73O2(i)=fCO25C73O2(i)-1; fHO2(i)=fHO2(i)-1; fCO25C73OOH(i)=fCO25C73OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O2 + NO = CO25C73O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO25C73O2'; Gstr{i,2} = 'NO'; 
fCO25C73O2(i)=fCO25C73O2(i)-1; fNO(i)=fNO(i)-1; fCO25C73O(i)=fCO25C73O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O2 + NO3 = CO25C73O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO25C73O2'; Gstr{i,2} = 'NO3'; 
fCO25C73O2(i)=fCO25C73O2(i)-1; fNO3(i)=fNO3(i)-1; fCO25C73O(i)=fCO25C73O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O2 + RO2 = CO235C7';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'CO25C73O2'; Gstr{i,2} = 'RO2';
fCO25C73O2(i)=fCO25C73O2(i)-1; fCO235C7(i)=fCO235C7(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O2 + RO2 = CO25C73O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'CO25C73O2'; Gstr{i,2} = 'RO2';
fCO25C73O2(i)=fCO25C73O2(i)-1; fCO25C73O(i)=fCO25C73O(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O2 + RO2 = CO25C73OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'CO25C73O2'; Gstr{i,2} = 'RO2';
fCO25C73O2(i)=fCO25C73O2(i)-1; fCO25C73OH(i)=fCO25C73OH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O2 + HO2 = CO25C74OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'CO25C74O2'; Gstr{i,2} = 'HO2'; 
fCO25C74O2(i)=fCO25C74O2(i)-1; fHO2(i)=fHO2(i)-1; fCO25C74OOH(i)=fCO25C74OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O2 + NO = CO25C74O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO25C74O2'; Gstr{i,2} = 'NO'; 
fCO25C74O2(i)=fCO25C74O2(i)-1; fNO(i)=fNO(i)-1; fCO25C74O(i)=fCO25C74O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O2 + NO3 = CO25C74O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO25C74O2'; Gstr{i,2} = 'NO3'; 
fCO25C74O2(i)=fCO25C74O2(i)-1; fNO3(i)=fNO3(i)-1; fCO25C74O(i)=fCO25C74O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O2 + RO2 = CO245C7';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'CO25C74O2'; Gstr{i,2} = 'RO2';
fCO25C74O2(i)=fCO25C74O2(i)-1; fCO245C7(i)=fCO245C7(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O2 + RO2 = CO25C74O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'CO25C74O2'; Gstr{i,2} = 'RO2';
fCO25C74O2(i)=fCO25C74O2(i)-1; fCO25C74O(i)=fCO25C74O(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O2 + RO2 = CO25C74OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'CO25C74O2'; Gstr{i,2} = 'RO2';
fCO25C74O2(i)=fCO25C74O2(i)-1; fCO25C74OH(i)=fCO25C74OH(i)+1; 

i=i+1;
Rnames{i} = 'C71OOH + hv = C71O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C71OOH'; 
fC71OOH(i)=fC71OOH(i)-1; fC71O(i)=fC71O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C71OOH + hv = HO3C4CO3 + CH3CHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C71OOH'; 
fC71OOH(i)=fC71OOH(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C71OOH = C71O2';
k(:,i) = 5.12e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C71OOH'; 
fOH(i)=fOH(i)-1; fC71OOH(i)=fC71OOH(i)-1; fC71O2(i)=fC71O2(i)+1; 

i=i+1;
Rnames{i} = 'C71O = CH3CHO + HO3C4CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C71O'; 
fC71O(i)=fC71O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C82OOH + hv = C82O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C82OOH'; 
fC82OOH(i)=fC82OOH(i)-1; fC82O(i)=fC82O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C82OOH + hv = C82O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C82OOH'; 
fC82OOH(i)=fC82OOH(i)-1; fC82O(i)=fC82O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C82OOH = HO3CO46C8 + OH';
k(:,i) = 9.56e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C82OOH'; 
fOH(i)=fOH(i)-1; fC82OOH(i)=fC82OOH(i)-1; fHO3CO46C8(i)=fHO3CO46C8(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C82NO3 + hv = C82O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C82NO3'; 
fC82NO3(i)=fC82NO3(i)-1; fC82O(i)=fC82O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C82NO3 = HO3CO46C8 + NO2';
k(:,i) = 5.86e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C82NO3'; 
fOH(i)=fOH(i)-1; fC82NO3(i)=fC82NO3(i)-1; fHO3CO46C8(i)=fHO3CO46C8(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C82O = CO3C4CHO + C2H5CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C82O'; 
fC82O(i)=fC82O(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO34CO6C8 + hv = C82O + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HO34CO6C8'; 
fHO34CO6C8(i)=fHO34CO6C8(i)-1; fC82O(i)=fC82O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO34CO6C8 = HO3CO46C8 + HO2';
k(:,i) = 4.65e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO34CO6C8'; 
fOH(i)=fOH(i)-1; fHO34CO6C8(i)=fHO34CO6C8(i)-1; fHO3CO46C8(i)=fHO3CO46C8(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3CO46C8 + hv = CO3C4CO3 + C2H5CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO3CO46C8'; 
fHO3CO46C8(i)=fHO3CO46C8(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO3CO46C8 = CO346C8 + HO2';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO3CO46C8'; 
fOH(i)=fOH(i)-1; fHO3CO46C8(i)=fHO3CO46C8(i)-1; fCO346C8(i)=fCO346C8(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C84O2 + HO2 = C84OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C84O2'; Gstr{i,2} = 'HO2'; 
fC84O2(i)=fC84O2(i)-1; fHO2(i)=fHO2(i)-1; fC84OOH(i)=fC84OOH(i)+1; 

i=i+1;
Rnames{i} = 'C84O2 + NO = C84O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C84O2'; Gstr{i,2} = 'NO'; 
fC84O2(i)=fC84O2(i)-1; fNO(i)=fNO(i)-1; fC84O(i)=fC84O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C84O2 + NO3 = C84O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C84O2'; Gstr{i,2} = 'NO3'; 
fC84O2(i)=fC84O2(i)-1; fNO3(i)=fNO3(i)-1; fC84O(i)=fC84O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C84O2 + RO2 = C84O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C84O2'; Gstr{i,2} = 'RO2';
fC84O2(i)=fC84O2(i)-1; fC84O(i)=fC84O(i)+1; 

i=i+1;
Rnames{i} = 'C84O2 + RO2 = C84OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C84O2'; Gstr{i,2} = 'RO2';
fC84O2(i)=fC84O2(i)-1; fC84OH(i)=fC84OH(i)+1; 

i=i+1;
Rnames{i} = 'C84O2 + RO2 = CO346C8';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C84O2'; Gstr{i,2} = 'RO2';
fC84O2(i)=fC84O2(i)-1; fCO346C8(i)=fCO346C8(i)+1; 

i=i+1;
Rnames{i} = 'C81OOH + hv = C81O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C81OOH'; 
fC81OOH(i)=fC81OOH(i)-1; fC81O(i)=fC81O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C81OOH + hv = C81O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C81OOH'; 
fC81OOH(i)=fC81OOH(i)-1; fC81O(i)=fC81O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C81OOH = C81O2';
k(:,i) = 5.27e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C81OOH'; 
fOH(i)=fOH(i)-1; fC81OOH(i)=fC81OOH(i)-1; fC81O2(i)=fC81O2(i)+1; 

i=i+1;
Rnames{i} = 'C81O = CH3CHO + HO4C5CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C81O'; 
fC81O(i)=fC81O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO4C5CO3(i)=fHO4C5CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CHO + NO3 = CO + HCOCH2O2 + HNO3';
k(:,i) = KNO3AL.*8.0;
Gstr{i,1} = 'CO14O3CHO'; Gstr{i,2} = 'NO3'; 
fCO14O3CHO(i)=fCO14O3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CHO + OH = CO + HCOCH2O2';
k(:,i) = 3.44e-11;
Gstr{i,1} = 'CO14O3CHO'; Gstr{i,2} = 'OH'; 
fCO14O3CHO(i)=fCO14O3CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CHO + hv = HO2 + CO + HCOCH2O2';
k(:,i) = J34;
Gstr{i,1} = 'CO14O3CHO'; 
fCO14O3CHO(i)=fCO14O3CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUONE + OH = BZFUCO + NO2';
k(:,i) = 1.16e-12;
Gstr{i,1} = 'NBZFUONE'; Gstr{i,2} = 'OH'; 
fNBZFUONE(i)=fNBZFUONE(i)-1; fOH(i)=fOH(i)-1; fBZFUCO(i)=fBZFUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CO2H + OH = HCOCH2O2';
k(:,i) = 2.19e-11;
Gstr{i,1} = 'CO14O3CO2H'; Gstr{i,2} = 'OH'; 
fCO14O3CO2H(i)=fCO14O3CO2H(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + HO2 = MALANHYOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'HO2'; 
fMALANHYO2(i)=fMALANHYO2(i)-1; fHO2(i)=fHO2(i)-1; fMALANHYOOH(i)=fMALANHYOOH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + NO = MALANHYO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'NO'; 
fMALANHYO2(i)=fMALANHYO2(i)-1; fNO(i)=fNO(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + NO3 = MALANHYO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'NO3'; 
fMALANHYO2(i)=fMALANHYO2(i)-1; fNO3(i)=fNO3(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + RO2 = MALANHY2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'RO2';
fMALANHYO2(i)=fMALANHYO2(i)-1; fMALANHY2OH(i)=fMALANHY2OH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + RO2 = MALANHYO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'RO2';
fMALANHYO2(i)=fMALANHYO2(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + RO2 = MALNHYOHCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'RO2';
fMALANHYO2(i)=fMALANHYO2(i)-1; fMALNHYOHCO(i)=fMALNHYOHCO(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + HO2 = NDNPHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'HO2'; 
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fNDNPHENOOH(i)=fNDNPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + NO = NDNPHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'NO'; 
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fNO(i)=fNO(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + NO3 = NDNPHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'NO3'; 
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + RO2 = NDNPHENO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'RO2';
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + HO2 = DNPHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'HO2'; 
fDNPHENO2(i)=fDNPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fDNPHENOOH(i)=fDNPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + NO = DNPHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'NO'; 
fDNPHENO2(i)=fDNPHENO2(i)-1; fNO(i)=fNO(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + NO3 = DNPHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'NO3'; 
fDNPHENO2(i)=fDNPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + RO2 = DNPHENO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'RO2';
fDNPHENO2(i)=fDNPHENO2(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1OOH + OH = NPHEN1O2';
k(:,i) = 9.00e-13;
Gstr{i,1} = 'NPHEN1OOH'; Gstr{i,2} = 'OH'; 
fNPHEN1OOH(i)=fNPHEN1OOH(i)-1; fOH(i)=fOH(i)-1; fNPHEN1O2(i)=fNPHEN1O2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1OOH + hv = NPHEN1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPHEN1OOH'; 
fNPHEN1OOH(i)=fNPHEN1OOH(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECOOH + OH = NNCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NNCATECOOH'; Gstr{i,2} = 'OH'; 
fNNCATECOOH(i)=fNNCATECOOH(i)-1; fOH(i)=fOH(i)-1; fNNCATECO2(i)=fNNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECOOH + hv = NNCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NNCATECOOH'; 
fNNCATECOOH(i)=fNNCATECOOH(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO = NC4DCO2H + HCOCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NNCATECO'; 
fNNCATECO(i)=fNNCATECO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECOOH + OH = NCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NCATECOOH'; Gstr{i,2} = 'OH'; 
fNCATECOOH(i)=fNCATECOOH(i)-1; fOH(i)=fOH(i)-1; fNCATECO2(i)=fNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECOOH + hv = NCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NCATECOOH'; 
fNCATECOOH(i)=fNCATECOOH(i)-1; fNCATECO(i)=fNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO = NC4DCO2H + HCOCO2H + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NCATECO'; 
fNCATECO(i)=fNCATECO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQOOH + OH = NBZQO2';
k(:,i) = 6.68e-11;
Gstr{i,1} = 'NBZQOOH'; Gstr{i,2} = 'OH'; 
fNBZQOOH(i)=fNBZQOOH(i)-1; fOH(i)=fOH(i)-1; fNBZQO2(i)=fNBZQO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQOOH + hv = NBZQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBZQOOH'; 
fNBZQOOH(i)=fNBZQOOH(i)-1; fNBZQO(i)=fNBZQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO = C6CO4DB + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NBZQO'; 
fNBZQO(i)=fNBZQO(i)-1; fC6CO4DB(i)=fC6CO4DB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQOOH + OH = PBZQCO + OH';
k(:,i) = 1.23e-10;
Gstr{i,1} = 'PBZQOOH'; Gstr{i,2} = 'OH'; 
fPBZQOOH(i)=fPBZQOOH(i)-1; fOH(i)=fOH(i)-1; fPBZQCO(i)=fPBZQCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PBZQOOH + hv = PBZQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PBZQOOH'; 
fPBZQOOH(i)=fPBZQOOH(i)-1; fPBZQO(i)=fPBZQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO = C5CO2OHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'PBZQO'; 
fPBZQO(i)=fPBZQO(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'PBZQCO + OH = C5CO2OHCO3';
k(:,i) = 6.07e-11;
Gstr{i,1} = 'PBZQCO'; Gstr{i,2} = 'OH'; 
fPBZQCO(i)=fPBZQCO(i)-1; fOH(i)=fOH(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'PBZQOH + OH = PBZQCO + HO2';
k(:,i) = 9.18e-11;
Gstr{i,1} = 'PBZQOH'; Gstr{i,2} = 'OH'; 
fPBZQOH(i)=fPBZQOH(i)-1; fOH(i)=fOH(i)-1; fPBZQCO(i)=fPBZQCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQOOH + OH = NPTLQO2';
k(:,i) = 8.56e-11;
Gstr{i,1} = 'NPTLQOOH'; Gstr{i,2} = 'OH'; 
fNPTLQOOH(i)=fNPTLQOOH(i)-1; fOH(i)=fOH(i)-1; fNPTLQO2(i)=fNPTLQO2(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQOOH + hv = NPTLQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPTLQOOH'; 
fNPTLQOOH(i)=fNPTLQOOH(i)-1; fNPTLQO(i)=fNPTLQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NPTLQO = C7CO4DB + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NPTLQO'; 
fNPTLQO(i)=fNPTLQO(i)-1; fC7CO4DB(i)=fC7CO4DB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PTLQOOH + OH = PTLQCO + OH';
k(:,i) = 1.42e-10;
Gstr{i,1} = 'PTLQOOH'; Gstr{i,2} = 'OH'; 
fPTLQOOH(i)=fPTLQOOH(i)-1; fOH(i)=fOH(i)-1; fPTLQCO(i)=fPTLQCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PTLQOOH + hv = PTLQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PTLQOOH'; 
fPTLQOOH(i)=fPTLQOOH(i)-1; fPTLQO(i)=fPTLQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PTLQO = C6CO2OHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'PTLQO'; 
fPTLQO(i)=fPTLQO(i)-1; fC6CO2OHCO3(i)=fC6CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'PTLQCO + OH = C6CO2OHCO3';
k(:,i) = 7.95e-11;
Gstr{i,1} = 'PTLQCO'; Gstr{i,2} = 'OH'; 
fPTLQCO(i)=fPTLQCO(i)-1; fOH(i)=fOH(i)-1; fC6CO2OHCO3(i)=fC6CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'PTLQOH + OH = PTLQCO + HO2';
k(:,i) = 1.11e-10;
Gstr{i,1} = 'PTLQOH'; Gstr{i,2} = 'OH'; 
fPTLQOH(i)=fPTLQOH(i)-1; fOH(i)=fOH(i)-1; fPTLQCO(i)=fPTLQCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESO2 + HO2 = NDNCRESOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NDNCRESO2'; Gstr{i,2} = 'HO2'; 
fNDNCRESO2(i)=fNDNCRESO2(i)-1; fHO2(i)=fHO2(i)-1; fNDNCRESOOH(i)=fNDNCRESOOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESO2 + NO = NDNCRESO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NDNCRESO2'; Gstr{i,2} = 'NO'; 
fNDNCRESO2(i)=fNDNCRESO2(i)-1; fNO(i)=fNO(i)-1; fNDNCRESO(i)=fNDNCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESO2 + NO3 = NDNCRESO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NDNCRESO2'; Gstr{i,2} = 'NO3'; 
fNDNCRESO2(i)=fNDNCRESO2(i)-1; fNO3(i)=fNO3(i)-1; fNDNCRESO(i)=fNDNCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESO2 + RO2 = NDNCRESO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NDNCRESO2'; Gstr{i,2} = 'RO2';
fNDNCRESO2(i)=fNDNCRESO2(i)-1; fNDNCRESO(i)=fNDNCRESO(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESO2 + HO2 = DNCRESOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'DNCRESO2'; Gstr{i,2} = 'HO2'; 
fDNCRESO2(i)=fDNCRESO2(i)-1; fHO2(i)=fHO2(i)-1; fDNCRESOOH(i)=fDNCRESOOH(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESO2 + NO = DNCRESO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DNCRESO2'; Gstr{i,2} = 'NO'; 
fDNCRESO2(i)=fDNCRESO2(i)-1; fNO(i)=fNO(i)-1; fDNCRESO(i)=fDNCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESO2 + NO3 = DNCRESO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DNCRESO2'; Gstr{i,2} = 'NO3'; 
fDNCRESO2(i)=fDNCRESO2(i)-1; fNO3(i)=fNO3(i)-1; fDNCRESO(i)=fDNCRESO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESO2 + RO2 = DNCRESO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'DNCRESO2'; Gstr{i,2} = 'RO2';
fDNCRESO2(i)=fDNCRESO2(i)-1; fDNCRESO(i)=fDNCRESO(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1OOH + OH = NCRES1O2';
k(:,i) = 1.53e-12;
Gstr{i,1} = 'NCRES1OOH'; Gstr{i,2} = 'OH'; 
fNCRES1OOH(i)=fNCRES1OOH(i)-1; fOH(i)=fOH(i)-1; fNCRES1O2(i)=fNCRES1O2(i)+1; 

i=i+1;
Rnames{i} = 'NCRES1OOH + hv = NCRES1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NCRES1OOH'; 
fNCRES1OOH(i)=fNCRES1OOH(i)-1; fNCRES1O(i)=fNCRES1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATCOOH + OH = MNNCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MNNCATCOOH'; Gstr{i,2} = 'OH'; 
fMNNCATCOOH(i)=fMNNCATCOOH(i)-1; fOH(i)=fOH(i)-1; fMNNCATECO2(i)=fMNNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATCOOH + hv = MNNCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MNNCATCOOH'; 
fMNNCATCOOH(i)=fMNNCATCOOH(i)-1; fMNNCATECO(i)=fMNNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MNNCATECO = NC4MDCO2H + HCOCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MNNCATECO'; 
fMNNCATECO(i)=fMNNCATECO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECOOH + OH = MNCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MNCATECOOH'; Gstr{i,2} = 'OH'; 
fMNCATECOOH(i)=fMNCATECOOH(i)-1; fOH(i)=fOH(i)-1; fMNCATECO2(i)=fMNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECOOH + hv = MNCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MNCATECOOH'; 
fMNCATECOOH(i)=fMNCATECOOH(i)-1; fMNCATECO(i)=fMNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MNCATECO = NC4MDCO2H + HCOCO2H + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MNCATECO'; 
fMNCATECO(i)=fMNCATECO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PPGAOOB = HCOCO3 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'PPGAOOB'; 
fPPGAOOB(i)=fPPGAOOB(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + HO2 = C535OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'HO2'; 
fC535O2(i)=fC535O2(i)-1; fHO2(i)=fHO2(i)-1; fC535OOH(i)=fC535OOH(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + NO = C535O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'NO'; 
fC535O2(i)=fC535O2(i)-1; fNO(i)=fNO(i)-1; fC535O(i)=fC535O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + NO3 = C535O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'NO3'; 
fC535O2(i)=fC535O2(i)-1; fNO3(i)=fNO3(i)-1; fC535O(i)=fC535O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + RO2 = C535O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'RO2';
fC535O2(i)=fC535O2(i)-1; fC535O(i)=fC535O(i)+1; 

i=i+1;
Rnames{i} = 'C54CO + NO3 = CO + CO + CO + CH3CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C54CO'; Gstr{i,2} = 'NO3'; 
fC54CO(i)=fC54CO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C54CO + OH = CO + CO + CO + CH3CO3';
k(:,i) = 1.72e-11;
Gstr{i,1} = 'C54CO'; Gstr{i,2} = 'OH'; 
fC54CO(i)=fC54CO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C54CO + hv = HO2 + CO + CO + CO + CH3CO3';
k(:,i) = J34;
Gstr{i,1} = 'C54CO'; 
fC54CO(i)=fC54CO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C54CO + hv = HO2 + CO + CO + CO + CH3CO3';
k(:,i) = J35.*2;
Gstr{i,1} = 'C54CO'; 
fC54CO(i)=fC54CO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECHO + NO3 = ACCOMECO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'ACCOMECHO'; Gstr{i,2} = 'NO3'; 
fACCOMECHO(i)=fACCOMECHO(i)-1; fNO3(i)=fNO3(i)-1; fACCOMECO3(i)=fACCOMECO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECHO + OH = ACCOMECO3';
k(:,i) = 7.09e-11;
Gstr{i,1} = 'ACCOMECHO'; Gstr{i,2} = 'OH'; 
fACCOMECHO(i)=fACCOMECHO(i)-1; fOH(i)=fOH(i)-1; fACCOMECO3(i)=fACCOMECO3(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECHO + hv = MECOACETO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'ACCOMECHO'; 
fACCOMECHO(i)=fACCOMECHO(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MECOACEOOH + OH = MECOACETO2';
k(:,i) = 3.59e-12;
Gstr{i,1} = 'MECOACEOOH'; Gstr{i,2} = 'OH'; 
fMECOACEOOH(i)=fMECOACEOOH(i)-1; fOH(i)=fOH(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; 

i=i+1;
Rnames{i} = 'MECOACEOOH + hv = MECOACETO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MECOACEOOH'; 
fMECOACEOOH(i)=fMECOACEOOH(i)-1; fMECOACETO(i)=fMECOACETO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MECOACETO = CH3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'MECOACETO'; 
fMECOACETO(i)=fMECOACETO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C24O3CCO2H + OH = MECOACETO2';
k(:,i) = 8.76e-13;
Gstr{i,1} = 'C24O3CCO2H'; Gstr{i,2} = 'OH'; 
fC24O3CCO2H(i)=fC24O3CCO2H(i)-1; fOH(i)=fOH(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3H + hv = CH3CO3 + HO2 + HCOCO3H';
k(:,i) = J22;
Gstr{i,1} = 'CO2H3CO3H'; 
fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3H + hv = MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2H3CO3H'; 
fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2H3CO3H = CO2H3CO3';
k(:,i) = 7.34e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2H3CO3H'; 
fOH(i)=fOH(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN6 = CO2H3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN6'; 
fC4PAN6(i)=fC4PAN6(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN6 = MGLYOX + CO + NO2';
k(:,i) = 3.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN6'; 
fOH(i)=fOH(i)-1; fC4PAN6(i)=fC4PAN6(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3MOH + OH = C4COMOHCO3';
k(:,i) = 6.66e-11;
Gstr{i,1} = 'C6CO3MOH'; Gstr{i,2} = 'OH'; 
fC6CO3MOH(i)=fC6CO3MOH(i)-1; fOH(i)=fOH(i)-1; fC4COMOHCO3(i)=fC4COMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO3MOH + hv = CHOMOHCO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'C6CO3MOH'; 
fC6CO3MOH(i)=fC6CO3MOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCHO + NO3 = C23O3MCO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C23O3MCHO'; Gstr{i,2} = 'NO3'; 
fC23O3MCHO(i)=fC23O3MCHO(i)-1; fNO3(i)=fNO3(i)-1; fC23O3MCO3(i)=fC23O3MCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCHO + OH = C23O3MCO3';
k(:,i) = 2.68e-11;
Gstr{i,1} = 'C23O3MCHO'; Gstr{i,2} = 'OH'; 
fC23O3MCHO(i)=fC23O3MCHO(i)-1; fOH(i)=fOH(i)-1; fC23O3MCO3(i)=fC23O3MCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCHO + hv = CO + C23O3MO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C23O3MCHO'; 
fC23O3MCHO(i)=fC23O3MCHO(i)-1; fCO(i)=fCO(i)+1; fC23O3MO2(i)=fC23O3MO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMEO2 + HO2 = ACCOCOMOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ACCOCOMEO2'; Gstr{i,2} = 'HO2'; 
fACCOCOMEO2(i)=fACCOCOMEO2(i)-1; fHO2(i)=fHO2(i)-1; fACCOCOMOOH(i)=fACCOCOMOOH(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMEO2 + NO = ACCOCOMEO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ACCOCOMEO2'; Gstr{i,2} = 'NO'; 
fACCOCOMEO2(i)=fACCOCOMEO2(i)-1; fNO(i)=fNO(i)-1; fACCOCOMEO(i)=fACCOCOMEO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMEO2 + NO3 = ACCOCOMEO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ACCOCOMEO2'; Gstr{i,2} = 'NO3'; 
fACCOCOMEO2(i)=fACCOCOMEO2(i)-1; fNO3(i)=fNO3(i)-1; fACCOCOMEO(i)=fACCOCOMEO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMEO2 + RO2 = ACCOCOMEO';
k(:,i) = 6.00e-13;
Gstr{i,1} = 'ACCOCOMEO2'; Gstr{i,2} = 'RO2';
fACCOCOMEO2(i)=fACCOCOMEO2(i)-1; fACCOCOMEO(i)=fACCOCOMEO(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + NO3 = C23O3CCO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C23O3CCHO'; Gstr{i,2} = 'NO3'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fNO3(i)=fNO3(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + OH = C23O3CCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'C23O3CCHO'; Gstr{i,2} = 'OH'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fOH(i)=fOH(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + hv = CO + MCOCOMOXO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C23O3CCHO'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fCO(i)=fCO(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + HO2 = MMALNHYOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'HO2'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fHO2(i)=fHO2(i)-1; fMMALNHYOOH(i)=fMMALNHYOOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + NO = MMALANHYO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'NO'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fNO(i)=fNO(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + NO3 = MMALANHYO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'NO3'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fNO3(i)=fNO3(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + RO2 = MMALANHYO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'RO2';
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + RO2 = MMALNHY2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'RO2';
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fMMALNHY2OH(i)=fMMALNHY2OH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + HO2 = CH3CO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'HO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + HO2 = CH3COCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'HO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO = CH3CO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO2 = CH3COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO2(i)=fNO2(i)-1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO3 = CH3CO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO3'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + RO2 = CH3CO3';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'RO2';
fCH3COCO3(i)=fCH3COCO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + OH = C534O2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'C534OOH'; Gstr{i,2} = 'OH'; 
fC534OOH(i)=fC534OOH(i)-1; fOH(i)=fOH(i)-1; fC534O2(i)=fC534O2(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + hv = C534O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fC534O(i)=fC534O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + hv = C534O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fC534O(i)=fC534O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + hv = CO2H3CHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O = CH3COCO3H + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C534O'; 
fC534O(i)=fC534O(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + OH = CHOMOHCO3';
k(:,i) = 6.99e-11;
Gstr{i,1} = 'CHOMOHCO3H'; Gstr{i,2} = 'OH'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + hv = MGLYOX + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'CHOMOHCO3H'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + hv = MGLYOX + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CHOMOHCO3H'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHPAN + OH = MGLYOX + CO + NO2';
k(:,i) = 6.64e-11;
Gstr{i,1} = 'CHOMOHPAN'; Gstr{i,2} = 'OH'; 
fCHOMOHPAN(i)=fCHOMOHPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHPAN = CHOMOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CHOMOHPAN'; 
fCHOMOHPAN(i)=fCHOMOHPAN(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYOLO2 + HO2 = NDNMXYLOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'NDNMXYOLO2'; Gstr{i,2} = 'HO2'; 
fNDNMXYOLO2(i)=fNDNMXYOLO2(i)-1; fHO2(i)=fHO2(i)-1; fNDNMXYLOOH(i)=fNDNMXYLOOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYOLO2 + NO = NDNMXYOLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NDNMXYOLO2'; Gstr{i,2} = 'NO'; 
fNDNMXYOLO2(i)=fNDNMXYOLO2(i)-1; fNO(i)=fNO(i)-1; fNDNMXYOLO(i)=fNDNMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYOLO2 + NO3 = NDNMXYOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NDNMXYOLO2'; Gstr{i,2} = 'NO3'; 
fNDNMXYOLO2(i)=fNDNMXYOLO2(i)-1; fNO3(i)=fNO3(i)-1; fNDNMXYOLO(i)=fNDNMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYOLO2 + RO2 = NDNMXYOLO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NDNMXYOLO2'; Gstr{i,2} = 'RO2';
fNDNMXYOLO2(i)=fNDNMXYOLO2(i)-1; fNDNMXYOLO(i)=fNDNMXYOLO(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLO2 + HO2 = DNMXYOLOOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'DNMXYOLO2'; Gstr{i,2} = 'HO2'; 
fDNMXYOLO2(i)=fDNMXYOLO2(i)-1; fHO2(i)=fHO2(i)-1; fDNMXYOLOOH(i)=fDNMXYOLOOH(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLO2 + NO = DNMXYOLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DNMXYOLO2'; Gstr{i,2} = 'NO'; 
fDNMXYOLO2(i)=fDNMXYOLO2(i)-1; fNO(i)=fNO(i)-1; fDNMXYOLO(i)=fDNMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLO2 + NO3 = DNMXYOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DNMXYOLO2'; Gstr{i,2} = 'NO3'; 
fDNMXYOLO2(i)=fDNMXYOLO2(i)-1; fNO3(i)=fNO3(i)-1; fDNMXYOLO(i)=fDNMXYOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLO2 + RO2 = DNMXYOLO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'DNMXYOLO2'; Gstr{i,2} = 'RO2';
fDNMXYOLO2(i)=fDNMXYOLO2(i)-1; fDNMXYOLO(i)=fDNMXYOLO(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1OOH + OH = NMXYOL1O2';
k(:,i) = 1.53e-12;
Gstr{i,1} = 'NMXYOL1OOH'; Gstr{i,2} = 'OH'; 
fNMXYOL1OOH(i)=fNMXYOL1OOH(i)-1; fOH(i)=fOH(i)-1; fNMXYOL1O2(i)=fNMXYOL1O2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYOL1OOH + hv = NMXYOL1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NMXYOL1OOH'; 
fNMXYOL1OOH(i)=fNMXYOL1OOH(i)-1; fNMXYOL1O(i)=fNMXYOL1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQOOH + OH = NMXYQO2';
k(:,i) = 7.54e-11;
Gstr{i,1} = 'NMXYQOOH'; Gstr{i,2} = 'OH'; 
fNMXYQOOH(i)=fNMXYQOOH(i)-1; fOH(i)=fOH(i)-1; fNMXYQO2(i)=fNMXYQO2(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQOOH + hv = NMXYQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NMXYQOOH'; 
fNMXYQOOH(i)=fNMXYQOOH(i)-1; fNMXYQO(i)=fNMXYQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NMXYQO = C8CO4DB + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NMXYQO'; 
fNMXYQO(i)=fNMXYQO(i)-1; fC8CO4DB(i)=fC8CO4DB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYQOOH + OH = MXYQO2';
k(:,i) = 9.48e-11;
Gstr{i,1} = 'MXYQOOH'; Gstr{i,2} = 'OH'; 
fMXYQOOH(i)=fMXYQOOH(i)-1; fOH(i)=fOH(i)-1; fMXYQO2(i)=fMXYQO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYQOOH + hv = MXYQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXYQOOH'; 
fMXYQOOH(i)=fMXYQOOH(i)-1; fMXYQO(i)=fMXYQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYQO = C7CO2OHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MXYQO'; 
fMXYQO(i)=fMXYQO(i)-1; fC7CO2OHCO3(i)=fC7CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'MXYQOH + OH = C7CO2OHCO3';
k(:,i) = 9.13e-11;
Gstr{i,1} = 'MXYQOH'; Gstr{i,2} = 'OH'; 
fMXYQOH(i)=fMXYQOH(i)-1; fOH(i)=fOH(i)-1; fC7CO2OHCO3(i)=fC7CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATOOH + OH = MXNNCATCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MXNNCATOOH'; Gstr{i,2} = 'OH'; 
fMXNNCATOOH(i)=fMXNNCATOOH(i)-1; fOH(i)=fOH(i)-1; fMXNNCATCO2(i)=fMXNNCATCO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATOOH + hv = MXNNCATCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXNNCATOOH'; 
fMXNNCATOOH(i)=fMXNNCATOOH(i)-1; fMXNNCATCO(i)=fMXNNCATCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXNNCATCO = NC4MDCO2H + CH3COCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MXNNCATCO'; 
fMXNNCATCO(i)=fMXNNCATCO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATCOOH + OH = MXNCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MXNCATCOOH'; Gstr{i,2} = 'OH'; 
fMXNCATCOOH(i)=fMXNCATCOOH(i)-1; fOH(i)=fOH(i)-1; fMXNCATECO2(i)=fMXNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATCOOH + hv = MXNCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXNCATCOOH'; 
fMXNCATCOOH(i)=fMXNCATCOOH(i)-1; fMXNCATECO(i)=fMXNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXNCATECO = NC4MDCO2H + CH3COCO2H + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MXNCATECO'; 
fMXNCATECO(i)=fMXNCATECO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOHNO2O2 + HO2 = MXOHNO2OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'MXYOHNO2O2'; Gstr{i,2} = 'HO2'; 
fMXYOHNO2O2(i)=fMXYOHNO2O2(i)-1; fHO2(i)=fHO2(i)-1; fMXOHNO2OOH(i)=fMXOHNO2OOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYOHNO2O2 + NO = MXYOHNO2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MXYOHNO2O2'; Gstr{i,2} = 'NO'; 
fMXYOHNO2O2(i)=fMXYOHNO2O2(i)-1; fNO(i)=fNO(i)-1; fMXYOHNO2O(i)=fMXYOHNO2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOHNO2O2 + NO3 = MXYOHNO2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MXYOHNO2O2'; Gstr{i,2} = 'NO3'; 
fMXYOHNO2O2(i)=fMXYOHNO2O2(i)-1; fNO3(i)=fNO3(i)-1; fMXYOHNO2O(i)=fMXYOHNO2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYOHNO2O2 + RO2 = MXYOHNO2O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'MXYOHNO2O2'; Gstr{i,2} = 'RO2';
fMXYOHNO2O2(i)=fMXYOHNO2O2(i)-1; fMXYOHNO2O(i)=fMXYOHNO2O(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234OOH + OH = C5CO234O2';
k(:,i) = 9.59e-12;
Gstr{i,1} = 'C5CO234OOH'; Gstr{i,2} = 'OH'; 
fC5CO234OOH(i)=fC5CO234OOH(i)-1; fOH(i)=fOH(i)-1; fC5CO234O2(i)=fC5CO234O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234OOH + hv = C5CO234O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5CO234OOH'; 
fC5CO234OOH(i)=fC5CO234OOH(i)-1; fC5CO234O(i)=fC5CO234O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234OOH + hv = C5CO234O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C5CO234OOH'; 
fC5CO234OOH(i)=fC5CO234OOH(i)-1; fC5CO234O(i)=fC5CO234O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO234O = CH3CO3 + HCHO + CO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'C5CO234O'; 
fC5CO234O(i)=fC5CO234O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO24C4CHO + hv = CO2C3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO24C4CHO'; 
fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO24C4CHO = CO2C3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO24C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO24C4CHO = CO2C3CO3 + CO';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO24C4CHO'; 
fOH(i)=fOH(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C4CO2H = MEKAO2';
k(:,i) = 5.71e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C4CO2H'; 
fOH(i)=fOH(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H + hv = MEKAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C4CO3H'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H + hv = MEKAO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C4CO3H'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2C4CO3H = CO2C4CO3';
k(:,i) = 9.17e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2C4CO3H'; 
fOH(i)=fOH(i)-1; fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN2 = CO2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN2'; 
fC5PAN2(i)=fC5PAN2(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN2 = CO2C3CHO + CO + NO2';
k(:,i) = 1.90e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN2'; 
fOH(i)=fOH(i)-1; fC5PAN2(i)=fC5PAN2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + HO2 = HO13C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'HO2'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHO13C4OOH(i)=fHO13C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + NO = HO13C4NO3';
k(:,i) = KRO2NO.*0.007;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'NO'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fNO(i)=fNO(i)-1; fHO13C4NO3(i)=fHO13C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + NO = HO13C4O + NO2';
k(:,i) = KRO2NO.*0.993;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'NO'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fNO(i)=fNO(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + NO3 = HO13C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'NO3'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + RO2 = HO13C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'RO2';
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + RO2 = HO13C4O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'RO2';
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + RO2 = HO13C4OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'RO2';
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO13C4OH(i)=fHO13C4OH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CHO + hv = BIACETO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'CO23C4CHO'; 
fCO23C4CHO(i)=fCO23C4CHO(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CHO + hv = CH3CO3 + HCOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4CHO'; 
fCO23C4CHO(i)=fCO23C4CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO23C4CHO = CO23C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO23C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C4CHO = CO23C4CO3';
k(:,i) = 6.65e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C4CHO'; 
fOH(i)=fOH(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO35C5CHO + hv = HO2 + CO + CO + MEKCO2';
k(:,i) = J22;
Gstr{i,1} = 'CO35C5CHO'; 
fCO35C5CHO(i)=fCO35C5CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO35C5CHO + hv = HO2 + CO + CO3C4CO3';
k(:,i) = J34;
Gstr{i,1} = 'CO35C5CHO'; 
fCO35C5CHO(i)=fCO35C5CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO35C5CHO = CO3C4CO3 + CO';
k(:,i) = 1.44e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO35C5CHO'; 
fOH(i)=fOH(i)-1; fCO35C5CHO(i)=fCO35C5CHO(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO2H + hv = DIEKBO2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'CO3C5CO2H'; 
fCO3C5CO2H(i)=fCO3C5CO2H(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C5CO2H = DIEKBO2';
k(:,i) = 6.88e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C5CO2H'; 
fOH(i)=fOH(i)-1; fCO3C5CO2H(i)=fCO3C5CO2H(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3H + hv = DIEKBO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO3C5CO3H'; 
fCO3C5CO3H(i)=fCO3C5CO3H(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C5CO3H + hv = DIEKBO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO3C5CO3H'; 
fCO3C5CO3H(i)=fCO3C5CO3H(i)-1; fDIEKBO2(i)=fDIEKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO3C5CO3H = CO3C5CO3';
k(:,i) = 1.03e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO3C5CO3H'; 
fOH(i)=fOH(i)-1; fCO3C5CO3H(i)=fCO3C5CO3H(i)-1; fCO3C5CO3(i)=fCO3C5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6PAN2 = CO3C5CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C6PAN2'; 
fC6PAN2(i)=fC6PAN2(i)-1; fCO3C5CO3(i)=fCO3C5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C6PAN2 = CO3C4CHO + CO + NO2';
k(:,i) = 3.19e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C6PAN2'; 
fOH(i)=fOH(i)-1; fC6PAN2(i)=fC6PAN2(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COC4NO3OOH + OH = CO3C4NO3O2';
k(:,i) = 1.64e-11;
Gstr{i,1} = 'COC4NO3OOH'; Gstr{i,2} = 'OH'; 
fCOC4NO3OOH(i)=fCOC4NO3OOH(i)-1; fOH(i)=fOH(i)-1; fCO3C4NO3O2(i)=fCO3C4NO3O2(i)+1; 

i=i+1;
Rnames{i} = 'COC4NO3OOH + hv = CO3C4NO3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'COC4NO3OOH'; 
fCOC4NO3OOH(i)=fCOC4NO3OOH(i)-1; fCO3C4NO3O(i)=fCO3C4NO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'COC4NO3OOH + hv = CO3C4NO3O + OH';
k(:,i) = J53;
Gstr{i,1} = 'COC4NO3OOH'; 
fCOC4NO3OOH(i)=fCOC4NO3OOH(i)-1; fCO3C4NO3O(i)=fCO3C4NO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3O = NO3CH2CO3 + CH3CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CO3C4NO3O'; 
fCO3C4NO3O(i)=fCO3C4NO3O(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + OH = CO23C3CHO + NO2';
k(:,i) = 1.30e-13;
Gstr{i,1} = 'CO23C4NO3'; Gstr{i,2} = 'OH'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + hv = NO3CH2CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3OH + OH = CO23C4NO3 + HO2';
k(:,i) = 5.65e-12;
Gstr{i,1} = 'CO3C4NO3OH'; Gstr{i,2} = 'OH'; 
fCO3C4NO3OH(i)=fCO3C4NO3OH(i)-1; fOH(i)=fOH(i)-1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4NO3OH + hv = HO2CO3C4O + NO2';
k(:,i) = J56;
Gstr{i,1} = 'CO3C4NO3OH'; 
fCO3C4NO3OH(i)=fCO3C4NO3OH(i)-1; fHO2CO3C4O(i)=fHO2CO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3H + OH = HO3C3CO3';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'HO3C3CO3H'; Gstr{i,2} = 'OH'; 
fHO3C3CO3H(i)=fHO3C3CO3H(i)-1; fOH(i)=fOH(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3H + hv = C2H5CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C3CO3H'; 
fHO3C3CO3H(i)=fHO3C3CO3H(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3PAN + OH = C2H5CHO + CO + NO2';
k(:,i) = 3.82e-12;
Gstr{i,1} = 'HO3C3PAN'; Gstr{i,2} = 'OH'; 
fHO3C3PAN(i)=fHO3C3PAN(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3PAN = HO3C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HO3C3PAN'; 
fHO3C3PAN(i)=fHO3C3PAN(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C62O2 + HO2 = C62OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C62O2'; Gstr{i,2} = 'HO2'; 
fC62O2(i)=fC62O2(i)-1; fHO2(i)=fHO2(i)-1; fC62OOH(i)=fC62OOH(i)+1; 

i=i+1;
Rnames{i} = 'C62O2 + NO = C62O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C62O2'; Gstr{i,2} = 'NO'; 
fC62O2(i)=fC62O2(i)-1; fNO(i)=fNO(i)-1; fC62O(i)=fC62O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C62O2 + NO3 = C62O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C62O2'; Gstr{i,2} = 'NO3'; 
fC62O2(i)=fC62O2(i)-1; fNO3(i)=fNO3(i)-1; fC62O(i)=fC62O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C62O2 + RO2 = C62O';
k(:,i) = 8.40e-13;
Gstr{i,1} = 'C62O2'; Gstr{i,2} = 'RO2';
fC62O2(i)=fC62O2(i)-1; fC62O(i)=fC62O(i)+1; 

i=i+1;
Rnames{i} = 'C6CO134 + OH = C5CO34CO3';
k(:,i) = 7.27e-11;
Gstr{i,1} = 'C6CO134'; Gstr{i,2} = 'OH'; 
fC6CO134(i)=fC6CO134(i)-1; fOH(i)=fOH(i)-1; fC5CO34CO3(i)=fC5CO34CO3(i)+1; 

i=i+1;
Rnames{i} = 'PGLYOX + NO3 = C3H7CO3 + CO + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'PGLYOX'; Gstr{i,2} = 'NO3'; 
fPGLYOX(i)=fPGLYOX(i)-1; fNO3(i)=fNO3(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'PGLYOX + OH = C3H7CO3 + CO';
k(:,i) = 1.67e-11;
Gstr{i,1} = 'PGLYOX'; Gstr{i,2} = 'OH'; 
fPGLYOX(i)=fPGLYOX(i)-1; fOH(i)=fOH(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'PGLYOX + hv = C3H7CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'PGLYOX'; 
fPGLYOX(i)=fPGLYOX(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C72OOH + hv = C72O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C72OOH'; 
fC72OOH(i)=fC72OOH(i)-1; fC72O(i)=fC72O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C72OOH + hv = C72O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C72OOH'; 
fC72OOH(i)=fC72OOH(i)-1; fC72O(i)=fC72O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C72OOH = HO2CO35C7 + OH';
k(:,i) = 9.25e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C72OOH'; 
fOH(i)=fOH(i)-1; fC72OOH(i)=fC72OOH(i)-1; fHO2CO35C7(i)=fHO2CO35C7(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C72NO3 + hv = C72O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C72NO3'; 
fC72NO3(i)=fC72NO3(i)-1; fC72O(i)=fC72O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C72NO3 + hv = C72O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C72NO3'; 
fC72NO3(i)=fC72NO3(i)-1; fC72O(i)=fC72O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C72NO3 = HO2CO35C7 + NO2';
k(:,i) = 3.41e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C72NO3'; 
fOH(i)=fOH(i)-1; fC72NO3(i)=fC72NO3(i)-1; fHO2CO35C7(i)=fHO2CO35C7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C72O = CO3C4CHO + CH3CHO + HO2';
k(:,i) = 2.00e14.*exp(-4714./T);
Gstr{i,1} = 'C72O'; 
fC72O(i)=fC72O(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C72OH + hv = C72O + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C72OH'; 
fC72OH(i)=fC72OH(i)-1; fC72O(i)=fC72O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C72OH = HO2CO35C7 + HO2';
k(:,i) = 4.35e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C72OH'; 
fOH(i)=fOH(i)-1; fC72OH(i)=fC72OH(i)-1; fHO2CO35C7(i)=fHO2CO35C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO35C7 + hv = CO3C4CO3 + CH3CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO2CO35C7'; 
fHO2CO35C7(i)=fHO2CO35C7(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2CO35C7 = CO235C7 + HO2';
k(:,i) = 5.76e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2CO35C7'; 
fOH(i)=fOH(i)-1; fHO2CO35C7(i)=fHO2CO35C7(i)-1; fCO235C7(i)=fCO235C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73OOH + hv = CH3CO3 + CO3C4CHO + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C73OOH'; 
fCO25C73OOH(i)=fCO25C73OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73OOH + hv = CO25C73O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO25C73OOH'; 
fCO25C73OOH(i)=fCO25C73OOH(i)-1; fCO25C73O(i)=fCO25C73O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C73OOH = CO235C7 + OH';
k(:,i) = 5.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C73OOH'; 
fOH(i)=fOH(i)-1; fCO25C73OOH(i)=fCO25C73OOH(i)-1; fCO235C7(i)=fCO235C7(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73O = CO3C4CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'CO25C73O'; 
fCO25C73O(i)=fCO25C73O(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C7 + hv = CH3CO3 + CO3C4CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO235C7'; 
fCO235C7(i)=fCO235C7(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO235C7 = C73O2';
k(:,i) = 1.86e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO235C7'; 
fOH(i)=fOH(i)-1; fCO235C7(i)=fCO235C7(i)-1; fC73O2(i)=fC73O2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C73OH + hv = CH3CO3 + CO3C4CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C73OH'; 
fCO25C73OH(i)=fCO25C73OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C73OH = CO235C7 + HO2';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C73OH'; 
fOH(i)=fOH(i)-1; fCO25C73OH(i)=fCO25C73OH(i)-1; fCO235C7(i)=fCO235C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74OOH + hv = C2H5CO3 + CO2C3CHO + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C74OOH'; 
fCO25C74OOH(i)=fCO25C74OOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74OOH + hv = CO25C74O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO25C74OOH'; 
fCO25C74OOH(i)=fCO25C74OOH(i)-1; fCO25C74O(i)=fCO25C74O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C74OOH = CO245C7 + OH';
k(:,i) = 5.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C74OOH'; 
fOH(i)=fOH(i)-1; fCO25C74OOH(i)=fCO25C74OOH(i)-1; fCO245C7(i)=fCO245C7(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74O = CO2C3CHO + C2H5CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'CO25C74O'; 
fCO25C74O(i)=fCO25C74O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO245C7 + hv = C2H5CO3 + CO2C3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO245C7'; 
fCO245C7(i)=fCO245C7(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO245C7 = C74O2';
k(:,i) = 1.86e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO245C7'; 
fOH(i)=fOH(i)-1; fCO245C7(i)=fCO245C7(i)-1; fC74O2(i)=fC74O2(i)+1; 

i=i+1;
Rnames{i} = 'CO25C74OH + hv = C2H5CO3 + CO2C3CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'CO25C74OH'; 
fCO25C74OH(i)=fCO25C74OH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO25C74OH = CO245C7 + HO2';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO25C74OH'; 
fOH(i)=fOH(i)-1; fCO25C74OH(i)=fCO25C74OH(i)-1; fCO245C7(i)=fCO245C7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO346C8 + hv = C2H5CO3 + CO3C4CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO346C8'; 
fCO346C8(i)=fCO346C8(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO346C8 + hv = C2H5CO3 + CO3C4CO3';
k(:,i) = J22;
Gstr{i,1} = 'CO346C8'; 
fCO346C8(i)=fCO346C8(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO346C8 = C83O2';
k(:,i) = 2.99e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO346C8'; 
fOH(i)=fOH(i)-1; fCO346C8(i)=fCO346C8(i)-1; fC83O2(i)=fC83O2(i)+1; 

i=i+1;
Rnames{i} = 'C84OOH + hv = C2H5CO3 + CO3C4CHO + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'C84OOH'; 
fC84OOH(i)=fC84OOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C84OOH + hv = C84O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C84OOH'; 
fC84OOH(i)=fC84OOH(i)-1; fC84O(i)=fC84O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C84OOH = CO346C8 + OH';
k(:,i) = 5.65e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C84OOH'; 
fOH(i)=fOH(i)-1; fC84OOH(i)=fC84OOH(i)-1; fCO346C8(i)=fCO346C8(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C84O = CO3C4CHO + C2H5CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C84O'; 
fC84O(i)=fC84O(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C84OH + hv = C2H5CO3 + CO3C4CHO + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'C84OH'; 
fC84OH(i)=fC84OH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C84OH = CO346C8 + HO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C84OH'; 
fOH(i)=fOH(i)-1; fC84OH(i)=fC84OH(i)-1; fCO346C8(i)=fCO346C8(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3 + HO2 = HO4C5CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO4C5CO3'; Gstr{i,2} = 'HO2'; 
fHO4C5CO3(i)=fHO4C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO4C5CO3H(i)=fHO4C5CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3 + HO2 = PE1ENEBO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO4C5CO3'; Gstr{i,2} = 'HO2'; 
fHO4C5CO3(i)=fHO4C5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPE1ENEBO2(i)=fPE1ENEBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3 + NO = PE1ENEBO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO4C5CO3'; Gstr{i,2} = 'NO'; 
fHO4C5CO3(i)=fHO4C5CO3(i)-1; fNO(i)=fNO(i)-1; fPE1ENEBO2(i)=fPE1ENEBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3 + NO2 = C6PAN22';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO4C5CO3'; Gstr{i,2} = 'NO2'; 
fHO4C5CO3(i)=fHO4C5CO3(i)-1; fNO2(i)=fNO2(i)-1; fC6PAN22(i)=fC6PAN22(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3 + NO3 = PE1ENEBO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO4C5CO3'; Gstr{i,2} = 'NO3'; 
fHO4C5CO3(i)=fHO4C5CO3(i)-1; fNO3(i)=fNO3(i)-1; fPE1ENEBO2(i)=fPE1ENEBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3 + RO2 = PE1ENEBO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO4C5CO3'; Gstr{i,2} = 'RO2';
fHO4C5CO3(i)=fHO4C5CO3(i)-1; fPE1ENEBO2(i)=fPE1ENEBO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYOOH + OH = MALNHYOHCO + OH';
k(:,i) = 4.66e-11;
Gstr{i,1} = 'MALANHYOOH'; Gstr{i,2} = 'OH'; 
fMALANHYOOH(i)=fMALANHYOOH(i)-1; fOH(i)=fOH(i)-1; fMALNHYOHCO(i)=fMALNHYOHCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYOOH + hv = MALANHYO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MALANHYOOH'; 
fMALANHYOOH(i)=fMALANHYOOH(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO = HCOCOHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MALANHYO'; 
fMALANHYO(i)=fMALANHYO(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'MALANHY2OH + OH = MALNHYOHCO + HO2';
k(:,i) = 2.55e-11;
Gstr{i,1} = 'MALANHY2OH'; Gstr{i,2} = 'OH'; 
fMALANHY2OH(i)=fMALANHY2OH(i)-1; fOH(i)=fOH(i)-1; fMALNHYOHCO(i)=fMALNHYOHCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALNHYOHCO + OH = CO + CO + CO + HO2';
k(:,i) = 5.68e-12;
Gstr{i,1} = 'MALNHYOHCO'; Gstr{i,2} = 'OH'; 
fMALNHYOHCO(i)=fMALNHYOHCO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENOOH + OH = NDNPHENO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NDNPHENOOH'; Gstr{i,2} = 'OH'; 
fNDNPHENOOH(i)=fNDNPHENOOH(i)-1; fOH(i)=fOH(i)-1; fNDNPHENO2(i)=fNDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENOOH + hv = NDNPHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NDNPHENOOH'; 
fNDNPHENOOH(i)=fNDNPHENOOH(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO = NC4DCO2H + HNO3 + CO + CO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NDNPHENO'; 
fNDNPHENO(i)=fNDNPHENO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENOOH + OH = DNPHENO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'DNPHENOOH'; Gstr{i,2} = 'OH'; 
fDNPHENOOH(i)=fDNPHENOOH(i)-1; fOH(i)=fOH(i)-1; fDNPHENO2(i)=fDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENOOH + hv = DNPHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DNPHENOOH'; 
fDNPHENOOH(i)=fDNPHENOOH(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO = NC4DCO2H + HCOCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'DNPHENO'; 
fDNPHENO(i)=fDNPHENO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4DCO2H + OH = NC4DCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NC4DCO2H'; Gstr{i,2} = 'OH'; 
fNC4DCO2H(i)=fNC4DCO2H(i)-1; fOH(i)=fOH(i)-1; fNC4DCO2(i)=fNC4DCO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO4DB + OH = CO + CO + HO2 + CO + C33CO';
k(:,i) = 7.70e-11;
Gstr{i,1} = 'C6CO4DB'; Gstr{i,2} = 'OH'; 
fC6CO4DB(i)=fC6CO4DB(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C6CO4DB + hv = C4CO2DBCO3 + HO2 + CO';
k(:,i) = J34.*2;
Gstr{i,1} = 'C6CO4DB'; 
fC6CO4DB(i)=fC6CO4DB(i)-1; fC4CO2DBCO3(i)=fC4CO2DBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + HO2 = C5COOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5COOHCO3H(i)=fC5COOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + HO2 = HOCOC4DIAL + HO2 + CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + NO = HOCOC4DIAL + HO2 + CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'NO'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fNO(i)=fNO(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + NO2 = C5CO2OHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'NO2'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fNO2(i)=fNO2(i)-1; fC5CO2OHPAN(i)=fC5CO2OHPAN(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + NO3 = HOCOC4DIAL + HO2 + CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'NO3'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + RO2 = HOCOC4DIAL + HO2 + CO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'RO2';
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C7CO4DB + OH = CO + CO + CH3CO3 + C33CO';
k(:,i) = 9.58e-11;
Gstr{i,1} = 'C7CO4DB'; Gstr{i,2} = 'OH'; 
fC7CO4DB(i)=fC7CO4DB(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C7CO4DB + hv = C5CO2DBCO3 + HO2 + CO';
k(:,i) = J34.*2;
Gstr{i,1} = 'C7CO4DB'; 
fC7CO4DB(i)=fC7CO4DB(i)-1; fC5CO2DBCO3(i)=fC5CO2DBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHCO3 + HO2 = C5134CO2OH + HO2 + CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C6CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC6CO2OHCO3(i)=fC6CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHCO3 + HO2 = C6COOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C6CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC6CO2OHCO3(i)=fC6CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC6COOHCO3H(i)=fC6COOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHCO3 + NO = C5134CO2OH + HO2 + CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C6CO2OHCO3'; Gstr{i,2} = 'NO'; 
fC6CO2OHCO3(i)=fC6CO2OHCO3(i)-1; fNO(i)=fNO(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHCO3 + NO2 = C6CO2OHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C6CO2OHCO3'; Gstr{i,2} = 'NO2'; 
fC6CO2OHCO3(i)=fC6CO2OHCO3(i)-1; fNO2(i)=fNO2(i)-1; fC6CO2OHPAN(i)=fC6CO2OHPAN(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHCO3 + NO3 = C5134CO2OH + HO2 + CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C6CO2OHCO3'; Gstr{i,2} = 'NO3'; 
fC6CO2OHCO3(i)=fC6CO2OHCO3(i)-1; fNO3(i)=fNO3(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHCO3 + RO2 = C5134CO2OH + HO2 + CO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C6CO2OHCO3'; Gstr{i,2} = 'RO2';
fC6CO2OHCO3(i)=fC6CO2OHCO3(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESOOH + OH = NDNCRESO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NDNCRESOOH'; Gstr{i,2} = 'OH'; 
fNDNCRESOOH(i)=fNDNCRESOOH(i)-1; fOH(i)=fOH(i)-1; fNDNCRESO2(i)=fNDNCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESOOH + hv = NDNCRESO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NDNCRESOOH'; 
fNDNCRESOOH(i)=fNDNCRESOOH(i)-1; fNDNCRESO(i)=fNDNCRESO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNCRESO = NC4MDCO2H + HNO3 + CO + CO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NDNCRESO'; 
fNDNCRESO(i)=fNDNCRESO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESOOH + OH = DNCRESO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'DNCRESOOH'; Gstr{i,2} = 'OH'; 
fDNCRESOOH(i)=fDNCRESOOH(i)-1; fOH(i)=fOH(i)-1; fDNCRESO2(i)=fDNCRESO2(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESOOH + hv = DNCRESO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DNCRESOOH'; 
fDNCRESOOH(i)=fDNCRESOOH(i)-1; fDNCRESO(i)=fDNCRESO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNCRESO = NC4MDCO2H + HCOCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'DNCRESO'; 
fDNCRESO(i)=fDNCRESO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4MDCO2H + OH = NC4MDCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NC4MDCO2H'; Gstr{i,2} = 'OH'; 
fNC4MDCO2H(i)=fNC4MDCO2H(i)-1; fOH(i)=fOH(i)-1; fNC4MDCO2(i)=fNC4MDCO2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + OH = C535O2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'C535OOH'; Gstr{i,2} = 'OH'; 
fC535OOH(i)=fC535OOH(i)-1; fOH(i)=fOH(i)-1; fC535O2(i)=fC535O2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + hv = C3MDIALOOH + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + hv = C535O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fC535O(i)=fC535O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + hv = CO2H3CO3H + OH + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C535O = HCOCO3H + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C535O'; 
fC535O(i)=fC535O(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3 + HO2 = ACCOMECO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'ACCOMECO3'; Gstr{i,2} = 'HO2'; 
fACCOMECO3(i)=fACCOMECO3(i)-1; fHO2(i)=fHO2(i)-1; fACCOMECO3H(i)=fACCOMECO3H(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3 + HO2 = MECOACETO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'ACCOMECO3'; Gstr{i,2} = 'HO2'; 
fACCOMECO3(i)=fACCOMECO3(i)-1; fHO2(i)=fHO2(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3 + NO = MECOACETO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'ACCOMECO3'; Gstr{i,2} = 'NO'; 
fACCOMECO3(i)=fACCOMECO3(i)-1; fNO(i)=fNO(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3 + NO2 = ACCOMEPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'ACCOMECO3'; Gstr{i,2} = 'NO2'; 
fACCOMECO3(i)=fACCOMECO3(i)-1; fNO2(i)=fNO2(i)-1; fACCOMEPAN(i)=fACCOMEPAN(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3 + NO3 = MECOACETO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'ACCOMECO3'; Gstr{i,2} = 'NO3'; 
fACCOMECO3(i)=fACCOMECO3(i)-1; fNO3(i)=fNO3(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3 + RO2 = MECOACETO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'ACCOMECO3'; Gstr{i,2} = 'RO2';
fACCOMECO3(i)=fACCOMECO3(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHCO3 + HO2 = C5CO234 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4COMOHCO3'; Gstr{i,2} = 'HO2'; 
fC4COMOHCO3(i)=fC4COMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5CO234(i)=fC5CO234(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHCO3 + HO2 = C5COHOCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C4COMOHCO3'; Gstr{i,2} = 'HO2'; 
fC4COMOHCO3(i)=fC4COMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5COHOCO3H(i)=fC5COHOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHCO3 + NO = C5CO234 + NO2 + HO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4COMOHCO3'; Gstr{i,2} = 'NO'; 
fC4COMOHCO3(i)=fC4COMOHCO3(i)-1; fNO(i)=fNO(i)-1; fC5CO234(i)=fC5CO234(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHCO3 + NO2 = C4COMOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4COMOHCO3'; Gstr{i,2} = 'NO2'; 
fC4COMOHCO3(i)=fC4COMOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4COMOHPAN(i)=fC4COMOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHCO3 + NO3 = C5CO234 + NO2 + HO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4COMOHCO3'; Gstr{i,2} = 'NO3'; 
fC4COMOHCO3(i)=fC4COMOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fC5CO234(i)=fC5CO234(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHCO3 + RO2 = C5CO234 + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C4COMOHCO3'; Gstr{i,2} = 'RO2';
fC4COMOHCO3(i)=fC4COMOHCO3(i)-1; fC5CO234(i)=fC5CO234(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + HO2 = C23O3MCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'HO2'; 
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3MCO2H(i)=fC23O3MCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + HO2 = C23O3MCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'HO2'; 
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3MCO3H(i)=fC23O3MCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + HO2 = C23O3MO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'HO2'; 
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3MO2(i)=fC23O3MO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + NO = C23O3MO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'NO'; 
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fNO(i)=fNO(i)-1; fC23O3MO2(i)=fC23O3MO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + NO2 = C23O3MCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'NO2'; 
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fNO2(i)=fNO2(i)-1; fC23O3MCPAN(i)=fC23O3MCPAN(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + NO3 = C23O3MO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'NO3'; 
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fNO3(i)=fNO3(i)-1; fC23O3MO2(i)=fC23O3MO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + RO2 = C23O3MCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'RO2';
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fC23O3MCO2H(i)=fC23O3MCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3 + RO2 = C23O3MO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C23O3MCO3'; Gstr{i,2} = 'RO2';
fC23O3MCO3(i)=fC23O3MCO3(i)-1; fC23O3MO2(i)=fC23O3MO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMOOH + OH = ACCOCOMEO2';
k(:,i) = 1.19e-11;
Gstr{i,1} = 'ACCOCOMOOH'; Gstr{i,2} = 'OH'; 
fACCOCOMOOH(i)=fACCOCOMOOH(i)-1; fOH(i)=fOH(i)-1; fACCOCOMEO2(i)=fACCOCOMEO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMOOH + hv = ACCOCOMEO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ACCOCOMOOH'; 
fACCOCOMOOH(i)=fACCOCOMOOH(i)-1; fACCOCOMEO(i)=fACCOCOMEO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMOOH + hv = CH3CO3 + HCHO + CO + OH';
k(:,i) = J22;
Gstr{i,1} = 'ACCOCOMOOH'; 
fACCOCOMOOH(i)=fACCOCOMOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACCOCOMEO = CH3CO3 + HCHO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'ACCOCOMEO'; 
fACCOCOMEO(i)=fACCOCOMEO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = C23O3CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3CCO2H(i)=fC23O3CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = C23O3CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3CCO3H(i)=fC23O3CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = MCOCOMOXO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO = MCOCOMOXO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO(i)=fNO(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO2 = C23O3CPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO2(i)=fNO2(i)-1; fC23O3CPAN(i)=fC23O3CPAN(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO3 = MCOCOMOXO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO3'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO3(i)=fNO3(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + RO2 = C23O3CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'RO2';
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fC23O3CCO2H(i)=fC23O3CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + RO2 = MCOCOMOXO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'RO2';
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHYOOH + OH = MMALANHYO2';
k(:,i) = 1.69e-11;
Gstr{i,1} = 'MMALNHYOOH'; Gstr{i,2} = 'OH'; 
fMMALNHYOOH(i)=fMMALNHYOOH(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO2(i)=fMMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHYOOH + hv = MMALANHYO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNHYOOH'; 
fMMALNHYOOH(i)=fMMALNHYOOH(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO = CO2H3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MMALANHYO'; 
fMMALANHYO(i)=fMMALANHYO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHY2OH + OH = MMALANHYO';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'MMALNHY2OH'; Gstr{i,2} = 'OH'; 
fMMALNHY2OH(i)=fMMALNHY2OH(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; 

i=i+1;
Rnames{i} = 'CH3COPAN + OH = HCHO + CO + CO + NO2';
k(:,i) = 1.02e-13;
Gstr{i,1} = 'CH3COPAN'; Gstr{i,2} = 'OH'; 
fCH3COPAN(i)=fCH3COPAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COPAN = CH3COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CH3COPAN'; 
fCH3COPAN(i)=fCH3COPAN(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYLOOH + OH = NDNMXYOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NDNMXYLOOH'; Gstr{i,2} = 'OH'; 
fNDNMXYLOOH(i)=fNDNMXYLOOH(i)-1; fOH(i)=fOH(i)-1; fNDNMXYOLO2(i)=fNDNMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYLOOH + hv = NDNMXYOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NDNMXYLOOH'; 
fNDNMXYLOOH(i)=fNDNMXYLOOH(i)-1; fNDNMXYOLO(i)=fNDNMXYOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNMXYOLO = NC4MDCO2H + CH3COCO2H + NO2 + HNO3';
k(:,i) = KDEC;
Gstr{i,1} = 'NDNMXYOLO'; 
fNDNMXYOLO(i)=fNDNMXYOLO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLOOH + OH = DNMXYOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'DNMXYOLOOH'; Gstr{i,2} = 'OH'; 
fDNMXYOLOOH(i)=fDNMXYOLOOH(i)-1; fOH(i)=fOH(i)-1; fDNMXYOLO2(i)=fDNMXYOLO2(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLOOH + hv = DNMXYOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DNMXYOLOOH'; 
fDNMXYOLOOH(i)=fDNMXYOLOOH(i)-1; fDNMXYOLO(i)=fDNMXYOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNMXYOLO = NC4MDCO2H + CH3COCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'DNMXYOLO'; 
fDNMXYOLO(i)=fDNMXYOLO(i)-1; fNC4MDCO2H(i)=fNC4MDCO2H(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C8CO4DB + OH = C5CO234 + CO + CO + HO2 + CO';
k(:,i) = 7.04e-11;
Gstr{i,1} = 'C8CO4DB'; Gstr{i,2} = 'OH'; 
fC8CO4DB(i)=fC8CO4DB(i)-1; fOH(i)=fOH(i)-1; fC5CO234(i)=fC5CO234(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C8CO4DB + hv = C5CO2DBCO3 + CH3CO3';
k(:,i) = J34;
Gstr{i,1} = 'C8CO4DB'; 
fC8CO4DB(i)=fC8CO4DB(i)-1; fC5CO2DBCO3(i)=fC5CO2DBCO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C8CO4DB + hv = C5CO2DBCO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'C8CO4DB'; 
fC8CO4DB(i)=fC8CO4DB(i)-1; fC5CO2DBCO3(i)=fC5CO2DBCO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHCO3 + HO2 = C5CO3OH + CH3CO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C7CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC7CO2OHCO3(i)=fC7CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5CO3OH(i)=fC5CO3OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHCO3 + HO2 = C7CO2OCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C7CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC7CO2OHCO3(i)=fC7CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC7CO2OCO3H(i)=fC7CO2OCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHCO3 + NO = C5CO3OH + CH3CO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C7CO2OHCO3'; Gstr{i,2} = 'NO'; 
fC7CO2OHCO3(i)=fC7CO2OHCO3(i)-1; fNO(i)=fNO(i)-1; fC5CO3OH(i)=fC5CO3OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHCO3 + NO2 = C7CO2OHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C7CO2OHCO3'; Gstr{i,2} = 'NO2'; 
fC7CO2OHCO3(i)=fC7CO2OHCO3(i)-1; fNO2(i)=fNO2(i)-1; fC7CO2OHPAN(i)=fC7CO2OHPAN(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHCO3 + NO3 = C5CO3OH + CH3CO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C7CO2OHCO3'; Gstr{i,2} = 'NO3'; 
fC7CO2OHCO3(i)=fC7CO2OHCO3(i)-1; fNO3(i)=fNO3(i)-1; fC5CO3OH(i)=fC5CO3OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHCO3 + RO2 = C5CO3OH + CH3CO3';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C7CO2OHCO3'; Gstr{i,2} = 'RO2';
fC7CO2OHCO3(i)=fC7CO2OHCO3(i)-1; fC5CO3OH(i)=fC5CO3OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MXOHNO2OOH + OH = MXYOHNO2O2';
k(:,i) = 1.50e-10;
Gstr{i,1} = 'MXOHNO2OOH'; Gstr{i,2} = 'OH'; 
fMXOHNO2OOH(i)=fMXOHNO2OOH(i)-1; fOH(i)=fOH(i)-1; fMXYOHNO2O2(i)=fMXYOHNO2O2(i)+1; 

i=i+1;
Rnames{i} = 'MXOHNO2OOH + hv = MXYOHNO2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'MXOHNO2OOH'; 
fMXOHNO2OOH(i)=fMXOHNO2OOH(i)-1; fMXYOHNO2O(i)=fMXYOHNO2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MXYOHNO2O = C5CODBCO2H + CO + CO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MXYOHNO2O'; 
fMXYOHNO2O(i)=fMXYOHNO2O(i)-1; fC5CODBCO2H(i)=fC5CODBCO2H(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4OOH + hv = HO13C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO13C4OOH'; 
fHO13C4OOH(i)=fHO13C4OOH(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C4OOH = HO13C3CHO + OH';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C4OOH'; 
fOH(i)=fOH(i)-1; fHO13C4OOH(i)=fHO13C4OOH(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C4OOH = HO13C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C4OOH'; 
fOH(i)=fOH(i)-1; fHO13C4OOH(i)=fHO13C4OOH(i)-1; fHO13C4O2(i)=fHO13C4O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C4NO3 = HO13C3CHO + NO2';
k(:,i) = 7.29e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C4NO3'; 
fOH(i)=fOH(i)-1; fHO13C4NO3(i)=fHO13C4NO3(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O = HOC2H4CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5538./T);
Gstr{i,1} = 'HO13C4O'; 
fHO13C4O(i)=fHO13C4O(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CHO + hv = HOC2H4CHO + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HO13C3CHO'; 
fHO13C3CHO(i)=fHO13C3CHO(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HO13C3CHO = HO13C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO13C3CHO'; 
fNO3(i)=fNO3(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C3CHO = HO13C3CO3';
k(:,i) = 3.19e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C3CHO'; 
fOH(i)=fOH(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C4OH = HO13C3CHO + HO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C4OH'; 
fOH(i)=fOH(i)-1; fHO13C4OH(i)=fHO13C4OH(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + HO2 = HCOCH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2CO2H(i)=fHCOCH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + HO2 = HCOCH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2CO3H(i)=fHCOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + HO2 = HCOCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + NO = HCOCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'NO'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + NO2 = C3PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fC3PAN2(i)=fC3PAN2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + NO3 = HCOCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + RO2 = HCOCH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'RO2';
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHCOCH2CO2H(i)=fHCOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3 + RO2 = HCOCH2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HCOCH2CO3'; Gstr{i,2} = 'RO2';
fHCOCH2CO3(i)=fHCOCH2CO3(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + HO2 = BIACETO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'HO2'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + HO2 = CO23C4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'HO2'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO23C4CO3H(i)=fCO23C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + NO = BIACETO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'NO'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fNO(i)=fNO(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + NO2 = C5PAN9';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'NO2'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN9(i)=fC5PAN9(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + NO3 = BIACETO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'NO3'; 
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3 + RO2 = BIACETO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO23C4CO3'; Gstr{i,2} = 'RO2';
fCO23C4CO3(i)=fCO23C4CO3(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2CO3C4O = HCHO + CH3CHOHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'HO2CO3C4O'; 
fHO2CO3C4O(i)=fHO2CO3C4O(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C62OOH + hv = C62O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C62OOH'; 
fC62OOH(i)=fC62OOH(i)-1; fC62O(i)=fC62O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C62OOH + hv = C62O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C62OOH'; 
fC62OOH(i)=fC62OOH(i)-1; fC62O(i)=fC62O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C62OOH + hv = CH3CO3 + CO + MGLYOX + OH';
k(:,i) = J35;
Gstr{i,1} = 'C62OOH'; 
fC62OOH(i)=fC62OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C62OOH = C62O2';
k(:,i) = 1.30e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C62OOH'; 
fOH(i)=fOH(i)-1; fC62OOH(i)=fC62OOH(i)-1; fC62O2(i)=fC62O2(i)+1; 

i=i+1;
Rnames{i} = 'C62O = MGLYOX + CO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C62O'; 
fC62O(i)=fC62O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5CO34CO3 + HO2 = C5CO23O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C5CO34CO3'; Gstr{i,2} = 'HO2'; 
fC5CO34CO3(i)=fC5CO34CO3(i)-1; fHO2(i)=fHO2(i)-1; fC5CO23O2(i)=fC5CO23O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO34CO3 + HO2 = C6CO134OOH';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C5CO34CO3'; Gstr{i,2} = 'HO2'; 
fC5CO34CO3(i)=fC5CO34CO3(i)-1; fHO2(i)=fHO2(i)-1; fC6CO134OOH(i)=fC6CO134OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO34CO3 + NO = C5CO23O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C5CO34CO3'; Gstr{i,2} = 'NO'; 
fC5CO34CO3(i)=fC5CO34CO3(i)-1; fNO(i)=fNO(i)-1; fC5CO23O2(i)=fC5CO23O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO34CO3 + NO2 = C6CO134PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C5CO34CO3'; Gstr{i,2} = 'NO2'; 
fC5CO34CO3(i)=fC5CO34CO3(i)-1; fNO2(i)=fNO2(i)-1; fC6CO134PAN(i)=fC6CO134PAN(i)+1; 

i=i+1;
Rnames{i} = 'C5CO34CO3 + NO3 = C5CO23O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C5CO34CO3'; Gstr{i,2} = 'NO3'; 
fC5CO34CO3(i)=fC5CO34CO3(i)-1; fNO3(i)=fNO3(i)-1; fC5CO23O2(i)=fC5CO23O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO34CO3 + RO2 = C5CO23O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C5CO34CO3'; Gstr{i,2} = 'RO2';
fC5CO34CO3(i)=fC5CO34CO3(i)-1; fC5CO23O2(i)=fC5CO23O2(i)+1; 

i=i+1;
Rnames{i} = 'C73O2 + HO2 = C73OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C73O2'; Gstr{i,2} = 'HO2'; 
fC73O2(i)=fC73O2(i)-1; fHO2(i)=fHO2(i)-1; fC73OOH(i)=fC73OOH(i)+1; 

i=i+1;
Rnames{i} = 'C73O2 + NO = C73O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C73O2'; Gstr{i,2} = 'NO'; 
fC73O2(i)=fC73O2(i)-1; fNO(i)=fNO(i)-1; fC73O(i)=fC73O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C73O2 + NO3 = C73O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C73O2'; Gstr{i,2} = 'NO3'; 
fC73O2(i)=fC73O2(i)-1; fNO3(i)=fNO3(i)-1; fC73O(i)=fC73O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C73O2 + RO2 = C73O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C73O2'; Gstr{i,2} = 'RO2';
fC73O2(i)=fC73O2(i)-1; fC73O(i)=fC73O(i)+1; 

i=i+1;
Rnames{i} = 'C74O2 + HO2 = C74OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C74O2'; Gstr{i,2} = 'HO2'; 
fC74O2(i)=fC74O2(i)-1; fHO2(i)=fHO2(i)-1; fC74OOH(i)=fC74OOH(i)+1; 

i=i+1;
Rnames{i} = 'C74O2 + NO = C74O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C74O2'; Gstr{i,2} = 'NO'; 
fC74O2(i)=fC74O2(i)-1; fNO(i)=fNO(i)-1; fC74O(i)=fC74O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C74O2 + NO3 = C74O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C74O2'; Gstr{i,2} = 'NO3'; 
fC74O2(i)=fC74O2(i)-1; fNO3(i)=fNO3(i)-1; fC74O(i)=fC74O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C74O2 + RO2 = C74O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C74O2'; Gstr{i,2} = 'RO2';
fC74O2(i)=fC74O2(i)-1; fC74O(i)=fC74O(i)+1; 

i=i+1;
Rnames{i} = 'C83O2 + HO2 = C83OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C83O2'; Gstr{i,2} = 'HO2'; 
fC83O2(i)=fC83O2(i)-1; fHO2(i)=fHO2(i)-1; fC83OOH(i)=fC83OOH(i)+1; 

i=i+1;
Rnames{i} = 'C83O2 + NO = C83O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C83O2'; Gstr{i,2} = 'NO'; 
fC83O2(i)=fC83O2(i)-1; fNO(i)=fNO(i)-1; fC83O(i)=fC83O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C83O2 + NO3 = C83O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C83O2'; Gstr{i,2} = 'NO3'; 
fC83O2(i)=fC83O2(i)-1; fNO3(i)=fNO3(i)-1; fC83O(i)=fC83O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C83O2 + RO2 = C83O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C83O2'; Gstr{i,2} = 'RO2';
fC83O2(i)=fC83O2(i)-1; fC83O(i)=fC83O(i)+1; 

i=i+1;
Rnames{i} = 'HO4C5CO3H + hv = PE1ENEBO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO4C5CO3H'; 
fHO4C5CO3H(i)=fHO4C5CO3H(i)-1; fPE1ENEBO2(i)=fPE1ENEBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO4C5CO3H = HO4C5CO3';
k(:,i) = 3.99e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO4C5CO3H'; 
fOH(i)=fOH(i)-1; fHO4C5CO3H(i)=fHO4C5CO3H(i)-1; fHO4C5CO3(i)=fHO4C5CO3(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + HO2 = C52OH1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'HO2'; 
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fHO2(i)=fHO2(i)-1; fC52OH1OOH(i)=fC52OH1OOH(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + NO = PE1ENEBNO3';
k(:,i) = KRO2NO.*0.026;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'NO'; 
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fNO(i)=fNO(i)-1; fPE1ENEBNO3(i)=fPE1ENEBNO3(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + NO = PE1ENEBO + NO2';
k(:,i) = KRO2NO.*0.974;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'NO'; 
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fNO(i)=fNO(i)-1; fPE1ENEBO(i)=fPE1ENEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + NO3 = PE1ENEBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'NO3'; 
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fNO3(i)=fNO3(i)-1; fPE1ENEBO(i)=fPE1ENEBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + RO2 = C4OHCHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'RO2';
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fC4OHCHO(i)=fC4OHCHO(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + RO2 = HO12C5';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'RO2';
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fHO12C5(i)=fHO12C5(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO2 + RO2 = PE1ENEBO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'PE1ENEBO2'; Gstr{i,2} = 'RO2';
fPE1ENEBO2(i)=fPE1ENEBO2(i)-1; fPE1ENEBO(i)=fPE1ENEBO(i)+1; 

i=i+1;
Rnames{i} = 'C6PAN22 = HO4C5CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C6PAN22'; 
fC6PAN22(i)=fC6PAN22(i)-1; fHO4C5CO3(i)=fHO4C5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C6PAN22 = C4OHCHO + CO + NO2';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C6PAN22'; 
fOH(i)=fOH(i)-1; fC6PAN22(i)=fC6PAN22(i)-1; fC4OHCHO(i)=fC4OHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4DCO2 = MALANHY + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NC4DCO2'; 
fNC4DCO2(i)=fNC4DCO2(i)-1; fMALANHY(i)=fMALANHY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + HO2 = C4CO2DCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'HO2'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC4CO2DCO3H(i)=fC4CO2DCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + HO2 = HO2 + CO + C33CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'HO2'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + NO = HO2 + CO + C33CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'NO'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + NO2 = C4CO2DBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'NO2'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4CO2DBPAN(i)=fC4CO2DBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + NO3 = HO2 + CO + C33CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'NO3'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + RO2 = HO2 + CO + C33CO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'RO2';
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C5COOHCO3H + OH = C5CO2OHCO3';
k(:,i) = 8.01e-11;
Gstr{i,1} = 'C5COOHCO3H'; Gstr{i,2} = 'OH'; 
fC5COOHCO3H(i)=fC5COOHCO3H(i)-1; fOH(i)=fOH(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5COOHCO3H + hv = HOCOC4DIAL + HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5COOHCO3H'; 
fC5COOHCO3H(i)=fC5COOHCO3H(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHPAN + OH = HOCOC4DIAL + CO + CO + NO2';
k(:,i) = 7.66e-11;
Gstr{i,1} = 'C5CO2OHPAN'; Gstr{i,2} = 'OH'; 
fC5CO2OHPAN(i)=fC5CO2OHPAN(i)-1; fOH(i)=fOH(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHPAN = C5CO2OHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5CO2OHPAN'; 
fC5CO2OHPAN(i)=fC5CO2OHPAN(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBCO3 + HO2 = C5CO2DCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C5CO2DBCO3'; Gstr{i,2} = 'HO2'; 
fC5CO2DBCO3(i)=fC5CO2DBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5CO2DCO3H(i)=fC5CO2DCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBCO3 + HO2 = CH3CO3 + C33CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C5CO2DBCO3'; Gstr{i,2} = 'HO2'; 
fC5CO2DBCO3(i)=fC5CO2DBCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBCO3 + NO = CH3CO3 + C33CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C5CO2DBCO3'; Gstr{i,2} = 'NO'; 
fC5CO2DBCO3(i)=fC5CO2DBCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBCO3 + NO2 = C5CO2DBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C5CO2DBCO3'; Gstr{i,2} = 'NO2'; 
fC5CO2DBCO3(i)=fC5CO2DBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC5CO2DBPAN(i)=fC5CO2DBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBCO3 + NO3 = CH3CO3 + C33CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C5CO2DBCO3'; Gstr{i,2} = 'NO3'; 
fC5CO2DBCO3(i)=fC5CO2DBCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBCO3 + RO2 = CH3CO3 + C33CO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C5CO2DBCO3'; Gstr{i,2} = 'RO2';
fC5CO2DBCO3(i)=fC5CO2DBCO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C6COOHCO3H + OH = C6CO2OHCO3';
k(:,i) = 9.29e-11;
Gstr{i,1} = 'C6COOHCO3H'; Gstr{i,2} = 'OH'; 
fC6COOHCO3H(i)=fC6COOHCO3H(i)-1; fOH(i)=fOH(i)-1; fC6CO2OHCO3(i)=fC6CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C6COOHCO3H + hv = C5134CO2OH + HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6COOHCO3H'; 
fC6COOHCO3H(i)=fC6COOHCO3H(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHPAN + OH = C5134CO2OH + CO + CO + NO2';
k(:,i) = 8.96e-11;
Gstr{i,1} = 'C6CO2OHPAN'; Gstr{i,2} = 'OH'; 
fC6CO2OHPAN(i)=fC6CO2OHPAN(i)-1; fOH(i)=fOH(i)-1; fC5134CO2OH(i)=fC5134CO2OH(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO2OHPAN = C6CO2OHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C6CO2OHPAN'; 
fC6CO2OHPAN(i)=fC6CO2OHPAN(i)-1; fC6CO2OHCO3(i)=fC6CO2OHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4MDCO2 = MMALANHY + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NC4MDCO2'; 
fNC4MDCO2(i)=fNC4MDCO2(i)-1; fMMALANHY(i)=fMMALANHY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3H + OH = ACCOMECO3';
k(:,i) = 3.59e-12;
Gstr{i,1} = 'ACCOMECO3H'; Gstr{i,2} = 'OH'; 
fACCOMECO3H(i)=fACCOMECO3H(i)-1; fOH(i)=fOH(i)-1; fACCOMECO3(i)=fACCOMECO3(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMECO3H + hv = MECOACETO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'ACCOMECO3H'; 
fACCOMECO3H(i)=fACCOMECO3H(i)-1; fMECOACETO2(i)=fMECOACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMEPAN + OH = METACETHO + CO + CO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'ACCOMEPAN'; Gstr{i,2} = 'OH'; 
fACCOMEPAN(i)=fACCOMEPAN(i)-1; fOH(i)=fOH(i)-1; fMETACETHO(i)=fMETACETHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACCOMEPAN = ACCOMECO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'ACCOMEPAN'; 
fACCOMEPAN(i)=fACCOMEPAN(i)-1; fACCOMECO3(i)=fACCOMECO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5COHOCO3H + OH = C4COMOHCO3';
k(:,i) = 4.16e-12;
Gstr{i,1} = 'C5COHOCO3H'; Gstr{i,2} = 'OH'; 
fC5COHOCO3H(i)=fC5COHOCO3H(i)-1; fOH(i)=fOH(i)-1; fC4COMOHCO3(i)=fC4COMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5COHOCO3H + hv = C5CO234 + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'C5COHOCO3H'; 
fC5COHOCO3H(i)=fC5COHOCO3H(i)-1; fC5CO234(i)=fC5CO234(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5COHOCO3H + hv = C5CO234 + OH + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C5COHOCO3H'; 
fC5COHOCO3H(i)=fC5COHOCO3H(i)-1; fC5CO234(i)=fC5CO234(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHPAN + OH = C5CO234 + CO + NO2';
k(:,i) = 5.66e-13;
Gstr{i,1} = 'C4COMOHPAN'; Gstr{i,2} = 'OH'; 
fC4COMOHPAN(i)=fC4COMOHPAN(i)-1; fOH(i)=fOH(i)-1; fC5CO234(i)=fC5CO234(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4COMOHPAN = C4COMOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4COMOHPAN'; 
fC4COMOHPAN(i)=fC4COMOHPAN(i)-1; fC4COMOHCO3(i)=fC4COMOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO2H + OH = C23O3MO2';
k(:,i) = 6.58e-12;
Gstr{i,1} = 'C23O3MCO2H'; Gstr{i,2} = 'OH'; 
fC23O3MCO2H(i)=fC23O3MCO2H(i)-1; fOH(i)=fOH(i)-1; fC23O3MO2(i)=fC23O3MO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3H + OH = C23O3MCO3';
k(:,i) = 9.69e-12;
Gstr{i,1} = 'C23O3MCO3H'; Gstr{i,2} = 'OH'; 
fC23O3MCO3H(i)=fC23O3MCO3H(i)-1; fOH(i)=fOH(i)-1; fC23O3MCO3(i)=fC23O3MCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCO3H + hv = OH + C23O3MO2';
k(:,i) = J41;
Gstr{i,1} = 'C23O3MCO3H'; 
fC23O3MCO3H(i)=fC23O3MCO3H(i)-1; fOH(i)=fOH(i)+1; fC23O3MO2(i)=fC23O3MO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCPAN + OH = CO + ACECOCOCH3 + NO2';
k(:,i) = 6.46e-12;
Gstr{i,1} = 'C23O3MCPAN'; Gstr{i,2} = 'OH'; 
fC23O3MCPAN(i)=fC23O3MCPAN(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fACECOCOCH3(i)=fACECOCOCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3MCPAN = C23O3MCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C23O3MCPAN'; 
fC23O3MCPAN(i)=fC23O3MCPAN(i)-1; fC23O3MCO3(i)=fC23O3MCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO2H + OH = MCOCOMOXO2';
k(:,i) = 8.76e-13;
Gstr{i,1} = 'C23O3CCO2H'; Gstr{i,2} = 'OH'; 
fC23O3CCO2H(i)=fC23O3CCO2H(i)-1; fOH(i)=fOH(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3H + OH = C23O3CCO3';
k(:,i) = 4.34e-12;
Gstr{i,1} = 'C23O3CCO3H'; Gstr{i,2} = 'OH'; 
fC23O3CCO3H(i)=fC23O3CCO3H(i)-1; fOH(i)=fOH(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3H + hv = OH + MCOCOMOXO2';
k(:,i) = J41;
Gstr{i,1} = 'C23O3CCO3H'; 
fC23O3CCO3H(i)=fC23O3CCO3H(i)-1; fOH(i)=fOH(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CPAN + OH = CO + C23O3CHO + NO2';
k(:,i) = 7.36e-13;
Gstr{i,1} = 'C23O3CPAN'; Gstr{i,2} = 'OH'; 
fC23O3CPAN(i)=fC23O3CPAN(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fC23O3CHO(i)=fC23O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CPAN = C23O3CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C23O3CPAN'; 
fC23O3CPAN(i)=fC23O3CPAN(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO3OH + OH = C54CO + HO2';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'C5CO3OH'; Gstr{i,2} = 'OH'; 
fC5CO3OH(i)=fC5CO3OH(i)-1; fOH(i)=fOH(i)-1; fC54CO(i)=fC54CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO3OH + hv = C33CO + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C5CO3OH'; 
fC5CO3OH(i)=fC5CO3OH(i)-1; fC33CO(i)=fC33CO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO3OH + hv = C33CO + CH3CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C5CO3OH'; 
fC5CO3OH(i)=fC5CO3OH(i)-1; fC33CO(i)=fC33CO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OCO3H + OH = C7CO2OHCO3';
k(:,i) = 2.75e-11;
Gstr{i,1} = 'C7CO2OCO3H'; Gstr{i,2} = 'OH'; 
fC7CO2OCO3H(i)=fC7CO2OCO3H(i)-1; fOH(i)=fOH(i)-1; fC7CO2OHCO3(i)=fC7CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OCO3H + hv = C5CO3OH + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C7CO2OCO3H'; 
fC7CO2OCO3H(i)=fC7CO2OCO3H(i)-1; fC5CO3OH(i)=fC5CO3OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHPAN + OH = C5CO3OH + CH3CO3 + NO2';
k(:,i) = 2.42e-11;
Gstr{i,1} = 'C7CO2OHPAN'; Gstr{i,2} = 'OH'; 
fC7CO2OHPAN(i)=fC7CO2OHPAN(i)-1; fOH(i)=fOH(i)-1; fC5CO3OH(i)=fC5CO3OH(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7CO2OHPAN = C7CO2OHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C7CO2OHPAN'; 
fC7CO2OHPAN(i)=fC7CO2OHPAN(i)-1; fC7CO2OHCO3(i)=fC7CO2OHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + HO2 = HO13C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'HO2'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO13C3CO3H(i)=fHO13C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + HO2 = HOC2H4CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'HO2'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + NO = HOC2H4CHO + NO2 + HO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'NO'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fNO(i)=fNO(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + NO2 = C4PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'NO2'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN2(i)=fC4PAN2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + NO3 = HOC2H4CHO + NO2 + HO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'NO3'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + RO2 = HOC2H4CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'RO2';
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO2H + hv = HCOCH2O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2CO2H'; 
fHCOCH2CO2H(i)=fHCOCH2CO2H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCH2CO2H = HCOCH2O2';
k(:,i) = 2.14e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCH2CO2H'; 
fOH(i)=fOH(i)-1; fHCOCH2CO2H(i)=fHCOCH2CO2H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3H + hv = HCOCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCH2CO3H'; 
fHCOCH2CO3H(i)=fHCOCH2CO3H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2CO3H + hv = HCOCH2O2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2CO3H'; 
fHCOCH2CO3H(i)=fHCOCH2CO3H(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCH2CO3H = HCOCH2CO3';
k(:,i) = 2.49e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCH2CO3H'; 
fOH(i)=fOH(i)-1; fHCOCH2CO3H(i)=fHCOCH2CO3H(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3PAN2 = HCOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3PAN2'; 
fC3PAN2(i)=fC3PAN2(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3PAN2 = GLYOX + CO + NO2';
k(:,i) = 2.10e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3PAN2'; 
fOH(i)=fOH(i)-1; fC3PAN2(i)=fC3PAN2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3H + hv = BIACETO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO23C4CO3H'; 
fCO23C4CO3H(i)=fCO23C4CO3H(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4CO3H + hv = BIACETO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CO23C4CO3H'; 
fCO23C4CO3H(i)=fCO23C4CO3H(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C4CO3H = CO23C4CO3';
k(:,i) = 4.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C4CO3H'; 
fOH(i)=fOH(i)-1; fCO23C4CO3H(i)=fCO23C4CO3H(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN9 = CO23C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN9'; 
fC5PAN9(i)=fC5PAN9(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN9 = CO23C3CHO + CO + NO2';
k(:,i) = 3.12e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN9'; 
fOH(i)=fOH(i)-1; fC5PAN9(i)=fC5PAN9(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23O2 + HO2 = C5CO23OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C5CO23O2'; Gstr{i,2} = 'HO2'; 
fC5CO23O2(i)=fC5CO23O2(i)-1; fHO2(i)=fHO2(i)-1; fC5CO23OOH(i)=fC5CO23OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23O2 + NO = C5CO23O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5CO23O2'; Gstr{i,2} = 'NO'; 
fC5CO23O2(i)=fC5CO23O2(i)-1; fNO(i)=fNO(i)-1; fC5CO23O(i)=fC5CO23O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23O2 + NO3 = C5CO23O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5CO23O2'; Gstr{i,2} = 'NO3'; 
fC5CO23O2(i)=fC5CO23O2(i)-1; fNO3(i)=fNO3(i)-1; fC5CO23O(i)=fC5CO23O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23O2 + RO2 = C5CO23O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C5CO23O2'; Gstr{i,2} = 'RO2';
fC5CO23O2(i)=fC5CO23O2(i)-1; fC5CO23O(i)=fC5CO23O(i)+1; 

i=i+1;
Rnames{i} = 'C6CO134OOH + OH = C5CO34CO3';
k(:,i) = 5.35e-12;
Gstr{i,1} = 'C6CO134OOH'; Gstr{i,2} = 'OH'; 
fC6CO134OOH(i)=fC6CO134OOH(i)-1; fOH(i)=fOH(i)-1; fC5CO34CO3(i)=fC5CO34CO3(i)+1; 

i=i+1;
Rnames{i} = 'C6CO134OOH + hv = C5CO23O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6CO134OOH'; 
fC6CO134OOH(i)=fC6CO134OOH(i)-1; fC5CO23O2(i)=fC5CO23O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C6CO134PAN + OH = C5CO23CHO + CO + NO2';
k(:,i) = 1.76e-12;
Gstr{i,1} = 'C6CO134PAN'; Gstr{i,2} = 'OH'; 
fC6CO134PAN(i)=fC6CO134PAN(i)-1; fOH(i)=fOH(i)-1; fC5CO23CHO(i)=fC5CO23CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO134PAN = C5CO34CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C6CO134PAN'; 
fC6CO134PAN(i)=fC6CO134PAN(i)-1; fC5CO34CO3(i)=fC5CO34CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C73OOH + hv = C73O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C73OOH'; 
fC73OOH(i)=fC73OOH(i)-1; fC73O(i)=fC73O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C73OOH + hv = C73O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C73OOH'; 
fC73OOH(i)=fC73OOH(i)-1; fC73O(i)=fC73O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C73OOH + hv = CO23C4CO3 + CH3CHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C73OOH'; 
fC73OOH(i)=fC73OOH(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C73OOH = C73O2';
k(:,i) = 1.70e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C73OOH'; 
fOH(i)=fOH(i)-1; fC73OOH(i)=fC73OOH(i)-1; fC73O2(i)=fC73O2(i)+1; 

i=i+1;
Rnames{i} = 'C73O = CO23C4CO3 + CH3CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'C73O'; 
fC73O(i)=fC73O(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'C74OOH + hv = C74O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C74OOH'; 
fC74OOH(i)=fC74OOH(i)-1; fC74O(i)=fC74O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C74OOH + hv = CH3CHO + OH + CO2C3CO3 + CO';
k(:,i) = J35;
Gstr{i,1} = 'C74OOH'; 
fC74OOH(i)=fC74OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OH + C74OOH = C74O2';
k(:,i) = 1.70e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C74OOH'; 
fOH(i)=fOH(i)-1; fC74OOH(i)=fC74OOH(i)-1; fC74O2(i)=fC74O2(i)+1; 

i=i+1;
Rnames{i} = 'C74O = CO2C3CO3 + CH3CHO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'C74O'; 
fC74O(i)=fC74O(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C83OOH + hv = C83O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C83OOH'; 
fC83OOH(i)=fC83OOH(i)-1; fC83O(i)=fC83O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C83OOH + hv = C83O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C83OOH'; 
fC83OOH(i)=fC83OOH(i)-1; fC83O(i)=fC83O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C83OOH + hv = C83O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C83OOH'; 
fC83OOH(i)=fC83OOH(i)-1; fC83O(i)=fC83O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C83OOH = C83O2';
k(:,i) = 1.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C83OOH'; 
fOH(i)=fOH(i)-1; fC83OOH(i)=fC83OOH(i)-1; fC83O2(i)=fC83O2(i)+1; 

i=i+1;
Rnames{i} = 'C83O = EGLYOX + C2H5CO3 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'C83O'; 
fC83O(i)=fC83O(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C52OH1OOH + OH = C4OHCHO + OH';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'C52OH1OOH'; Gstr{i,2} = 'OH'; 
fC52OH1OOH(i)=fC52OH1OOH(i)-1; fOH(i)=fOH(i)-1; fC4OHCHO(i)=fC4OHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C52OH1OOH + OH = PE1ENEBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C52OH1OOH'; Gstr{i,2} = 'OH'; 
fC52OH1OOH(i)=fC52OH1OOH(i)-1; fOH(i)=fOH(i)-1; fPE1ENEBO2(i)=fPE1ENEBO2(i)+1; 

i=i+1;
Rnames{i} = 'C52OH1OOH + hv = PE1ENEBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C52OH1OOH'; 
fC52OH1OOH(i)=fC52OH1OOH(i)-1; fPE1ENEBO(i)=fPE1ENEBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBNO3 + OH = C4OHCHO + NO2';
k(:,i) = 3.43e-12;
Gstr{i,1} = 'PE1ENEBNO3'; Gstr{i,2} = 'OH'; 
fPE1ENEBNO3(i)=fPE1ENEBNO3(i)-1; fOH(i)=fOH(i)-1; fC4OHCHO(i)=fC4OHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PE1ENEBO = C3H7CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5489./T);
Gstr{i,1} = 'PE1ENEBO'; 
fPE1ENEBO(i)=fPE1ENEBO(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCHO + NO3 = C4OHCO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C4OHCHO'; Gstr{i,2} = 'NO3'; 
fC4OHCHO(i)=fC4OHCHO(i)-1; fNO3(i)=fNO3(i)-1; fC4OHCO3(i)=fC4OHCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCHO + OH = C4OHCO3';
k(:,i) = 3.30e-11;
Gstr{i,1} = 'C4OHCHO'; Gstr{i,2} = 'OH'; 
fC4OHCHO(i)=fC4OHCHO(i)-1; fOH(i)=fOH(i)-1; fC4OHCO3(i)=fC4OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCHO + hv = C3H7CHO + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C4OHCHO'; 
fC4OHCHO(i)=fC4OHCHO(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO12C5 + OH = C51OH2CO + HO2';
k(:,i) = 1.73e-11;
Gstr{i,1} = 'HO12C5'; Gstr{i,2} = 'OH'; 
fHO12C5(i)=fHO12C5(i)-1; fOH(i)=fOH(i)-1; fC51OH2CO(i)=fC51OH2CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DCO3H + OH = C4CO2DBCO3';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'C4CO2DCO3H'; Gstr{i,2} = 'OH'; 
fC4CO2DCO3H(i)=fC4CO2DCO3H(i)-1; fOH(i)=fOH(i)-1; fC4CO2DBCO3(i)=fC4CO2DBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DCO3H + hv = HO2 + CO + C33CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4CO2DCO3H'; 
fC4CO2DCO3H(i)=fC4CO2DCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DCO3H + hv = HO2 + CO + C33CO + OH';
k(:,i) = J34;
Gstr{i,1} = 'C4CO2DCO3H'; 
fC4CO2DCO3H(i)=fC4CO2DCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBPAN + OH = C33CO + CO + NO2';
k(:,i) = 2.74e-11;
Gstr{i,1} = 'C4CO2DBPAN'; Gstr{i,2} = 'OH'; 
fC4CO2DBPAN(i)=fC4CO2DBPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBPAN = C4CO2DBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4CO2DBPAN'; 
fC4CO2DBPAN(i)=fC4CO2DBPAN(i)-1; fC4CO2DBCO3(i)=fC4CO2DBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DCO3H + OH = C5CO2DBCO3';
k(:,i) = 3.60e-11;
Gstr{i,1} = 'C5CO2DCO3H'; Gstr{i,2} = 'OH'; 
fC5CO2DCO3H(i)=fC5CO2DCO3H(i)-1; fOH(i)=fOH(i)-1; fC5CO2DBCO3(i)=fC5CO2DBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DCO3H + hv = CH3CO3 + C33CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5CO2DCO3H'; 
fC5CO2DCO3H(i)=fC5CO2DCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DCO3H + hv = CH3CO3 + C33CO + OH';
k(:,i) = J34;
Gstr{i,1} = 'C5CO2DCO3H'; 
fC5CO2DCO3H(i)=fC5CO2DCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBPAN + OH = C33CO + CH3CHO + NO2';
k(:,i) = 3.28e-11;
Gstr{i,1} = 'C5CO2DBPAN'; Gstr{i,2} = 'OH'; 
fC5CO2DBPAN(i)=fC5CO2DBPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2DBPAN = C5CO2DBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5CO2DBPAN'; 
fC5CO2DBPAN(i)=fC5CO2DBPAN(i)-1; fC5CO2DBCO3(i)=fC5CO2DBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'METACETHO + OH = CH3CO3';
k(:,i) = 9.82e-11;
Gstr{i,1} = 'METACETHO'; Gstr{i,2} = 'OH'; 
fMETACETHO(i)=fMETACETHO(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + NO3 = CO + CH3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'C23O3CHO'; Gstr{i,2} = 'NO3'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + OH = CO + CH3CO3';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C23O3CHO'; Gstr{i,2} = 'OH'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + hv = CO + HO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'C23O3CHO'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3H + hv = HOC2H4CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO13C3CO3H'; 
fHO13C3CO3H(i)=fHO13C3CO3H(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO13C3CO3H = HO13C3CO3';
k(:,i) = 1.86e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO13C3CO3H'; 
fOH(i)=fOH(i)-1; fHO13C3CO3H(i)=fHO13C3CO3H(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN2 = HO13C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN2'; 
fC4PAN2(i)=fC4PAN2(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN2 = HOC2H4CHO + CO + NO2';
k(:,i) = 8.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN2'; 
fOH(i)=fOH(i)-1; fC4PAN2(i)=fC4PAN2(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23OOH + OH = C5CO23O2';
k(:,i) = 1.31e-11;
Gstr{i,1} = 'C5CO23OOH'; Gstr{i,2} = 'OH'; 
fC5CO23OOH(i)=fC5CO23OOH(i)-1; fOH(i)=fOH(i)-1; fC5CO23O2(i)=fC5CO23O2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23OOH + hv = C5CO23O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5CO23OOH'; 
fC5CO23OOH(i)=fC5CO23OOH(i)-1; fC5CO23O(i)=fC5CO23O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23O = C2H5CO3 + HCHO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'C5CO23O'; 
fC5CO23O(i)=fC5CO23O(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23CHO + OH = C2H5CO3 + CO + CO';
k(:,i) = 1.48e-11;
Gstr{i,1} = 'C5CO23CHO'; Gstr{i,2} = 'OH'; 
fC5CO23CHO(i)=fC5CO23CHO(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23CHO + hv = C2H5CO3 + CO + HO2 + CO';
k(:,i) = J35;
Gstr{i,1} = 'C5CO23CHO'; 
fC5CO23CHO(i)=fC5CO23CHO(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO23CHO + hv = C2H5O2 + CO + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C5CO23CHO'; 
fC5CO23CHO(i)=fC5CO23CHO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3 + HO2 = C3H7CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4OHCO3'; Gstr{i,2} = 'HO2'; 
fC4OHCO3(i)=fC4OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3 + HO2 = C4OHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C4OHCO3'; Gstr{i,2} = 'HO2'; 
fC4OHCO3(i)=fC4OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC4OHCO3H(i)=fC4OHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3 + NO = C3H7CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4OHCO3'; Gstr{i,2} = 'NO'; 
fC4OHCO3(i)=fC4OHCO3(i)-1; fNO(i)=fNO(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3 + NO2 = C4OHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4OHCO3'; Gstr{i,2} = 'NO2'; 
fC4OHCO3(i)=fC4OHCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4OHPAN(i)=fC4OHPAN(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3 + NO3 = C3H7CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4OHCO3'; Gstr{i,2} = 'NO3'; 
fC4OHCO3(i)=fC4OHCO3(i)-1; fNO3(i)=fNO3(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3 + RO2 = C3H7CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C4OHCO3'; Gstr{i,2} = 'RO2';
fC4OHCO3(i)=fC4OHCO3(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C51OH2CO + OH = C5OH2CO4O2';
k(:,i) = 7.26e-12;
Gstr{i,1} = 'C51OH2CO'; Gstr{i,2} = 'OH'; 
fC51OH2CO(i)=fC51OH2CO(i)-1; fOH(i)=fOH(i)-1; fC5OH2CO4O2(i)=fC5OH2CO4O2(i)+1; 

i=i+1;
Rnames{i} = 'C51OH2CO + hv = HOCH2CO3 + NC3H7O2';
k(:,i) = J22;
Gstr{i,1} = 'C51OH2CO'; 
fC51OH2CO(i)=fC51OH2CO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3H + OH = C4OHCO3';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'C4OHCO3H'; Gstr{i,2} = 'OH'; 
fC4OHCO3H(i)=fC4OHCO3H(i)-1; fOH(i)=fOH(i)-1; fC4OHCO3(i)=fC4OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4OHCO3H + hv = C3H7CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4OHCO3H'; 
fC4OHCO3H(i)=fC4OHCO3H(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4OHPAN + OH = C3H7CHO + CO + NO2';
k(:,i) = 5.37e-12;
Gstr{i,1} = 'C4OHPAN'; Gstr{i,2} = 'OH'; 
fC4OHPAN(i)=fC4OHPAN(i)-1; fOH(i)=fOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4OHPAN = C4OHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4OHPAN'; 
fC4OHPAN(i)=fC4OHPAN(i)-1; fC4OHCO3(i)=fC4OHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5OH2CO4O2 + HO2 = C5OHCO4OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C5OH2CO4O2'; Gstr{i,2} = 'HO2'; 
fC5OH2CO4O2(i)=fC5OH2CO4O2(i)-1; fHO2(i)=fHO2(i)-1; fC5OHCO4OOH(i)=fC5OHCO4OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5OH2CO4O2 + NO = C5OH2CO4O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5OH2CO4O2'; Gstr{i,2} = 'NO'; 
fC5OH2CO4O2(i)=fC5OH2CO4O2(i)-1; fNO(i)=fNO(i)-1; fC5OH2CO4O(i)=fC5OH2CO4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5OH2CO4O2 + NO3 = C5OH2CO4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5OH2CO4O2'; Gstr{i,2} = 'NO3'; 
fC5OH2CO4O2(i)=fC5OH2CO4O2(i)-1; fNO3(i)=fNO3(i)-1; fC5OH2CO4O(i)=fC5OH2CO4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5OH2CO4O2 + RO2 = C5OH2CO4O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C5OH2CO4O2'; Gstr{i,2} = 'RO2';
fC5OH2CO4O2(i)=fC5OH2CO4O2(i)-1; fC5OH2CO4O(i)=fC5OH2CO4O(i)+1; 

i=i+1;
Rnames{i} = 'C5OHCO4OOH + OH = C5OH2CO4O2';
k(:,i) = 7.08e-11;
Gstr{i,1} = 'C5OHCO4OOH'; Gstr{i,2} = 'OH'; 
fC5OHCO4OOH(i)=fC5OHCO4OOH(i)-1; fOH(i)=fOH(i)-1; fC5OH2CO4O2(i)=fC5OH2CO4O2(i)+1; 

i=i+1;
Rnames{i} = 'C5OHCO4OOH + hv = C5OH2CO4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5OHCO4OOH'; 
fC5OHCO4OOH(i)=fC5OHCO4OOH(i)-1; fC5OH2CO4O(i)=fC5OH2CO4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5OHCO4OOH + hv = IC3H7O2 + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'C5OHCO4OOH'; 
fC5OHCO4OOH(i)=fC5OHCO4OOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5OH2CO4O = HO1CO24C5 + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'C5OH2CO4O'; 
fC5OH2CO4O(i)=fC5OH2CO4O(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fHO2(i)=fHO2(i)+1; 

%END OF REACTION LIST


