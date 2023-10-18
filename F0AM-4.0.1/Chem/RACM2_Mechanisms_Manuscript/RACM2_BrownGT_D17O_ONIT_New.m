% RACM2_API_Subset.m
% # of species = 50
% # of reactions = 166
%
% MODIFICATIONS FROM GOLIFF (2013) DOCUMENTATION
% R170: MPAN production k missing from Goliff. Assume same as ACO3+NO2.
% R188: HCHO yield from ISOP+NO increased from 0.2 to 0.72 to match MVK+MACR.
% R267: ACO3+MO2 rate constant too high by x10. Corrected to IUPAC recommendation.
% R268: RCO3+MO2 rate constant too high by x10. Corrected to IUPAC recommendation.
%
% 20150814 SR,MM
% 20160323 GMW  Removed N2 and O2 and WAT from species list
%               Organized to match documentation.
%               Started to combine split reactions...
% 20160519 SR   Finished combining split reactions
% 20220705 WW   Extract for subset of API reactions
% 20220721 WW 	Tracked O3 Oxidation with "Q"

SpeciesToAdd = {...
'NO2'; 'NOQ'; 'NQ2'; 'PAN'; 'PANQ'; 'PANQ2'; ...
'HNO3'; 'HNO2Q'; 'HNOQ2'; 'HNQ3'; ...
'MONITSh'; 'MONITShQ'; 'MONITShQ2'; 'MONITShQ3';
'MONITUh'; 'MONITUhQ'; 'MONITUhQ2'; 'MONITUhQ3';
'HONITh'; 'HONIThQ'; 'HONIThQ2'; 'HONIThQ3'; ...
'MONITS'; 'MONITSQ'; 'MONITSQ2'; 'MONITSQ3'; ...
'MONITU'; 'MONITUQ'; 'MONITUQ2'; 'MONITUQ3'; ...
'HONIT'; 'HONITQ'; 'HONITQ2'; 'HONITQ3'; ...
'ONIT'; 'ONITQ'; 'ONITQ2'; 'ONITQ3'; ....
'ACD'; 'ACO3'; 'ACT'; 'ACTP'; 'ALD'; 'API'; 'APIP'; 'CO'; 'CO2'; 'DCB1'; 'EOH'; 'ETHP'; ...
'GLY'; 'H2'; 'H2O2'; 'HC3P'; 'HCHO'; 'HO2'; 'HO2NO2'; 'HONO'; 'HKET'; 'KET'; 'KETP'; 'MEK'; ...
'MEKP'; 'MGLY'; 'MO2'; 'MOH'; 'N2O5'; 'OLNN'; 'OLND'; 'NO'; 'NO3'; 'O1D'; 'O3'; 'O3P'; 'OH'; ...
'OP1'; 'OP2'; 'ORA1'; 'ORA2'; 'ORAP'; 'PAA'; 'PPN'; 'RCO3'; 'ROH'; 'XO2'; ...
'H2OQ'; 'H2Q2'; ...
'HO2NOQ'; 'HO2NQ2'; 'HONQ'; 'HOQ'; 'HOQNO2'; 'HOQNOQ'; 'HOQNQ2'; ...
'HQ2'; 'HQ2NO2'; 'HQ2NOQ'; 'HQ2NQ2'; 'HQNQ'; 'NO2Q'; 'NOQ2'; 'NQ'; ...
'NQ3'; 'OLNNQ'; 'OLNNQ2'; 'OLNNQ3'; 'OLNDQ'; 'OLNDQ2'; 'OLNDQ3';...
'Q1D'; 'Q3P'; 'QH'; 'H2Q2'; 'N2O4Q'; 'N2O3Q2'; 'N2O2Q3'; 'N2OQ4'; 'N2Q5'; ...
'PPNQ'; 'PPNQ2'; ....
'wHNO3'; 'wHNO2Q'; 'wHNOQ2'; 'wHNQ3'; ...
'A'; ...
};

AddSpecies

%% Flow tube
i=i+1; %<FlowTube_01>
Rnames{i} = 'A=N2O4Q';
k(:,i) = 0.000145;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fN2O4Q(i)=fN2O4Q(i)+1;

%% Photolysis
 
%O3 tracer
i=i+1; %<RACM2_001>; <BAPI_001>
Rnames{i} = 'O3=Q3P+O2';
k(:,i) = JO3P;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fQ3P(i)=fQ3P(i)+1;

%O3 tracer
i=i+1; %<RACM_002>; <BAPI_002>
Rnames{i} = 'O3=Q1D+O2';
k(:,i) = JO1D;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fQ1D(i)=fQ1D(i)+1;

i=i+1; %<RACM2_003>; <BAPI_003>
Rnames{i} = 'H2O2=OH+OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+2; 

%O3 tracer
i=i+1; %<RACM2_003a>; <BAPI_003a>
Rnames{i} = 'H2OQ=OH+QH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2OQ'; 
fH2OQ(i)=fH2OQ(i)-1; fOH(i)=fOH(i)+1; fQH(i)=fQH(i)+1;

%O3 tracer
i=i+1;  %<RACM2_003b>; <BAPI_003b>
Rnames{i} = 'H2Q2=QH + QH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2Q2'; 
fH2Q2(i)=fH2Q2(i)-1; fQH(i)=fQH(i)+2; 

i=i+1; %<RACM2_004>; <BAPI_004>
Rnames{i} = 'NO2=O3P+NO';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fO3P(i)=fO3P(i)+1; fNO(i)=fNO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_004a>; <BAPI_004a>
Rnames{i} = 'NOQ=0.5*Q3P+0.5*NO + 0.5*O3P + 0.5*NQ';
k(:,i) = JNO2;
Gstr{i,1} = 'NOQ'; 
fNOQ(i)=fNOQ(i)-1; fQ3P(i)=fQ3P(i)+0.5; fNO(i)=fNO(i)+0.5; 
fO3P(i)=fO3P(i)+0.5; fNQ(i)=fNQ(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_004b>; <BAPI_004b>
Rnames{i} = 'NQ2=Q3P+NQ';
k(:,i) = JNO2;
Gstr{i,1} = 'NQ2'; 
fNQ2(i)=fNQ2(i)-1; fQ3P(i)=fQ3P(i)+1; fNQ(i)=fNQ(i)+1;

i=i+1; %<RACM2_005>; <BAPI_005>
Rnames{i} = 'NO3=NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1;fNO(i)=fNO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_005a>; <BAPI_005a>
Rnames{i} = 'NO2Q= 0.33*NQ + 0.66*NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO2Q'; 
fNO2Q(i)=fNO2Q(i)-1;fNQ(i)=fNQ(i)+(1/3); fNO(i)=fNO(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_005b>; <BAPI_005b>
Rnames{i} = 'NOQ2= 0.66*NQ + 0.33*NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NOQ2'; 
fNOQ2(i)=fNOQ2(i)-1;fNQ(i)=fNQ(i)+(2/3); fNO(i)=fNO(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_005c>; <BAPI_005c>
Rnames{i} = 'NQ3=NQ';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NQ3'; 
fNQ3(i)=fNQ3(i)-1;fNQ(i)=fNQ(i)+1;

i=i+1; %<RACM2_006>; <BAPI_006>
Rnames{i} = 'NO3=O3P+NO2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_006a>; <BAPI_006a>
Rnames{i} = 'NO2Q=0.333*Q3P + 0.333*NO2 + 0.666*O3P + 0.666*NOQ';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO2Q'; 
fNO2Q(i)=fNO2Q(i)-1; fQ3P(i)=fQ3P(i)+(1/3); fNO2(i)=fNO2(i)+(1/3);
fO3P(i)=fO3P(i)+(2/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_006b>; <BAPI_006b>
Rnames{i} = 'NOQ2=0.666*Q3P + 0.666*NOQ + 0.333*O3P + 0.333*NQ2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NOQ2'; 
fNOQ2(i)=fNOQ2(i)-1; fQ3P(i)=fQ3P(i)+(2/3); fNOQ(i)=fNOQ(i)+(2/3); 
fO3P(i)=fO3P(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_006c>; <BAPI_006c>
Rnames{i} = 'NQ3=Q3P+NQ2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NQ3'; 
fNQ3(i)=fNQ3(i)-1; fQ3P(i)=fQ3P(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<RACM2_007>; <BAPI_007>
Rnames{i} = 'HONO=OH+NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

%O3 Tracer
i=i+1;%<RACM2_007a>; <BAPI_007a>
Rnames{i} = 'HONQ=0.5*NO +0.5*NQ + 0.5*OH + 0.5*QH';
k(:,i) = JHONO;
Gstr{i,1} = 'HONQ'; 
fHONQ(i)=fHONQ(i)-1; fQH(i)=fQH(i)+0.5; fNO(i)=fNO(i)+0.5; 
fOH(i)=fOH(i)+0.5; fNQ(i)=fNQ(i)+0.5; 

%O3 Tracer
i=i+1; %<RACM2_007b>; <BAPI_007b>
Rnames{i} = 'HQNQ=QH+NQ';
k(:,i) = JHONO;
Gstr{i,1} = 'HQNQ'; 
fHQNQ(i)=fHQNQ(i)-1; fQH(i)=fQH(i)+1; fNQ(i)=fNQ(i)+1; 

i=i+1; %<RACM2_008>; <BAPI_008>
Rnames{i} = 'HNO3=OH+NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_008a>; <BAPI_008a>
Rnames{i} = 'HNO2Q = (2/3)*NOQ + (1/3)*NO2 + (2/3)*OH + (1/3)*QH';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO2Q'; 
fHNO2Q(i)=fHNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fOH(i)=fOH(i)+(2/3); fQH(i)=fQH(i)+(1/3); 

i=i+1; %<RACM2_008b>; <BAPI_008b>
Rnames{i} = 'HNOQ2 = (2/3)*NOQ + (1/3)*NQ2 + (2/3)*QH + (1/3)OH';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNOQ2'; 
fHNOQ2(i)=fHNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fQH(i)=fQH(i)+(2/3); fOH(i)=fOH(i)+(1/3); 

i=i+1; %<RACM2_008c>; <BAPI_008c>
Rnames{i} = 'HNQ3= NQ2 + QH';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNQ3'; 
fHNQ3(i)=fHNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fQH(i)=fQH(i)+1;  


i=i+1; %<RACM2_009>; <BAPI_009>
Rnames{i} = 'HO2NO2 = 0.2OH+0.2NO3+0.8HO2+0.8NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fOH(i)=fOH(i)+0.2; fNO3(i)=fNO3(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNO2(i)=fNO2(i)+0.8; 

%O3 Tracer
i=i+1; %<RACM2_009a>; <BAPI_009a>
Rnames{i} = 'HO2NOQ = 0.2OH+0.2NO2Q+0.8HO2+0.8NOQ';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NOQ'; 
fHO2NOQ(i)=fHO2NOQ(i)-1; fOH(i)=fOH(i)+0.2; fNO2Q(i)=fNO2Q(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNOQ(i)=fNOQ(i)+0.8; 

%O3 Tracer
i=i+1; %<RACM2_009b>; <BAPI_009b>
Rnames{i} = 'HO2NQ2 = 0.2OH+0.2NOQ2+0.8HO2+0.8NQ2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NQ2'; 
fHO2NQ2(i)=fHO2NQ2(i)-1; fOH(i)=fOH(i)+0.2; fNOQ2(i)=fNOQ2(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNQ2(i)=fNQ2(i)+0.8;

%O3 Tracer
i=i+1; %<RACM2_009c>; <BAPI_009c>
Rnames{i} = 'HOQNO2 = 0.1OH+0.1NO2Q+0.4HOQ+0.4NO2+0.1QH+0.1NO3+0.4HOQ+0.4NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HOQNO2'; 
fHOQNO2(i)=fHOQNO2(i)-1; fOH(i)=fOH(i)+0.1; fNO2Q(i)=fNO2Q(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNO2(i)=fNO2(i)+0.4;
fQH(i)=fQH(i)+0.1; fNO3(i)=fNO3(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNO2(i)=fNO2(i)+0.4;

%O3 Tracer
i=i+1; %<RACM2_009d>; <BAPI_009d>
Rnames{i} = 'HOQNOQ = 0.1QH+0.1NO2Q+0.4HOQ+0.4NOQ+0.1OH+0.1NOQ2+0.4HOQ+0.4NOQ';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HOQNOQ'; 
fHOQNOQ(i)=fHOQNOQ(i)-1; fQH(i)=fQH(i)+0.1; fNO2Q(i)=fNO2Q(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNOQ(i)=fNOQ(i)+0.4;
fOH(i)=fOH(i)+0.1; fNOQ2(i)=fNOQ2(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNOQ(i)=fNOQ(i)+0.4;

%O3 Tracer
i=i+1; %<RACM2_009e>; <BAPI_009e>
Rnames{i} = 'HOQNQ2 = 0.1OH+0.1NQ3+0.4HOQ+0.4NQ2+0.1QH+0.1NOQ2+0.4HOQ+0.4NQ2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HOQNQ2'; 
fHOQNQ2(i)=fHOQNQ2(i)-1; fOH(i)=fOH(i)+0.1; fNQ3(i)=fNQ3(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNQ2(i)=fNQ2(i)+0.4;
fQH(i)=fQH(i)+0.1; fNOQ2(i)=fNOQ2(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNQ2(i)=fNQ2(i)+0.4;

%O3 Tracer
i=i+1; %<RACM2_009f>; <BAPI_009f>
Rnames{i} = 'HQ2NO2 = 0.2QH+0.2NO2Q+0.8HQ2+0.8NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HQ2NO2'; 
fHQ2NO2(i)=fHQ2NO2(i)-1; fQH(i)=fQH(i)+0.2; fNO2Q(i)=fNO2Q(i)+0.2; fHQ2(i)=fHQ2(i)+0.8; fNO2(i)=fNO2(i)+0.8;

%O3 Tracer
i=i+1; %<RACM2_009g>; <BAPI_009g>
Rnames{i} = 'HQ2NOQ = 0.2QH+0.2NOQ2+0.8HQ2+0.8NOQ';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HQ2NOQ'; 
fHQ2NOQ(i)=fHQ2NOQ(i)-1; fQH(i)=fQH(i)+0.2; fNOQ2(i)=fNOQ2(i)+0.2; fHQ2(i)=fHQ2(i)+0.8; fNOQ(i)=fNOQ(i)+0.8;

%O3 Tracer
i=i+1; %<RACM2_009h>; <BAPI_009h>
Rnames{i} = 'HQ2NQ2 = 0.2QH+0.2NQ3+0.8HQ2+0.8NQ2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HQ2NQ2'; 
fHQ2NQ2(i)=fHQ2NQ2(i)-1; fQH(i)=fQH(i)+0.2; fNQ3(i)=fNQ3(i)+0.2; fHQ2(i)=fHQ2(i)+0.8; fNQ2(i)=fNQ2(i)+0.8;

i=i+1; %<RACM2_010>; <BAPI_010>
Rnames{i} = 'HCHO=H2+CO';
k(:,i) = JHCHO_H2;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_011>; <BAPI_011>
Rnames{i} = 'HCHO=HO2+HO2+CO';
k(:,i)    = JHCHO_HO2;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_012>; <BAPI_012>
Rnames{i} = 'ACD=HO2+MO2+CO';
k(:,i) = JACD;
Gstr{i,1} = 'ACD'; 
fACD(i)=fACD(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_013>; <BAPI_013>
Rnames{i} = 'ALD=HO2+ETHP+CO';
k(:,i) = JALD;
Gstr{i,1} = 'ALD'; 
fALD(i)=fALD(i)-1; fHO2(i)=fHO2(i)+1; fETHP(i)=fETHP(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_014>; <BAPI_014>
Rnames{i} = 'ACT=ACO3+MO2';
k(:,i) = JACT;
Gstr{i,1} = 'ACT'; 
fACT(i)=fACT(i)-1; fACO3(i)=fACO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %<RACM2_016>; <BAPI_015>
Rnames{i} = 'MEK=ACO3+0.5ETHP+0.5MO2';
k(:,i) = JMEK;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fACO3(i)=fACO3(i)+1; fETHP(i)=fETHP(i)+0.5; fMO2(i)=fMO2(i)+0.5; 

i=i+1; %<RACM2_017>; <BAPI_016>
Rnames{i} = 'KET=ETHP+ACO3 ';
k(:,i) = JKET;
Gstr{i,1} = 'KET'; 
fKET(i)=fKET(i)-1; fETHP(i)=fETHP(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1; %<RACM2_018>; <BAPI_017>
Rnames{i} = 'HKET=HO2+ACO3+HCHO ';
k(:,i) = JHKET;
Gstr{i,1} = 'HKET'; 
fHKET(i)=fHKET(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fHCHO(i)=1; 

i=i+1; %<RACM2_021>; <BAPI_018>
Rnames{i} = 'GLY=H2+CO+CO';
k(:,i) = JGLY1;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %<RACM2_022>; <BAPI_019>
Rnames{i} = 'GLY=HCHO+CO+CO'; %mmarvin 20151020
k(:,i) = JGLY2;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %<RACM2_023>; <BAPI_020>
Rnames{i} = 'GLY=HO2+HO2+CO+CO';
k(:,i) = JGLY3;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+2; 

i=i+1; %<RACM2_024>; <BAPI_021>
Rnames{i} = 'MGLY=HO2+ACO3+CO';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_025>; <BAPI_022>
Rnames{i} = 'DCB1=2XO2+1.5HO2+0.5GLY+0.5MGLY+CO+0.5ACO3';
k(:,i) = JDCB1;
Gstr{i,1} = 'DCB1'; 
fDCB1(i)=fDCB1(i)-1; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+1.5; fGLY(i)=fGLY(i)+0.5; 
fMGLY(i)=fMGLY(i)+0.5; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+0.5;

i=i+1; %<RACM2_028>; <BAPI_023>
Rnames{i} = 'OP1=OH+HO2+HCHO';
k(:,i) = JOP1;
Gstr{i,1} = 'OP1'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_029>; <BAPI_024>
Rnames{i} = 'OP2=OH+HO2+ALD';
k(:,i) = JOP2;
Gstr{i,1} = 'OP2'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; 

%mmarvin 20151020
i=i+1; %<RACM2_030>; <BAPI_025>
Rnames{i} = 'PAA=OH+MO2';
k(:,i) = JPAA;
Gstr{i,1} = 'PAA'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1;  

i=i+1; %<RACM2_031>; <BAPI_026>
Rnames{i} = 'ONIT=HO2+0.2ALD+NO2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONIT'; 
fONIT(i)=fONIT(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+0.8; 

%O3 Tracer
i=i+1; %<RACM2_031>; <BAPI_026a>
Rnames{i} = 'ONITQ=HO2+0.2ALD+(2/3)*NOQ+(1/3)*NO2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONITQ'; 
fONITQ(i)=fONITQ(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fKET(i)=fKET(i)+0.8;

%O3 Tracer
i=i+1; %<RACM2_031>; <BAPI_026b>
Rnames{i} = 'ONITQ2=HO2+0.2ALD+(2/3)*NOQ+(1/3)*NQ2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONITQ2'; 
fONITQ2(i)=fONITQ2(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fKET(i)=fKET(i)+0.8;

%O3 Tracer
i=i+1; %<RACM2_031>; <BAPI_026c>
Rnames{i} = 'ONITQ3=HOQ+0.2ALD+NQ2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONITQ3'; 
fONITQ3(i)=fONITQ3(i)-1; fHOQ(i)=fHOQ(i)+1; fALD(i)=fALD(i)+0.2; fNQ2(i)=fNQ2(i)+1; fKET(i)=fKET(i)+0.8;

%mmarvin 20151020
i=i+1; %<RACM2_032>; <BAPI_027>
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1;

%O3 tracer
i=i+1; %<RACM2_032a>; <BAPI_027a>
Rnames{i} = 'PANQ=ACO3+NOQ';
k(:,i) = JPAN1;
Gstr{i,1} = 'PANQ'; 
fPANQ(i)=fPANQ(i)-1; fACO3(i)=fACO3(i)+1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_032b>; <BAPI_027b>
Rnames{i} = 'PANQ2=ACO3+NQ2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PANQ2'; 
fPANQ2(i)=fPANQ2(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+1;

%mmarvin 20151020
i=i+1; %<RACM2_033>; <BAPI_029>
Rnames{i} = 'PAN=MO2+NO3+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMO2(i)=fMO2(i)+1; fNO3(i)=fNO3(i)+1; fCO2(i)=fCO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_033a>; <BAPI_029a>
Rnames{i} = 'PANQ=MO2+NO2Q+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PANQ'; 
fPANQ(i)=fPANQ(i)-1; fMO2(i)=fMO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fCO2(i)=fCO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_033b>; <BAPI_029b>
Rnames{i} = 'PANQ2=MO2+NOQ2+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PANQ2'; 
fPANQ2(i)=fPANQ2(i)-1; fMO2(i)=fMO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fCO2(i)=fCO2(i)+1;

%% Inorganic Reactions
%O3 Tracer
i=i+1; %<RACM2_034a>; <BAPI_029a>
Rnames{i} = 'O3+OH=HOQ';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_034b>; <BAPI_029b>
Rnames{i} = 'O3+QH=HQ2';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'QH'; 
fO3(i)=fO3(i)-1; fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_035>; <BAPI_030>
Rnames{i} = 'O3+HO2=OH';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

%O3 Tracer
i=i+1; %<RACM2_035a>; <BAPI_030a>
Rnames{i} = 'O3+HOQ=0.5QH+0.5OH';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HOQ'; 
fO3(i)=fO3(i)-1; fHOQ(i)=fHOQ(i)-1; fQH(i)=fQH(i)+0.5; fOH(i)=fOH(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_035b>; <BAPI_030b>
Rnames{i} = 'O3+HQ2=QH';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HQ2'; 
fO3(i)=fO3(i)-1; fHQ2(i)=fHQ2(i)-1; fQH(i)=fQH(i)+1;

%O3 Tracer
i=i+1; %<RACM2_036a>; <BAPI_031a>
Rnames{i} = 'O3+NO=NOQ';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_036b>; <BAPI_031b>
Rnames{i} = 'O3+NQ=NQ2';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NQ'; 
fO3(i)=fO3(i)-1; fNQ(i)=fNQ(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_037a>; <BAPI_032a>
Rnames{i} = 'NO2+O3=NO2Q';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO2Q(i)=fNO2Q(i)+1;

%O3 Tracer
i=i+1; %<RACM2_037b>; <BAPI_032b>
Rnames{i} = 'NOQ+O3=NOQ2';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'O3'; 
fNOQ(i)=fNOQ(i)-1; fO3(i)=fO3(i)-1; fNOQ2(i)=fNOQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_037c>; <BAPI_032c>
Rnames{i} = 'NQ2+O3=NQ3';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'O3'; 
fNQ2(i)=fNQ2(i)-1; fO3(i)=fO3(i)-1; fNQ3(i)=fNQ3(i)+1;

i=i+1; %<RACM2_038>; <BAPI_033>
Rnames{i} = 'O3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_038a>; <BAPI_033a>
Rnames{i} = 'Q3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; 
Gstr{i,1} = 'Q3P'; 
fQ3P(i)=fQ3P(i)-1; fO3(i)=fO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_039>; <BAPI_034>
Rnames{i} = 'O3P+O3=';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1;

%O3 Tracer
i=i+1; %<RACM2_039a>; <BAPI_034a>
Rnames{i} = 'Q3P+O3=';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'O3'; 
fQ3P(i)=fQ3P(i)-1; fO3(i)=fO3(i)-1;

i=i+1; %<RACM2_040>; <BAPI_035>
Rnames{i} = 'O1D+O2=O3P';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

%O3 Tracer
i=i+1; %<RACM2_040a>; <BAPI_035a>
Rnames{i} = 'Q1D+O2=Q3P';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'Q1D';
fQ1D(i)=fQ1D(i)-1; fQ3P(i)=fQ3P(i)+1;

i=i+1; %<RACM2_041>; <BAPI_036>
Rnames{i} = 'O1D+N2=O3P';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

%O3 Tracer
i=i+1; %<RACM2_041a>; <BAPI_036a>
Rnames{i} = 'Q1D+N2=Q3P';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'Q1D';
fQ1D(i)=fQ1D(i)-1; fQ3P(i)=fQ3P(i)+1;


i=i+1; %<RACM2_042>; <BAPI_037>
Rnames{i} = 'O1D+H2O=OH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_042a>; <BAPI_037a>
Rnames{i} = 'Q1D+H2O=QH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'Q1D'; 
fQ1D(i)=fQ1D(i)-1; fOH(i)=fOH(i)+1; fQH(i)=fQH(i)+1; 

i=i+1; %<RACM2_043>; <BAPI_038>
Rnames{i} = 'OH+H2=HO2';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_043a>; <BAPI_038a>
Rnames{i} = 'QH+H2=HO2';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'H2'; 
fQH(i)=fQH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<RACM2_044>; <BAPI_039>
Rnames{i} = 'OH+HO2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;

%O3 Tracer
i=i+1; %<RACM2_044a>; <BAPI_039a>
Rnames{i} = 'QH+HO2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2'; 
fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)-1;

%O3 Tracer
i=i+1; %<RACM2_044b>; <BAPI_039b>
Rnames{i} = 'QH+HOQ=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQ'; 
fQH(i)=fQH(i)-1; fHOQ(i)=fHOQ(i)-1;

%O3 Tracer
i=i+1; %<RACM2_044c>; <BAPI_039c>
Rnames{i} = 'QH+HQ2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2'; 
fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)-1;

%O3 Tracer
i=i+1; %<RACM2_044d>; <BAPI_039d>
Rnames{i} = 'OH+HQ2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2'; 
fOH(i)=fOH(i)-1; fHQ2(i)=fHQ2(i)-1;

%O3 Tracer
i=i+1; %<RACM2_044e>; <BAPI_039e>
Rnames{i} = 'OH+HOQ=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQ'; 
fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)-1;

i=i+1; %<RACM2_045>; <BAPI_040>
Rnames{i} = 'HO2+HO2=H2O2+O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_045a>; <BAPI_040a>
Rnames{i} = 'HOQ + HO2 = 0.5*H2OQ + 0.5*H2O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HO2'; 
fHOQ(i)=fHOQ(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+0.5; fH2O2(i)=fH2O2(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_045b>; <BAPI_040b>
Rnames{i} = 'HQ2 + HO2 = H2OQ';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HO2'; 
fHQ2(i)=fHQ2(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_045c>; <BAPI_040c>
Rnames{i} = 'HOQ + HOQ = 0.25*H2O2 + 0.5*H2OQ + 0.25*H2Q2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HOQ'; 
fHOQ(i)=fHOQ(i)-1; fHOQ(i)=fHOQ(i)-1; fH2O2(i)=fH2O2(i)+0.25; 
fH2OQ(i)=fH2OQ(i)+0.5; fH2Q2(i)=fH2Q2(i)+0.25;

%O3 Tracer
i=i+1; %<RACM2_045d>; <BAPI_040d>
Rnames{i} = 'HQ2 + HOQ = 0.5*H2OQ + 0.5*H2Q2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HOQ'; 
fHQ2(i)=fHQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fH2OQ(i)=fH2OQ(i)+0.5; fH2Q2(i)=fH2Q2(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_045e>; <BAPI_040e>
Rnames{i} = 'HQ2 + HQ2 = H2Q2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HQ2'; 
fHQ2(i)=fHQ2(i)-2; fH2Q2(i)=fH2Q2(i)+1;


i=i+1; %<RACM2_046>; <BAPI_041>
Rnames{i} = 'HO2+HO2+H2O=H2O2'; %mmarvin 20151020
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_046a>; <BAPI_041a>
Rnames{i} = 'HOQ + HO2 = 0.5*H2OQ + 0.5*H2O2';
k(:,i) = 3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HO2'; 
fHOQ(i)=fHOQ(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+0.5; fH2O2(i)=fH2O2(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_046b>; <BAPI_041b>
Rnames{i} = 'HQ2 + HO2 = H2OQ';
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HO2'; 
fHQ2(i)=fHQ2(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_046c>; <BAPI_041c>
Rnames{i} = 'HOQ + HOQ = 0.5*H2OQ + 0.25*H2Q2 + 0.25*H2O2';
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HOQ'; 
fHOQ(i)=fHOQ(i)-2; fH2OQ(i)=fH2OQ(i)+0.5; fH2Q2(i)=fH2Q2(i)+0.25; fH2O2(i)=fH2O2(i)+0.25;

%O3 Tracer
i=i+1; %<RACM2_046d>; <BAPI_041d>
Rnames{i} = 'HOQ + HQ2 = 0.5*H2Q2 + 0.5*H2OQ';
k(:,i) = 3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HQ2'; 
fHOQ(i)=fHOQ(i)-1; fHQ2(i)=fHQ2(i)-1; fH2Q2(i)=fH2Q2(i)+0.5; fH2OQ(i)=fH2OQ(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_046e>; <BAPI_041e>
Rnames{i} = 'HQ2 + HQ2 = H2Q2';
k(:,i) = 3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HQ2'; 
fHQ2(i)=fHQ2(i)-2; fH2Q2(i)=fH2Q2(i)+1;


i=i+1; %<RACM2_047>; <BAPI_042>
Rnames{i} = 'H2O2+OH=HO2+H2O';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_047a>; <BAPI_042a>
Rnames{i} = 'H2OQ+OH=0.5HOQ+0.5HO2';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2OQ'; Gstr{i,2} = 'OH'; 
fH2OQ2(i)=fH2OQ(i)-1; fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)+0.5; fHO2(i)=fHO2(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_047b>; <BAPI_042b>
Rnames{i} = 'H2Q2+OH=HOQ';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2Q2'; Gstr{i,2} = 'OH'; 
fH2Q2(i)=fH2Q2(i)-1; fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_047c>; <BAPI_042c>
Rnames{i} = 'H2O2+QH=HOQ';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'QH'; 
fH2O2(i)=fH2O2(i)-1; fQH(i)=fQH(i)-1; fHOQ(i)=fHOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_047d>; <BAPI_042d>
Rnames{i} = 'H2OQ+QH=0.5HQ2+0.5HOQ';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2OQ'; Gstr{i,2} = 'QH'; 
fH2OQ(i)=fH2OQ(i)-1; fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)+0.5; fHOQ(i)=fHOQ(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_047e>; <BAPI_042e>
Rnames{i} = 'H2Q2+QH=HQ2';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2Q2'; Gstr{i,2} = 'QH'; 
fH2Q2(i)=fH2Q2(i)-1; fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)+1;




i=i+1; %<RACM2_048>; <BAPI_043>
Rnames{i} = 'NO+O3P=NO2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3P'; 
fNO(i)=fNO(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_048a>; <BAPI_043a>
Rnames{i} = 'NQ+O3P=NOQ';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'O3P'; 
fNQ(i)=fNQ(i)-1; fO3P(i)=fO3P(i)-1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_048b>; <BAPI_043b>
Rnames{i} = 'NQ+Q3P=NQ2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'Q3P'; 
fNQ(i)=fNQ(i)-1; fQ3P(i)=fQ3P(i)-1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_048c>; <BAPI_043c>
Rnames{i} = 'NO+Q3P=NOQ';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'Q3P'; 
fNO(i)=fNO(i)-1; fQ3P(i)=fQ3P(i)-1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<RACM2_049>; <BAPI_044>
Rnames{i} = 'NO+OH=HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_049a>; <BAPI_044a>
Rnames{i} = 'NQ+OH=HONQ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'OH'; 
fNQ(i)=fNQ(i)-1; fOH(i)=fOH(i)-1; fHONQ(i)=fHONQ(i)+1; 

%O3 Tracer
i=i+1;%<RACM2_049b>; <BAPI_044b>
Rnames{i} = 'NQ+QH=HQNQ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'QH'; 
fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)-1; fHQNQ(i)=fHQNQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_049c>; <BAPI_044c>
Rnames{i} = 'NO+QH=HONQ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'QH'; 
fNO(i)=fNO(i)-1; fQH(i)=fQH(i)-1; fHONQ(i)=fHONQ(i)+1; 

i=i+1; %<RACM2_050>; <BAPI_045>
Rnames{i} = 'HO2+NO=OH+NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_050a>; <BAPI_045a>
Rnames{i} = 'HO2+NQ=OH+NOQ';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ'; 
fHO2(i)=fHO2(i)-1; fNQ(i)=fNQ(i)-1; fOH(i)=fOH(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_050b>; <BAPI_045b>
Rnames{i} = 'HOQ+NQ=0.5*QH + 0.5*NOQ + 0.5*OH + 0.5*NQ2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ'; 
fHOQ(i)=fHOQ(i)-1; fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)+0.5; fNOQ(i)=fNOQ(i)+0.5; 
fOH(i)=fOH(i)+0.5; fNQ2(i)=fNQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<RACM2_050c>; <BAPI_045c>
Rnames{i} = 'HQ2+NQ=QH+NQ2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ'; 
fHQ2(i)=fHQ2(i)-1; fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_050d>; <BAPI_045d>
Rnames{i} = 'HOQ+NO=0.5OH+0.5NOQ+0.5QH+0.5NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO'; 
fHOQ(i)=fHOQ(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;
fQH(i)=fQH(i)+0.5; fNO2(i)=fNO2(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_050e>; <BAPI_045e>
Rnames{i} = 'HQ2+NO=QH+NOQ';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO'; 
fHQ2(i)=fHQ2(i)-1; fNO(i)=fNO(i)-1; fQH(i)=fQH(i)+1; fNOQ(i)=fNOQ(i)+1;

i=i+1; %<RACM2_051>; <BAPI_046>
Rnames{i} = 'HO2+NO=HNO3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_051a>; <BAPI_046a>
Rnames{i} = 'HO2+NQ=HNO2Q';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ'; 
fHO2(i)=fHO2(i)-1; fNQ(i)=fNQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_051b>; <BAPI_046b>
Rnames{i} = 'HOQ+NQ=HNOQ2';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ'; 
fHOQ(i)=fHOQ(i)-1; fNQ(i)=fNQ(i)-1; fHNOQ2(i)=fHNOQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_051c>; <BAPI_046c>
Rnames{i} = 'HQ2+NQ=HNQ3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ'; 
fHQ2(i)=fHQ2(i)-1; fNQ(i)=fNQ(i)-1; fHNQ3(i)=fHNQ3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_051d>; <BAPI_046d>
Rnames{i} = 'HQ2+NO=HNOQ2';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO'; 
fHQ2(i)=fHQ2(i)-1; fNO(i)=fNO(i)-1; fHNOQ2(i)=fHNOQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_051e>; <BAPI_046e>
Rnames{i} = 'HOQ+NO=HNO2Q';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO'; 
fHOQ(i)=fHOQ(i)-1; fNO(i)=fNO(i)-1; fHNO2Q(i)=fHNO2Q(i)+1;


i=i+1; %<RACM2_052>; <BAPI_047>
Rnames{i} = 'NO+NO=NO2+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-2; fNO2(i)=fNO2(i)+2; 

%O3 Tracer
i=i+1; %<RACM2_052a>; <BAPI_047a>
Rnames{i} = 'NQ+NO+O2=NOQ+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO'; 
fNQ(i)=fNQ(i)-1; fNO(i)=fNO(i)-1; fNOQ(i)=fNOQ(i)+1;  fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_052b>; <BAPI_047b>
Rnames{i} = 'NQ+NQ=NOQ+NOQ';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NQ'; 
fNQ(i)=fNQ(i)-2; fNOQ(i)=fNOQ(i)+2;   

i=i+1; %<RACM2_053>; <BAPI_048>
Rnames{i} = 'HONO+OH=NO2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_053a>; <BAPI_048a>
Rnames{i} = 'HONO+QH=NO2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'QH'; 
fHONO(i)=fHONO(i)-1; fQH(i)=fQH(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_053b>; <BAPI_048b>
Rnames{i} = 'HONQ+QH=NOQ';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONQ'; Gstr{i,2} = 'QH'; 
fHONQ(i)=fHONQ(i)-1; fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_053c>; <BAPI_048c>
Rnames{i} = 'HQNQ+QH=NQ2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HQNQ'; Gstr{i,2} = 'QH'; 
fHQNQ(i)=fHQNQ(i)-1; fQH(i)=fQH(i)-1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_053d>; <BAPI_048d>
Rnames{i} = 'HQNQ+OH=NQ2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HQNQ'; Gstr{i,2} = 'OH'; 
fHQNQ(i)=fHQNQ(i)-1; fOH(i)=fOH(i)-1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_053e>; <BAPI_048e>
Rnames{i} = 'HONQ+OH=NOQ';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONQ'; Gstr{i,2} = 'OH'; 
fHONQ(i)=fHONQ(i)-1; fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)+1; 



i=i+1; %<RACM2_054>; <BAPI_049>
Rnames{i} = 'O3P+NO2=NO+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

%O3 Tracer
i=i+1; %<RACM2_054a>; <BAPI_049a>
Rnames{i} = 'Q3P+NO2=NO+OQ';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NO2'; 
fQ3P(i)=fQ3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

%O3 Tracer
i=i+1; %<RACM2_054b>; <BAPI_049b>
Rnames{i} = 'Q3P+NOQ=0.5NQ + 0.5NO';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NOQ'; 
fQ3P(i)=fQ3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNQ(i)=fNQ(i)+0.5; fNO(i)=fNO(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_054c>; <BAPI_049c>
Rnames{i} = 'O3P+NOQ=NO+QO NQ+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NOQ'; 
fO3P(i)=fO3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_054d>; <BAPI_049d>
Rnames{i} = 'O3P+NQ2=NQ+OQ';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NQ2'; 
fO3P(i)=fO3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ(i)=fNQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_054e>; <BAPI_049e>
Rnames{i} = 'Q3P+NQ2=NQ+Q2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NQ2'; 
fQ3P(i)=fQ3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ(i)=fNQ(i)+1;

i=i+1; %<RACM2_055>; <BAPI_050>
Rnames{i} = 'O3P+NO2=NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_055a>; <BAPI_050a>
Rnames{i} = 'Q3P+NO2=NO2Q';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NO2'; 
fQ3P(i)=fQ3P(i)-1; fNO2(i)=fNO2(i)-1; fNO2Q(i)=fNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_055b>; <BAPI_050b>
Rnames{i} = 'Q3P+NOQ=NOQ2';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NOQ'; 
fQ3P(i)=fQ3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNOQ2(i)=fNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_055c>; <BAPI_050c>
Rnames{i} = 'Q3P+NQ2=NQ3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NQ2'; 
fQ3P(i)=fQ3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ3(i)=fNQ3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_055d>; <BAPI_050d>
Rnames{i} = 'O3P+NQ2=NOQ2';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NQ2'; 
fO3P(i)=fO3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNOQ2(i)=fNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_055e>; <BAPI_050e>
Rnames{i} = 'O3P+NOQ=NO2Q';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NOQ'; 
fO3P(i)=fO3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNO2Q(i)=fNO2Q(i)+1; 

i=i+1; %<RACM2_056>; <BAPI_051>
Rnames{i} = 'OH+NO2=HNO3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_056a>; <BAPI_051a>
Rnames{i} = 'QH+NO2=HNO2Q';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO2'; 
fQH(i)=fQH(i)-1; fNO2(i)=fNO2(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_056b>; <BAPI_051b>
Rnames{i} = 'QH+NOQ=HNOQ2';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NOQ'; 
fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_056c>; <BAPI_051c>
Rnames{i} = 'QH+NQ2=HNQ3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NQ2'; 
fQH(i)=fQH(i)-1; fNQ2(i)=fNQ2(i)-1; fHNQ3(i)=fHNQ3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_056d>; <BAPI_051d>
Rnames{i} = 'OH+NQ2=HNOQ2';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NQ2'; 
fOH(i)=fOH(i)-1; fNQ2(i)=fNQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_056e>; <BAPI_051e>
Rnames{i} = 'OH+NOQ=HNO2Q';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NOQ'; 
fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1;

i=i+1; %<RACM2_057>; <BAPI_052>
Rnames{i} = 'OH+HNO3=NO3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_057a>; <BAPI_052a>
Rnames{i} = 'QH+HNO3=NO3+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNO3'; 
fQH(i)=fQH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_057b>; <BAPI_052b>
Rnames{i} = 'QH+HNO2Q=NO2Q+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNO2Q'; 
fQH(i)=fQH(i)-1; fHNO2Q(i)=fHNO2Q(i)-1; fNO2Q(i)=fNO2Q(i)+1;


%O3 Tracer
i=i+1; %<RACM2_057c>; <BAPI_052c>
Rnames{i} = 'QH+HNOQ2=NOQ2+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNOQ2'; 
fQH(i)=fQH(i)-1; fHNOQ2(i)=fHNOQ2(i)-1; fNOQ2(i)=fNOQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_057d>; <BAPI_052d>
Rnames{i} = 'QH+HNQ3=NQ3+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNQ3'; 
fQH(i)=fQH(i)-1; fHNQ3(i)=fHNQ3(i)-1; fNQ3(i)=fNQ3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_057e>; <BAPI_052e>
Rnames{i} = 'OH+HNQ3=NQ3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNQ3'; 
fOH(i)=fOH(i)-1; fHNQ3(i)=fHNQ3(i)-1; fNQ3(i)=fNQ3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_057f>; <BAPI_052f>
Rnames{i} = 'OH+HNOQ2=NOQ2+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNOQ2'; 
fOH(i)=fOH(i)-1; fHNOQ2(i)=fHNOQ2(i)-1; fNOQ2(i)=fNOQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_057g>; <BAPI_052g>
Rnames{i} = 'OH+HNO2Q=NO2Q+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO2Q'; 
fOH(i)=fOH(i)-1; fHNO2Q(i)=fHNO2Q(i)-1; fNO2Q(i)=fNO2Q(i)+1;


i=i+1; %<RACM2_058>; <BAPI_053>
Rnames{i} = 'OH+NO3=HO2+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_058a>; <BAPI_053a>
Rnames{i} = 'QH+NO3=HOQ+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO3'; 
fQH(i)=fQH(i)-1; fNO3(i)=fNO3(i)-1; fHOQ(i)=fHOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_058b>; <BAPI_053b>
Rnames{i} = 'QH+NO2Q=0.5HQ2+0.5NO2 +0.5HOQ+0.5NOQ';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO2Q'; 
fQH(i)=fQH(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHQ2(i)=fHQ2(i)+0.5; fNO2(i)=fNO2(i)+0.5; fHOQ(i)=fHOQ(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_058c>; <BAPI_053c>
Rnames{i} = 'QH+NOQ2=0.5HQ2+0.5NOQ+0.5HOQ+0.5NQ2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NOQ2'; 
fQH(i)=fQH(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHQ2(i)=fHQ2(i)+0.5; fNOQ(i)=fNOQ(i)+0.5; fHOQ(i)=fHOQ(i)+0.5; fNQ2(i)=fNQ2(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_058d>; <BAPI_053d>
Rnames{i} = 'QH+NQ3=HQ2+NQ2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NQ3'; 
fQH(i)=fQH(i)-1; fNQ3(i)=fNQ3(i)-1; fHQ2(i)=fHQ2(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_058e>; <BAPI_053e>
Rnames{i} = 'OH+NQ3=HOQ+NQ2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NQ3'; 
fOH(i)=fOH(i)-1; fNQ3(i)=fNQ3(i)-1; fHOQ(i)=fHOQ(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_058f>; <BAPI_053f>
Rnames{i} = 'OH+NOQ2=0.5HO2+0.5NQ2+0.5HOQ+0.5NOQ';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NOQ2'; 
fOH(i)=fOH(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+0.5; fHOQ(i)=fHOQ(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

%O3 Tracer
i=i+1; %<RACM2_058g>; <BAPI_053g>
Rnames{i} = 'OH+NO2Q=0.5HOQ+0.5NO2 0.5HO2+0.5NOQ';
k(:,i) = 0.5*2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2Q'; 
fOH(i)=fOH(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHOQ(i)=fHOQ(i)+0.5; fNO2(i)=fNO2(i)+0.5; fHO2(i)=fHO2(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;


i=i+1; %<RACM2_059>; <BAPI_054>
Rnames{i} = 'HO2+NO3=0.7OH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059a>; <BAPI_054a>
Rnames{i} = 'HOQ+NO3=0.35OH+0.35QH+0.3HNO3+0.7NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO3'; 
% %%fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059b>; <BAPI_054b>
Rnames{i} = 'HQ2+NO3=0.7QH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO3'; 
%% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNO3(i)=fNO3(i)-1; fQH(i)=fQH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059c>; <BAPI_054c>
Rnames{i} = 'HQ2+NO2Q=0.7QH+0.3HNO3+0.467NOQ+0.233NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO2Q'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fQH(i)=fQH(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNO2(i)=fNO2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059d; <BAPI_054d>
Rnames{i} = 'HQ2+NOQ2=0.7QH+0.3HNOQ2+0.467NOQ+0.233NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NOQ2'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fQH(i)=fQH(i)+0.7; fHNOQ2(i)=fHNOQ2(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNQ2(i)=fNQ2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059e>; <BAPI_054e>
Rnames{i} = 'HQ2+NQ3=0.7QH+0.7NQ2+0.3HNQ3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fQH(i)=fQH(i)+0.7; fNQ2(i)=fNQ2(i)+0.70; fHNQ3(i)=fHNQ3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059f>; <BAPI_054f>
Rnames{i} = 'HOQ+NQ3=0.35OH+0.35QH+0.3HNQ3+0.7NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNQ3(i)=fNQ3(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fHNQ3(i)=fHNQ3(i)+0.3; fNQ2(i)=fNQ2(i)+0.7; %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059g>; <BAPI_054g>
Rnames{i} = 'HOQ+NOQ2=0.35OH+0.35QH+0.3HNOQ2+0.467NOQ+0.233NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NOQ2'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fHNOQ2(i)=fHNOQ2(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNQ2(i)=fNQ2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059h>; <BAPI_054h>
Rnames{i} = 'HOQ+NO2Q=0.35OH+0.35QH+0.3HNO2Q+0.467NOQ+0.233NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO2Q'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fHNO2Q(i)=fHNO2Q(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNO2(i)=fNO2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059i>; <BAPI_054i>
Rnames{i} = 'HO2+NO2Q=0.7OH+0.3HNO2Q+0.467NOQ+0.233NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2Q'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOH(i)=fOH(i)+0.7; fHNO2Q(i)=fHNO2Q(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNO2(i)=fNO2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059j>; <BAPI_054j>
Rnames{i} = 'HO2+NOQ2=0.7OH+0.3HNOQ2+0.467NOQ+0.233NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NOQ2'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOH(i)=fOH(i)+0.7; fHNOQ2(i)=fHNOQ2(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNQ2(i)=fNQ2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_059k>; <BAPI_054k>
Rnames{i} = 'HO2+NQ3=0.7OH+0.3HNQ3+.7NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNQ3(i)=fNQ3(i)-1; fOH(i)=fOH(i)+0.7; fHNQ3(i)=fHNQ3(i)+0.3; fNQ2(i)=fNQ2(i)+0.7; %SR 20160406


i=i+1; %<RACM2_060>; <BAPI_055>
Rnames{i} = 'NO+NO3=NO2+NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_060a>; <BAPI_055a>
Rnames{i} = 'NQ + NO3 = NOQ + NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO3'; 
fNQ(i)=fNQ(i)-1; fNO3(i)=fNO3(i)-1; fNOQ(i)=fNOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_060b>; <BAPI_055b>
Rnames{i} = 'NQ + NO2Q = 0.333*NQ2 + 0.333*NO2 + 1.333*NOQ';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO2Q'; 
fNQ(i)=fNQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNQ2(i)=fNQ2(i)+(1/3); fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(4/3); 

%O3 Tracer
i=i+1; %<RACM2_060c>; <BAPI_055c>
Rnames{i} = 'NQ + NOQ2 = NOQ + NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NOQ2'; 
fNQ(i)=fNQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+1; fNQ2(i)=fNQ2(i)+1;  

%O3 Tracer
i=i+1; %<RACM2_060d>; <BAPI_055d>
Rnames{i} = 'NQ + NQ3 = 2*NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NQ3'; 
fNQ(i)=fNQ(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+2; 

%O3 Tracer
i=i+1; %<RACM2_060e>; <BAPI_055e>
Rnames{i} = 'NO + NO2Q = NO2 + NOQ';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO2Q'; 
fNO(i)=fNO(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_060f>; <BAPI_055f>
Rnames{i} = 'NO + NOQ2 = 1.333*NOQ + 0.333*NO2 + 0.333*NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NOQ2';  
fNO(i)=fNO(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNO2(i)=fNO2(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/3); %SR 20160406

%O3 Tracer
i=i+1; %<RACM2_060g>; <BAPI_055g>
Rnames{i} = 'NO + NQ3 = NOQ + NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NQ3';  
fNO(i)=fNO(i)-1; fNQ3(i)=fNQ3(i)-1; fNOQ(i)=fNOQ(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_061>; <BAPI_056>
Rnames{i} = 'NO2+NO3=NO+NO2+O2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_061a>; <BAPI_056a>
Rnames{i} = 'NOQ+NO3=0.5NO+0.5NQ+NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO3'; 
fNOQ(i)=fNOQ(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_061b>; <BAPI_056b>
Rnames{i} = 'NQ2+NO3=NQ+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO3'; 
fNQ2(i)=fNQ2(i)-1; fNO3(i)=fNO3(i)-1; fNQ(i)=fNQ(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_061c>; <BAPI_056c>
Rnames{i} = 'NQ2+NO2Q=NQ+0.33NO2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO2Q'; 
fNQ2(i)=fNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNQ(i)=fNQ(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_061d>; <BAPI_056d>
Rnames{i} = 'NQ2+NOQ2=NQ+0.33NQ2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NOQ2'; 
fNQ2(i)=fNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNQ(i)=fNQ(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_061e>; <BAPI_056e>
Rnames{i} = 'NQ2+NQ3=NQ+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NQ3'; 
fNQ2(i)=fNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ(i)=fNQ(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_061f>; <BAPI_056f>
Rnames{i} = 'NOQ+NQ3=0.5NO+0.5NQ+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NQ3'; 
fNOQ(i)=fNOQ(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ(i)=fNQ(i)+0.5; fNO(i)=fNO(i)+0.5; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_061g>; <BAPI_056g>
Rnames{i} = 'NOQ+NOQ2=0.5NO+0.5NQ+0.66NOQ+0.333NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NOQ2'; 
fNOQ(i)=fNOQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_061h>; <BAPI_056h>
Rnames{i} = 'NOQ+NO2Q=0.5NO+0.5NQ+0.66NOQ+0.33NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO2Q'; 
fNOQ(i)=fNOQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_061i>; <BAPI_056i>
Rnames{i} = 'NO2+NO2Q=NO+0.33NO2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO2Q'; 
fNO2(i)=fNO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_061j>; <BAPI_056j>
Rnames{i} = 'NO2+NOQ2=NO+0.33NQ2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NOQ2'; 
fNO2(i)=fNO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO(i)=fNO(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_061k>; <BAPI_056k>
Rnames{i} = 'NO2+NQ3=NO+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NQ3'; 
fNO2(i)=fNO2(i)-1; fNQ3(i)=fNQ3(i)-1; fNO(i)=fNO(i)+1; fNQ2(i)=fNQ2(i)+1;


i=i+1; %<RACM2_062>; <BAPI_057>
Rnames{i} = 'NO3+NO3=NO2+NO2+O2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
fNO3(i)=fNO3(i)-2; fNO2(i)=fNO2(i)+2; 

%O3 Tracer
i=i+1; %<RACM2_062a>; <BAPI_057a>
Rnames{i} = 'NO2Q + NO3 = (2/3)*NOQ + (4/3)NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2Q'; Gstr{i,2} = 'NO3';
fNO2Q(i)=fNO2Q(i)-1; fNO3(i)=fNO3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(4/3);

%O3 Tracer
i=i+1; %<RACM2_062b>; <BAPI_057b>
Rnames{i} = 'NOQ2 + NO3 = (2/3)*NOQ + (1/3)*NQ2 + NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NOQ2'; Gstr{i,2} = 'NO3';
fNOQ2(i)=fNOQ2(i)-1; fNO3(i)=fNO3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fNO2(i)=fNO2(i)+(1/3);


%O3 Tracer
i=i+1; %<RACM2_062c>; <BAPI_057c>
Rnames{i} = 'NQ3 + NO3 = NQ2 + NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NQ3'; Gstr{i,2} = 'NO3';
fNQ3(i)=fNQ3(i)-1; fNO3(i)=fNO3(i)-1; fNQ2(i)=fNQ2(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_062d>; <BAPI_057d>
Rnames{i} = 'NQ3 + NO2Q = NQ2 + (2/3)*NOQ + (1/3)*NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NQ3'; Gstr{i,2} = 'NO2Q';
fNQ3(i)=fNQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNQ2(i)=fNQ2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_062e>; <BAPI_057e>
Rnames{i} = 'NQ3 + NQ3 = NQ2 + NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NQ3'; Gstr{i,2} = 'NQ3';
fNQ3(i)=fNQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fNQ2(i)=fNQ2(i)+1;


%O3 Tracer
i=i+1; %<RACM2_062f>; <BAPI_057f>
Rnames{i} = 'NO2Q + NO2Q = (4/3)*NOQ + (2/3)*NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2Q'; Gstr{i,2} = 'NO2Q';
fNO2Q(i)=fNO2Q(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNO2(i)=fNO2(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_062g>; <BAPI_057g>
Rnames{i} = 'NO2Q + NOQ2 = (4/3)*NOQ (1/3)*NO2 + (1/3)*NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2Q'; Gstr{i,2} = 'NOQ2';
fNO2Q(i)=fNO2Q(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNO2(i)=fNO2(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/3);


%O3 Tracer
i=i+1; %<RACM2_062h>; <BAPI_057h>
Rnames{i} =  'NOQ2 + NOQ2 = (4/3)*NOQ + (2/3)*NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NOQ2'; Gstr{i,2} = 'NOQ2';
fNOQ2(i)=fNOQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_062i>; <BAPI_057i>
Rnames{i} = 'NOQ2 + NQ3 = (2/3)*NOQ + (4/3)*NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NOQ2'; Gstr{i,2} = 'NQ3';
fNOQ2(i)=fNOQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(4/3);



i=i+1; %<RACM2_063>; <BAPI_058>
Rnames{i} = 'NO2+NO3=N2O5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063a>; <BAPI_058a>
Rnames{i} = 'NOQ+NO3=N2O4Q';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO3'; 
fNOQ(i)=fNOQ(i)-1; fNO3(i)=fNO3(i)-1; fN2O4Q(i)=fN2O4Q(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063b>; <BAPI_058b>
Rnames{i} = 'NQ2+NO3=N2O3Q2';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO3'; 
fNQ2(i)=fNQ2(i)-1; fNO3(i)=fNO3(i)-1; fN2O3Q2(i)=fN2O3Q2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063c>; <BAPI_058c>
Rnames{i} = 'NQ2+NO2Q=N2O2Q3';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO2Q'; 
fNQ2(i)=fNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fN2O2Q3(i)=fN2O2Q3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063d>; <BAPI_058d>
Rnames{i} = 'NQ2+NOQ2=N2OQ4';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NOQ2'; 
fNQ2(i)=fNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fN2OQ4(i)=fN2OQ4(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063e>; <BAPI_058e>
Rnames{i} = 'NQ2+NQ3=N2Q5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NQ3'; 
fNQ2(i)=fNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fN2Q5(i)=fN2Q5(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063f>; <BAPI_058f>
Rnames{i} = 'NOQ+NQ3=N2OQ4';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NQ3'; 
fNOQ(i)=fNOQ(i)-1; fNQ3(i)=fNQ3(i)-1; fN2OQ4(i)=fN2OQ4(i)+1;

%O3 Tracer
i=i+1; %<RACM2_063g>; <BAPI_058g>
Rnames{i} = 'NOQ+NOQ2=N2O2Q3';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NOQ2'; 
fNOQ(i)=fNOQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fN2O2Q3(i)=fN2O2Q3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_063h>; <BAPI_058h>
Rnames{i} = 'NOQ+NO2Q=N2O3Q2';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO2Q'; 
fNOQ(i)=fNOQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fN2O3Q2(i)=fN2O3Q2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_063i>; <BAPI_058i>
Rnames{i} = 'NO2+NO2Q=N2O4Q';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO2Q'; 
fNO2(i)=fNO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fN2O4Q(i)=fN2O4Q(i)+1;

%O3 Tracer
i=i+1; %<RACM2_063j>; <BAPI_058j>
Rnames{i} = 'NO2+NOQ2=N2O3Q2';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NOQ2'; 
fNO2(i)=fNO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fN2O3Q2(i)=fN2O3Q2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_063k>; <BAPI_058k>
Rnames{i} = 'NO2+NQ3=N2O2Q3';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2';  Gstr{i,2} ='NQ3'; 
fNO2(i)=fNO2(i)-1; fNQ3(i)=fNQ3(i)-1; fN2O2Q3(i)=fN2O2Q3(i)+1;




i=i+1; %<RACM2_064>; <BAPI_059>
Rnames{i} = 'N2O5= NO2+NO3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_064a>; <BAPI_059a>
Rnames{i} = 'N2O4Q = (2/5)*NOQ + (2/5)*NO3 + (3/5)*NO2 + (3/5)*NO2Q ';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O4Q';
fN2O4Q(i)=fN2O4Q(i)-1; fNOQ(i)=fNOQ(i)+(2/5); fNO3(i)=fNO3(i)+(2/5); fNO2(i)=fNO2(i)+(3/5); fNO2Q(i)=fNO2Q(i)+(3/5);

%O3 Tracer
i=i+1; %<RACM2_064b>; <BAPI_059b>
Rnames{i} = 'N2O3Q2 =  0.3*NO2 + 0.6*NOQ + 0.1*NQ2 + 0.1NO3 + 0.6*NO2Q + 0.3*NOQ2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O3Q2';
fN2O3Q2(i)=fN2O3Q2(i)-1; fNO2(i)=fNO2(i)+0.3; fNOQ(i)=fNOQ(i)+0.6; 
fNQ2(i)=fNQ2(i)+0.1; fNO3(i)=fNO3(i)+0.1; fNO2Q(i)=fNO2Q(i)+0.6; fNOQ2(i)=fNOQ2(i)+0.3;


%O3 Tracer
i=i+1; %<RACM2_064c>; <BAPI_059c>
Rnames{i} = 'N2O2Q3 = 0.1*NO2 + 0.6*NOQ + 0.3*NQ2 + 0.3*NO2Q + 0.6*NOQ2 + 0.1*NQ3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O2Q3';
fN2O2Q3(i)=fN2O2Q3(i)-1; fNO2(i)=fNO2(i)+0.1; fNOQ(i)=fNOQ(i)+0.6; 
fNQ2(i)=fNQ2(i)+0.3; fNO2Q(i)=fNO2Q(i)+0.3; fNOQ2(i)=fNOQ2(i)+0.6; fNQ3(i)=fNQ3(i)+0.1;


%O3 Tracer
i=i+1; %<RACM2_064d>; <BAPI_059d>
Rnames{i} = 'N2OQ4 = 0.4*NOQ + 0.6*NQ2 + 0.6*NOQ2 + 0.4*NQ3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2OQ4';
fN2OQ4(i)=fN2OQ4(i)-1; fNOQ(i)=fNOQ(i)+0.4; fNQ2(i)=fNQ2(i)+0.6; 
fNOQ2(i)=fNOQ2(i)+0.6; fNQ3(i)=fNQ3(i)+0.4;

%O3 Tracer
i=i+1; %<RACM2_064e>; <BAPI_059e>
Rnames{i} = 'N2Q5 = NQ3 + NQ2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2Q5';
fN2Q5(i)=fN2Q5(i)-1; fNQ3(i)=fNQ3(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<RACM2_065>; <BAPI_060>
Rnames{i} = 'N2O5+H2O=HNO3+HNO3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1;  fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_065a>; <BAPI_060a>
Rnames{i} = 'N2O4Q +H2O = (2/5)*HNO2Q + (2/5)*HNO3 + (3/5)*HNO3 + (3/5)*HNO2Q ';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O4Q'; 
fN2O4Q(i)=fN2O4Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+(2/5); fHNO3(i)=fHNO3(i)+(2/5); fHNO3(i)=fHNO3(i)+(3/5); fHNO2Q(i)=fHNO2Q(i)+(3/5);

%O3 Tracer
i=i+1; %<RACM2_065b>; <BAPI_060b>
Rnames{i} = 'N2O3Q2 +H2O =  0.3*HNO3 + 0.6*HNO2Q + 0.1*HNOQ2 + 0.1HNO3 + 0.6*HNO2Q + 0.3*HNOQ2';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O3Q2'; 
fN2O3Q2(i)=fN2O3Q2(i)-1; fHNO3(i)=fHNO3(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.6; 
fHNOQ2(i)=fHNOQ2(i)+0.1; fHNO3(i)=fHNO3(i)+0.1; fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3;


%O3 Tracer
i=i+1; %<RACM2_065c>; <BAPI_060c>
Rnames{i} = 'N2O2Q3 +H2O = 0.1*HNO3 + 0.6*HNO2Q + 0.3*HNOQ2 + 0.3*HNO2Q + 0.6*HNOQ2 + 0.1*HNQ3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O2Q3'; 
fN2O2Q3(i)=fN2O2Q3(i)-1; fHNO3(i)=fHNO3(i)+0.1;  fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.3; 
fHNOQ2(i)=fHNOQ2(i)+0.6;  fHNQ3(i)=fHNQ3(i)+0.1;  

%O3 Tracer
i=i+1; %<RACM2_065d>; <BAPI_060d>
Rnames{i} = 'N2OQ4 +H2O = 0.4*HNO2Q + 0.6*HNOQ2 + 0.6*HNOQ2 + 0.4*HNQ3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2OQ4'; 
fN2OQ4(i)=fN2OQ4(i)-1; fHNO2Q(i)=fHNO2Q(i)+0.4; fHNOQ2(i)=fHNOQ2(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.6;
fHNQ3(i)=fHNQ3(i)+0.4; 

%O3 Tracer
i=i+1; %<RACM2_065e>; <BAPI_060e>
Rnames{i} = 'N2Q5 +H2O = HNQ3 + HNOQ2';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2Q5'; 
fN2Q5(i)=fN2Q5(i)-1; fHNQ3(i)=fHNQ3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1;

i=i+1; %<RACM2_066>; <BAPI_061>
Rnames{i} = 'HO2+NO2=HO2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_066a>; <BAPI_061a>
Rnames{i} = 'HOQ+NO2=HOQNO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO2'; 
fHOQ(i)=fHOQ(i)-1; fNO2(i)=fNO2(i)-1; fHOQNO2(i)=fHOQNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_066b>; <BAPI_061b>
Rnames{i} = 'HQ2+NO2=HQ2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO2'; 
fHQ2(i)=fHQ2(i)-1; fNO2(i)=fNO2(i)-1; fHQ2NO2(i)=fHQ2NO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_066c>; <BAPI_061c>
Rnames{i} = 'HQ2+NQ2=HQ2NQ2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ2'; 
fHQ2(i)=fHQ2(i)-1; fNQ2(i)=fNQ2(i)-1; fHQ2NQ2(i)=fHQ2NQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_066d>; <BAPI_061d>
Rnames{i} = 'HQ2+NOQ=HQ2NOQ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NOQ'; 
fHQ2(i)=fHQ2(i)-1; fNOQ(i)=fNOQ(i)-1; fHQ2NOQ(i)=fHQ2NOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_066e>; <BAPI_061e>
Rnames{i} = 'HOQ+NOQ=HOQNOQ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NOQ'; 
fHOQ(i)=fHOQ(i)-1; fNOQ(i)=fNOQ(i)-1; fHOQNOQ(i)=fHOQNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_066f>; <BAPI_061f>
Rnames{i} = 'HOQ+NQ2=HOQNQ2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ2'; 
fHOQ(i)=fHOQ(i)-1; fNQ2(i)=fNQ2(i)-1; fHOQNQ2(i)=fHOQNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_066g>; <BAPI_061g>
Rnames{i} = 'HO2+NQ2=HO2NQ2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ2'; 
fHO2(i)=fHO2(i)-1; fNQ2(i)=fNQ2(i)-1; fHO2NQ2(i)=fHO2NQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_066h>; <BAPI_061h>
Rnames{i} = 'HO2+NOQ=HO2NOQ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NOQ'; 
fHO2(i)=fHO2(i)-1; fNOQ(i)=fNOQ(i)-1; fHO2NOQ(i)=fHO2NOQ(i)+1;

i=i+1; %<RACM2_067>; <BAPI_062>
Rnames{i} = 'HO2NO2=HO2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067a>; <BAPI_062a>
Rnames{i} = 'HOQNO2=HOQ+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HOQNO2'; 
fHOQNO2(i)=fHOQNO2(i)-1; fHOQ(i)=fHOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067b>; <BAPI_062b>
Rnames{i} = 'HQ2NO2=HQ2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HQ2NO2'; 
fHQ2NO2(i)=fHQ2NO2(i)-1; fHQ2(i)=fHQ2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067c>; <BAPI_062c>
Rnames{i} = 'HQ2NOQ=HQ2+NOQ';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HQ2NOQ'; 
fHQ2NOQ(i)=fHQ2NOQ(i)-1; fHQ2(i)=fHQ2(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067d>; <BAPI_062d>
Rnames{i} = 'HQ2NQ2=HQ2+NQ2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HQ2NQ2'; 
fHQ2NQ2(i)=fHQ2NQ2(i)-1; fHQ2(i)=fHQ2(i)+1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067e>; <BAPI_062e>
Rnames{i} = 'HOQNQ2=HOQ+NQ2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HOQNQ2'; 
fHOQNQ2(i)=fHOQNQ2(i)-1; fHOQ(i)=fHOQ(i)+1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067f>; <BAPI_062f>
Rnames{i} = 'HOQNOQ=HOQ+NOQ';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HOQNOQ'; 
fHOQNOQ(i)=fHOQNOQ(i)-1; fHOQ(i)=fHOQ(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067g>; <BAPI_062g>
Rnames{i} = 'HO2NOQ=HO2+NOQ';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NOQ'; 
fHO2NOQ(i)=fHO2NOQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_067h>; <BAPI_062h>
Rnames{i} = 'HO2NQ2=HO2+NQ2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NQ2'; 
fHO2NQ2(i)=fHO2NQ2(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<RACM2_068>; <BAPI_063>
Rnames{i} = 'OH+HO2NO2=NO2+H2O+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068a>; <BAPI_063a>
Rnames{i} = 'QH+HO2NO2=NO2+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2NO2'; 
fQH(i)=fQH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;


%O3 Tracer
i=i+1; %<RACM2_068b>; <BAPI_063b>
Rnames{i} = 'QH+HOQNO2=NO2+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQNO2'; 
fQH(i)=fQH(i)-1; fHOQNO2(i)=fHOQNO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068c>; <BAPI_063c>
Rnames{i} = 'QH+HQ2NO2=NO2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2NO2'; 
fQH(i)=fQH(i)-1; fHQ2NO2(i)=fHQ2NO2(i)-1; fNO2(i)=fNO2(i)+1;


%O3 Tracer
i=i+1; %<RACM2_068d>; <BAPI_063d>
Rnames{i} = 'QH+HQ2NOQ=NOQ+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2NOQ'; 
fQH(i)=fQH(i)-1; fHQ2NOQ(i)=fHQ2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068e>; <BAPI_063e>
Rnames{i} = 'QH+HQ2NQ2=NQ2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2NQ2'; 
fQH(i)=fQH(i)-1; fHQ2NQ2(i)=fHQ2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068f>; <BAPI_063f>
Rnames{i} = 'QH+HOQNQ2=NQ2+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQNQ2'; 
fQH(i)=fQH(i)-1; fHOQNQ2(i)=fHOQNQ2(i)-1; fNQ2(i)=fNQ2(i)+1;


%O3 Tracer
i=i+1; %<RACM2_068g>; <BAPI_063g>
Rnames{i} = 'QH+HOQNOQ=NOQ+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQNOQ'; 
fQH(i)=fQH(i)-1; fHOQNOQ(i)=fHOQNOQ(i)-1; fNOQ(i)=fNOQ(i)+1;


%O3 Tracer
i=i+1; %<RACM2_068h>; <BAPI_063h>
Rnames{i} = 'QH+HO2NQ2=NQ2+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2NQ2'; 
fQH(i)=fQH(i)-1; fHO2NQ2(i)=fHO2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068i>; <BAPI_063i>
Rnames{i} = 'QH+HO2NOQ=NOQ+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2NOQ'; 
fQH(i)=fQH(i)-1; fHO2NOQ(i)=fHO2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068j>; <BAPI_063j>
Rnames{i} = 'OH+HOQNO2=NO2+H2O+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQNO2'; 
fOH(i)=fOH(i)-1; fHOQNO2(i)=fHOQNO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068k>; <BAPI_063k>
Rnames{i} = 'OH+HQ2NO2=NO2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2NO2'; 
fOH(i)=fOH(i)-1; fHQ2NO2(i)=fHQ2NO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068l>; <BAPI_063l>
Rnames{i} = 'OH+HQ2NOQ=NOQ+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2NOQ'; 
fOH(i)=fOH(i)-1; fHQ2NOQ(i)=fHQ2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068m>; <BAPI_063m>
Rnames{i} = 'OH+HQ2NQ2=NQ2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2NQ2'; 
fOH(i)=fOH(i)-1; fHQ2NQ2(i)=fHQ2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068n>; <BAPI_063n>
Rnames{i} = 'OH+HOQNQ2=NQ2+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQNQ2'; 
fOH(i)=fOH(i)-1; fHOQNQ2(i)=fHOQNQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068o>; <BAPI_063o>
Rnames{i} = 'OH+HOQNOQ=NOQ+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQNOQ'; 
fOH(i)=fOH(i)-1; fHOQNOQ(i)=fHOQNOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068p>; <BAPI_063p>
Rnames{i} = 'OH+HO2NQ2=NQ2+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NQ2'; 
fOH(i)=fOH(i)-1; fHO2NQ2(i)=fHO2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_068q>; <BAPI_063q>
Rnames{i} = 'OH+HO2NOQ=NOQ+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NOQ'; 
fOH(i)=fOH(i)-1; fHO2NOQ(i)=fHO2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;


i=i+1; %<RACM2_070>; <BAPI_064>
Rnames{i} = 'OH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_070a>; <BAPI_064a>
Rnames{i} = 'QH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'CO'; 
fQH(i)=fQH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 



%%Biogenic Hydrocarbons + HO
i=i+1; %<RACM2_087>; <BAPI_065>
Rnames{i} = 'API+OH=APIP';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'OH'; 
fAPI(i)=fAPI(i)-1; fOH(i)=fOH(i)-1; fAPIP(i)=fAPIP(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_087a>; <BAPI_065a>
Rnames{i} = 'API+QH=APIP';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'QH'; 
fAPI(i)=fAPI(i)-1; fQH(i)=fQH(i)-1; fAPIP(i)=fAPIP(i)+1;


%% Aldehydes+OH
i=i+1; %<RACM2_089>; <BAPI_066>
Rnames{i} = 'OH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_089a>; <BAPI_066a>
Rnames{i} = 'QH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HCHO'; 
fQH(i)=fQH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 


i=i+1; %<RACM2_090>; <BAPI_067>
Rnames{i} = 'OH+ACD=ACO3+H2O';
k(:,i) = 4.38E-12.*exp(366./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACD'; 
fOH(i)=fOH(i)-1; fACD(i)=fACD(i)-1; fACO3(i)=fACO3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_090a>; <BAPI_067a>
Rnames{i} = 'QH+ACD=ACO3+H2O';
k(:,i) = 4.38E-12.*exp(366./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ACD'; 
fQH(i)=fQH(i)-1; fACD(i)=fACD(i)-1; fACO3(i)=fACO3(i)+1;


i=i+1; %<RACM2_091>; <BAPI_068>
Rnames{i} = 'OH+ALD=RCO3+H2O';
k(:,i) = 5.10E-12.*exp(405./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALD'; 
fOH(i)=fOH(i)-1; fALD(i)=fALD(i)-1; fRCO3(i)=fRCO3(i)+1;

%O3 Tracer
i=i+1; %<RACM2_091a>; <BAPI_068a>
Rnames{i} = 'QH+ALD=RCO3+H2O';
k(:,i) = 5.10E-12.*exp(405./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ALD'; 
fQH(i)=fQH(i)-1; fALD(i)=fALD(i)-1; fRCO3(i)=fRCO3(i)+1;

%%Ketones + HO
i=i+1; %<RACM2_092; <BAPI_069>
Rnames{i} = 'ACT+OH=ACTP+H2O';
k(:,i) = 1.39E-13+3.72E-11.*exp(-2044./T);
Gstr{i,1} = 'ACT'; Gstr{i,2} = 'OH'; 
fACT(i)=fACT(i)-1; fOH(i)=fOH(i)-1; fACTP(i)=fACTP(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_092a>; <BAPI_069a>
Rnames{i} = 'ACT+QH=ACTP+H2O';
k(:,i) = 1.39E-13+3.72E-11.*exp(-2044./T);
Gstr{i,1} = 'ACT'; Gstr{i,2} = 'QH'; 
fACT(i)=fACT(i)-1; fQH(i)=fQH(i)-1; fACTP(i)=fACTP(i)+1;

i=i+1; %<RACM2_093>; <BAPI_070>
Rnames{i} = 'OH+MEK=MEKP+H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MEK'; 
fOH(i)=fOH(i)-1; fMEK(i)=fMEK(i)-1; fMEKP(i)=fMEKP(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_093a>; <BAPI_070a>
Rnames{i} = 'QH+MEK=MEKP+H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'MEK'; 
fQH(i)=fQH(i)-1; fMEK(i)=fMEK(i)-1; fMEKP(i)=fMEKP(i)+1; 

i=i+1; %<RACM2_094>; <BAPI_071>
Rnames{i} = 'OH+KET=KETP+H2O';
k(:,i) = 2.80E-12.*exp(10./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'KET'; 
fOH(i)=fOH(i)-1; fKET(i)=fKET(i)-1; fKETP(i)=fKETP(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_094a>; <BAPI_071a>
Rnames{i} = 'QH+KET=KETP+H2O';
k(:,i) = 2.80E-12.*exp(10./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'KET'; 
fQH(i)=fQH(i)-1; fKET(i)=fKET(i)-1; fKETP(i)=fKETP(i)+1; 

i=i+1;%<RACM2_095>; <BAPI_072>
Rnames{i} = 'HKET+OH=HO2+MGLY+H2O';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'HKET'; Gstr{i,2} = 'OH'; 
fHKET(i)=fHKET(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_095>; <BAPI_072a>
Rnames{i} = 'HKET+QH=HO2+MGLY+H2O';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'HKET'; Gstr{i,2} = 'QH'; 
fHKET(i)=fHKET(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 


%%Dicarbonyls + HO
i=i+1; %<RACM2_099; <BAPI_073>
Rnames{i} = 'GLY+OH=HO2+CO+CO+H2O';
k(:,i) = 1.10E-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'OH'; 
fGLY(i)=fGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_099a; <BAPI_073a>
Rnames{i} = 'GLY+QH=HO2+CO+CO+H2O';
k(:,i) = 1.10E-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'QH'; 
fGLY(i)=fGLY(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_100>; <BAPI_074>
Rnames{i} = 'MGLY+OH=ACO3+CO+H2O';
k(:,i) = 9.26E-13.*exp(830./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH'; 
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_100a>; <BAPI_074a>
Rnames{i} = 'MGLY+QH=ACO3+CO+H2O';
k(:,i) = 9.26E-13.*exp(830./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'QH'; 
fMGLY(i)=fMGLY(i)-1; fQH(i)=fQH(i)-1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_101>; <BAPI_075>
Rnames{i} = 'DCB1+OH = HO2+CO+ALD+KET+GLY+MGLY';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'OH'; 
fDCB1(i)=fDCB1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fALD(i)=fALD(i)+0.40; fKET(i)=fKET(i)+0.78; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; 

%O3 Tracer
i=i+1; %<RACM2_101a>; <BAPI_075a>
Rnames{i} = 'DCB1+QH = HO2+CO+ALD+KET+GLY+MGLY';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'QH'; 
fDCB1(i)=fDCB1(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fALD(i)=fALD(i)+0.40; fKET(i)=fKET(i)+0.78; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01;


%%Alcohols and Glycols + HO
i=i+1; %<RACM2_109>; <BAPI_076>
Rnames{i} = 'OH+MOH=HO2+HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MOH'; 
fOH(i)=fOH(i)-1; fMOH(i)=fMOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 tracer
i=i+1; %<RACM2_109a>; <BAPI_076a>
Rnames{i} = 'QH+MOH=HO2+HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'MOH'; 
fQH(i)=fQH(i)-1; fMOH(i)=fMOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_110>; <BAPI_077>
Rnames{i} = 'OH+EOH=HO2+ACD';
% k(:,i) = 3.00e-12.*exp(20./T);
k(:,i) = 3.00e-12.*exp(-20./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'EOH'; 
fOH(i)=fOH(i)-1; fEOH(i)=fEOH(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_110a>; <BAPI_077a>
Rnames{i} = 'QH+EOH=HO2+ACD';
% k(:,i) = 3.00e-12.*exp(20./T);
k(:,i) = 3.00e-12.*exp(-20./T); %SR 20160406
Gstr{i,1} = 'QH'; Gstr{i,2} = 'EOH'; 
fQH(i)=fQH(i)-1; fEOH(i)=fEOH(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; 

i=i+1; %<RACM2_111>; <BAPI_078>
Rnames{i} = 'OH+ROH=HO2+0.719 ALD+0.184 ACD';
% k(:,i) = 2.60E-12.*exp(200./T).*0.719;
k(:,i) = 2.60E-12.*exp(-200./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ROH'; 
fOH(i)=fOH(i)-1; fROH(i)=fROH(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.719; 
fACD(i)=fACD(i)+0.184;

%O3 Tracer
i=i+1; %<RACM2_111a>; <BAPI_078a>
Rnames{i} = 'QH+ROH=HO2+0.719 ALD+0.184 ACD';
% k(:,i) = 2.60E-12.*exp(200./T).*0.719;
k(:,i) = 2.60E-12.*exp(-200./T); %SR 20160406
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ROH'; 
fQH(i)=fQH(i)-1; fROH(i)=fROH(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.719; 
fACD(i)=fACD(i)+0.184;


%%Organic Peroxides + HO
i=i+1; %<RACM2_113>; <BAPI_079>
Rnames{i} = 'OP1+OH=0.35 OH+0.65 MO2+0.35 HCHO ';
k(:,i) = 2.90E-12.*exp(190./T);
Gstr{i,1} = 'OP1'; Gstr{i,2} = 'OH'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fMO2(i)=fMO2(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35;

%O3 Tracer
i=i+1; %<RACM2_113a>; <BAPI_079a>
Rnames{i} = 'OP1+QH=0.35 OH+0.65 MO2+0.35 HCHO ';
k(:,i) = 2.90E-12.*exp(190./T);
Gstr{i,1} = 'OP1'; Gstr{i,2} = 'QH'; 
fOP1(i)=fOP1(i)-1; fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+0.35; fMO2(i)=fMO2(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35;


i=i+1; %<RACM2_114>; <BAPI_080>
Rnames{i} = 'OP2+OH=0.49 HO+0.44 HC3P+0.07 XO2+0.08 ALD+0.41 KET';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'OP2'; Gstr{i,2} = 'OH'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.49; fHC3P(i)=fHC3P(i)+0.44; 
fXO2(i)=fXO2(i)+0.07; fALD(i)=fALD(i)+0.08; fKET(i)=fKET(i)+0.41;

%O3 Tracer
i=i+1; %<RACM2_114a>; <BAPI_080a>
Rnames{i} = 'OP2+QH=0.49 HO+0.44 HC3P+0.07 XO2+0.08 ALD+0.41 KET';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'OP2'; Gstr{i,2} = 'QH'; 
fOP2(i)=fOP2(i)-1; fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+0.49; fHC3P(i)=fHC3P(i)+0.44; 
fXO2(i)=fXO2(i)+0.07; fALD(i)=fALD(i)+0.08; fKET(i)=fKET(i)+0.41;


%%Organic Acids + HO
i=i+1; %<RACM2_117>; <BAPI_081>
Rnames{i} = 'ORA1+OH=HO2+CO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'ORA1'; Gstr{i,2} = 'OH'; 
fORA1(i)=fORA1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_117a>; <BAPI_081a>
Rnames{i} = 'ORA1+QH=HO2+CO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'ORA1'; Gstr{i,2} = 'QH'; 
fORA1(i)=fORA1(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1;

i=i+1; %<RACM2_118>; <BAPI_082>
Rnames{i} = 'ORA2+OH=0.64 MO2+0.36 ORAP+0.64 CO2';
k(:,i) = 2.20E-14.*exp(1012./T);
Gstr{i,1} = 'ORA2'; Gstr{i,2} = 'OH'; 
fORA2(i)=fORA2(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+0.64; fORAP(i)=fORAP(i)+0.36;
fCO2(i)=fCO2(i)+0.64; 

%O3 Tracer
i=i+1; %<RACM2_118a>; <BAPI_082a>
Rnames{i} = 'ORA2+QH=0.64 MO2+0.36 ORAP+0.64 CO2';
k(:,i) = 2.20E-14.*exp(1012./T);
Gstr{i,1} = 'ORA2'; Gstr{i,2} = 'QH'; 
fORA2(i)=fORA2(i)-1; fQH(i)=fQH(i)-1; fMO2(i)=fMO2(i)+0.64; fORAP(i)=fORAP(i)+0.36;
fCO2(i)=fCO2(i)+0.64; 


i=i+1; %<RACM2_119>; <BAPI_083>
Rnames{i} = 'PAA+OH=0.35 HO+0.65 ACO3+0.35 XO2+0.35 HCHO';
k(:,i) = 2.93E-12.*exp(190./T);
Gstr{i,1} = 'PAA'; Gstr{i,2} = 'OH'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fACO3(i)=fACO3(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35; fXO2(i)=fXO2(i)+0.35; 

%O3 Tracer
i=i+1; %<RACM2_119a>; <BAPI_083a>
Rnames{i} = 'PAA+QH=0.35 HO+0.65 ACO3+0.35 XO2+0.35 HCHO';
k(:,i) = 2.93E-12.*exp(190./T);
Gstr{i,1} = 'PAA'; Gstr{i,2} = 'QH'; 
fPAA(i)=fPAA(i)-1; fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+0.35; fACO3(i)=fACO3(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35; fXO2(i)=fXO2(i)+0.35; 


%%Organic Nitrogen Containing Compounds + HO
i=i+1; %<RACM2_120>; <BAPI_084>
Rnames{i} = 'PAN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_120a>; <BAPI_084a>
Rnames{i} = 'PAN+QH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'QH'; 
fPAN(i)=fPAN(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_120b>; <BAPI_084b>
Rnames{i} = 'PANQ+OH=XO2+NO2Q+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ'; Gstr{i,2} = 'OH'; 
fPANQ(i)=fPANQ(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_120c>; <BAPI_084c>
Rnames{i} = 'PANQ+QH=XO2+NO2Q+HCHO+H2Q';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ'; Gstr{i,2} = 'QH'; 
fPANQ(i)=fPANQ(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_120d>; <BAPI_084d>
Rnames{i} = 'PANQ2+OH=XO2+NOQ2+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ2'; Gstr{i,2} = 'OH'; 
fPANQ2(i)=fPANQ2(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_120e>; <BAPI_084e>
Rnames{i} = 'PANQ2+QH=XO2+NOQ2+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ2'; Gstr{i,2} = 'QH'; 
fPANQ2(i)=fPANQ2(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_121>; <BAPI_085>
Rnames{i} = 'PPN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'OH'; 
fPPN(i)=fPPN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_121a>; <BAPI_085a>
Rnames{i} = 'PPN+QH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'QH'; 
fPPN(i)=fPPN(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_121b>; <BAPI_085b>
Rnames{i} = 'PPNQ+OH=XO2+NO2Q+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ'; Gstr{i,2} = 'OH'; 
fPPNQ(i)=fPPNQ(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_121c>; <BAPI_085c>
Rnames{i} = 'PPNQ+QH=XO2+NO2Q+HCHO+H2Q';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ'; Gstr{i,2} = 'QH'; 
fPPNQ(i)=fPPNQ(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_121d>; <BAPI_085d>
Rnames{i} = 'PPNQ2+OH=XO2+NOQ2+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ2'; Gstr{i,2} = 'OH'; 
fPPNQ2(i)=fPPNQ2(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_121e>; <BAPI_085e>
Rnames{i} = 'PPNQ2+QH=XO2+NOQ2+HCHO+H2Q';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ2'; Gstr{i,2} = 'QH'; 
fPPNQ2(i)=fPPNQ2(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_123>; <BAPI_086>
Rnames{i} = 'ONIT+OH=HC3P+NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONIT'; Gstr{i,2} = 'OH'; 
fONIT(i)=fONIT(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_123a>; <BAPI_086a>
Rnames{i} = 'ONIT+QH=HC3P+NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONIT'; Gstr{i,2} = 'QH'; 
fONIT(i)=fONIT(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_123b>; <BAPI_086b>
Rnames{i} = 'ONITQ+OH=HC3P+0.666NOQ+0.33NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ'; Gstr{i,2} = 'OH'; 
fONITQ(i)=fONITQ(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_123c>; <BAPI_086c>
Rnames{i} = 'ONITQ+QH=HC3P+0.666NOQ+0.33NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ'; Gstr{i,2} = 'QH'; 
fONITQ(i)=fONITQ(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<RACM2_123d>; <BAPI_086d>
Rnames{i} = 'ONITQ2+OH=HC3P+0.333NQ2+.666*NOQ+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ2'; Gstr{i,2} = 'OH'; 
fONITQ2(i)=fONITQ2(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_123e>; <BAPI_086e>
Rnames{i} = 'ONITQ2+QH=HC3P+0.333NQ2+.666*NOQ+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ2'; Gstr{i,2} = 'QH'; 
fONITQ2(i)=fONITQ2(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<RACM2_123f>; <BAPI_086f>
Rnames{i} = 'ONITQ3+OH=HC3P+NQ2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ3'; Gstr{i,2} = 'OH'; 
fONITQ3(i)=fONITQ3(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_123g>; <BAPI_086g>
Rnames{i} = 'ONITQ3+QH=HC3P+NQ2+H2Q';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ3'; Gstr{i,2} = 'QH'; 
fONITQ3(i)=fONITQ3(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+1;

%% Alkenes+O3
%O3 Tracer
i=i+1; %<RACM2_131; <BAPI_087>
Rnames{i} = 'API+O3= QH+HO2+ETHP+KETP+CO+H2O2+ALD+KET';
k(:,i) = 5.00E-16.*exp(-530./T) ;
Gstr{i,1} = 'API'; Gstr{i,2} = 'O3'; 
fAPI(i)=fAPI(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.85; fHO2(i)=fHO2(i)+0.10; 
fETHP(i)=fETHP(i)+0.20; fKETP(i)=fKETP(i)+0.42; fCO(i)=fCO(i)+0.14; fH2O2(i)=fH2O2(i)+0.02; 
fALD(i)=fALD(i)+0.65; fKET(i)=fKET(i)+0.53; 


%O3 Tracer
i=i+1; %<RACM2_136>; <BAPI_088>
Rnames{i} = 'DCB1+O3= QH+HO2+RCO3+XO2+CO+HCHO+GLY+MGLY+OP2+CO2';
k(:,i) = 2.00E-16;
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'O3'; 
fDCB1(i)=fDCB1(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.05; fHO2(i)=fHO2(i)+1.0; 
fRCO3(i)=fRCO3(i)+0.60; fXO2(i)=fXO2(i)+0.60; fCO(i)=fCO(i)+1.50; fHCHO(i)=fHCHO(i)+0.05; 
fGLY(i)=fGLY(i)+0.05; fMGLY(i)=fMGLY(i)+0.08; fOP2(i)=fOP2(i)+0.65; fCO2(i)=fCO2(i)+0.50; 

%% Stable Organics+NO3
i=i+1; %<RACM2_146>; <BAPI_087>
Rnames{i} = 'API+NO3=0.10 OLNN+0.90 OLND';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO3'; 
fAPI(i)=fAPI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.1;  fOLND(i)=fOLND(i)+0.9; 

%O3 Tracer
i=i+1; %<RACM2_146a>; <BAPI_089a>
Rnames{i} = 'API+NO2Q=0.10 OLNNQ+0.90 OLNDQ';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO2Q'; 
fAPI(i)=fAPI(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.1;  fOLNDQ(i)=fOLNDQ(i)+0.9; 

%O3 Tracer
i=i+1; %<RACM2_146b>; <BAPI_089b>
Rnames{i} = 'API+NOQ2=0.10 OLNNQ2+0.90 OLNDQ2';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NOQ2'; 
fAPI(i)=fAPI(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.1;  fOLNDQ2(i)=fOLNDQ2(i)+0.9;

%O3 Tracer
i=i+1; %<RACM2_146c>; <BAPI_089c>
Rnames{i} = 'API+NQ3=0.10 OLNNQ2+0.90 OLNDQ3';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NQ3'; 
fAPI(i)=fAPI(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.1;  fOLNDQ3(i)=fOLNDQ3(i)+0.9;

i=i+1; %<RACM2_148>; <BAPI_090>
Rnames{i} = 'HCHO+NO3=HO2+HNO3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_148a>; <BAPI_090a>
Rnames{i} = 'HCHO+NO2Q=HO2+HNO2Q+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO2Q'; 
fHCHO(i)=fHCHO(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_148b>; <BAPI_090b>
Rnames{i} = 'HCHO+NOQ2=HO2+HNOQ2+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NOQ2'; 
fHCHO(i)=fHCHO(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_148c>; <BAPI_090c>
Rnames{i} = 'HCHO+NQ3=HO2+HNQ3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NQ3'; 
fHCHO(i)=fHCHO(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fHNQ3(i)=fHNQ3(i)+1; fCO(i)=fCO(i)+1;

i=i+1; %<RACM2_149>; <BAPI_091>
Rnames{i} = 'ACD+NO3=ACO3+HNO3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NO3'; 
fACD(i)=fACD(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_149a>; <BAPI_091a>
Rnames{i} = 'ACD+NO2Q=ACO3+HNO2Q';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NO2Q'; 
fACD(i)=fACD(i)-1; fNO2Q(i)=fNO2Q(i)-1; fACO3(i)=fACO3(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_149b>; <BAPI_091b>
Rnames{i} = 'ACD+NOQ2=ACO3+HNOQ2';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NOQ2'; 
fACD(i)=fACD(i)-1; fNOQ2(i)=fNOQ2(i)-1; fACO3(i)=fACO3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_149c>; <BAPI_091c>
Rnames{i} = 'ACD+NQ3=ACO3+HNQ3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NQ3'; 
fACD(i)=fACD(i)-1; fNQ3(i)=fNQ3(i)-1; fACO3(i)=fACO3(i)+1; fHNQ3(i)=fHNQ3(i)+1; 

i=i+1; %<RACM2_150>; <BAPI_092>
Rnames{i} = 'ALD+NO3=RCO3+HNO3';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NO3'; 
fALD(i)=fALD(i)-1; fNO3(i)=fNO3(i)-1; fRCO3(i)=fRCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_150a>; <BAPI_092a>
Rnames{i} = 'ALD+NO2Q=RCO3+HNO2Q';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NO2Q'; 
fALD(i)=fALD(i)-1; fNO2Q(i)=fNO2Q(i)-1; fRCO3(i)=fRCO3(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_150b>; <BAPI_092b>
Rnames{i} = 'ALD+NOQ2=RCO3+HNOQ2';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NOQ2'; 
fALD(i)=fALD(i)-1; fNOQ2(i)=fNOQ2(i)-1; fRCO3(i)=fRCO3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_150c>; <BAPI_092c>
Rnames{i} = 'ALD+NQ3=RCO3+HNQ3';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NQ3'; 
fALD(i)=fALD(i)-1; fNQ3(i)=fNQ3(i)-1; fRCO3(i)=fRCO3(i)+1; fHNQ3(i)=fHNQ3(i)+1;

i=i+1; %<RACM2_153>; <BAPI_093>
Rnames{i} = 'GLY+NO3=HNO3+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3'; 
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_153a>; <BAPI_093a>
Rnames{i} = 'GLY+NO2Q=HNO2Q+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO2Q'; 
fGLY(i)=fGLY(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_153b>; <BAPI_093b>
Rnames{i} = 'GLY+NOQ2=HNOQ2+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NOQ2'; 
fGLY(i)=fGLY(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_153c>; <BAPI_093c>
Rnames{i} = 'GLY+NQ3=HNQ3+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NQ3'; 
fGLY(i)=fGLY(i)-1; fNQ3(i)=fNQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_154>; <BAPI_094>
Rnames{i} = 'MGLY+NO3=HNO3+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3'; 
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%o3 Tracer
i=i+1; %<RACM2_154a>; <BAPI_094a>
Rnames{i} = 'MGLY+NO2Q=HNO2Q+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO2Q'; 
fMGLY(i)=fMGLY(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%o3 Tracer
i=i+1; %<RACM2_154b>; <BAPI_094b>
Rnames{i} = 'MGLY+NOQ2=HNOQ2+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NOQ2'; 
fMGLY(i)=fMGLY(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%o3 Tracer
i=i+1; %<RACM2_154c>; <BAPI_094c>
Rnames{i} = 'MGLY+NQ3=HNQ3+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NQ3'; 
fMGLY(i)=fMGLY(i)-1; fNQ3(i)=fNQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1;

%% Peroxyacetynitrate Formation and Decomposition
i=i+1; %<RACM2_166>; <BAPI_095>
Rnames{i} = 'ACO3+NO2=PAN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2'; 
fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_166a>; <BAPI_095a>
Rnames{i} = 'ACO3+NOQ=PANQ';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NOQ'; 
fACO3(i)=fACO3(i)-1; fNOQ(i)=fNOQ(i)-1; fPANQ(i)=fPANQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_166b>; <BAPI_095b>
Rnames{i} = 'ACO3+NQ2=PANQ2';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NQ2'; 
fACO3(i)=fACO3(i)-1; fNQ2(i)=fNQ2(i)-1; fPANQ2(i)=fPANQ2(i)+1; 

i=i+1; %<RACM2_167>; <BAPI_096>
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_167a>; <BAPI_096a>
Rnames{i} = 'PANQ=ACO3+NOQ';
k(:,i) = K_PAN;
Gstr{i,1} = 'PANQ'; 
fPANQ(i)=fPANQ(i)-1; fACO3(i)=fACO3(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_167b; <BAPI_096b>
Rnames{i} = 'PANQ2=ACO3+NQ2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PANQ2'; 
fPANQ2(i)=fPANQ2(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<RACM2_168>; <BAPI_097>
Rnames{i} = 'RCO3+NO2=PPN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2'; 
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_168a>; <BAPI_097a>
Rnames{i} = 'RCO3+NOQ=PPNQ';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NOQ'; 
fRCO3(i)=fRCO3(i)-1; fNOQ(i)=fNOQ(i)-1; fPPNQ(i)=fPPNQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_168b>; <BAPI_097b>
Rnames{i} = 'RCO3+NQ2=PPNQ2';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NQ2'; 
fRCO3(i)=fRCO3(i)-1; fNQ2(i)=fNQ2(i)-1; fPPNQ2(i)=fPPNQ2(i)+1; 

i=i+1; %<RACM2_169>; <BAPI_098>
Rnames{i} = 'PPN=RCO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_169a>; <BAPI_098a>
Rnames{i} = 'PPNQ=RCO3+NOQ';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPNQ'; 
fPPNQ(i)=fPPNQ(i)-1; fRCO3(i)=fRCO3(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_169b>; <BAPI_098b>
Rnames{i} = 'PPNQ2=RCO3+NQ2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPNQ2'; 
fPPNQ2(i)=fPPNQ2(i)-1; fRCO3(i)=fRCO3(i)+1; fNQ2(i)=fNQ2(i)+1; 

%% Organic Peroxy Radicals + NO
i=i+1; %<RACM2_172>; <BAPI_099>
Rnames{i} = 'MO2+NO=HCHO+HO2+NO2';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO'; 
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_172a>; <BAPI_099a>
Rnames{i} = 'MO2+NQ=HCHO+HO2+NOQ';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NQ'; 
fMO2(i)=fMO2(i)-1; fNQ(i)=fNQ(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<RACM2_173>; <BAPI_100>
Rnames{i} = 'ETHP+NO=HO2+ACD+NO2';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO'; 
fETHP(i)=fETHP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_173a>; <BAPI_100a>
Rnames{i} = 'ETHP+NQ=HO2+ACD+NOQ';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NQ'; 
fETHP(i)=fETHP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<RACM2_174>; <BAPI_101>
Rnames{i} = 'HC3P+NO=HO2+MO2+ETHP+XO2+NO2+ACD+ALD+ACT+MEK+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO'; 
fHC3P(i)=fHC3P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.66; fMO2(i)=fMO2(i)+0.131; 
fETHP(i)=fETHP(i)+0.048; fXO2(i)=fXO2(i)+0.089; fNO2(i)=fNO2(i)+0.935; fACD(i)=fACD(i)+0.504; 
fALD(i)=fALD(i)+0.132; fACT(i)=fACT(i)+0.165; fMEK(i)=fMEK(i)+0.042; fONIT(i)=fONIT(i)+0.065; %mmarvin 20151020

%O3 Tracer
i=i+1; %<RACM2_174a>; <BAPI_101a>
Rnames{i} = 'HC3P+NQ=HO2+MO2+ETHP+XO2+NOQ+ACD+ALD+ACT+MEK+ONITQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NQ'; 
fHC3P(i)=fHC3P(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.66; fMO2(i)=fMO2(i)+0.131; 
fETHP(i)=fETHP(i)+0.048; fXO2(i)=fXO2(i)+0.089; fNOQ(i)=fNOQ(i)+0.935; fACD(i)=fACD(i)+0.504; 
fALD(i)=fALD(i)+0.132; fACT(i)=fACT(i)+0.165; fMEK(i)=fMEK(i)+0.042; fONITQ(i)=fONITQ(i)+0.065; %mmarvin 20151020

i=i+1; %<RACM2_189>; <BAPI_102>
Rnames{i} = 'APIP+NO= HO2+NO2+HCHO+ALD+ACT+KET+ORA1+MONITS+MONITSh+MONITU+MONITUh';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO'; 
fAPIP(i)=fAPIP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.82; fNO2(i)=fNO2(i)+0.82; 
fHCHO(i)=fHCHO(i)+0.23; fALD(i)=fALD(i)+0.43; fACT(i)=fACT(i)+0.11; fKET(i)=fKET(i)+0.44; 
fORA1(i)=fORA1(i)+0.07; fMONITS(i)=fMONITS(i)+0.0456; fMONITSh(i)=fMONITSh(i)+0.0744; fMONITU(i)=fMONITU(i)+0.0228; fMONITUh(i)=fMONITUh(i)+0.0372;

%O3 Tracer
i=i+1; %<RACM2_189a>; <BAPI_102a>
Rnames{i} = 'APIP+NQ= HO2+NOQ+HCHO+ALD+ACT+KET+ORA1+MONITSQ+MONITShQ+MONITUQ+MONITUhQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NQ'; 
fAPIP(i)=fAPIP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.82; fNOQ(i)=fNOQ(i)+0.82; 
fHCHO(i)=fHCHO(i)+0.23; fALD(i)=fALD(i)+0.43; fACT(i)=fACT(i)+0.11; fKET(i)=fKET(i)+0.44; 
fORA1(i)=fORA1(i)+0.07; fMONITSQ(i)=fMONITSQ(i)+0.0456; fMONITShQ(i)=fMONITShQ(i)+0.0744; fMONITUQ(i)=fMONITUQ(i)+0.0228; fMONITUhQ(i)=fMONITUhQ(i)+0.0372;

i=i+1; %<RACM2_191>; <BAPI_103>
Rnames{i} = 'ACO3+NO=MO2+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO'; 
fACO3(i)=fACO3(i)-1; fNO(i)=fNO(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_191a>; <BAPI_103a>
Rnames{i} = 'ACO3+NQ=MO2+NOQ';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NQ'; 
fACO3(i)=fACO3(i)-1; fNQ(i)=fNQ(i)-1; fMO2(i)=fMO2(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<RACM2_192>; <BAPI_104>
Rnames{i} = 'RCO3+NO=ETHP+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO'; 
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_192a>; <BAPI_104a>
Rnames{i} = 'RCO3+NQ=ETHP+NOQ';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NQ'; 
fRCO3(i)=fRCO3(i)-1; fNQ(i)=fNQ(i)-1; fETHP(i)=fETHP(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<RACM2_193>; <BAPI_105>
Rnames{i} = 'ACTP+NO=ACO3+NO2+HCHO';
k(:,i) = 2.90E-12.*exp(300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO'; 
fACTP(i)=fACTP(i)-1; fNO(i)=fNO(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_193a>; <BAPI_105a>
Rnames{i} = 'ACTP+NQ=ACO3+NOQ+HCHO';
k(:,i) = 2.90E-12.*exp(300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NQ'; 
fACTP(i)=fACTP(i)-1; fNQ(i)=fNQ(i)-1; fACO3(i)=fACO3(i)+1; fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_194>; <BAPI_106>
Rnames{i} = 'MEKP+NO=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO'; 
fMEKP(i)=fMEKP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 tracer
i=i+1; %<RACM2_194a>; <BAPI_106a>
Rnames{i} = 'MEKP+NQ=0.67 HO2+NOQ+0.33 HCHO+0.67 DCB1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NQ'; 
fMEKP(i)=fMEKP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.67; fNOQ(i)=fNOQ(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %<RACM2_195>; <BAPI_107>
Rnames{i} = 'KETP+NO= HO2+ACO3+XO2+NO2+MGLY+ALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO'; 
fKETP(i)=fKETP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.77; fACO3(i)=fACO3(i)+0.23; 
fXO2(i)=fXO2(i)+0.16; fNO2(i)=fNO2(i)+1; fMGLY(i)=fMGLY(i)+0.54; fALD(i)=fALD(i)+0.46; 

%O3 Tracer
i=i+1; %<RACM2_195a>; <BAPI_107a>
Rnames{i} = 'KETP+NQ= HO2+ACO3+XO2+NOQ+MGLY+ALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NQ'; 
fKETP(i)=fKETP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.77; fACO3(i)=fACO3(i)+0.23; 
fXO2(i)=fXO2(i)+0.16; fNOQ(i)=fNOQ(i)+1; fMGLY(i)=fMGLY(i)+0.54; fALD(i)=fALD(i)+0.46; 

i=i+1;  %<RACM2_204>; <BAPI_108>
Rnames{i} = 'ORAP+NO=HO2+NO2+GLY';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO'; 
fORAP(i)=fORAP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_204a>; <BAPI_108a>
Rnames{i} = 'ORAP+NQ=HO2+NOQ+GLY';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NQ'; 
fORAP(i)=fORAP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1;  %<RACM2_205>; <BAPI_109>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+NO=MONITS+MONITSh+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO'; 
fOLNN(i)=fOLNN(i)-1; fNO(i)=fNO(i)-1; fMONITS(i)=fMONITS(i)+0.85; fMONITSh(i)=fMONITSh(i)+0.15; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 


%O3 Tracer
i=i+1;  %<RACM2_205a>; <BAPI_109a>
Rnames{i} = 'OLNN+NQ=MONITS+MONITSh+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NQ'; 
fOLNN(i)=fOLNN(i)-1; fNQ(i)=fNQ(i)-1; fMONITS(i)=fMONITS(i)+0.85; fMONITSh(i)=fMONITSh(i)+0.15; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_205b>; <BAPI_109b>
Rnames{i} = 'OLNNQ+NO=MONITSQ+MONITShQ+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NO'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNO(i)=fNO(i)-1;fMONITSQ(i)=fMONITSQ(i)+0.85; fMONITShQ(i)=fMONITShQ(i)+0.15; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_205c>; <BAPI_109c>
Rnames{i} = 'OLNNQ+NQ=MONITSQ+MONITShQ+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNQ(i)=fNQ(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.85; fMONITShQ(i)=fMONITShQ(i)+0.15;fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_205d>; <BAPI_109d>
Rnames{i} = 'OLNNQ2+NO=MONITSQ2+MONITShQ2+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NO'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNO(i)=fNO(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.85; fMONITShQ2(i)=fMONITShQ2(i)+0.15; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_205e>; <BAPI_109e>
Rnames{i} = 'OLNNQ2+NQ=MONITSQ2+MONITShQ2+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NQ'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNQ(i)=fNQ(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.85; fMONITShQ2(i)=fMONITShQ2(i)+0.15; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_205f>; <BAPI_109f>
Rnames{i} = 'OLNNQ3+NO=MONITSQ3+MONITShQ3+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NO'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNO(i)=fNO(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.85; fMONITShQ3(i)=fMONITShQ3(i)+0.15; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_205g>; <BAPI_109g>
Rnames{i} = 'OLNNQ3+NQ=MONITSQ3+MONITShQ3+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NQ'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNQ(i)=fNQ(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.85; fMONITShQ3(i)=fMONITShQ3(i)+0.15; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1;



i=i+1;  %<RACM2_206>; <BAPI_110>
Rnames{i} = 'OLND+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO'; 
fOLND(i)=fOLND(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206a>; <BAPI_110a>
Rnames{i} = 'OLND+NQ=NOQ+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NQ'; 
fOLND(i)=fOLND(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206b>; <BAPI_110b>
Rnames{i} = 'OLNDQ+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NO'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206c>; <BAPI_110c>
Rnames{i} = 'OLNDQ+NQ=NOQ+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NQ'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206d>; <BAPI_110d>
Rnames{i} = 'OLNDQ2+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NO'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206e>; <BAPI_110e>
Rnames{i} = 'OLNDQ2+NQ=NOQ+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NQ'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206f>; <BAPI_110f>
Rnames{i} = 'OLNDQ3+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NO'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<RACM2_206g>; <BAPI_110g>
Rnames{i} = 'OLNDQ3+NQ=NOQ+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NQ'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

i=i+1;  %<RACM2_208>; <BAPI_111>
Rnames{i} = 'XO2+NO=NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO'; 
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_208a>; <BAPI_111a>
Rnames{i} = 'XO2+NQ=NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NQ'; 
fXO2(i)=fXO2(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+1; 

%% Organic Peroxy Radicals + HO2
i=i+1; %<RACM2_212>; <BAPI_112>
Rnames{i} = 'MO2+HO2=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2'; 
fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)-1; fOP1(i)=fOP1(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_212a>; <BAPI_112a>
Rnames{i} = 'MO2+HOQ=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HOQ'; 
fMO2(i)=fMO2(i)-1; fHOQ(i)=fHOQ(i)-1; fOP1(i)=fOP1(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_212b>; <BAPI_112b>
Rnames{i} = 'MO2+H2Q=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HQ2'; 
fMO2(i)=fMO2(i)-1; fHQ2(i)=fHQ2(i)-1; fOP1(i)=fOP1(i)+1; 

i=i+1;  %<RACM2_213>; <BAPI_113>
Rnames{i} = 'ETHP+HO2=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HO2'; 
fETHP(i)=fETHP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_213a>; <BAPI_113a>
Rnames{i} = 'ETHP+HOQ=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HOQ'; 
fETHP(i)=fETHP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_213b>; <BAPI_113b>
Rnames{i} = 'ETHP+HQ2=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HQ2'; 
fETHP(i)=fETHP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<RACM2_214>; <BAPI_114>
Rnames{i} = 'HC3P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HO2'; 
fHC3P(i)=fHC3P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_214a>; <BAPI_114a>
Rnames{i} = 'HC3P+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HOQ'; 
fHC3P(i)=fHC3P(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<RACM2_214b>; <BAPI_114b>
Rnames{i} = 'HC3P+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HQ2'; 
fHC3P(i)=fHC3P(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_229>; <BAPI_115>
Rnames{i} = 'APIP+HO2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HO2'; 
fAPIP(i)=fAPIP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_229a>; <BAPI_115a>
Rnames{i} = 'APIP+HOQ=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HOQ'; 
fAPIP(i)=fAPIP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_229b>; <BAPI_115b>
Rnames{i} = 'APIP+HQ2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HQ2'; 
fAPIP(i)=fAPIP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_231>; <BAPI_116>
Rnames{i} = 'ACO3+HO2=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<RACM2_231a>; <BAPI_116a>
Rnames{i} = 'ACO3+HOQ=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HOQ'; 
fACO3(i)=fACO3(i)-1; fHOQ(i)=fHOQ(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<RACM2_231b>; <BAPI_116b>
Rnames{i} = 'ACO3+HQ2=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HQ2'; 
fACO3(i)=fACO3(i)-1; fHQ2(i)=fHQ2(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %<RACM2_232>; <BAPI_117>
Rnames{i} = 'RCO3+HO2=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2'; 
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<RACM2_232a>; <BAPI_117a>
Rnames{i} = 'RCO3+HOQ=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HOQ'; 
fRCO3(i)=fRCO3(i)-1; fHOQ(i)=fHOQ(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<RACM2_232b>; <BAPI_117b>
Rnames{i} = 'RCO3+HQ2=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HQ2'; 
fRCO3(i)=fRCO3(i)-1; fHQ2(i)=fHQ2(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %<RACM2_233>; <BAPI_118>
Rnames{i} = 'ACTP+HO2= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HO2'; 
fACTP(i)=fACTP(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

%O3 Tracer
i=i+1; %<RACM2_233a>; <BAPI_118a>
Rnames{i} = 'ACTP+HOQ= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HOQ'; 
fACTP(i)=fACTP(i)-1; fHOQ(i)=fHOQ(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

%O3 Tracer
i=i+1; %<RACM2_233b>; <BAPI_118b>
Rnames{i} = 'ACTP+HQ2= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HQ2'; 
fACTP(i)=fACTP(i)-1; fHQ2(i)=fHQ2(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

i=i+1; %<RACM2_234>; <BAPI_119>
Rnames{i} = 'MEKP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HO2'; 
fMEKP(i)=fMEKP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 tracer
i=i+1; %<RACM2_234a>; <BAPI_119a>
Rnames{i} = 'MEKP+HOQ=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HOQ'; 
fMEKP(i)=fMEKP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 tracer
i=i+1; %<RACM2_234b>; <BAPI_119b>
Rnames{i} = 'MEKP+HQ2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HQ2'; 
fMEKP(i)=fMEKP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_235>; <BAPI_120>
Rnames{i} = 'KETP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HO2'; 
fKETP(i)=fKETP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_235a>; <BAPI_120a>
Rnames{i} = 'KETP+HOQ=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HOQ'; 
fKETP(i)=fKETP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_235b>; <BAPI_120b>
Rnames{i} = 'KETP+HQ2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HQ2'; 
fKETP(i)=fKETP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_243>; <BAPI_121>
Rnames{i} = 'ORAP+HO2=ONIT'; %mmarvin 20151020
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HO2'; 
fORAP(i)=fORAP(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_243a>; <BAPI_121a>
Rnames{i} = 'ORAP+HOQ=OP2'; %mmarvin 20151020 %walters changed proudct to OP2
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HO2'; 
fORAP(i)=fORAP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_243b>; <BAPI_121b>
Rnames{i} = 'ORAP+HQ2=OP2'; %mmarvin 20151020 %walters changed proudct to OP2
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HO2'; 
fORAP(i)=fORAP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_244>; <BAPI_122>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+HO2=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HO2'; 
fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244a>; <BAPI_122a>
Rnames{i} = 'OLNN+HOQ=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HOQ'; 
fOLNN(i)=fOLNN(i)-1; fHOQ(i)=fHOQ(i)-1;  fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;
 

%O3 Tracer
i=i+1; %<RACM2_244b>; <BAPI_122b>
Rnames{i} = 'OLNN+HQ2=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HQ2'; 
fOLNN(i)=fOLNN(i)-1; fHQ2(i)=fHQ2(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244c>; <BAPI_122c>
Rnames{i} = 'OLNNQ+HO2=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'HO2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fHO2(i)=fHO2(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244d>; <BAPI_122d>
Rnames{i} = 'OLNNQ+HOQ=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'HOQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fHOQ(i)=fHOQ(i)-1;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;
 

%O3 Tracer
i=i+1; %<RACM2_244e>; <BAPI_122e>
Rnames{i} = 'OLNNQ+HQ2=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'HQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fHQ2(i)=fHQ2(i)-1;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;


%O3 Tracer
i=i+1; %<RACM2_244f>; <BAPI_122f>
Rnames{i} = 'OLNNQ2+HO2=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'HO2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fHO2(i)=fHO2(i)-1;  fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244g>; <BAPI_122g>
Rnames{i} = 'OLNNQ2+HOQ=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'HOQ'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244h>; <BAPI_122h>
Rnames{i} = 'OLNNQ2+HQ2=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'HQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fHQ2(i)=fHQ2(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244i>; <BAPI_122i>
Rnames{i} = 'OLNNQ3+HO2=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'HO2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fHO2(i)=fHO2(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244j>; <BAPI_122j>
Rnames{i} = 'OLNNQ3+HOQ=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'HOQ'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fHOQ(i)=fHOQ(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_244k>; <BAPI_122k>
Rnames{i} = 'OLNNQ3+HQ2=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'HQ2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fHQ2(i)=fHQ2(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;


i=i+1; %<RACM2_245>; <BAPI_123>; wwalters ONIT Expansion
Rnames{i} = 'OLND+HO2=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HO2'; 
fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)-1; 
 fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245a>; <BAPI_123a>
Rnames{i} = 'OLND+HOQ=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HOQ'; 
fOLND(i)=fOLND(i)-1; fHOQ(i)=fHOQ(i)-1; 
 fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245b>; <BAPI_123b>
Rnames{i} = 'OLND+HQ2=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HQ2'; 
fOLND(i)=fOLND(i)-1; fHQ2(i)=fHQ2(i)-1; 
 fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245c>; <BAPI_123c>
Rnames{i} = 'OLNDQ+HO2=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'HO2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)-1;
 fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245d>; <BAPI_123d>
Rnames{i} = 'OLNDQ+HOQ=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'HOQ'; 
fOLNDQ(i)=fOLNDQ(i)-1; fHOQ(i)=fHOQ(i)-1;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245e>; <BAPI_123e>
Rnames{i} = 'OLNDQ+HQ2=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'HQ2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fHQ2(i)=fHQ2(i)-1;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245f>; <BAPI_123f>
Rnames{i} = 'OLNDQ2+HO2=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'HO2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)-1;  fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245g>; <BAPI_123g>
Rnames{i} = 'OLNDQ2+HOQ=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'HOQ'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245h>; <BAPI_123h>
Rnames{i} = 'OLNDQ2+HQ2=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'HQ2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fHQ2(i)=fHQ2(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245i>; <BAPI_123i>
Rnames{i} = 'OLNDQ3+HO2=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'HO2'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245j>; <BAPI_123j>
Rnames{i} = 'OLNDQ3+HOQ=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'HOQ'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fHOQ(i)=fHOQ(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_245k>; <BAPI_123k>
Rnames{i} = 'OLNDQ3+HQ2=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'HQ2'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fHQ2(i)=fHQ2(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;



i=i+1; %<RACM2_247>; <BAPI_124>
Rnames{i} = 'XO2+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2'; 
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 tracer
i=i+1; %<RACM2_247a>; <BAPI_124a>
Rnames{i} = 'XO2+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HOQ'; 
fXO2(i)=fXO2(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1;

%O3 tracer
i=i+1; %<RACM2_247b>; <BAPI_124b>
Rnames{i} = 'XO2+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HQ2'; 
fXO2(i)=fXO2(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1;

%% Organic Peroxy Radicals + Methyl Peroxyl Radical
i=i+1; %<RACM2_248>; <BAPI_125>
Rnames{i} = 'MO2+MO2=0.74 HO2+1.37 HCHO+0.63  MOH';
k(:,i) = 9.50E-14.*exp(390./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2'; 
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.74; fHCHO(i)=fHCHO(i)+1.37;
fMOH(i)=fMOH(i)+0.63;

i=i+1; %<RACM2_249>; <BAPI_126>
Rnames{i} = 'ETHP+MO2=HO2+0.75 HCHO+0.75 ACD+0.25 MOH+0.25 EOH';
k(:,i) = 1.18E-13.*exp(158./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'MO2'; 
fETHP(i)=fETHP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fACD(i)=fACD(i)+0.75; fMOH(i)=fMOH(i)+0.25; fEOH(i)=fEOH(i)+0.25;

i=i+1; %<RACM2_250>; <BAPI_127>
Rnames{i} = 'HC3P+MO2= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+MOH+ROH';
k(:,i) = 9.46E-14.*exp(431./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'MO2'; 
fHC3P(i)=fHC3P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.894; fMO2(i)=fMO2(i)+0.08; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.827; fALD(i)=fALD(i)+0.198; 
fKET(i)=fKET(i)+0.497; fGLY(i)=fGLY(i)+0.050; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1; %<RACM2_265>; <BAPI_128>
Rnames{i} = 'APIP+MO2=HO2+0.75 HCHO+0.75 ALD+0.75 KET+0.25 MOH+0.25 ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'MO2'; 
fAPIP(i)=fAPIP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fALD(i)=fALD(i)+0.75; fKET(i)=fKET(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25;

i=i+1; %<RACM2_267>; <BAPI_129>
Rnames{i} = 'ACO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1; %SR 20160406

i=i+1; %<RACM2_268>; <BAPI_130>
Rnames{i} = 'RCO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1;

i=i+1; %<RACM2_269>; <BAPI_131>
Rnames{i} = 'ACTP+MO2=0.5 HO2+0.5 ACO3+1.5 HCHO+0.25 MOH+0.25 ROH+0.125 ORA2';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'MO2'; 
fACTP(i)=fACTP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.5; fACO3(i)=fACO3(i)+0.5;
fHCHO(i)=fHCHO(i)+1.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fORA2(i)=fORA2(i)+0.125;

i=i+1; %<RACM2_270>; <BAPI_132>
Rnames{i} = 'MEKP+MO2=0.834 HO2+HCHO+0.334 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'MO2'; 
fMEKP(i)=fMEKP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.834; fHCHO(i)=fHCHO(i)+1;
fDCB1(i)=fDCB1(i)+0.334; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<RACM2_271>; <BAPI_133>
Rnames{i} = 'KETP+MO2=HO2+0.75 HCHO+0.50 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'MO2'; 
fKETP(i)=fKETP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fDCB1(i)=fDCB1(i)+0.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<RACM2_280>; <BAPI_134>
Rnames{i} = 'ORAP+MO2=HO2+HCHO+GLY';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'MO2'; 
fORAP(i)=fORAP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<RACM2_281>; <BAPI_135>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+MO2=HCHO+HO2+HO2+0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MO2'; 
fOLNN(i)=fOLNN(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_281a>; <BAPI_135a>
Rnames{i} = 'OLNNQ+MO2=HCHO+HO2+HO2+0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'MO2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_281b>; <BAPI_135b>
Rnames{i} = 'OLNNQ2+MO2=HCHO+HO2+HO2+0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'MO2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_281c>; <BAPI_135c>
Rnames{i} = 'OLNNQ3+MO2=HCHO+HO2+HO2+0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'MO2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;



i=i+1; %<RACM2_282>; <BAPI_136>; wwalters ONIT Expansion
Rnames{i} = 'OLND+MO2= HO2+NO2+HCHO+ALD+KET+MOH+ROH+.2975MONITS+.0525MONITSh+0.1275MONITU+0.0225MONITUh';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+0.50; 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fMONITS(i)=fMONITS(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITU(i)=fMONITU(i)+0.1275;  fMONITUh(i)=fMONITUh(i)+0.0225;


%O3 Tracer
i=i+1; %<RACM2_282a>; <BAPI_136a>
Rnames{i} = 'OLNDQ+MO2= HO2+NOQ+NO2+HCHO+ALD+KET+MOH+ROH+.2975MONITSQ+.0525MONITShQ+0.1275MONITUQ+0.0225MONITUhQ';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(1/3); 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25;  fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITUQ(i)=fMONITUQ(i)+0.1275;  fMONITUhQ(i)=fMONITUhQ(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_282b>; <BAPI_136b>
Rnames{i} = 'OLNDQ2+MO2= HO2+NOQ+NQ2+HCHO+ALD+KET+MOH+ROH+.2975MONITSQ2+.0525MONITShQ2+0.1275MONITUQ2+0.0225MONITUhQ2';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(1/3); 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITUQ2(i)=fMONITUQ2(i)+0.1275;  fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_282c>; <BAPI_136c>
Rnames{i} = 'OLNDQ3+MO2= HO2+NQ2+HCHO+ALD+KET+MOH+ROH+.2975MONITSQ3+.0525MONITShQ3+0.1275MONITUQ3+0.0225MONITUhQ3';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNQ2(i)=fNQ2(i)+0.5; 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITUQ3(i)=fMONITUQ3(i)+0.1275;  fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225;


i=i+1; %<RACM2_284>; <BAPI_137>
Rnames{i} = 'XO2+MO2=HCHO+HO2';
k(:,i) = 5.99E-15.*exp(1510./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'MO2'; 
fXO2(i)=fXO2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 


%% Organic Peroxy Radicals + ACETYL PEROXY RADICAL
i=i+1; %<RACM2_285>; <BAPI_138>
Rnames{i} = 'ETHP+ACO3=0.500 HO2+0.5 MO2+ACD+0.5 ORA2';
k(:,i) = 1.03E-12.*exp(211./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'ACO3'; 
fETHP(i)=fETHP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;  
fACD(i)=fACD(i)+1; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<RACM2_286>; <BAPI_139>
Rnames{i} = 'HC3P+ACO3= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+ORA2';
k(:,i) = 6.90E-13.*exp(460./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'ACO3'; 
fHC3P(i)=fHC3P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.394; fMO2(i)=fMO2(i)+0.580; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.130; fALD(i)=fALD(i)+0.273; 
fKET(i)=fKET(i)+0.662; fGLY(i)=fGLY(i)+0.067; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %<RACM2_301>; <BAPI_140>
Rnames{i} = 'APIP+ACO3=0.5 HO2+0.5 MO2+ALD+KET+ORA2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'ACO3'; 
fAPIP(i)=fAPIP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fALD(i)=fALD(i)+1; fKET(i)=fKET(i)+1; fORA2(i)=fORA2(i)+1; 

i=i+1; %<RACM2_303>; <BAPI_141>
Rnames{i} = 'ACO3+ACO3=MO2+MO2+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'ACO3'; 
fACO3(i)=fACO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fMO2(i)=fMO2(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<RACM2_304>; <BAPI_142>
Rnames{i} = 'RCO3+ACO3=MO2+ETHP+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'ACO3'; 
fRCO3(i)=fRCO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<RACM2_305>; <BAPI_143>
Rnames{i} = 'ACTP+ACO3=0.50 MO2+0.50 ACO3+HCHO+0.75 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'ACO3'; 
fACTP(i)=fACTP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.5; fACO3(i)=fACO3(i)+0.5; 
fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.75;

i=i+1; %<RACM2_306>; <BAPI_144>
Rnames{i} = 'MEKP+ACO3=0.33 HO2+0.50 MO2+0.33 HCHO+0.334 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'ACO3'; 
fMEKP(i)=fMEKP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.33; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.334; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<RACM2_307>; <BAPI_145>
Rnames{i} = 'KETP+ACO3=0.50 HO2+0.50 MO2+0.50 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'ACO3'; 
fKETP(i)=fKETP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fDCB1(i)=fDCB1(i)+0.5; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<RACM2_316>; <BAPI_146>
Rnames{i} = 'ORAP+ACO3=MO2+GLY';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'ACO3'; 
fORAP(i)=fORAP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<RACM2_317>; <BAPI_147>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+ACO3=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'ACO3'; 
fOLNN(i)=fOLNN(i)-1; fACO3(i)=fACO3(i)-1; 
fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_317a>; <BAPI_147a>
Rnames{i} = 'OLNNQ+ACO3=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'ACO3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fACO3(i)=fACO3(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_317b>; <BAPI_147b>
Rnames{i} = 'OLNNQ2+ACO3=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'ACO3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fACO3(i)=fACO3(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_317c>; <BAPI_147c>
Rnames{i} = 'OLNNQ3+ACO3=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'ACO3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fACO3(i)=fACO3(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1;



i=i+1; %<RACM2_318>; <BAPI_148>
Rnames{i} = 'OLND+ACO3= MO2+NO2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'ACO3'; 
fOLND(i)=fOLND(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

%O3 Tracer
i=i+1; %<RACM2_318a>; <BAPI_148a>
Rnames{i} = 'OLNDQ+ACO3= MO2+(1/3)*NO2+(2/3)*NOQ+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'ACO3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

%O3 Tracer
i=i+1; %<RACM2_318b>; <BAPI_148b>
Rnames{i} = 'OLNDQ2+ACO3= MO2+(1/3)*NQ2+(2/3)*NOQ+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'ACO3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

%O3 Tracer
i=i+1; %<RACM2_318c>; <BAPI_148c>
Rnames{i} = 'OLNDQ3+ACO3= MO2+NQ2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'ACO3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNQ2(i)=fNQ2(i)+1;  
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %<RACM2_320>; <BAPI_149>
Rnames{i} = 'XO2+ACO3=MO2';
k(:,i) = 3.40E-14.*exp(1560./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'ACO3'; 
fXO2(i)=fXO2(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; 

%% Organic Peroxy Radicals+NO3
i=i+1; %<RACM2_321>; <BAPI_150>
Rnames{i} = 'MO2+NO3=HCHO+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO3'; 
fMO2(i)=fMO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_321a>; <BAPI_150a>
Rnames{i} = 'MO2+NO2Q=HCHO+HO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO2Q'; 
fMO2(i)=fMO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_321b>; <BAPI_150b>
Rnames{i} = 'MO2+NOQ2=HCHO+HO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NOQ2'; 
fMO2(i)=fMO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_321c>; <BAPI_150c>
Rnames{i} = 'MO2+NQ3=HCHO+HO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NQ3'; 
fMO2(i)=fMO2(i)-1; fNQ3(i)=fNQ3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<RACM2_322>; <BAPI_151>
Rnames{i} = 'ETHP+NO3=ACD+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO3'; 
fETHP(i)=fETHP(i)-1; fNO3(i)=fNO3(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_322a>; <BAPI_151a>
Rnames{i} = 'ETHP+NO2Q=ACD+HO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO2Q'; 
fETHP(i)=fETHP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_322b>; <BAPI_151b>
Rnames{i} = 'ETHP+NOQ2=ACD+HO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NOQ2'; 
fETHP(i)=fETHP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_322c>; <BAPI_151c>
Rnames{i} = 'ETHP+NQ3=ACD+HO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NQ3'; 
fETHP(i)=fETHP(i)-1; fNQ3(i)=fNQ3(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<RACM2_323>; <BAPI_152>
Rnames{i} = 'HC3P+NO3=HO2+MO2+XO2+ETHP+NO2+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO3'; 
fHC3P(i)=fHC3P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNO2(i)=fNO2(i)+1; fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

%O3 Tracer
i=i+1; %<RACM2_323a>; <BAPI_152a>
Rnames{i} = 'HC3P+NO2Q=HO2+MO2+XO2+ETHP+(1/3)*NO2+(2/3)*NOQ+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO2Q'; 
fHC3P(i)=fHC3P(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

%O3 Tracer
i=i+1; %<RACM2_323b; <BAPI_152b>
Rnames{i} = 'HC3P+NOQ2=HO2+MO2+XO2+ETHP+(1/3)*NQ2+(2/3)*NOQ+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NOQ2'; 
fHC3P(i)=fHC3P(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

%O3 Tracer
i=i+1; %<RACM2_323c>; <BAPI_152c>
Rnames{i} = 'HC3P+NQ3=HO2+MO2+XO2+ETHP+NQ2+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NQ3'; 
fHC3P(i)=fHC3P(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNQ2(i)=fNQ2(i)+1; fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 


i=i+1; %<RACM2_338>; <BAPI_153>
Rnames{i} = 'APIP+NO3=HO2+ALD+NO2+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO3'; 
fAPIP(i)=fAPIP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_338a>; <BAPI_153a>
Rnames{i} = 'APIP+NO2Q=HO2+ALD+(1/3)*NO2+(2/3)*NOQ+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO2Q'; 
fAPIP(i)=fAPIP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fKET(i)=fKET(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_338b>; <BAPI_153b>
Rnames{i} = 'APIP+NOQ2=HO2+ALD+(1/3)*NQ2+(2/3)*NOQ+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NOQ2'; 
fAPIP(i)=fAPIP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fKET(i)=fKET(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_338c>; <BAPI_153c>
Rnames{i} = 'APIP+NQ3=HO2+ALD+NQ2+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NQ3'; 
fAPIP(i)=fAPIP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNQ2(i)=fNQ2(i)+1; fKET(i)=fKET(i)+1; 

i=i+1; %<RACM2_340>; <BAPI_154>
Rnames{i} = 'ACO3+NO3=MO2+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO3'; 
fACO3(i)=fACO3(i)-1; fNO3(i)=fNO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_340a>; <BAPI_154a>
Rnames{i} = 'ACO3+NO2Q=MO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2Q'; 
fACO3(i)=fACO3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_340b>; <BAPI_154b>
Rnames{i} = 'ACO3+NOQ2=MO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NOQ2'; 
fACO3(i)=fACO3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMO2(i)=fMO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_340c>; <BAPI_154c>
Rnames{i} = 'ACO3+NQ3=MO2+NQ2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NQ3'; 
fACO3(i)=fACO3(i)-1; fNQ3(i)=fNQ3(i)-1; fMO2(i)=fMO2(i)+1; fNQ2(i)=fNQ2(i)+1;  

i=i+1; %<RACM2_341>; <BAPI_155>
Rnames{i} = 'RCO3+NO3=ETHP+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO3'; 
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_341a>; <BAPI_155a>
Rnames{i} = 'RCO3+NO2Q=ETHP+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2Q'; 
fRCO3(i)=fRCO3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_341b>; <BAPI_155b>
Rnames{i} = 'RCO3+NOQ2=ETHP+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NOQ2'; 
fRCO3(i)=fRCO3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fETHP(i)=fETHP(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_341c>; <BAPI_155c>
Rnames{i} = 'RCO3+NQ3=ETHP+NQ2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NQ3'; 
fRCO3(i)=fRCO3(i)-1; fNQ3(i)=fNQ3(i)-1; fETHP(i)=fETHP(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<RACM2_342>; <BAPI_156>
Rnames{i} = 'ACTP+NO3=ACO3+NO2+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO3'; 
fACTP(i)=fACTP(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 tracer
i=i+1; %<RACM2_342a>; <BAPI_156a>
Rnames{i} = 'ACTP+NO2Q=ACO3+(1/3)*NO2+(2/3)*NOQ+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO2Q'; 
fACTP(i)=fACTP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+1; 

%O3 tracer
i=i+1; %<RACM2_342b>; <BAPI_156b>
Rnames{i} = 'ACTP+NOQ2=ACO3+(1/3)*NQ2+(2/3)*NOQ+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NOQ2'; 
fACTP(i)=fACTP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+1;

%O3 tracer
i=i+1; %<RACM2_342c>; <BAPI_156c>
Rnames{i} = 'ACTP+NQ3=ACO3+NQ2HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NQ3'; 
fACTP(i)=fACTP(i)-1; fNQ3(i)=fNQ3(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+1;

i=i+1; %<RACM2_343>; <BAPI_157>
Rnames{i} = 'MEKP+NO3=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO3'; 
fMEKP(i)=fMEKP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 Tracer
i=i+1; %<RACM2_343a>; <BAPI_157a>
Rnames{i} = 'MEKP+NO2Q=0.67 HO2+(1/3)*NO2+(2/3)*NOQ+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO2Q'; 
fMEKP(i)=fMEKP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 Tracer
i=i+1; %<RACM2_343b>; <BAPI_157b>
Rnames{i} = 'MEKP+NOQ2=0.67 HO2+(1/3)*NQ2+(2/3)*NOQ+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NOQ2'; 
fMEKP(i)=fMEKP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.67; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 Tracer
i=i+1; %<RACM2_343c>; <BAPI_157c>
Rnames{i} = 'MEKP+NQ3=0.67 HO2+NQ2+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NQ3'; 
fMEKP(i)=fMEKP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.67; fNQ2(i)=fNQ2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %<RACM2_344>; <BAPI_158>
Rnames{i} = 'KETP+NO3=DCB1+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO3'; 
fKETP(i)=fKETP(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_344a>; <BAPI_158a>
Rnames{i} = 'KETP+NO2Q=DCB1+HO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO2Q'; 
fKETP(i)=fKETP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_344b>; <BAPI_158b>
Rnames{i} = 'KETP+NOQ2=DCB1+HO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NOQ2'; 
fKETP(i)=fKETP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_344c>; <BAPI_158c>
Rnames{i} = 'KETP+NQ3=DCB1+HO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NQ3'; 
fKETP(i)=fKETP(i)-1; fNQ3(i)=fNQ3(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1;  

i=i+1; %<RACM2_353>; <BAPI_159>
Rnames{i} = 'ORAP+NO3=HO2+NO2+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO3'; 
fORAP(i)=fORAP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_353a>; <BAPI_159a>
Rnames{i} = 'ORAP+NO2Q=HO2+(1/3)*NO2+(2/3)*NOQ+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO2Q'; 
fORAP(i)=fORAP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_353b>; <BAPI_159b>
Rnames{i} = 'ORAP+NOQ2=HO2+(1/3)*NQ2+(2/3)*NOQ+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NOQ2'; 
fORAP(i)=fORAP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_353c>; <BAPI_159c>
Rnames{i} = 'ORAP+NQ3=HO2+NQ2+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NQ3'; 
fORAP(i)=fORAP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<RACM2_354>; <BAPI_160>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+NO3=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO3'; 
fOLNN(i)=fOLNN(i)-1; fNO3(i)=fNO3(i)-1; 
fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354a>; <BAPI_160a>
Rnames{i} = 'OLNN+NO2Q=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO2Q'; 
fOLNN(i)=fOLNN(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354b>; <BAPI_160b>
Rnames{i} = 'OLNN+NOQ2=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NOQ2'; 
fOLNN(i)=fOLNN(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354c>; <BAPI_160c>
Rnames{i} = 'OLNN+NQ3=0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NQ3'; 
fOLNN(i)=fOLNN(i)-1; fNQ3(i)=fNQ3(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354d>; <BAPI_160d>
Rnames{i} = 'OLNNQ+NO3=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NO3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNO3(i)=fNO3(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354e>; <BAPI_160e>
Rnames{i} = 'OLNNQ+NO2Q=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NO2Q'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354f>; <BAPI_160f>
Rnames{i} = 'OLNNQ+NOQ2=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NOQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354g>; <BAPI_160g>
Rnames{i} = 'OLNNQ+NQ3=0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NQ3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNQ3(i)=fNQ3(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354h>; <BAPI_160h>
Rnames{i} = 'OLNNQ2+NO3=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NO3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNO3(i)=fNO3(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_354i>; <BAPI_160i>
Rnames{i} = 'OLNNQ2+NO2Q=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NO2Q'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %%<RACM2_354j>; <BAPI_160j>
Rnames{i} = 'OLNNQ2+NOQ2=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NOQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_354k>; <BAPI_160k>
Rnames{i} = 'OLNNQ2+NQ3=0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NQ3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_354l>; <BAPI_160l>
Rnames{i} = 'OLNNQ3+NO3=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NO3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNO3(i)=fNO3(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_354m>; <BAPI_160m>
Rnames{i} = 'OLNNQ3+NO2Q=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NO2Q'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;  fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_354n>; <BAPI_160n>
Rnames{i} = 'OLNNQ3+NOQ2=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NOQ2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;  fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<RACM2_354o>; <BAPI_160o>
Rnames{i} = 'OLNNQ3+NQ3=0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NQ3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNQ3(i)=fNQ3(i)-1;fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1;



i=i+1; %<RACM2_355>; <BAPI_161>
Rnames{i} = 'OLND+NO3=2 NO2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO3'; 
fOLND(i)=fOLND(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355a>; <BAPI_161a>
Rnames{i} = 'OLND+NO2Q= NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO2Q'; 
fOLND(i)=fOLND(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(4/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355b>; <BAPI_161b>
Rnames{i} = 'OLND+NOQ2=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NOQ2'; 
fOLND(i)=fOLND(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO2(i)=fNO2(i)+(1); fNOQ(i)=fNOQ(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355c>; <BAPI_161c>
Rnames{i} = 'OLND+NQ3=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NQ3'; 
fOLND(i)=fOLND(i)-1; fNQ3(i)=fNQ3(i)-1; fNO2(i)=fNO2(i)+(1); fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355d>; <BAPI_161d>
Rnames{i} = 'OLNDQ+NO3=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NO3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+(4/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355e>; <BAPI_161e>
Rnames{i} = 'OLNDQ+NO2Q=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NO2Q'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(2/3); fNOQ(i)=fNOQ(i)+(4/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355f>; <BAPI_161f>
Rnames{i} = 'OLNDQ+NOQ2=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NOQ2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355g>; <BAPI_161g>
Rnames{i} = 'OLNDQ+NQ3=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NQ3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNQ3(i)=fNQ3(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355h>; <BAPI_161h>
Rnames{i} = 'OLNDQ2+NO3=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NO3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355i>; <BAPI_161i>
Rnames{i} = 'OLNDQ2+NO2Q=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NO2Q'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355j>; <BAPI_161j>
Rnames{i} = 'OLNDQ2+NOQ2=NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NOQ2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355k>; <BAPI_161k>
Rnames{i} = 'OLNDQ2+NQ3=NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NQ3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(4/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355l>; <BAPI_161l>
Rnames{i} = 'OLNDQ3+NO3=NO2+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NO3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355m>; <BAPI_161m>
Rnames{i} = 'OLNDQ3+NO2Q=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NO2Q'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355n>; <BAPI_161n>
Rnames{i} = 'OLNDQ3+NOQ2=NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NOQ2'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(4/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<RACM2_355o>; <BAPI_161o>
Rnames{i} = 'OLNDQ3+NQ3=NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NQ3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+2; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

i=i+1; %<RACM2_357>; <BAPI_162>
Rnames{i} = 'XO2+NO3=NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO3'; 
fXO2(i)=fXO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_357a>; <BAPI_162a>
Rnames{i} = 'XO2+NO2Q=(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO2Q'; 
fXO2(i)=fXO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_357b>; <BAPI_162b>
Rnames{i} = 'XO2+NOQ2=(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NOQ2'; 
fXO2(i)=fXO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<RACM2_357c>; <BAPI_162c>
Rnames{i} = 'XO2+NQ3=NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NQ3'; 
fXO2(i)=fXO2(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; 

%% Self Reaction of RCO3 Radical
i=i+1; %<R358>; <BAPI_163>
Rnames{i} = 'RCO3+RCO3=2ETHP+2CO2';
k(:,i) = 2.5e-12.*exp(500./T); %Goliff(2013) missing rate k; use k(ACO3+ACO3)
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RCO3'; 
% fRCO3(i)=-2; fETHP(i)=2; fCO2(i)=2;
fRCO3(i)=fRCO3(i)-2; fETHP(i)=fETHP(i)+2; fCO2(i)=fCO2(i)+2; %SR 20160406


%%Organic Nitrate Radical Cross Reactions
i=i+1; %<RACM2_359>; <BAPI_164>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+OLNN=1.19MONITS+0.21MONITSh+0.51MONITU+0.09MONITUh+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNN'; 
fOLNN(i)=fOLNN(i)-1; fOLNN(i)=fOLNN(i)-1; fMONITS(i)=fMONITS(i)+1.19; fMONITSh(i)=fMONITSh(i)+0.21; fMONITU(i)=fMONITU(i)+0.51; fMONITUh(i)=fMONITUh(i)+0.09; fHO2(i)=fHO2(i)+1; 


%O3 Tracer
i=i+1; %<RACM2_359a>; <BAPI_164a>
Rnames{i} = 'OLNN+OLNNQ=0.595MONITS+0.595MONITSQ+0.105MONITSh+0.105MONITShQ+0.255MONITU+0.255MONITUQ+0.045MONITUh+0.045MONITUhQ+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNNQ'; 
fOLNN(i)=fOLNN(i)-1; fOLNNQ(i)=fOLNNQ(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359b>; <BAPI_164b>
Rnames{i} = 'OLNN+OLNNQ2=0.595MONITS+0.595MONITSQ2+0.105MONITSh+0.105MONITShQ2+0.255MONITU+0.255MONITUQ2+0.045MONITUh+0.045MONITUhQ2+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNNQ2'; 
fOLNN(i)=fOLNN(i)-1; fOLNNQ2(i)=fOLNNQ2(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;  fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359c>; <BAPI_164c>
Rnames{i} = 'OLNN+OLNNQ3=0.595MONITS+0.595MONITSQ3+0.105MONITSh+0.105MONITShQ3+0.255MONITU+0.255MONITUQ3+0.045MONITUh+0.045MONITUhQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNNQ3'; 
fOLNN(i)=fOLNN(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fMONITS(i)=fMONITS(i)+0.595; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;   fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359d>; <BAPI_164d>
Rnames{i} = 'OLNNQ+OLNNQ=1.19MONITSQ+0.21MONITShQ+0.51MONITUQ+0.09MONITUhQ+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNNQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNNQ(i)=fOLNNQ(i)-1;  fMONITSQ(i)=fMONITSQ(i)+1.19; fMONITShQ(i)=fMONITShQ(i)+0.21; fMONITUQ(i)=fMONITUQ(i)+0.51; fMONITUhQ(i)=fMONITUhQ(i)+0.09; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359e>; <BAPI_164e>
Rnames{i} = 'OLNNQ+OLNNQ2=0.595MONITSQ+0.595MONITSQ2+0.105MONITShQ+0.105MONITShQ2+0.255MONITUQ+0.255MONITUQ2+0.045MONITUhQ+0.045MONITUhQ2+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNNQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNNQ2(i)=fOLNNQ2(i)-1;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;   fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359f>; <BAPI_164f>
Rnames{i} = 'OLNNQ+OLNNQ3=0.595MONITSQ+0.595MONITSQ3+0.105MONITShQ+0.105MONITShQ3+0.255MONITUQ+0.255MONITUQ3+0.045MONITUhQ+0.045MONITUhQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNNQ3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359g>; <BAPI_164g>
Rnames{i} = 'OLNNQ2+OLNNQ2=1.19MONITSQ2+0.21MONITShQ2+0.51MONITUQ2+0.09MONITUhQ2+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNNQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+1.19; fMONITShQ2(i)=fMONITShQ2(i)+0.21; fMONITUQ2(i)=fMONITUQ2(i)+0.51; fMONITUhQ2(i)=fMONITUhQ2(i)+0.09; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359h>; <BAPI_164h>
Rnames{i} = 'OLNNQ2+OLNNQ3=0.595MONITSQ2+0.595MONITSQ3+0.105MONITShQ2+0.105MONITShQ3+0.255MONITUQ2+0.255MONITUQ3+0.045MONITUhQ2+0.045MONITUhQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNNQ3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<RACM2_359i>; <BAPI_164i>
Rnames{i} = 'OLNNQ3+OLNNQ3=1.19MONITSQ3+0.21MONITShQ3+0.51MONITUQ3+0.09MONITUhQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNNQ3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1;  fMONITSQ3(i)=fMONITSQ3(i)+1.19; fMONITShQ3(i)=fMONITShQ3(i)+0.21; fMONITUQ3(i)=fMONITUQ3(i)+0.51; fMONITUhQ3(i)=fMONITUhQ3(i)+0.09; fHO2(i)=fHO2(i)+1; 

i=i+1; %<RACM2_360>; <BAPI_165>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+OLND=0.50 HO2+0.50 NO2+0.202 HCHO+0.640 ALD+0.149 KET+0.8925MONITS+0.1575MONITSh+0.3825MONITU+0.0675MONITUh ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLND'; 
fOLNN(i)=fOLNN(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITS(i)=fMONITS(i)+0.8925; fMONITSh(i)=fMONITSh(i)+0.1575; fMONITU(i)=fMONITU(i)+0.3825; fMONITUh(i)=fMONITUh(i)+0.0675; 


%O3 Tracer
i=i+1; %<RACM2_360a>; <BAPI_165a>
Rnames{i} = 'OLNN+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITS+0.2975MONITSQ+0.105MONITSh+0.0525MONITShQ+0.255MONITU+0.1275MONITUQ+0.045MONITUh+0.0225MONITUhQ ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNDQ'; 
fOLNN(i)=fOLNN(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITS(i)=fMONITS(i)+0.595; fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.105; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITU(i)=fMONITU(i)+0.225; fMONITUQ(i)=fMONITUQ(i)+0.1275; fMONITUh(i)=fMONITUh(i)+0.045;  fMONITUhQ(i)=fMONITUhQ(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360b>; <BAPI_165b>
Rnames{i} = 'OLNN+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITS+0.2975MONITSQ2+0.105MONITSh+0.0525MONITShQ2+0.255MONITU+0.1275MONITUQ2+0.045MONITUh+0.0225MONITUhQ2 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNDQ2'; 
fOLNN(i)=fOLNN(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITS(i)=fMONITS(i)+0.595; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.105; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITU(i)=fMONITU(i)+0.225; fMONITUQ2(i)=fMONITUQ2(i)+0.1275; fMONITUh(i)=fMONITUh(i)+0.045;  fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225; 

%O3 Tracer
i=i+1; %<RACM2_360c>; <BAPI_165c>
Rnames{i} = 'OLNN+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITS+0.2975MONITSQ3+0.105MONITSh+0.0525MONITShQ3+0.255MONITU+0.1275MONITUQ3+0.045MONITUh+0.0225MONITUhQ3 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNDQ3'; 
fOLNN(i)=fOLNN(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITS(i)=fMONITS(i)+0.595; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.105; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITU(i)=fMONITU(i)+0.225; fMONITUQ3(i)=fMONITUQ3(i)+0.1275; fMONITUh(i)=fMONITUh(i)+0.045;  fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360d>; <BAPI_165d>
Rnames{i} = 'OLNNQ+OLND=0.50 HO2+NO2+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ+0.2975MONITS+0.105MONITShQ+0.0525MONITSh+0.255MONITUQ+0.1275MONITU+0.045MONITUhQ+0.0225MONITUh ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/2); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITS(i)=fMONITS(i)+0.2975; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITUQ(i)=fMONITUQ(i)+0.225; fMONITU(i)=fMONITU(i)+0.1275; fMONITUhQ(i)=fMONITUhQ(i)+0.045;  fMONITUh(i)=fMONITUh(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360e>; <BAPI_165e>
Rnames{i} = 'OLNNQ+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.8925MONITSQ+0.1575MONITShQ+0.3825MONITUQ+0.0675MONITUhQ ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ(i)=fMONITSQ(i)+0.8925; fMONITShQ(i)=fMONITShQ(i)+0.1575; fMONITUQ(i)=fMONITUQ(i)+0.3825; fMONITUhQ(i)=fMONITUhQ(i)+0.0675; 


%O3 Tracer
i=i+1; %<RACM2_360f>; <BAPI_165f>
Rnames{i} = 'OLNNQ+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ+0.2975MONITSQ2+0.105MONITShQ+0.0525MONITShQ2+0.255MONITUQ+0.1275MONITUQ2+0.045MONITUhQ+0.0225MONITUhQ2 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITUQ(i)=fMONITUQ(i)+0.225; fMONITUQ2(i)=fMONITUQ2(i)+0.1275; fMONITUhQ(i)=fMONITUhQ(i)+0.045;  fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360g>; <BAPI_165g>
Rnames{i} = 'OLNNQ+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ+0.2975MONITSQ3+0.105MONITShQ+0.0525MONITShQ3+0.255MONITUQ+0.1275MONITUQ3+0.045MONITUhQ+0.0225MONITUhQ3 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITUQ(i)=fMONITUQ(i)+0.225; fMONITUQ3(i)=fMONITUQ3(i)+0.1275; fMONITUhQ(i)=fMONITUhQ(i)+0.045;  fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225; 

%O3 Tracer
i=i+1; %<RACM2_360h>; <BAPI_165h>
Rnames{i} = 'OLNNQ2+OLND=0.50 HO2+NO2+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ2+0.2975MONITS+0.105MONITShQ2+0.0525MONITSh+0.255MONITUQ2+0.1275MONITU+0.045MONITUhQ2+0.0225MONITUh ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLND'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/2);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITS(i)=fMONITS(i)+0.2975; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITUQ2(i)=fMONITUQ2(i)+0.225; fMONITU(i)=fMONITU(i)+0.1275; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;  fMONITUh(i)=fMONITUh(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360i>; <BAPI_165i>
Rnames{i} = 'OLNNQ2+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ2+0.2975MONITSQ+0.105MONITShQ2+0.0525MONITShQ+0.255MONITUQ2+0.1275MONITUQ+0.045MONITUhQ2+0.0225MONITUhQ ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITUQ2(i)=fMONITUQ2(i)+0.225; fMONITUQ(i)=fMONITUQ(i)+0.1275; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;  fMONITUhQ(i)=fMONITUhQ(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360j>; <BAPI_165j>
Rnames{i} = 'OLNNQ2+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.8925MONITSQ2+0.1575MONITShQ2+0.3825MONITUQ2+0.0675MONITUhQ2 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNDQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ2(i)=fMONITSQ2(i)+0.8925; fMONITShQ2(i)=fMONITShQ2(i)+0.1575; fMONITUQ2(i)=fMONITUQ2(i)+0.3825; fMONITUhQ2(i)=fMONITUhQ2(i)+0.0675; 


%O3 Tracer
i=i+1; %<RACM2_360k>; <BAPI_165k>
Rnames{i} = 'OLNNQ2+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ2+0.2975MONITSQ3+0.105MONITShQ2+0.0525MONITShQ3+0.255MONITUQ2+0.1275MONITUQ3+0.045MONITUhQ2+0.0225MONITUhQ3 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNDQ3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITUQ2(i)=fMONITUQ2(i)+0.225; fMONITUQ3(i)=fMONITUQ3(i)+0.1275; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;  fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225; 




%O3 Tracer
i=i+1; %<RACM2_360l>; <BAPI_165l>
Rnames{i} = 'OLNNQ3+OLND=0.50 HO2+NO2+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ3+0.2975MONITS+0.105MONITShQ3+0.0525MONITSh+0.255MONITUQ3+0.1275MONITU+0.045MONITUhQ3+0.0225MONITUh ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLND'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/2);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITS(i)=fMONITS(i)+0.2975; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITUQ3(i)=fMONITUQ3(i)+0.225; fMONITU(i)=fMONITU(i)+0.1275; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;  fMONITUh(i)=fMONITUh(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360m>; <BAPI_165m>
Rnames{i} = 'OLNNQ3+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ3+0.2975MONITSQ+0.105MONITShQ3+0.0525MONITShQ+0.255MONITUQ3+0.1275MONITUQ+0.045MONITUhQ3+0.0225MONITUhQ ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITUQ3(i)=fMONITUQ3(i)+0.225; fMONITUQ(i)=fMONITUQ(i)+0.1275; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;  fMONITUhQ(i)=fMONITUhQ(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360n>; <BAPI_165n>
Rnames{i} = 'OLNNQ3+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+0.595MONITSQ3+0.2975MONITSQ2+0.105MONITShQ3+0.0525MONITShQ2+0.255MONITUQ3+0.1275MONITUQ2+0.045MONITUhQ3+0.0225MONITUhQ2 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNDQ2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITUQ3(i)=fMONITUQ3(i)+0.225; fMONITUQ2(i)=fMONITUQ2(i)+0.1275; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;  fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225; 


%O3 Tracer
i=i+1; %<RACM2_360o>; <BAPI_165o>
Rnames{i} = 'OLNNQ3+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+0.8925MONITSQ3+0.1575MONITShQ3+0.3825MONITUQ3+0.0675MONITUhQ3 ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNDQ3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2);    
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSQ3(i)=fMONITSQ3(i)+0.8925; fMONITShQ3(i)=fMONITShQ3(i)+0.1575; fMONITUQ3(i)=fMONITUQ3(i)+0.3825; fMONITUhQ3(i)=fMONITUhQ3(i)+0.0675; 

i=i+1; %<RACM2_361>; <BAPI_166>; wwalters ONIT Expansion
Rnames{i} = 'OLND+OLND=NO2+0.504 HCHO+1.21 ALD+0.285 KET+0.595MONITS+0.105MONITSh+0.255MONITU+0.045MONITUh ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLND'; 
fOLND(i)=fOLND(i)-1; fOLND(i)=fOLND(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITS(i)=fMONITS(i)+0.595; fMONITSh(i)=fMONITSh(i)+0.105; fMONITU(i)=fMONITU(i)+0.255; fMONITUh(i)=fMONITUh(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_361a>; <BAPI_166a>
Rnames{i} = 'OLND+OLNDQ=NO2+NOQ+0.504 HCHO+1.21 ALD+0.285 KET+0.2975MONITS+0.2975MONITSQ+0.0525MONITSh+0.0525MONITShQ+0.1275MONITU+0.1275MONITUQ+0.0225MONITUh+0.0225MONITUhQ ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLNDQ'; 
fOLND(i)=fOLND(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fNO2(i)=fNO2(i)+(4/6); fNOQ(i)=fNOQ(i)+(1/3); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITS(i)=fMONITS(i)+0.2975; fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITU(i)=fMONITU(i)+0.1275; fMONITUQ(i)=fMONITUQ(i)+0.1275; fMONITUh(i)=fMONITUh(i)+0.0225; fMONITUhQ(i)=fMONITUhQ(i)+0.0225;


%O3 Tracer
i=i+1; %<RACM2_361b>; <BAPI_166b>
Rnames{i} = 'OLND+OLNDQ2=NO2+NOQ+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.2975MONITS+0.2975MONITSQ2+0.0525MONITSh+0.0525MONITShQ2+0.1275MONITU+0.1275MONITUQ2+0.0225MONITUh+0.0225MONITUhQ2 ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLNDQ2'; 
fOLND(i)=fOLND(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fNO2(i)=fNO2(i)+(1/2); fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285;  fMONITS(i)=fMONITS(i)+0.2975; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITU(i)=fMONITU(i)+0.1275; fMONITUQ2(i)=fMONITUQ2(i)+0.1275; fMONITUh(i)=fMONITUh(i)+0.0225; fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_361c>; <BAPI_166c>
Rnames{i} = 'OLND+OLNDQ3=NO2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.2975MONITS+0.2975MONITSQ3+0.0525MONITSh+0.0525MONITShQ3+0.1275MONITU+0.1275MONITUQ3+0.0225MONITUh+0.0225MONITUhQ3 ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLNDQ3'; 
fOLND(i)=fOLND(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNO2(i)=fNO2(i)+(1/2); fNQ2(i)=fNQ2(i)+(1/2); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITS(i)=fMONITS(i)+0.2975; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITSh(i)=fMONITSh(i)+0.0525; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITU(i)=fMONITU(i)+0.1275; fMONITUQ3(i)=fMONITUQ3(i)+0.1275; fMONITUh(i)=fMONITUh(i)+0.0225; fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_361d>; <BAPI_166d>
Rnames{i} = 'OLNDQ+OLNDQ=NO2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.595MONITSQ+0.105MONITShQ+0.255MONITUQ+0.045MONITUhQ ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'OLNDQ'; 
fOLNDQ(i)=fOLNDQ(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285;  fMONITSQ(i)=fMONITSQ(i)+0.595; fMONITShQ(i)=fMONITShQ(i)+0.105; fMONITUQ(i)=fMONITUQ(i)+0.255; fMONITUhQ(i)=fMONITUhQ(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_361e>; <BAPI_166e>
Rnames{i} = 'OLNDQ+OLNDQ2=NO2+NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.2975MONITSQ+0.2975MONITSQ2+0.0525MONITShQ+0.0525MONITShQ2+0.1275MONITUQ+0.1275MONITUQ2+0.0225MONITUhQ+0.0225MONITUhQ2 ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'OLNDQ2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(4/6); fNQ2(i)=fNQ2(i)+(1/6); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITUQ(i)=fMONITUQ(i)+0.1275; fMONITUQ2(i)=fMONITUQ2(i)+0.1275; fMONITUhQ(i)=fMONITUhQ(i)+0.0225; fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_361f>; <BAPI_166f>
Rnames{i} = 'OLNDQ+OLNDQ3=NO2+NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.2975MONITSQ+0.2975MONITSQ3+0.0525MONITShQ+0.0525MONITShQ3+0.1275MONITUQ+0.1275MONITUQ3+0.0225MONITUhQ+0.0225MONITUhQ3';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'OLNDQ3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); fNQ2(i)=fNQ2(i)+(1/2); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITSQ(i)=fMONITSQ(i)+0.2975; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITShQ(i)=fMONITShQ(i)+0.0525; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITUQ(i)=fMONITUQ(i)+0.1275; fMONITUQ3(i)=fMONITUQ3(i)+0.1275; fMONITUhQ(i)=fMONITUhQ(i)+0.0225; fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_361g>; <BAPI_166g>
Rnames{i} = 'OLNDQ2+OLNDQ2=NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.595MONITSQ2+0.105MONITShQ2+0.255MONITUQ2+0.045MONITUhQ2 ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'OLNDQ2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITSQ2(i)=fMONITSQ2(i)+0.595; fMONITShQ2(i)=fMONITShQ2(i)+0.105; fMONITUQ2(i)=fMONITUQ2(i)+0.255; fMONITUhQ2(i)=fMONITUhQ2(i)+0.045;

%O3 Tracer
i=i+1; %<RACM2_361h>; <BAPI_166h>
Rnames{i} = 'OLNDQ2+OLNDQ3=NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.2975MONITSQ2+0.2975MONITSQ3+0.0525MONITShQ2+0.0525MONITShQ3+0.1275MONITUQ2+0.1275MONITUQ3+0.0225MONITUhQ2+0.0225MONITUhQ3';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'OLNDQ3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNOQ(i)=fNOQ(i)+(2/6); fNQ2(i)=fNQ2(i)+(4/6); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITSQ2(i)=fMONITSQ2(i)+0.2975; fMONITSQ3(i)=fMONITSQ3(i)+0.2975; fMONITShQ2(i)=fMONITShQ2(i)+0.0525; fMONITShQ3(i)=fMONITShQ3(i)+0.0525; fMONITUQ2(i)=fMONITUQ2(i)+0.1275; fMONITUQ3(i)=fMONITUQ3(i)+0.1275; fMONITUhQ2(i)=fMONITUhQ2(i)+0.0225; fMONITUhQ3(i)=fMONITUhQ3(i)+0.0225;

%O3 Tracer
i=i+1; %<RACM2_361i>; <BAPI_166i>
Rnames{i} = 'OLNDQ3+OLNDQ3=NQ2+0.504 HCHO+1.21 ALD+0.285 KET+0.595MONITSQ3+0.105MONITShQ3+0.255MONITUQ3+0.045MONITUhQ3 ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'OLNDQ3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285;fMONITSQ3(i)=fMONITSQ3(i)+0.595; fMONITShQ3(i)=fMONITShQ3(i)+0.105; fMONITUQ3(i)=fMONITUQ3(i)+0.255; fMONITUhQ3(i)=fMONITUhQ3(i)+0.045;




%%Operator Radical + Operator Radical
i=i+1; %<RACM2_362>; <BAPI_167>
Rnames{i} = 'XO2+XO2=';
k(:,i) = 7.13E-17.*exp(2950./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'XO2'; 
fXO2(i)=fXO2(i)-1; fXO2(i)=fXO2(i)-1; 


%Operator Radical + RCO3 Radical
i=i+1; %<RACM2_363>; <BAPI_168>
Rnames{i} = 'XO2+RCO3=ETHP +CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'RCO3'; 
fXO2(i)=fXO2(i)-1; fRCO3(i)=fRCO3(i)-1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; 


%%%ONIT Expansion
i=i+1; %<BAPI_169>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITS+OH=HONIT';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITS';  Gstr{i,2} = 'OH'; 
fMONITS(i)=fMONITS(i)-1; fOH(i)=fOH(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ+OH=HONITQ';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSQ';  Gstr{i,2} = 'OH'; 
fMONITSQ(i)=fMONITSQ(i)-1; fOH(i)=fOH(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ2+OH=HONITQ2';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSQ2';  Gstr{i,2} = 'OH'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fOH(i)=fOH(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ3+OH=HONITQ3';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSQ3';  Gstr{i,2} = 'OH'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fOH(i)=fOH(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITS+QH=HONIT';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITS';  Gstr{i,2} = 'QH'; 
fMONITS(i)=fMONITS(i)-1; fQH(i)=fQH(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ+QH=HONITQ';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSQ';  Gstr{i,2} = 'QH'; 
fMONITSQ(i)=fMONITSQ(i)-1; fQH(i)=fQH(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ2+QH=HONITQ2';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSQ2';  Gstr{i,2} = 'QH'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fQH(i)=fQH(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_169g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ3+QH=HONITQ3';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSQ3';  Gstr{i,2} = 'QH'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fQH(i)=fQH(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;


i=i+1; %<BAPI_170>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSh+OH=HONITh';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSh';  Gstr{i,2} = 'OH'; 
fMONITSh(i)=fMONITSh(i)-1; fOH(i)=fOH(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ+OH=HONIThQ';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITShQ';  Gstr{i,2} = 'OH'; 
fMONITShQ(i)=fMONITShQ(i)-1; fOH(i)=fOH(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ2+OH=HONIThQ2';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITShQ2';  Gstr{i,2} = 'OH'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fOH(i)=fOH(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ3+OH=HONIThQ3';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITShQ3';  Gstr{i,2} = 'OH'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fOH(i)=fOH(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSh+QH=HONITh';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSh';  Gstr{i,2} = 'QH'; 
fMONITSh(i)=fMONITSh(i)-1; fQH(i)=fQH(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ+QH=HONIThQ';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITShQ';  Gstr{i,2} = 'QH'; 
fMONITShQ(i)=fMONITShQ(i)-1; fQH(i)=fQH(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ2+QH=HONIThQ2';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITShQ2';  Gstr{i,2} = 'QH'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fQH(i)=fQH(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_170g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ3+QH=HONIThQ3';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITShQ3';  Gstr{i,2} = 'QH'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fQH(i)=fQH(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;


i=i+1; %<BAPI_171>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+OH=HONIT';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'OH'; 
fMONITU(i)=fMONITU(i)-1; fOH(i)=fOH(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+OH=HONITQ';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'OH'; 
fMONITUQ(i)=fMONITUQ(i)-1; fOH(i)=fOH(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+OH=HONITQ2';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'OH'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fOH(i)=fOH(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+OH=HONITQ3';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'OH'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fOH(i)=fOH(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+QH=HONIT';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'QH'; 
fMONITU(i)=fMONITU(i)-1; fQH(i)=fQH(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+QH=HONITQ';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'QH'; 
fMONITUQ(i)=fMONITUQ(i)-1; fQH(i)=fQH(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+QH=HONITQ2';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'QH'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fQH(i)=fQH(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_171g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+QH=HONITQ3';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'QH'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fQH(i)=fQH(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;




i=i+1; %<BAPI_172>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+OH=HONITh';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'OH'; 
fMONITUh(i)=fMONITUh(i)-1; fOH(i)=fOH(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+OH=HONIThQ';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'OH'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fOH(i)=fOH(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+OH=HONIThQ2';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'OH'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fOH(i)=fOH(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+OH=HONIThQ3';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'OH'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fOH(i)=fOH(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+QH=HONITh';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'QH'; 
fMONITUh(i)=fMONITUh(i)-1; fQH(i)=fQH(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+QH=HONIThQ';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'QH'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fQH(i)=fQH(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+QH=HONIThQ2';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'QH'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fQH(i)=fQH(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_172g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+QH=HONIThQ3';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'QH'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fQH(i)=fQH(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;


i=i+1; %<BAPI_173>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+O3=HONIT';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'O3'; 
fMONITU(i)=fMONITU(i)-1; fO3(i)=fO3(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_173a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+O3=HONITQ';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'O3'; 
fMONITUQ(i)=fMONITUQ(i)-1; fO3(i)=fO3(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_173b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+O3=HONITQ2';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'O3'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fO3(i)=fO3(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_173c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+O3=HONITQ3';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'O3'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fO3(i)=fO3(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;


i=i+1; %<BAPI_174>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+O3=HONITh';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'O3'; 
fMONITUh(i)=fMONITUh(i)-1; fO3(i)=fO3(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_174a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+O3=HONIThQ';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'O3'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fO3(i)=fO3(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_174b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+O3=HONIThQ2';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'O3'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fO3(i)=fO3(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_174c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+O3=HONIThQ3';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'O3'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fO3(i)=fO3(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;



i=i+1; %<BAPI_175>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+NO3=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'NO3'; 
fMONITU(i)=fMONITU(i)-1; fNO3(i)=fNO3(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+NO3=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'NO3'; 
fMONITUQ(i)=fMONITUQ(i)-1; fNO3(i)=fNO3(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+NO3=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'NO3'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fNO3(i)=fNO3(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+NO3=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'NO3'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fNO3(i)=fNO3(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+NO2Q=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'NO2Q'; 
fMONITU(i)=fMONITU(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+NO2Q=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'NO2Q'; 
fMONITUQ(i)=fMONITUQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+NO2Q=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'NO2Q'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+NO2Q=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'NO2Q'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175h>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+NOQ2=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'NOQ2'; 
fMONITU(i)=fMONITU(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175i>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+NOQ2=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'NOQ2'; 
fMONITUQ(i)=fMONITUQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175j>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+NOQ2=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'NOQ2'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175k>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+NOQ2=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'NOQ2'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175l>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITU+NQ3=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITU';  Gstr{i,2} = 'NQ3'; 
fMONITU(i)=fMONITU(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175m>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ+NQ3=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ';  Gstr{i,2} = 'NQ3'; 
fMONITUQ(i)=fMONITUQ(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175n>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ2+NQ3=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ2';  Gstr{i,2} = 'NQ3'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_175o>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUQ3+NQ3=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUQ3';  Gstr{i,2} = 'NQ3'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;


i=i+1; %<BAPI_176>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+NO3=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'NO3'; 
fMONITUh(i)=fMONITUh(i)-1; fNO3(i)=fNO3(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+NO3=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'NO3'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fNO3(i)=fNO3(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+NO3=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'NO3'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fNO3(i)=fNO3(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+NO3=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'NO3'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fNO3(i)=fNO3(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+NO2Q=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'NO2Q'; 
fMONITUh(i)=fMONITUh(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+NO2Q=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'NO2Q'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+NO2Q=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'NO2Q'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+NO2Q=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'NO2Q'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176h>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+NOQ2=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'NOQ2'; 
fMONITUh(i)=fMONITUh(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176i>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+NOQ2=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'NOQ2'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176j>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+NOQ2=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'NOQ2'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176k>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+NOQ2=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'NOQ2'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176l>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUh+NQ3=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUh';  Gstr{i,2} = 'NQ3'; 
fMONITUh(i)=fMONITUh(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176m>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ+NQ3=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ';  Gstr{i,2} = 'NQ3'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176n>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ2+NQ3=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ2';  Gstr{i,2} = 'NQ3'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_176o>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUhQ3+NQ3=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUhQ3';  Gstr{i,2} = 'NQ3'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

i=i+1; %<BAPI_177>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITS+NO3=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITS';  Gstr{i,2} = 'NO3'; 
fMONITS(i)=fMONITS(i)-1; fNO3(i)=fNO3(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ+NO3=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ';  Gstr{i,2} = 'NO3'; 
fMONITSQ(i)=fMONITSQ(i)-1; fNO3(i)=fNO3(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ2+NO3=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ2';  Gstr{i,2} = 'NO3'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fNO3(i)=fNO3(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ3+NO3=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ3';  Gstr{i,2} = 'NO3'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fNO3(i)=fNO3(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITS+NO2Q=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITS';  Gstr{i,2} = 'NO2Q'; 
fMONITS(i)=fMONITS(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ+NO2Q=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ';  Gstr{i,2} = 'NO2Q'; 
fMONITSQ(i)=fMONITSQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ2+NO2Q=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ2';  Gstr{i,2} = 'NO2Q'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ3+NO2Q=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ3';  Gstr{i,2} = 'NO2Q'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177h>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITS+NOQ2=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITS';  Gstr{i,2} = 'NOQ2'; 
fMONITS(i)=fMONITS(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177i>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ+NOQ2=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ';  Gstr{i,2} = 'NOQ2'; 
fMONITSQ(i)=fMONITSQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177j>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ2+NOQ2=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ2';  Gstr{i,2} = 'NOQ2'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177k>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ3+NOQ2=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ3';  Gstr{i,2} = 'NOQ2'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177l>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITS+NQ3=HONIT';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITS';  Gstr{i,2} = 'NQ3'; 
fMONITS(i)=fMONITS(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIT(i)=fHONIT(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177m>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ+NQ3=HONITQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ';  Gstr{i,2} = 'NQ3'; 
fMONITSQ(i)=fMONITSQ(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITQ(i)=fHONITQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177n>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ2+NQ3=HONITQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ2';  Gstr{i,2} = 'NQ3'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITQ2(i)=fHONITQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_177o>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSQ3+NQ3=HONITQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSQ3';  Gstr{i,2} = 'NQ3'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITQ3(i)=fHONITQ3(i)+1;


i=i+1; %<BAPI_178>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSh+NO3=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSh';  Gstr{i,2} = 'NO3'; 
fMONITSh(i)=fMONITSh(i)-1; fNO3(i)=fNO3(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178a>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ+NO3=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ';  Gstr{i,2} = 'NO3'; 
fMONITShQ(i)=fMONITShQ(i)-1; fNO3(i)=fNO3(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178b>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ2+NO3=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ2';  Gstr{i,2} = 'NO3'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fNO3(i)=fNO3(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178c>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ3+NO3=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ3';  Gstr{i,2} = 'NO3'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fNO3(i)=fNO3(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178d>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSh+NO2Q=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSh';  Gstr{i,2} = 'NO2Q'; 
fMONITSh(i)=fMONITSh(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178e>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ+NO2Q=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ';  Gstr{i,2} = 'NO2Q'; 
fMONITShQ(i)=fMONITShQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178f>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ2+NO2Q=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ2';  Gstr{i,2} = 'NO2Q'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178g>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ3+NO2Q=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ3';  Gstr{i,2} = 'NO2Q'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178h>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSh+NOQ2=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSh';  Gstr{i,2} = 'NOQ2'; 
fMONITSh(i)=fMONITSh(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178i>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ+NOQ2=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ';  Gstr{i,2} = 'NOQ2'; 
fMONITShQ(i)=fMONITShQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178j>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ2+NOQ2=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ2';  Gstr{i,2} = 'NOQ2'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178k>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ3+NOQ2=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ3';  Gstr{i,2} = 'NOQ2'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178l>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSh+NQ3=HONITh';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSh';  Gstr{i,2} = 'NQ3'; 
fMONITSh(i)=fMONITSh(i)-1; fNQ3(i)=fNQ3(i)-1; fHONITh(i)=fHONITh(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178m>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ+NQ3=HONIThQ';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ';  Gstr{i,2} = 'NQ3'; 
fMONITShQ(i)=fMONITShQ(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIThQ(i)=fHONIThQ(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178n>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ2+NQ3=HONIThQ2';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ2';  Gstr{i,2} = 'NQ3'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIThQ2(i)=fHONIThQ2(i)+1;

%O3 Tracer
i=i+1; %<BAPI_178o>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITShQ3+NQ3=HONIThQ3';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITShQ3';  Gstr{i,2} = 'NQ3'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fHONIThQ3(i)=fHONIThQ3(i)+1;


i=i+1; %<BAPI_179>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIT+OH=NO3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIT';  Gstr{i,2} = 'OH'; 
fHONIT(i)=fHONIT(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179a>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITQ+OH=NO2Q+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITQ';  Gstr{i,2} = 'OH'; 
fHONITQ(i)=fHONITQ(i)-1; fOH(i)=fOH(i)-1; fNO2Q(i)=fNO2Q(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179b>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITQ2+OH=NOQ2+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITQ2';  Gstr{i,2} = 'OH'; 
fHONITQ2(i)=fHONITQ2(i)-1; fOH(i)=fOH(i)-1; fNOQ2(i)=fNOQ2(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179c>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITQ3+OH=NQ3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITQ3';  Gstr{i,2} = 'OH'; 
fHONITQ3(i)=fHONITQ3(i)-1; fOH(i)=fOH(i)-1; fNQ3(i)=fNQ3(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179d>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIT+QH=NO3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIT';  Gstr{i,2} = 'QH'; 
fHONIT(i)=fHONIT(i)-1; fQH(i)=fQH(i)-1; fNO3(i)=fNO3(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179e>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITQ+QH=NO2Q+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITQ';  Gstr{i,2} = 'QH'; 
fHONITQ(i)=fHONITQ(i)-1; fQH(i)=fQH(i)-1; fNO2Q(i)=fNO2Q(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179f>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITQ2+QH=NOQ2+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITQ2';  Gstr{i,2} = 'QH'; 
fHONITQ2(i)=fHONITQ2(i)-1; fQH(i)=fQH(i)-1; fNOQ2(i)=fNOQ2(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_179g>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITQ3+QH=NQ3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITQ3';  Gstr{i,2} = 'QH'; 
fHONITQ3(i)=fHONITQ3(i)-1; fQH(i)=fQH(i)-1; fNQ3(i)=fNQ3(i)+1; fHKET(i)=fHKET(i)+1;

i=i+1; %<BAPI_180>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITh+OH=NO3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITh';  Gstr{i,2} = 'OH'; 
fHONITh(i)=fHONITh(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180a>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIThQ+OH=NO2Q+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIThQ';  Gstr{i,2} = 'OH'; 
fHONIThQ(i)=fHONIThQ(i)-1; fOH(i)=fOH(i)-1; fNO2Q(i)=fNO2Q(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180b>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIThQ2+OH=NOQ2+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIThQ2';  Gstr{i,2} = 'OH'; 
fHONIThQ2(i)=fHONIThQ2(i)-1; fOH(i)=fOH(i)-1; fNOQ2(i)=fNOQ2(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180c>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIThQ3+OH=NQ3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIThQ3';  Gstr{i,2} = 'OH'; 
fHONIThQ3(i)=fHONIThQ3(i)-1; fOH(i)=fOH(i)-1; fNQ3(i)=fNQ3(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180d>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITh+QH=NO3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITh';  Gstr{i,2} = 'QH'; 
fHONITh(i)=fHONITh(i)-1; fQH(i)=fQH(i)-1; fNO3(i)=fNO3(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180e>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIThQ+QH=NO2Q+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIThQ';  Gstr{i,2} = 'QH'; 
fHONIThQ(i)=fHONIThQ(i)-1; fQH(i)=fQH(i)-1; fNO2Q(i)=fNO2Q(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180f>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIThQ2+QH=NOQ2+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIThQ2';  Gstr{i,2} = 'QH'; 
fHONIThQ2(i)=fHONIThQ2(i)-1; fQH(i)=fQH(i)-1; fNOQ2(i)=fNOQ2(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_180g>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONIThQ3+QH=NQ3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIThQ3';  Gstr{i,2} = 'QH'; 
fHONIThQ3(i)=fHONIThQ3(i)-1; fQH(i)=fQH(i)-1; fNQ3(i)=fNQ3(i)+1; fHKET(i)=fHKET(i)+1;


i=i+1; %<BAPI_181>; 
Rnames{i} = 'MONITS=NO2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITS'; 
fMONITS(i)=fMONITS(i)-1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_181a>; 
Rnames{i} = 'MONITSQ=(2/3)*NOQ+(1/3)*NO2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITSQ'; 
fMONITSQ(i)=fMONITSQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fKET(i)=fKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_181b>;
Rnames{i} = 'MONITSQ2=(2/3)*NOQ+(1/3)*NQ2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITSQ2'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fKET(i)=fKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_181c>;
Rnames{i} = 'MONITSQ3=NQ2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITSQ3'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fKET(i)=fKET(i)+1;



i=i+1; %<BAPI_182>; 
Rnames{i} = 'MONITSh=NO2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITSh'; 
fMONITSh(i)=fMONITSh(i)-1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_182a>; 
Rnames{i} = 'MONITShQ=(2/3)*NOQ+(1/3)*NO2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITShQ'; 
fMONITShQ(i)=fMONITShQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fKET(i)=fKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_182b>;
Rnames{i} = 'MONITShQ2=(2/3)*NOQ+(1/3)*NQ2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITShQ2'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fKET(i)=fKET(i)+1;

%O3 Tracer
i=i+1; %<BAPI_182c>;
Rnames{i} = 'MONITShQ3=NQ2+KET';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITShQ3'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fKET(i)=fKET(i)+1;

i=i+1; %<BAPI_183>; 
Rnames{i} = 'MONITU=NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITU'; 
fMONITU(i)=fMONITU(i)-1; fNO2(i)=fNO2(i)+1; fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_183a>; 
Rnames{i} = 'MONITUQ=(2/3)*NOQ+(1/3)*NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUQ'; 
fMONITUQ(i)=fMONITUQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_183b>;
Rnames{i} = 'MONITUQ2=(2/3)*NOQ+(1/3)*NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUQ2'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_183c>;
Rnames{i} = 'MONITUQ3=NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUQ3'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fALD(i)=fALD(i)+1;



i=i+1; %<BAPI_184>; 
Rnames{i} = 'MONITUh=NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUh'; 
fMONITUh(i)=fMONITUh(i)-1; fNO2(i)=fNO2(i)+1; fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_184a>; 
Rnames{i} = 'MONITUhQ=(2/3)*NOQ+(1/3)*NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUhQ'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_184b>;
Rnames{i} = 'MONITUhQ2=(2/3)*NOQ+(1/3)*NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUhQ2'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_184c>;
Rnames{i} = 'MONITUhQ3=NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'MONITUhQ3'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fALD(i)=fALD(i)+1;


i=i+1; %<BAPI_185>; 
Rnames{i} = 'HONIT=NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONIT'; 
fHONIT(i)=fHONIT(i)-1; fNO2(i)=fNO2(i)+1; fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_185a>; 
Rnames{i} = 'HONITQ=(2/3)*NOQ+(1/3)*NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONITQ'; 
fHONITQ(i)=fHONITQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_185b>;
Rnames{i} = 'HONITQ2=(2/3)*NOQ+(1/3)*NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONITQ2'; 
fHONITQ2(i)=fHONITQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_185c>;
Rnames{i} = 'HONITQ3=NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONITQ3'; 
fHONITQ3(i)=fHONITQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fALD(i)=fALD(i)+1;

i=i+1; %<BAPI_186>; 
Rnames{i} = 'HONITh=NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONITh'; 
fHONITh(i)=fHONITh(i)-1; fNO2(i)=fNO2(i)+1; fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_186a>; 
Rnames{i} = 'HONIThQ=(2/3)*NOQ+(1/3)*NO2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONIThQ'; 
fHONIThQ(i)=fHONIThQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_186b>;
Rnames{i} = 'HONIThQ2=(2/3)*NOQ+(1/3)*NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONIThQ2'; 
fHONIThQ2(i)=fHONIThQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fALD(i)=fALD(i)+1;

%O3 Tracer
i=i+1; %<BAPI_186c>;
Rnames{i} = 'HONIThQ3=NQ2+ALD';
k(:,i) = JONIT;
Gstr{i,1} = 'HONIThQ3'; 
fHONIThQ3(i)=fHONIThQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fALD(i)=fALD(i)+1;


%%ONIT Hydrolysis; Assumes 3 hr lifetime
i=i+1; %<ONIT_Hydrolysis_01>
Rnames{i} = 'MONITSh=HNO3+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITSh'; 
fMONITSh(i)=fMONITSh(i)-1; fHNO3(i)=fHNO3(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_01a>
Rnames{i} = 'MONITShQ=HNO2Q+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITShQ'; 
fMONITShQ(i)=fMONITShQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_01b>
Rnames{i} = 'MONITShQ2=HNOQ2+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITShQ2'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_01c>
Rnames{i} = 'MONITShQ3=HNQ3+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITShQ3'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fROH(i)=fROH(i)+1;



i=i+1; %<ONIT_Hydrolysis_02>
Rnames{i} = 'MONITUh=HNO3+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITUh'; 
fMONITUh(i)=fMONITUh(i)-1; fHNO3(i)=fHNO3(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_02a>
Rnames{i} = 'MONITUhQ=HNO2Q+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITUhQ'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_02b>
Rnames{i} = 'MONITUhQ2=HNOQ2+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITUhQ2'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_02c>
Rnames{i} = 'MONITUhQ3=HNQ3+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'MONITUhQ3'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fROH(i)=fROH(i)+1;




i=i+1; %<ONIT_Hydrolysis_03>
Rnames{i} = 'HONITh=HNO3+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'HONITh'; 
fHONITh(i)=fHONITh(i)-1; fHNO3(i)=fHNO3(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_03a>
Rnames{i} = 'HONIThQ=HNO2Q+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'HONIThQ'; 
fHONIThQ(i)=fHONIThQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fROH(i)=fROH(i)+1;


%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_03b>
Rnames{i} = 'HONIThQ2=HNOQ2+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'HONIThQ2'; 
fHONIThQ2(i)=fHONIThQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fROH(i)=fROH(i)+1;

%O3 Tracer
i=i+1; %<ONIT_Hydrolysis_03c>
Rnames{i} = 'HONIThQ3=HNQ3+ROH';
k(:,i) = 9.26E-5;
Gstr{i,1} = 'HONIThQ3'; 
fHONIThQ3(i)=fHONIThQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fROH(i)=fROH(i)+1;


%%Wall Loss
i=i+1; %<Wall_01>
Rnames{i} = 'O3=';
k(:,i) = 2.19E-6;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; 

i=i+1; %<Wall_02>
Rnames{i} = 'NO=';
k(:,i) = 2.34E-6;
Gstr{i,1} = 'NO'; 
fNO(i)=fNO(i)-1; 

i=i+1; %<Wall_02a>
Rnames{i} = 'NQ=';
k(:,i) = 2.34E-6;
Gstr{i,1} = 'NQ'; 
fNQ(i)=fNQ(i)-1; 

i=i+1; %<Wall_03>
Rnames{i} = 'NO2=0.5HONO + wHNO3';
k(:,i) = 2.31E-6;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fHONO(i)=fHONO(i)+0.5; fwHNO3(i)=fwHNO3(i)+0.5;

i=i+1; %<Wall_03a>
Rnames{i} = 'NOQ=0.5HONQ + wHNO2Q';
k(:,i) = 2.31E-6;
Gstr{i,1} = 'NOQ'; 
fNOQ(i)=fNOQ(i)-1; fHONQ(i)=fHONQ(i)+0.5; fwHNO2Q(i)=fwHNO2Q(i)+0.5;

i=i+1; %<Wall_03b>
Rnames{i} = 'NQ2=0.5HQNQ + wHNOQ2';
k(:,i) = 2.31E-6;
Gstr{i,1} = 'NQ2'; 
fNQ2(i)=fNQ2(i)-1; fHQNQ(i)=fHQNQ(i)+0.5; fwHNOQ2(i)=fwHNOQ2(i)+0.5;

i=i+1; %<Wall_04>
Rnames{i} = 'HNO3=wHNO3';
k(:,i) = 1E-5;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fwHNO3(i)=fwHNO3(i)+1;

i=i+1; %<Wall_04a>
Rnames{i} = 'HNO2Q=wHNO2Q';
k(:,i) = 1E-5;
Gstr{i,1} = 'HNO2Q'; 
fHNO2Q(i)=fHNO2Q(i)-1; fwHNO2Q(i)=fwHNO2Q(i)+1;

i=i+1; %<Wall_04b>
Rnames{i} = 'HNOQ2=wHNOQ2';
k(:,i) = 1E-5;
Gstr{i,1} = 'HNOQ2'; 
fHNOQ2(i)=fHNOQ2(i)-1; fwHNOQ2(i)=fwHNOQ2(i)+1;

i=i+1; %<Wall_04c>
Rnames{i} = 'HNQ3=wHNQ3';
k(:,i) = 1E-5;
Gstr{i,1} = 'HNQ3'; 
fHNQ3(i)=fHNQ3(i)-1; fwHNQ3(i)=fwHNQ3(i)+1;


i=i+1; %<Wall_05>
Rnames{i} = 'wHNO3=OH+NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'wHNO3'; 
fwHNO3(i)=fwHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %<Wall_05a>
Rnames{i} = 'wHNO2Q = (2/3)*NOQ + (1/3)*NO2 + (2/3)*OH + (1/3)*QH';
k(:,i) = JHNO3;
Gstr{i,1} = 'wHNO2Q'; 
fwHNO2Q(i)=fwHNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fOH(i)=fOH(i)+(2/3); fQH(i)=fQH(i)+(1/3); 

i=i+1; %<Wall_05b>
Rnames{i} = 'wHNOQ2=(2/3)*NOQ + (1/3)*NQ2 + (2/3)*QH + (1/3)OH';
k(:,i) = JHNO3;
Gstr{i,1} = 'wHNOQ2'; 
fwHNOQ2(i)=fwHNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fQH(i)=fQH(i)+(2/3); fOH(i)=fOH(i)+(1/3); 

i=i+1; %<Wall_05c>
Rnames{i} = 'wHNQ3= NQ2 + QH';
k(:,i) = JHNO3;
Gstr{i,1} = 'wHNQ3'; 
fwHNQ3(i)=fwHNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fQH(i)=fQH(i)+1;  



i=i+1; %<Wall_06>
Rnames{i} = 'N2O5+H2O=wHNO3+wHNO3';
k(:,i) = 1.0E-20*H2O;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fwHNO3(i)=fwHNO3(i)+1;  fwHNO3(i)=fwHNO3(i)+1; 

%O3 Tracer
i=i+1; %<Wall_06a>
Rnames{i} = 'N2O4Q +H2O = (2/5)*wHNO2Q + (2/5)*wHNO3 + (3/5)*wHNO3 + (3/5)*wHNO2Q ';
k(:,i) = 1.0E-20*H2O;
Gstr{i,1} = 'N2O4Q'; 
fN2O4Q(i)=fN2O4Q(i)-1; fwHNO2Q(i)=fwHNO2Q(i)+(2/5); fwHNO3(i)=fwHNO3(i)+(2/5);
wHNO3(i)=fwHNO3(i)+(3/5); fwHNO2Q(i)=fwHNO2Q(i)+(3/5); 

%O3 Tracer
i=i+1; %<Wall_06b>
Rnames{i} = 'N2O3Q2 +H2O =  0.3*wHNO3 + 0.6*wHNO2Q + 0.1*wHNOQ2 + 0.1wHNO3 + 0.6*wHNO2Q + 0.3*wHNOQ2';
k(:,i) = 1.0E-20*H2O;
Gstr{i,1} = 'N2O3Q2'; 
fN2O3Q2(i)=fN2O3Q2(i)-1; fwHNO3(i)=fwHNO3(i)+0.3; fwHNO2Q(i)=fwHNO2Q(i)+0.6; 
fwHNOQ2(i)=fwHNOQ2(i)+0.1; fwHNO3(i)=fwHNO3(i)+0.1; fwHNO2Q(i)=fwHNO2Q(i)+0.6; fwHNOQ2(i)=fwHNOQ2(i)+0.3;


%O3 Tracer
i=i+1; %<Wall_06c>
Rnames{i} = 'N2O2Q3 +H2O = 0.1*wHNO3 + 0.6*wHNO2Q + 0.3*wHNOQ2 + 0.3*wHNO2Q + 0.6*wHNOQ2 + 0.1*wHNQ3';
k(:,i) = 1.0E-20*H2O;
Gstr{i,1} = 'N2O2Q3'; 
fN2O2Q3(i)=fN2O2Q3(i)-1; fwHNO3(i)=fwHNO3(i)+0.1;  fwHNO2Q(i)=fwHNO2Q(i)+0.6; fwHNOQ2(i)=fwHNOQ2(i)+0.3; 
fwHNO2Q(i)=fwHNO2Q(i)+0.3; fwHNOQ2(i)=fwHNOQ2(i)+0.6;  fwHNQ3(i)=fwHNQ3(i)+0.1;  

%O3 Tracer
i=i+1; %<Wall_06d>
Rnames{i} = 'N2O4Q +H2O = 0.4*wHNO2Q + 0.6*wHNOQ2 + 0.6*wHNOQ2 + 0.4*wHNQ3';
k(:,i) = 1.0E-20*H2O;
Gstr{i,1} = 'N2OQ4'; 
fN2OQ4(i)=fN2OQ4(i)-1; fwHNO2Q(i)=fwHNO2Q(i)+0.4; fwHNOQ2(i)=fwHNOQ2(i)+0.6; fwHNOQ2(i)=fwHNOQ2(i)+0.6;
fwHNQ3(i)=fwHNQ3(i)+0.4; 

%O3 Tracer
i=i+1; %<Wall_06e>
Rnames{i} = 'N2Q5 +H2O = wHNQ3 + wHNOQ2';
k(:,i) = 1.0E-20*H2O;
Gstr{i,1} = 'N2Q5'; 
fN2Q5(i)=fN2Q5(i)-1; fwHNQ3(i)=fwHNQ3(i)+1; fwHNOQ2(i)=fwHNOQ2(i)+1;

i=i+1; %<Wall_07>
Rnames{i} = 'N2O5 =wHNO3+wHNO3';
k(:,i) = 1.0E-5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fwHNO3(i)=fwHNO3(i)+1;  fwHNO3(i)=fwHNO3(i)+1; 

%O3 Tracer
i=i+1; %<Wall_07a>
Rnames{i} = 'N2O4Q = (2/5)*wHNO2Q + (2/5)*wHNO3 + (3/5)*wHNO3 + (3/5)*wHNO2Q ';
k(:,i) = 1.0E-5;
Gstr{i,1} = 'N2O4Q'; 
fN2O4Q(i)=fN2O4Q(i)-1; fwHNO2Q(i)=fwHNO2Q(i)+(2/5); fwHNO3(i)=fwHNO3(i)+(2/5); fwHNO3(i)=fwHNO3(i)+(3/5); fwHNO2Q(i)=fwHNO2Q(i)+(3/5); 

%O3 Tracer
i=i+1; %<Wall_07b>
Rnames{i} = 'N2O3Q2  =  0.3*wHNO3 + 0.6*wHNO2Q + 0.1*wHNOQ2 + 0.1wHNO3 + 0.6*wHNO2Q + 0.3*wHNOQ2';
k(:,i) = 1.0E-5;
Gstr{i,1} = 'N2O3Q2'; 
fN2O3Q2(i)=fN2O3Q2(i)-1; fwHNO3(i)=fwHNO3(i)+0.3; fwHNO2Q(i)=fwHNO2Q(i)+0.6; 
fwHNOQ2(i)=fwHNOQ2(i)+0.1; fwHNO3(i)=fwHNO3(i)+0.1; fwHNO2Q(i)=fwHNO2Q(i)+0.6; fwHNOQ2(i)=fwHNOQ2(i)+0.3;


%O3 Tracer
i=i+1; %<Wall_07c>
Rnames{i} = 'N2O2Q3 = 0.1*wHNO3 + 0.6*wHNO2Q + 0.3*wHNOQ2 + 0.3*wHNO2Q + 0.6*wHNOQ2 + 0.1*wHNQ3';
k(:,i) = 1.0E-5;
Gstr{i,1} = 'N2O2Q3'; 
fN2O2Q3(i)=fN2O2Q3(i)-1; fwHNO3(i)=fwHNO3(i)+0.1;  fwHNO2Q(i)=fwHNO2Q(i)+0.6; fwHNOQ2(i)=fwHNOQ2(i)+0.3; fwHNO2Q(i)=fwHNO2Q(i)+0.3; 
fwHNOQ2(i)=fwHNOQ2(i)+0.6;  fwHNQ3(i)=fwHNQ3(i)+0.1;  

%O3 Tracer
i=i+1; %<Wall_07d>
Rnames{i} = 'N2O4Q = 0.4*wHNO2Q + 0.6*wHNOQ2 + 0.6*wHNOQ2 + 0.4*wHNQ3';
k(:,i) = 1.0E-5;
Gstr{i,1} = 'N2OQ4'; 
fN2OQ4(i)=fN2OQ4(i)-1; fwHNO2Q(i)=fwHNO2Q(i)+0.4; fwHNOQ2(i)=fwHNOQ2(i)+0.6; fwHNOQ2(i)=fwHNOQ2(i)+0.6;
fwHNQ3(i)=fwHNQ3(i)+0.4; 

%O3 Tracer
i=i+1; %<Wall_07e>
Rnames{i} = 'N2Q5 = wHNQ3 + wHNOQ2';
k(:,i) = 1.0E-5;
Gstr{i,1} = 'N2Q5'; 
fN2Q5(i)=fN2Q5(i)-1; fwHNQ3(i)=fwHNQ3(i)+1; fwHNOQ2(i)=fwHNOQ2(i)+1;

i=i+1; %<Wall_08>
Rnames{i} = 'ONIT=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'ONIT'; 
fONIT(i)=fONIT(i)-1; 

i=i+1; %<Wall_08a>
Rnames{i} = 'ONITQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'ONITQ'; 
fONITQ(i)=fONITQ(i)-1; 

i=i+1; %<Wall_08b>
Rnames{i} = 'ONITQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'ONITQ2'; 
fONITQ2(i)=fONITQ2(i)-1; 

i=i+1; %<Wall_08c>
Rnames{i} = 'ONITQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'ONITQ3'; 
fONITQ3(i)=fONITQ3(i)-1;  

i=i+1; %<Wall_09>
Rnames{i} = 'MONITS=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITS'; 
fMONITS(i)=fMONITS(i)-1; 

%O3 Tracer
i=i+1; %<Wall_09a>
Rnames{i} = 'MONITSQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITSQ'; 
fMONITSQ(i)=fMONITSQ(i)-1; 

%O3 Tracer
i=i+1; %<Wall_09b>
Rnames{i} = 'MONITSQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITSQ2'; 
fMONITSQ2(i)=fMONITSQ2(i)-1; 

%O3 Tracer
i=i+1; %<Wall_09c>
Rnames{i} = 'MONITSQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITSQ3'; 
fMONITSQ3(i)=fMONITSQ3(i)-1; 


i=i+1;  %<Wall_10>
Rnames{i} = 'MONITSh=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITSh'; 
fMONITSh(i)=fMONITSh(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_10a>
Rnames{i} = 'MONITShQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITShQ'; 
fMONITShQ(i)=fMONITShQ(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_10b>
Rnames{i} = 'MONITShQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITShQ2'; 
fMONITShQ2(i)=fMONITShQ2(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_10c>
Rnames{i} = 'MONITShQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITShQ3'; 
fMONITShQ3(i)=fMONITShQ3(i)-1; 




i=i+1;  %<Wall_11>
Rnames{i} = 'MONITU=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITU'; 
fMONITU(i)=fMONITU(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_11a>
Rnames{i} = 'MONITUQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUQ'; 
fMONITUQ(i)=fMONITUQ(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_11b>
Rnames{i} = 'MONITUQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUQ2'; 
fMONITUQ2(i)=fMONITUQ2(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_11c>
Rnames{i} = 'MONITUQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUQ3'; 
fMONITUQ3(i)=fMONITUQ3(i)-1; 






i=i+1;  %<Wall_12>
Rnames{i} = 'MONITUh=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUh'; 
fMONITUh(i)=fMONITUh(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_12a>
Rnames{i} = 'MONITUhQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUhQ'; 
fMONITUhQ(i)=fMONITUhQ(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_12b>
Rnames{i} = 'MONITUhQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUhQ2'; 
fMONITUhQ2(i)=fMONITUhQ2(i)-1; 


%O3 Tracer
i=i+1;  %<Wall_12c>
Rnames{i} = 'MONITUhQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'MONITUhQ3'; 
fMONITUhQ3(i)=fMONITUhQ3(i)-1; 




i=i+1;  %<Wall_13>
Rnames{i} = 'HONIT=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONIT'; 
fHONIT(i)=fHONIT(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_13a>
Rnames{i} = 'HONITQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONITQ'; 
fHONITQ(i)=fHONITQ(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_13b>
Rnames{i} = 'HONITQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONITQ2'; 
fHONITQ2(i)=fHONITQ2(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_13c>
Rnames{i} = 'HONITQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONITQ3'; 
fHONITQ3(i)=fHONITQ3(i)-1; 



i=i+1;  %<Wall_14>
Rnames{i} = 'HONITh=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONITh'; 
fHONITh(i)=fHONITh(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_14a>
Rnames{i} = 'HONIThQ=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONIThQ'; 
fHONIThQ(i)=fHONIThQ(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_14b>
Rnames{i} = 'HONIThQ2=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONIThQ2'; 
fHONIThQ2(i)=fHONIThQ2(i)-1; 

%O3 Tracer
i=i+1;  %<Wall_14c>
Rnames{i} = 'HONIThQ3=';
k(:,i) =  8.8E-6;
Gstr{i,1} = 'HONIThQ3'; 
fHONIThQ3(i)=fHONIThQ3(i)-1; 


%%HET Rxns%%%%
i=i+1; %<HET_01> Assume Exchange with Water 
Rnames{i} = 'NO2=0.5HNO3+0.5HONO';
k(:,i) = 9.31E-7;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+0.5; fHONO(i)=fHONO(i)+0.5;

i=i+1; %<HET_01a> Assume Exchange with Water 
Rnames{i} = 'NOQ=0.5HNO3+0.5HONO';
k(:,i) = 9.31E-7;
Gstr{i,1} = 'NOQ'; 
fNOQ(i)=fNOQ(i)-1; fHNO3(i)=fHNO3(i)+0.5; fHONO(i)=fHONO(i)+0.5;

i=i+1; %<HET_01b> Assume Exchange with Water (Liquid)
Rnames{i} = 'NQ2=0.5HNO3+0.5HONO';
k(:,i) = 9.31E-7;
Gstr{i,1} = 'NQ2'; 
fNQ2(i)=fNQ2(i)-1; fHNO3(i)=fHNO3(i)+0.5; fHONO(i)=fHONO(i)+0.5;

i=i+1; %<HET_02>
Rnames{i} = 'NO3=HNO3';
k(:,i) = 4.01E-3;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<HET_02a>
Rnames{i} = 'NO2Q=HNO2Q';
k(:,i) = 4.01E-3;
Gstr{i,1} = 'NO2Q'; 
fNO2Q(i)=fNO2Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; 

i=i+1; %<HET_02b>
Rnames{i} = 'NOQ2=HNOQ2';
k(:,i) = 4.01E-3;
Gstr{i,1} = 'NOQ2'; 
fNOQ2(i)=fNOQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; 

i=i+1; %<HET_02c>
Rnames{i} = 'NQ3=HNQ3';
k(:,i) = 4.01E-3;
Gstr{i,1} = 'NQ3'; 
fNQ3(i)=fNQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; 


i=i+1; %<HET_03>
Rnames{i} = 'N2O5+H2O=HNO3+HNO3';
k(:,i) = 9.11E-5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1;  fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<HET_03a>
Rnames{i} = 'N2O4Q +H2O = (2/5)*HNO2Q + (2/5)*HNO3 + (3/5)*HNO3 + (3/5)*HNO2Q ';
k(:,i) = 9.11E-5;
Gstr{i,1} = 'N2O4Q'; 
fN2O4Q(i)=fN2O4Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+(2/5); fHNO3(i)=fHNO3(i)+(2/5); fHNO3(i)=fHNO3(i)+(3/5); fHNO2Q(i)=fHNO2Q(i)+(3/5); 

%O3 Tracer
i=i+1; %<HET_03b>
Rnames{i} = 'N2O3Q2 +H2O =  0.3*HNO3 + 0.6*HNO2Q + 0.1*HNOQ2 + 0.1HNO3 + 0.6*HNO2Q + 0.3*HNOQ2';
k(:,i) = 9.11E-5;
Gstr{i,1} = 'N2O3Q2'; 
fN2O3Q2(i)=fN2O3Q2(i)-1; fHNO3(i)=fHNO3(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.6; 
fHNOQ2(i)=fHNOQ2(i)+0.1; fHNO3(i)=fHNO3(i)+0.1; fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3;


%O3 Tracer
i=i+1; %<HET_03c>
Rnames{i} = 'N2O2Q3 +H2O = 0.1*HNO3 + 0.6*HNO2Q + 0.3*HNOQ2 + 0.3*HNO2Q + 0.6*HNOQ2 + 0.1*HNQ3';
k(:,i) = 9.11E-5;
Gstr{i,1} = 'N2O2Q3'; 
fN2O2Q3(i)=fN2O2Q3(i)-1; fHNO3(i)=fHNO3(i)+0.1;  fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.3; 
fHNOQ2(i)=fHNOQ2(i)+0.6;  fHNQ3(i)=fHNQ3(i)+0.1;  

%O3 Tracer
i=i+1; %<HET_03d>
Rnames{i} = 'N2OQ4 +H2O = 0.4*HNO2Q + 0.6*HNOQ2 + 0.6*HNOQ2 + 0.4*HNQ3';
k(:,i) = 9.11E-5;
Gstr{i,1} = 'N2OQ4'; 
fN2OQ4(i)=fN2OQ4(i)-1; fHNO2Q(i)=fHNO2Q(i)+0.4; fHNOQ2(i)=fHNOQ2(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.6;
fHNQ3(i)=fHNQ3(i)+0.4; 

%O3 Tracer
i=i+1; %<HET_03e>
Rnames{i} = 'N2Q5 +H2O = HNQ3 + HNOQ2';
k(:,i) = 9.11E-5; 
Gstr{i,1} = 'N2Q5'; 
fN2Q5(i)=fN2Q5(i)-1; fHNQ3(i)=fHNQ3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1;


%%%%%%Isotope Exchange REACTIONS%%%%%%%%%%%
i=i+1; %<O_Exchange_001>;
Rnames{i} = 'Q3P=O3P';
k(:,i) = 2.9E-12.*0.21.*M;
Gstr{i,1} = 'Q3P'; 
fQ3P(i)=fQ3P(i)-1; fO3P(i)=fO3P(i)+1;  

i=i+1; %<O_Exchange_002>;
Rnames{i} = 'Q1D=O1D';
k(:,i) = 2.9E-12.*0.21.*M;
Gstr{i,1} = 'Q1D'; 
fQ1D(i)=fQ1D(i)-1; fO1D(i)=fO1D(i)+1;  

i=i+1; %<O_Exchange_003>;
Rnames{i} = 'Q1D+NO=O1D+NQ';
k(:,i) = 3.7E-11;
Gstr{i,1} = 'Q1D'; Gstr{i,2} = 'NO';  
fQ1D(i)=fQ1D(i)-1; fNO(i)=fNO(i)-1; fO1D(i)=fO1D(i)+1; fNQ(i)=fNQ(i)+1; 

i=i+1; %<O_Exchange_004>;
Rnames{i} = 'O1D+NQ=Q1D+NO';
k(:,i) = 3.7E-11;
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'NQ';  
fO1D(i)=fO1D(i)-1; fNQ(i)=fNQ(i)-1; fQ1D(i)=fQ1D(i)+1; fNO(i)=fNO(i)+1;

i=i+1; %<O_Exchange_005>;
Rnames{i} = 'Q3P+NO=O3P+NQ';
k(:,i) = 3.7E-11;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NO';  
fQ3P(i)=fQ3P(i)-1; fNO(i)=fNO(i)-1; fO3P(i)=fO3P(i)+1; fNQ(i)=fNQ(i)+1; 

i=i+1; %<O_Exchange_006>;
Rnames{i} = 'O3P+NQ=Q3P+NO';
k(:,i) = 3.7E-11;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NQ';  
fO3P(i)=fO3P(i)-1; fNQ(i)=fNQ(i)-1; fQ3P(i)=fQ3P(i)+1; fNO(i)=fNO(i)+1;

i=i+1; %<O_Exchange_007>;
Rnames{i} = 'QH+H2O=OH+H2Q';
k(:,i) = 2.3E-13*exp(-2100/T)*H2O;
Gstr{i,1} = 'QH';   
fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+1;

i=i+1; %<O_Exchange_008>;
Rnames{i} = 'QH=OH';
k(:,i) = 1.0E-17*0.21*M
Gstr{i,1} = 'QH';   
fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+1;

i=i+1; %<O_Exchange_009>;
Rnames{i} = 'QH+HO2=OH+HOQ';
k(:,i) = 1.E-11*exp(400/T)
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2';   
fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1; fHOQ(i)=fHOQ(i)+1;

i=i+1;%<O_Exchange_010>;
Rnames{i} = 'OH+HOQ=0.5QH+0.5HO2+0.5OH+0.5HOQ';
k(:,i) = 1.E-11*exp(400/T)
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQ';   
fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)-1; fQH(i)=fQH(i)+0.5; fHO2(i)=fHO2(i)+0.5; fOH(i)=fOH(i)+0.5; fHOQ(i)=fHOQ(i)+0.5;

i=i+1; %<O_Exchange_011>;
Rnames{i} = 'QH+HOQ=0.5OH+0.5HQ2+0.5QH+0.5HOQ';
k(:,i) =1.E-11*exp(400/T)
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQ';   
fQH(i)=fQH(i)-1; fHOQ(i)=fHOQ(i)-1; fOH(i)=fOH(i)+0.5; fHQ2(i)=fHQ2(i)+0.5; fQH(i)=fQH(i)+0.5; fHOQ(i)=fHOQ(i)+0.5;

i=i+1; %<O_Exchange_012>;
Rnames{i} = 'OH+HQ2=QH+HOQ';
k(:,i) =1.E-11*exp(400/T)
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2';   
fOH(i)=fOH(i)-1; fHQ2(i)=fHQ2(i)-1; fQH(i)=fQH(i)+1; fHOQ(i)=fHOQ(i)+1;

i=i+1; %<O_Exchange_013>;
Rnames{i} = 'HOQ=HO2';
k(:,i) =3.0E-17*0.21*M
Gstr{i,1} = 'HOQ';    
fHOQ(i)=fHOQ(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1; %<O_Exchange_014>;
Rnames{i} = 'HQ2=HO2';
k(:,i) =3.0E-17*0.21*M
Gstr{i,1} = 'HQ2';    
fHQ2(i)=fHQ2(i)-1; fHO2(i)=fHO2(i)+1;

%<O_Exchange_015>;
i=i+1;
Rnames{i} = 'NQ+NO2=NO+NOQ';
k(:,i) =3.6E-14
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO2';   
fNQ(i)=fNQ(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fNOQ(i)=fNOQ(i)+1;

i=i+1; %<O_Exchange_016>;
Rnames{i} = 'NO+NOQ=0.5NQ+0.5NO2+0.5NO+0.5NOQ';
k(:,i) =3.6E-14
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NOQ';   
fNO(i)=fNO(i)-1; fNOQ(i)=fNOQ(i)-1; fNQ(i)=fNQ(i)+0.5; fNO2(i)=fNO2(i)+0.5; fNO(i)=fNO(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

i=i+1; %<O_Exchange_017>;
Rnames{i} = 'NQ+NOQ=0.5NO+0.5NQ2+0.5NQ+0.5NOQ';
k(:,i) =3.6E-14
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NOQ';   
fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)-1; fNO(i)=fNO(i)+0.5; fNQ2(i)=fNQ2(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

i=i+1; %<O_Exchange_018>;
Rnames{i} = 'NO+NQ2=NQ+NOQ';
k(:,i) =3.6E-14
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NQ2';   
fNO(i)=fNO(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ(i)=fNQ(i)+1; fNOQ(i)=fNOQ(i)+1;

i=i+1; %<O_Exchange_019>;
Rnames{i} = 'NOQ=NO2';
k(:,i) =1.E-24*0.21*M
Gstr{i,1} = 'NOQ';    
fNOQ(i)=fNOQ(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<O_Exchange_020>;
Rnames{i} = 'NQ2=NO2';
k(:,i) =1.E-24*0.21*M
Gstr{i,1} = 'NQ2';    
fNQ2(i)=fNQ2(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %<O_Exchange_021>;
Rnames{i} = 'QH+NO=OH+NQ';
k(:,i) = 1.8E-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO';  
fQH(i)=fQH(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNQ(i)=fNQ(i)+1;

i=i+1; %<O_Exchange_022>;
Rnames{i} = 'OH+NQ=QH+NO';
k(:,i) = 1.8E-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NQ';  
fOH(i)=fOH(i)-1; fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)+1; fNO(i)=fNO(i)+1;

i=i+1; %<O_Exchange_023>;
Rnames{i} = 'QH+NO2=OH+NOQ';
k(:,i) = 1.0E-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO2';  
fQH(i)=fQH(i)-1; fNO2(i)=fNO2(i)-1; fOH(i)=fOH(i)+1; fNOQ(i)=fNOQ(i)+1;

i=i+1; %<O_Exchange_024>;
Rnames{i} = 'OH+NOQ=0.5QH+0.5NO2+0.5OH+0.5NOQ';
k(:,i) = 1.0E-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NOQ';  
fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)-1; fQH(i)=fQH(i)+0.5; fNO2(i)=fNO2(i)+0.5; fOH(i)=fOH(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

i=i+1; %<O_Exchange_025>;
Rnames{i} = 'QH+NOQ=0.5OH+0.5NQ2+0.5QH+0.5NOQ';
k(:,i) = 1.0E-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NOQ';  
fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)-1; fOH(i)=fOH(i)+0.5; fNQ2(i)=fNQ2(i)+0.5; fQH(i)=fQH(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

i=i+1; %<O_Exchange_026>;
Rnames{i} = 'OH+NQ2=QH+NOQ';
k(:,i) = 1.0E-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NQ2';  
fOH(i)=fOH(i)-1; fNQ2(i)=fNQ2(i)-1; fQH(i)=fQH(i)+1; fNOQ(i)=fNOQ(i)+1;

%% THAT'S ALL FOLKS!






