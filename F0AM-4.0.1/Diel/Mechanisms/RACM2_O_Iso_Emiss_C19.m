% RACM2_O_Iso_Het_Emiss_C19.m
% # of species = 175
% # of reactions = 1,119
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
% 20230601 WW Added replicate reactons to simulate O isotopolgoues that are specified using Q representing transfer from O3 reactions
% 20230901 WW Added 26 O isotope exchange reactions from (Lyons et al., 2001)
% 20231007 WW Add 2 heterogeneous reactions for HNO3 proudction
% 20231007 WW Add 15 pseduo-first order reactions to simulate emissions (Emiss_1 to Emiss_15) for Case 19 for Stockwell et al., 1997


SpeciesToAdd = {...
'API'; 'O3'; 'NO'; 'NQ'; 'NO2'; 'NOQ'; 'NQ2'; 'HONO'; 'HONQ'; 'HQNQ'; 'PAN'; 'PANQ'; 'PANQ2'; ...
'HNO3'; 'HNO2Q'; 'HNOQ2'; 'HNQ3'; 'ONIT'; 'ONITQ'; 'ONITQ2'; 'ONITQ3'; 'OH'; 'QH'; 'HO2';     ...
'HOQ'; 'HQ2'; 'ACD'; 'ACE'; 'ACO3'; 'ACT'; 'ACTP'; 'ADCN'; 'ADCNQ'; 'ADCNQ2'; 'ADCNQ3';       ...
'ADDC'; 'ALD';  'APIP'; 'BALD'; 'BALP'; 'BAL1'; 'BAL2'; 'BEN'; 'BENP'; 'CH4'; 'CHO'; 'CO';    ...
'CO2'; 'CSL'; 'DCB1'; 'DCB2'; 'DCB3'; 'DIEN'; 'EOH'; 'EPX'; 'ETE'; 'ETEG'; 'ETEP'; 'ETH';     ...
'ETHP'; 'GLY'; 'H2'; 'H2O2'; 'H2OQ'; 'H2Q2'; 'HC3'; 'HC3P'; 'HC5'; 'HC5P'; 'HC8'; 'HC8P';     ...
'HCHO'; 'HKET'; 'HO2NO2'; 'HO2NOQ'; 'HO2NQ2'; 'HOQNO2'; 'HOQNOQ'; 'HOQNQ2'; 'HQ2NO2';         ...
'HQ2NOQ'; 'HQ2NQ2'; 'ISHP'; 'ISO'; 'ISON'; 'ISONQ'; 'ISONQ2'; 'ISONQ3'; 'ISOP'; 'KET';        ...
'KETP'; 'LIM'; 'LIMP'; 'MACP'; 'MACR'; 'MAHP'; 'MBO'; 'MBOP'; 'MBORO2'; 'MCP'; 'MCT'; 'MCTO'; ...
'MCTP'; 'MEK'; 'MEKP'; 'MGLY'; 'MO2'; 'MOH'; 'MPAN'; 'MPANQ'; 'MPANQ2'; 'MVK'; 'MVKP';        ...
'N2O5'; 'N2O4Q'; 'N2O3Q2'; 'N2O2Q3'; 'N2OQ4'; 'N2Q5'; 'NALD'; 'NALDQ'; 'NALDQ2'; 'NALDQ3';    ...
'NO'; 'NQ'; 'NO3'; 'NO2Q'; 'NOQ2'; 'NQ3';  'O3P'; 'Q3P';  'OLI'; 'OLIP'; 'OLND'; 'OLNDQ';     ...
'OLNDQ2'; 'OLNDQ3'; 'OLNN'; 'OLNNQ'; 'OLNNQ2'; 'OLNNQ3'; 'OLT'; 'OLTP';  'OP1'; 'OP2';        ...
'ORA1'; 'ORA2'; 'ORAP'; 'O1D'; 'Q1D'; 'PAA';  'PER1'; 'PER2'; 'PHEN'; 'PHO'; 'PPN'; 'PPNQ';   ...
'PPNQ2'; 'RCO3'; 'ROH'; 'SO2'; 'SULF'; 'TLP1'; 'TOL'; 'TOLP'; 'TR2'; 'UALD'; 'UALP'; 'XO2';   ...
'XY2'; 'XYL1'; 'XYLP'; 'XYM'; 'XYO'; 'XYP'; 'XYO2'; 'XYOP';                                   ...
'A'; 'B'; 'C'; 'D'; 'E'; 'F'; 'G'; 'H'; 'I'; 'J'; 'K'; 'L'; 'M'; 'N'; 'O'; };

AddSpecies

%%Emissions
%%These pseduo-first order reactions simulate emissions for Case 19 specified for Stockwell et al., 1997
i=i+1; %<Emiss_1>;
Rnames{i} = 'A=NO';
k(:,i) = 4.33E-8;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fNO(i)=fNO(i)+1;

%%Emissions
i=i+1; %<Emiss_2>;
Rnames{i} = 'B=SO2';
k(:,i) = 8.66E-9;
Gstr{i,1} = 'B'; 
fB(i)=fB(i)-1; fSO2(i)=fSO2(i)+1;

%%Emissions
i=i+1; %<Emiss_3>;
Rnames{i} = 'C=CO';
k(:,i) = 9.49E-8;
Gstr{i,1} = 'C'; 
fC(i)=fC(i)-1; fCO(i)=fCO(i)+1;

%%Emissions
i=i+1; %<Emiss_4>;
Rnames{i} = 'D=ETH';
k(:,i) = 4.00E-9;
Gstr{i,1} = 'D'; 
fD(i)=fD(i)-1; fETH(i)=fETH(i)+1;

%%Emissions
i=i+1; %<Emiss_5>;
Rnames{i} = 'E=HC3';
k(:,i) = 4.33E-8;
Gstr{i,1} = 'E'; 
fE(i)=fE(i)-1; fHC3(i)=fHC3(i)+1;

%%Emissions
i=i+1; %<Emiss_6>;
Rnames{i} = 'F=HC5';
k(:,i) = 1.27E-8;
Gstr{i,1} = 'F'; 
fF(i)=fF(i)-1; fHC5(i)=fHC5(i)+1;

%%Emissions
i=i+1; %<Emiss_7>;
Rnames{i} = 'G=HC8';
k(:,i) = 7.49E-9;
Gstr{i,1} = 'G'; 
fG(i)=fG(i)-1; fHC8(i)=fHC8(i)+1;

%%Emissions
i=i+1; %<Emiss_8>;
Rnames{i} = 'H=ETE';
k(:,i) = 7.66E-9;
Gstr{i,1} = 'H'; 
fH(i)=fH(i)-1; fETE(i)=fETE(i)+1;

%%Emissions
i=i+1; %<Emiss_9>;
Rnames{i} = 'I=OLI';
k(:,i) = 3.16E-9;
Gstr{i,1} = 'I'; 
fI(i)=fI(i)-1; fOLI(i)=fOLI(i)+1;

%%Emissions
i=i+1; %<Emiss_10>;
Rnames{i} = 'J=OLT';
k(:,i) = 3.66E-9;
Gstr{i,1} = 'J'; 
fJ(i)=fJ(i)-1; fOLT(i)=fOLT(i)+1;


%%Emissions
i=i+1; %<Emiss_11>;
Rnames{i} = 'K=TOL';
k(:,i) = 9.49E-9;
Gstr{i,1} = 'K'; 
fK(i)=fK(i)-1; fTOL(i)=fTOL(i)+1;

%%Emissions
i=i+1; %<Emiss_12>;
Rnames{i} = 'L=XYL1';
k(:,i) = 8.66E-9;
Gstr{i,1} = 'L'; 
fL(i)=fL(i)-1; fXYL1(i)=fXYL1(i)+1;

%%Emissions
i=i+1; %<Emiss_13>;
Rnames{i} = 'M=HCHO';
k(:,i) = 2.33E-9;
Gstr{i,1} = 'M'; 
fM(i)=fM(i)-1; fHCHO(i)=fHCHO(i)+1;

%%Emissions
i=i+1; %<Emiss_14>;
Rnames{i} = 'N=ALD';
k(:,i) = 6.00E-10;
Gstr{i,1} = 'N'; 
fN(i)=fN(i)-1; fALD(i)=fALD(i)+1;

%%Emissions
i=i+1; %<Emiss_15>;
Rnames{i} = 'O=KET';
k(:,i) = 5.33E-9;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fKET(i)=fKET(i)+1;



%% PHOTOLYSIS
%O3 tracer Rename
i=i+1; %<R001>;
Rnames{i} = 'O3=Q3P+O2';
k(:,i) = JO3P;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fQ3P(i)=fQ3P(i)+1;

%O3 tracer Rename
i=i+1; %<R002>;
Rnames{i} = 'O3=Q1D+O2';
k(:,i) = JO1D;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fQ1D(i)=fQ1D(i)+1;

i=i+1; %<R003>
Rnames{i} = 'H2O2=OH+OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+2; 

%O3 tracer
i=i+1; %<R003a>; 
Rnames{i} = 'H2OQ=OH+QH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2OQ'; 
fH2OQ(i)=fH2OQ(i)-1; fOH(i)=fOH(i)+1; fQH(i)=fQH(i)+1;

%O3 tracer
i=i+1;  %<R003b>; 
Rnames{i} = 'H2Q2=QH + QH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2Q2'; 
fH2Q2(i)=fH2Q2(i)-1; fQH(i)=fQH(i)+2; 

i=i+1; %<R004>;
Rnames{i} = 'NO2=O3P+NO';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fO3P(i)=fO3P(i)+1; fNO(i)=fNO(i)+1; 

%O3 Tracer
i=i+1; %<R004a>; 
Rnames{i} = 'NOQ=0.5*Q3P+0.5*NO + 0.5*O3P + 0.5*NQ';
k(:,i) = JNO2;
Gstr{i,1} = 'NOQ'; 
fNOQ(i)=fNOQ(i)-1; fQ3P(i)=fQ3P(i)+0.5; fNO(i)=fNO(i)+0.5; 
fO3P(i)=fO3P(i)+0.5; fNQ(i)=fNQ(i)+0.5;

%O3 Tracer
i=i+1; %<R004b>; 
Rnames{i} = 'NQ2=Q3P+NQ';
k(:,i) = JNO2;
Gstr{i,1} = 'NQ2'; 
fNQ2(i)=fNQ2(i)-1; fQ3P(i)=fQ3P(i)+1; fNQ(i)=fNQ(i)+1;

i=i+1; %<R005>;
Rnames{i} = 'NO3=O2+NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1;fNO(i)=fNO(i)+1; 

%O3 Tracer
i=i+1; %<R005a>; 
Rnames{i} = 'NO2Q= 0.33*NQ + 0.66*NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO2Q'; 
fNO2Q(i)=fNO2Q(i)-1;fNQ(i)=fNQ(i)+(1/3); fNO(i)=fNO(i)+(2/3); 

%O3 Tracer
i=i+1; %<R005b>; 
Rnames{i} = 'NOQ2= 0.66*NQ + 0.33*NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NOQ2'; 
fNOQ2(i)=fNOQ2(i)-1;fNQ(i)=fNQ(i)+(2/3); fNO(i)=fNO(i)+(1/3);

%O3 Tracer
i=i+1; %<R005c>; 
Rnames{i} = 'NQ3=NQ';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NQ3'; 
fNQ3(i)=fNQ3(i)-1;fNQ(i)=fNQ(i)+1;

i=i+1; %<R006>;
Rnames{i} = 'NO3=O3P+NO2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R006a>; 
Rnames{i} = 'NO2Q=0.333*Q3P + 0.333*NO2 + 0.666*O3P + 0.666*NOQ';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO2Q'; 
fNO2Q(i)=fNO2Q(i)-1; fQ3P(i)=fQ3P(i)+(1/3); fNO2(i)=fNO2(i)+(1/3);
fO3P(i)=fO3P(i)+(2/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R006b>;
Rnames{i} = 'NOQ2=0.666*Q3P + 0.666*NOQ + 0.333*O3P + 0.333*NQ2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NOQ2'; 
fNOQ2(i)=fNOQ2(i)-1; fQ3P(i)=fQ3P(i)+(2/3); fNOQ(i)=fNOQ(i)+(2/3); 
fO3P(i)=fO3P(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/3);

%O3 Tracer
i=i+1; %<R006c>; 
Rnames{i} = 'NQ3=Q3P+NQ2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NQ3'; 
fNQ3(i)=fNQ3(i)-1; fQ3P(i)=fQ3P(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R007>;
Rnames{i} = 'HONO=OH+NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

%O3 Tracer
i=i+1;%<R007a>; 
Rnames{i} = 'HONQ=0.5*NO +0.5*NQ + 0.5*OH + 0.5*QH';
k(:,i) = JHONO;
Gstr{i,1} = 'HONQ'; 
fHONQ(i)=fHONQ(i)-1; fQH(i)=fQH(i)+0.5; fNO(i)=fNO(i)+0.5; 
fOH(i)=fOH(i)+0.5; fNQ(i)=fNQ(i)+0.5; 

%O3 Tracer
i=i+1; %<R007b>; 
Rnames{i} = 'HQNQ=QH+NQ';
k(:,i) = JHONO;
Gstr{i,1} = 'HQNQ'; 
fHQNQ(i)=fHQNQ(i)-1; fQH(i)=fQH(i)+1; fNQ(i)=fNQ(i)+1; 

i=i+1; %<R008>;
Rnames{i} = 'HNO3=OH+NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<R008a>; 
Rnames{i} = 'HNO2Q = (2/3)*NOQ + (1/3)*NO2 + (2/3)*OH + (1/3)*QH';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO2Q'; 
fHNO2Q(i)=fHNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fOH(i)=fOH(i)+(2/3); fQH(i)=fQH(i)+(1/3); 

i=i+1; %<R008b>; 
Rnames{i} = 'HNOQ2 = (2/3)*NOQ + (1/3)*NQ2 + (2/3)*QH + (1/3)OH';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNOQ2'; 
fHNOQ2(i)=fHNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fQH(i)=fQH(i)+(2/3); fOH(i)=fOH(i)+(1/3); 

i=i+1; %<R008c>; 
Rnames{i} = 'HNQ3= NQ2 + QH';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNQ3'; 
fHNQ3(i)=fHNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fQH(i)=fQH(i)+1;  

i=i+1; %<R009>;
Rnames{i} = 'HO2NO2 = 0.2OH+0.2NO3+0.8HO2+0.8NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fOH(i)=fOH(i)+0.2; fNO3(i)=fNO3(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNO2(i)=fNO2(i)+0.8; 

%O3 Tracer
i=i+1; %<R009a>; 
Rnames{i} = 'HO2NOQ = 0.2OH+0.2NO2Q+0.8HO2+0.8NOQ';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NOQ'; 
fHO2NOQ(i)=fHO2NOQ(i)-1; fOH(i)=fOH(i)+0.2; fNO2Q(i)=fNO2Q(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNOQ(i)=fNOQ(i)+0.8; 

%O3 Tracer
i=i+1; %<R009b>; 
Rnames{i} = 'HO2NQ2 = 0.2OH+0.2NOQ2+0.8HO2+0.8NQ2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NQ2'; 
fHO2NQ2(i)=fHO2NQ2(i)-1; fOH(i)=fOH(i)+0.2; fNOQ2(i)=fNOQ2(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNQ2(i)=fNQ2(i)+0.8;

%O3 Tracer
i=i+1; %<R009c>; 
Rnames{i} = 'HOQNO2 = 0.1OH+0.1NO2Q+0.4HOQ+0.4NO2+0.1QH+0.1NO3+0.4HOQ+0.4NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HOQNO2'; 
fHOQNO2(i)=fHOQNO2(i)-1; fOH(i)=fOH(i)+0.1; fNO2Q(i)=fNO2Q(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNO2(i)=fNO2(i)+0.4;
fQH(i)=fQH(i)+0.1; fNO3(i)=fNO3(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNO2(i)=fNO2(i)+0.4;

%O3 Tracer
i=i+1; %<R009d>;
Rnames{i} = 'HOQNOQ = 0.1QH+0.1NO2Q+0.4HOQ+0.4NOQ+0.1OH+0.1NOQ2+0.4HOQ+0.4NOQ';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HOQNOQ'; 
fHOQNOQ(i)=fHOQNOQ(i)-1; fQH(i)=fQH(i)+0.1; fNO2Q(i)=fNO2Q(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNOQ(i)=fNOQ(i)+0.4;
fOH(i)=fOH(i)+0.1; fNOQ2(i)=fNOQ2(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNOQ(i)=fNOQ(i)+0.4;

%O3 Tracer
i=i+1; %<R009e>; 
Rnames{i} = 'HOQNQ2 = 0.1OH+0.1NQ3+0.4HOQ+0.4NQ2+0.1QH+0.1NOQ2+0.4HOQ+0.4NQ2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HOQNQ2'; 
fHOQNQ2(i)=fHOQNQ2(i)-1; fOH(i)=fOH(i)+0.1; fNQ3(i)=fNQ3(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNQ2(i)=fNQ2(i)+0.4;
fQH(i)=fQH(i)+0.1; fNOQ2(i)=fNOQ2(i)+0.1; fHOQ(i)=fHOQ(i)+0.4; fNQ2(i)=fNQ2(i)+0.4;

%O3 Tracer
i=i+1; %<R009f>;
Rnames{i} = 'HQ2NO2 = 0.2QH+0.2NO2Q+0.8HQ2+0.8NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HQ2NO2'; 
fHQ2NO2(i)=fHQ2NO2(i)-1; fQH(i)=fQH(i)+0.2; fNO2Q(i)=fNO2Q(i)+0.2; fHQ2(i)=fHQ2(i)+0.8; fNO2(i)=fNO2(i)+0.8;

%O3 Tracer
i=i+1; %<R009g>; 
Rnames{i} = 'HQ2NOQ = 0.2QH+0.2NOQ2+0.8HQ2+0.8NOQ';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HQ2NOQ'; 
fHQ2NOQ(i)=fHQ2NOQ(i)-1; fQH(i)=fQH(i)+0.2; fNOQ2(i)=fNOQ2(i)+0.2; fHQ2(i)=fHQ2(i)+0.8; fNOQ(i)=fNOQ(i)+0.8;

%O3 Tracer
i=i+1; %<R009h>; 
Rnames{i} = 'HQ2NQ2 = 0.2QH+0.2NQ3+0.8HQ2+0.8NQ2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HQ2NQ2'; 
fHQ2NQ2(i)=fHQ2NQ2(i)-1; fQH(i)=fQH(i)+0.2; fNQ3(i)=fNQ3(i)+0.2; fHQ2(i)=fHQ2(i)+0.8; fNQ2(i)=fNQ2(i)+0.8;

i=i+1; %<R010>;
Rnames{i} = 'HCHO=H2+CO';
k(:,i) = JHCHO_H2;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R011>;
Rnames{i} = 'HCHO=HO2+HO2+CO';
k(:,i)    = JHCHO_HO2;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+1; 

i=i+1; %<R012>;
Rnames{i} = 'ACD=HO2+MO2+CO';
k(:,i) = JACD;
Gstr{i,1} = 'ACD'; 
fACD(i)=fACD(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R013>;
Rnames{i} = 'ALD=HO2+ETHP+CO';
k(:,i) = JALD;
Gstr{i,1} = 'ALD'; 
fALD(i)=fALD(i)-1; fHO2(i)=fHO2(i)+1; fETHP(i)=fETHP(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R014>;
Rnames{i} = 'ACT=ACO3+MO2';
k(:,i) = JACT;
Gstr{i,1} = 'ACT'; 
fACT(i)=fACT(i)-1; fACO3(i)=fACO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %<R015>;
Rnames{i} = 'UALD=1.22HO2+.784ACO3+1.22CO+0.35HCHO+.434ALD+.216KET';
k(:,i) = JUALD;
Gstr{i,1} = 'UALD'; 
fUALD(i)=fUALD(i)-1; fHO2(i)=fHO2(i)+1.22; fACO3(i)=fACO3(i)+0.784; fCO(i)=fCO(i)+1.22; 
fHCHO(i)=fHCHO(i)+0.35; fALD(i)=fALD(i)+0.434; fKET(i)=fKET(i)+0.216;

i=i+1; %<R016>;
Rnames{i} = 'MEK=ACO3+0.5ETHP+0.5MO2';
k(:,i) = JMEK;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fACO3(i)=fACO3(i)+1; fETHP(i)=fETHP(i)+0.5; fMO2(i)=fMO2(i)+0.5; 

i=i+1; %<R017>;
Rnames{i} = 'KET=ETHP+ACO3 ';
k(:,i) = JKET;
Gstr{i,1} = 'KET'; 
fKET(i)=fKET(i)-1; fETHP(i)=fETHP(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1; %<R018>;
Rnames{i} = 'HKET=HO2+ACO3+HCHO ';
k(:,i) = JHKET;
Gstr{i,1} = 'HKET'; 
fHKET(i)=fHKET(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fHCHO(i)=1; 

i=i+1; %<R019>;
Rnames{i} = 'MACR=0.34OH+0.66HO2+0.67ACO3+0.33MACP+0.34XO2+0.67CO+0.67HCHO';
k(:,i) = JMACR;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fMACP(i)=fMACP(i)+0.33; fOH(i)=fOH(i)+0.34; fXO2(i)=fXO2(i)+0.34; 
fHO2(i)=fHO2(i)+0.66; fCO(i)=fCO(i)+0.67; fHCHO(i)=fHCHO(i)+0.67; fACO3(i)=fACO3(i)+0.67; 

i=i+1; %<R020>;
Rnames{i} = 'MVK=0.7UALD+0.7CO+0.3MO2+0.3MACP';
k(:,i) = JMVK;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fUALD(i)=fUALD(i)+0.7; fCO(i)=fCO(i)+0.7; fMO2(i)=fMO2(i)+0.3; fMACP(i)=fMACP(i)+0.3; 

i=i+1; %<R021>;
Rnames{i} = 'GLY=H2+CO+CO';
k(:,i) = JGLY1;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %<R022>;
Rnames{i} = 'GLY=HCHO+CO+CO'; %mmarvin 20151020
k(:,i) = JGLY2;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %<R023>;
Rnames{i} = 'GLY=HO2+HO2+CO+CO';
k(:,i) = JGLY3;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+2; 

i=i+1; %<R024>;
Rnames{i} = 'MGLY=HO2+ACO3+CO';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R025>;
Rnames{i} = 'DCB1=2XO2+1.5HO2+0.5GLY+0.5MGLY+CO+0.5ACO3';
k(:,i) = JDCB1;
Gstr{i,1} = 'DCB1'; 
fDCB1(i)=fDCB1(i)-1; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+1.5; fGLY(i)=fGLY(i)+0.5; 
fMGLY(i)=fMGLY(i)+0.5; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+0.5;

i=i+1; %<R026>;
Rnames{i} = 'DCB2=2XO2+1.5HO2+0.5GLY+0.5MGLY+CO+0.5ACO3';
k(:,i) = JDCB2;
Gstr{i,1} = 'DCB2'; 
fDCB2(i)=fDCB2(i)-1; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+1.5; fGLY(i)=fGLY(i)+0.5; 
fMGLY(i)=fMGLY(i)+0.5; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+0.5;

i=i+1; %<R027>;
Rnames{i} = 'BALD=CHO+HO2+CO';
k(:,i) = JBALD;
Gstr{i,1} = 'BALD'; 
fBALD(i)=fBALD(i)-1; fCHO(i)=fCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R028>;
Rnames{i} = 'OP1=OH+HO2+HCHO';
k(:,i) = JOP1;
Gstr{i,1} = 'OP1'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<R029>;
Rnames{i} = 'OP2=OH+HO2+ALD';
k(:,i) = JOP2;
Gstr{i,1} = 'OP2'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; 

i=i+1; %<R030>;
Rnames{i} = 'PAA=OH+MO2';
k(:,i) = JPAA;
Gstr{i,1} = 'PAA'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1;  

i=i+1; %<R031>;
Rnames{i} = 'ONIT=HO2+0.2ALD+NO2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONIT'; 
fONIT(i)=fONIT(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+0.8; 

%O3 Tracer
i=i+1; %<R031a>; 
Rnames{i} = 'ONITQ=HO2+0.2ALD+(2/3)*NOQ+(1/3)*NO2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONITQ'; 
fONITQ(i)=fONITQ(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNOQ(i)=fNOQ(i)+(2/3);
fNO2(i)=fNO2(i)+(1/3); fKET(i)=fKET(i)+0.8;

%O3 Tracer
i=i+1; %<R031b>; 
Rnames{i} = 'ONITQ2=HO2+0.2ALD+(2/3)*NOQ+(1/3)*NQ2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONITQ2'; 
fONITQ2(i)=fONITQ2(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNOQ(i)=fNOQ(i)+(2/3); 
fNQ2(i)=fNQ2(i)+(1/3); fKET(i)=fKET(i)+0.8;

%O3 Tracer
i=i+1; %<R031c>; 
Rnames{i} = 'ONITQ3=HOQ+0.2ALD+NQ2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONITQ3'; 
fONITQ3(i)=fONITQ3(i)-1; fHOQ(i)=fHOQ(i)+1; fALD(i)=fALD(i)+0.2; fNQ2(i)=fNQ2(i)+1; fKET(i)=fKET(i)+0.8;

i=i+1; %<R032
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1;

%O3 tracer
i=i+1; %<R032a>; 
Rnames{i} = 'PANQ=ACO3+NOQ';
k(:,i) = JPAN1;
Gstr{i,1} = 'PANQ'; 
fPANQ(i)=fPANQ(i)-1; fACO3(i)=fACO3(i)+1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R032b>; 
Rnames{i} = 'PANQ2=ACO3+NQ2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PANQ2'; 
fPANQ2(i)=fPANQ2(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R033>
Rnames{i} = 'PAN=MO2+NO3+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMO2(i)=fMO2(i)+1; fNO3(i)=fNO3(i)+1; fCO2(i)=fCO2(i)+1;

%O3 Tracer
i=i+1; %<R033a>; 
Rnames{i} = 'PANQ=MO2+NO2Q+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PANQ'; 
fPANQ(i)=fPANQ(i)-1; fMO2(i)=fMO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fCO2(i)=fCO2(i)+1;

%O3 Tracer
i=i+1; %<R033b>; 
Rnames{i} = 'PANQ2=MO2+NOQ2+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PANQ2'; 
fPANQ2(i)=fPANQ2(i)-1; fMO2(i)=fMO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fCO2(i)=fCO2(i)+1;

%% INORGANIC REACTIONS
%O3 Tracer Rename
i=i+1; %<R034>; 
Rnames{i} = 'O3+OH=HOQ';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)+1;

%O3 Tracer
i=i+1; %<R034a>; 
Rnames{i} = 'O3+QH=HQ2';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'QH'; 
fO3(i)=fO3(i)-1; fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)+1;

i=i+1; %<R035>
Rnames{i} = 'O3+HO2=OH+O2+O2';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

%O3 Tracer
i=i+1; %<R035a>; 
Rnames{i} = 'O3+HOQ=0.5QH+0.5OH';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HOQ'; 
fO3(i)=fO3(i)-1; fHOQ(i)=fHOQ(i)-1; fQH(i)=fQH(i)+0.5; fOH(i)=fOH(i)+0.5;

%O3 Tracer
i=i+1; %<R035b>; 
Rnames{i} = 'O3+HQ2=QH';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HQ2'; 
fO3(i)=fO3(i)-1; fHQ2(i)=fHQ2(i)-1; fQH(i)=fQH(i)+1;

%O3 Tracer Rename
i=i+1; %<R036>; 
Rnames{i} = 'O3+NO=NOQ';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R036a>; 
Rnames{i} = 'O3+NQ=NQ2';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NQ'; 
fO3(i)=fO3(i)-1; fNQ(i)=fNQ(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer Rename
i=i+1; %<R037>; 
Rnames{i} = 'NO2+O3=NO2Q';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO2Q(i)=fNO2Q(i)+1;

%O3 Tracer
i=i+1; %<R037a>; 
Rnames{i} = 'NOQ+O3=NOQ2';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'O3'; 
fNOQ(i)=fNOQ(i)-1; fO3(i)=fO3(i)-1; fNOQ2(i)=fNOQ2(i)+1;

%O3 Tracer
i=i+1; %<R037b>; 
Rnames{i} = 'NQ2+O3=NQ3';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'O3'; 
fNQ2(i)=fNQ2(i)-1; fO3(i)=fO3(i)-1; fNQ3(i)=fNQ3(i)+1;

i=i+1; %<R038>
Rnames{i} = 'O3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

%O3 Tracer
i=i+1; %<R038a>; 
Rnames{i} = 'Q3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; 
Gstr{i,1} = 'Q3P'; 
fQ3P(i)=fQ3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %<R039>
Rnames{i} = 'O3P+O3=O2+O2';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1;

%O3 Tracer
i=i+1; %<R039a>;
Rnames{i} = 'Q3P+O3=';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'O3'; 
fQ3P(i)=fQ3P(i)-1; fO3(i)=fO3(i)-1;

i=i+1; %<R040>;
Rnames{i} = 'O1D+O2=O3P+O2';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

%O3 Tracer
i=i+1; %<R040a>;
Rnames{i} = 'Q1D+O2=Q3P';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'Q1D';
fQ1D(i)=fQ1D(i)-1; fQ3P(i)=fQ3P(i)+1;

i=i+1; %<R041>;
Rnames{i} = 'O1D+N2=O3P+N2';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

%O3 Tracer
i=i+1; %<R041a>; 
Rnames{i} = 'Q1D+N2=Q3P';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'Q1D';
fQ1D(i)=fQ1D(i)-1; fQ3P(i)=fQ3P(i)+1;

i=i+1; %<R042>;
Rnames{i} = 'O1D+H2O=OH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+2; 

%O3 Tracer
i=i+1; %<R042a>; 
Rnames{i} = 'Q1D+H2O=QH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'Q1D'; 
fQ1D(i)=fQ1D(i)-1; fOH(i)=fOH(i)+1; fQH(i)=fQH(i)+1; 

i=i+1; %<R043>;
Rnames{i} = 'OH+H2=HO2+H2O';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R043a>; 
Rnames{i} = 'QH+H2=HO2';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'H2'; 
fQH(i)=fQH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R044>;
Rnames{i} = 'OH+HO2=H2O+O2';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;

%O3 Tracer
i=i+1; %<R044a>; 
Rnames{i} = 'QH+HO2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2'; 
fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)-1;

%O3 Tracer
i=i+1; %<R044b>;
Rnames{i} = 'QH+HOQ=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQ'; 
fQH(i)=fQH(i)-1; fHOQ(i)=fHOQ(i)-1;

%O3 Tracer
i=i+1; %<R044c>; 
Rnames{i} = 'QH+HQ2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2'; 
fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)-1;

%O3 Tracer
i=i+1; %<R044d>;
Rnames{i} = 'OH+HQ2=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2'; 
fOH(i)=fOH(i)-1; fHQ2(i)=fHQ2(i)-1;

%O3 Tracer
i=i+1; %<R044e>; 
Rnames{i} = 'OH+HOQ=';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQ'; 
fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)-1;

i=i+1; %<R045>;
Rnames{i} = 'HO2+HO2=H2O2+O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

%O3 Tracer
i=i+1; %<R045a>; 
Rnames{i} = 'HOQ + HO2 = 0.5*H2OQ + 0.5*H2O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HO2'; 
fHOQ(i)=fHOQ(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+0.5; fH2O2(i)=fH2O2(i)+0.5;

%O3 Tracer
i=i+1; %<R045b>; 
Rnames{i} = 'HQ2 + HO2 = H2OQ';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HO2'; 
fHQ2(i)=fHQ2(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+1;

%O3 Tracer
i=i+1; %<R045c>; 
Rnames{i} = 'HOQ + HOQ = 0.25*H2O2 + 0.5*H2OQ + 0.25*H2Q2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HOQ'; 
fHOQ(i)=fHOQ(i)-1; fHOQ(i)=fHOQ(i)-1; fH2O2(i)=fH2O2(i)+0.25; 
fH2OQ(i)=fH2OQ(i)+0.5; fH2Q2(i)=fH2Q2(i)+0.25;

%O3 Tracer
i=i+1; %<R045d>; 
Rnames{i} = 'HQ2 + HOQ = 0.5*H2OQ + 0.5*H2Q2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HOQ'; 
fHQ2(i)=fHQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fH2OQ(i)=fH2OQ(i)+0.5; fH2Q2(i)=fH2Q2(i)+0.5;

%O3 Tracer
i=i+1; %<R045e>; 
Rnames{i} = 'HQ2 + HQ2 = H2Q2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HQ2'; 
fHQ2(i)=fHQ2(i)-2; fH2Q2(i)=fH2Q2(i)+1;

i=i+1; %<R046>;
Rnames{i} = 'HO2+HO2+H2O=H2O2+H2O+O2'; %mmarvin 20151020
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

%O3 Tracer
i=i+1; %<R046a>; 
Rnames{i} = 'HOQ + HO2 = 0.5*H2OQ + 0.5*H2O2';
k(:,i) = 3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HO2'; 
fHOQ(i)=fHOQ(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+0.5; fH2O2(i)=fH2O2(i)+0.5;

%O3 Tracer
i=i+1; %<R046b>; 
Rnames{i} = 'HQ2 + HO2 = H2OQ';
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HO2'; 
fHQ2(i)=fHQ2(i)-1; fHO2(i)=fHO2(i)-1; fH2OQ(i)=fH2OQ(i)+1;

%O3 Tracer
i=i+1; %<R046c>; 
Rnames{i} = 'HOQ + HOQ = 0.5*H2OQ + 0.25*H2Q2 + 0.25*H2O2';
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HOQ'; 
fHOQ(i)=fHOQ(i)-2; fH2OQ(i)=fH2OQ(i)+0.5; fH2Q2(i)=fH2Q2(i)+0.25; fH2O2(i)=fH2O2(i)+0.25;

%O3 Tracer
i=i+1; %<R046d>; 
Rnames{i} = 'HOQ + HQ2 = 0.5*H2Q2 + 0.5*H2OQ';
k(:,i) = 3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'HQ2'; 
fHOQ(i)=fHOQ(i)-1; fHQ2(i)=fHQ2(i)-1; fH2Q2(i)=fH2Q2(i)+0.5; fH2OQ(i)=fH2OQ(i)+0.5;

%O3 Tracer
i=i+1; %<R046e>; 
Rnames{i} = 'HQ2 + HQ2 = H2Q2';
k(:,i) = 3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'HQ2'; 
fHQ2(i)=fHQ2(i)-2; fH2Q2(i)=fH2Q2(i)+1;

i=i+1; %<R047>;
Rnames{i} = 'H2O2+OH=HO2+H2O';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R047a>; 
Rnames{i} = 'H2OQ+OH=0.5HOQ+0.5HO2';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2OQ'; Gstr{i,2} = 'OH'; 
fH2OQ2(i)=fH2OQ(i)-1; fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)+0.5; fHO2(i)=fHO2(i)+0.5;

%O3 Tracer
i=i+1; %<R047b>; 
Rnames{i} = 'H2Q2+OH=HOQ';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2Q2'; Gstr{i,2} = 'OH'; 
fH2Q2(i)=fH2Q2(i)-1; fOH(i)=fOH(i)-1; fHOQ(i)=fHOQ(i)+1;

%O3 Tracer
i=i+1; %<R047c>;
Rnames{i} = 'H2O2+QH=HOQ';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'QH'; 
fH2O2(i)=fH2O2(i)-1; fQH(i)=fQH(i)-1; fHOQ(i)=fHOQ(i)+1;

%O3 Tracer
i=i+1; %<R047d>;
Rnames{i} = 'H2OQ+QH=0.5HQ2+0.5HOQ';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2OQ'; Gstr{i,2} = 'QH'; 
fH2OQ(i)=fH2OQ(i)-1; fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)+0.5; fHOQ(i)=fHOQ(i)+0.5;

%O3 Tracer
i=i+1; %<R047e>; 
Rnames{i} = 'H2Q2+QH=HQ2';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2Q2'; Gstr{i,2} = 'QH'; 
fH2Q2(i)=fH2Q2(i)-1; fQH(i)=fQH(i)-1; fHQ2(i)=fHQ2(i)+1;

i=i+1; %<R048>;
Rnames{i} = 'NO+O3P=NO2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3P'; 
fNO(i)=fNO(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R048a>; 
Rnames{i} = 'NQ+O3P=NOQ';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'O3P'; 
fNQ(i)=fNQ(i)-1; fO3P(i)=fO3P(i)-1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R048b>; 
Rnames{i} = 'NQ+Q3P=NQ2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'Q3P'; 
fNQ(i)=fNQ(i)-1; fQ3P(i)=fQ3P(i)-1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<R048c>; 
Rnames{i} = 'NO+Q3P=NOQ';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'Q3P'; 
fNO(i)=fNO(i)-1; fQ3P(i)=fQ3P(i)-1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R049>;
Rnames{i} = 'NO+OH=HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1; 

%O3 Tracer
i=i+1; %<R049a>; 
Rnames{i} = 'NQ+OH=HONQ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'OH'; 
fNQ(i)=fNQ(i)-1; fOH(i)=fOH(i)-1; fHONQ(i)=fHONQ(i)+1; 

%O3 Tracer
i=i+1;%<R049b>; 
Rnames{i} = 'NQ+QH=HQNQ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'QH'; 
fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)-1; fHQNQ(i)=fHQNQ(i)+1; 

%O3 Tracer
i=i+1; %<R049c>; 
Rnames{i} = 'NO+QH=HONQ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'QH'; 
fNO(i)=fNO(i)-1; fQH(i)=fQH(i)-1; fHONQ(i)=fHONQ(i)+1; 

i=i+1; %<R050>;
Rnames{i} = 'HO2+NO=OH+NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R050a>; 
Rnames{i} = 'HO2+NQ=OH+NOQ';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ'; 
fHO2(i)=fHO2(i)-1; fNQ(i)=fNQ(i)-1; fOH(i)=fOH(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R050b>; 
Rnames{i} = 'HOQ+NQ=0.5*QH + 0.5*NOQ + 0.5*OH + 0.5*NQ2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ'; 
fHOQ(i)=fHOQ(i)-1; fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)+0.5; fNOQ(i)=fNOQ(i)+0.5; 
fOH(i)=fOH(i)+0.5; fNQ2(i)=fNQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<R050c>; 
Rnames{i} = 'HQ2+NQ=QH+NQ2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ'; 
fHQ2(i)=fHQ2(i)-1; fNQ(i)=fNQ(i)-1; fQH(i)=fQH(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R050d>; 
Rnames{i} = 'HOQ+NO=0.5OH+0.5NOQ+0.5QH+0.5NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO'; 
fHOQ(i)=fHOQ(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;
fQH(i)=fQH(i)+0.5; fNO2(i)=fNO2(i)+0.5;

%O3 Tracer
i=i+1; %<R050e>; 
Rnames{i} = 'HQ2+NO=QH+NOQ';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO'; 
fHQ2(i)=fHQ2(i)-1; fNO(i)=fNO(i)-1; fQH(i)=fQH(i)+1; fNOQ(i)=fNOQ(i)+1;

i=i+1; %<R051>;
Rnames{i} = 'HO2+NO=HNO3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<R051a>; 
Rnames{i} = 'HO2+NQ=HNO2Q';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ'; 
fHO2(i)=fHO2(i)-1; fNQ(i)=fNQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<R051b>;
Rnames{i} = 'HOQ+NQ=HNOQ2';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ'; 
fHOQ(i)=fHOQ(i)-1; fNQ(i)=fNQ(i)-1; fHNOQ2(i)=fHNOQ2(i)+1;

%O3 Tracer
i=i+1; %<R051c>; 
Rnames{i} = 'HQ2+NQ=HNQ3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ'; 
fHQ2(i)=fHQ2(i)-1; fNQ(i)=fNQ(i)-1; fHNQ3(i)=fHNQ3(i)+1;

%O3 Tracer
i=i+1; %<R051d>; 
Rnames{i} = 'HQ2+NO=HNOQ2';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO'; 
fHQ2(i)=fHQ2(i)-1; fNO(i)=fNO(i)-1; fHNOQ2(i)=fHNOQ2(i)+1;

%O3 Tracer
i=i+1; %<R051e>; 
Rnames{i} = 'HOQ+NO=HNO2Q';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO'; 
fHOQ(i)=fHOQ(i)-1; fNO(i)=fNO(i)-1; fHNO2Q(i)=fHNO2Q(i)+1;

i=i+1; %<R052>;
Rnames{i} = 'NO+NO=NO2+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-2; fNO2(i)=fNO2(i)+2; 

%O3 Tracer
i=i+1; %<R052a>; 
Rnames{i} = 'NQ+NO+O2=NOQ+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO'; 
fNQ(i)=fNQ(i)-1; fNO(i)=fNO(i)-1; fNOQ(i)=fNOQ(i)+1;  fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R052b>; 
Rnames{i} = 'NQ+NQ=NOQ+NOQ';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NQ'; 
fNQ(i)=fNQ(i)-2; fNOQ(i)=fNOQ(i)+2;   

i=i+1; %<R053>;
Rnames{i} = 'HONO+OH=NO2+H2O';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R053a>; 
Rnames{i} = 'HONO+QH=NO2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'QH'; 
fHONO(i)=fHONO(i)-1; fQH(i)=fQH(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R053b>; 
Rnames{i} = 'HONQ+QH=NOQ';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONQ'; Gstr{i,2} = 'QH'; 
fHONQ(i)=fHONQ(i)-1; fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R053c>; 
Rnames{i} = 'HQNQ+QH=NQ2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HQNQ'; Gstr{i,2} = 'QH'; 
fHQNQ(i)=fHQNQ(i)-1; fQH(i)=fQH(i)-1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<R053d>; 
Rnames{i} = 'HQNQ+OH=NQ2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HQNQ'; Gstr{i,2} = 'OH'; 
fHQNQ(i)=fHQNQ(i)-1; fOH(i)=fOH(i)-1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<R053e>; 
Rnames{i} = 'HONQ+OH=NOQ';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONQ'; Gstr{i,2} = 'OH'; 
fHONQ(i)=fHONQ(i)-1; fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R054>;
Rnames{i} = 'O3P+NO2=NO+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

%O3 Tracer
i=i+1; %<R054a>; 
Rnames{i} = 'Q3P+NO2=NO+OQ';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NO2'; 
fQ3P(i)=fQ3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

%O3 Tracer
i=i+1; %<R054b>; 
Rnames{i} = 'Q3P+NOQ=0.5NQ + 0.5NO';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NOQ'; 
fQ3P(i)=fQ3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNQ(i)=fNQ(i)+0.5; fNO(i)=fNO(i)+0.5;

%O3 Tracer
i=i+1; %<R054c>;
Rnames{i} = 'O3P+NOQ=NO+QO NQ+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NOQ'; 
fO3P(i)=fO3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5;

%O3 Tracer
i=i+1; %<R054d>; 
Rnames{i} = 'O3P+NQ2=NQ+OQ';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NQ2'; 
fO3P(i)=fO3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ(i)=fNQ(i)+1;

%O3 Tracer
i=i+1; %<R054e>;
Rnames{i} = 'Q3P+NQ2=NQ+Q2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NQ2'; 
fQ3P(i)=fQ3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ(i)=fNQ(i)+1;

i=i+1; %<R055>;
Rnames{i} = 'O3P+NO2=NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

%O3 Tracer
i=i+1; %<R055a>; 
Rnames{i} = 'Q3P+NO2=NO2Q';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NO2'; 
fQ3P(i)=fQ3P(i)-1; fNO2(i)=fNO2(i)-1; fNO2Q(i)=fNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<R055b>; 
Rnames{i} = 'Q3P+NOQ=NOQ2';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NOQ'; 
fQ3P(i)=fQ3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNOQ2(i)=fNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R055c>; 
Rnames{i} = 'Q3P+NQ2=NQ3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'Q3P'; Gstr{i,2} = 'NQ2'; 
fQ3P(i)=fQ3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNQ3(i)=fNQ3(i)+1; 

%O3 Tracer
i=i+1; %<R055d>; 
Rnames{i} = 'O3P+NQ2=NOQ2';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NQ2'; 
fO3P(i)=fO3P(i)-1; fNQ2(i)=fNQ2(i)-1; fNOQ2(i)=fNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R055e>; 
Rnames{i} = 'O3P+NOQ=NO2Q';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NOQ'; 
fO3P(i)=fO3P(i)-1; fNOQ(i)=fNOQ(i)-1; fNO2Q(i)=fNO2Q(i)+1; 

i=i+1; %<R056>;
Rnames{i} = 'OH+NO2=HNO3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<R056a>; 
Rnames{i} = 'QH+NO2=HNO2Q';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO2'; 
fQH(i)=fQH(i)-1; fNO2(i)=fNO2(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<R056b>; 
Rnames{i} = 'QH+NOQ=HNOQ2';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NOQ'; 
fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R056c>;
Rnames{i} = 'QH+NQ2=HNQ3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NQ2'; 
fQH(i)=fQH(i)-1; fNQ2(i)=fNQ2(i)-1; fHNQ3(i)=fHNQ3(i)+1; 

%O3 Tracer
i=i+1; %<R056d>;
Rnames{i} = 'OH+NQ2=HNOQ2';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NQ2'; 
fOH(i)=fOH(i)-1; fNQ2(i)=fNQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R056e>; 
Rnames{i} = 'OH+NOQ=HNO2Q';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NOQ'; 
fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+1;

i=i+1; %<R057>;
Rnames{i} = 'OH+HNO3=NO3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

%O3 Tracer
i=i+1; %<R057a>; 
Rnames{i} = 'QH+HNO3=NO3+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNO3'; 
fQH(i)=fQH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

%O3 Tracer
i=i+1; %<R057b>; 
Rnames{i} = 'QH+HNO2Q=NO2Q+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNO2Q'; 
fQH(i)=fQH(i)-1; fHNO2Q(i)=fHNO2Q(i)-1; fNO2Q(i)=fNO2Q(i)+1;

%O3 Tracer
i=i+1; %<R057c>; 
Rnames{i} = 'QH+HNOQ2=NOQ2+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNOQ2'; 
fQH(i)=fQH(i)-1; fHNOQ2(i)=fHNOQ2(i)-1; fNOQ2(i)=fNOQ2(i)+1;

%O3 Tracer
i=i+1; %<R057d>; 
Rnames{i} = 'QH+HNQ3=NQ3+H2Q';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HNQ3'; 
fQH(i)=fQH(i)-1; fHNQ3(i)=fHNQ3(i)-1; fNQ3(i)=fNQ3(i)+1;

%O3 Tracer
i=i+1; %<R057e>; 
Rnames{i} = 'OH+HNQ3=NQ3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNQ3'; 
fOH(i)=fOH(i)-1; fHNQ3(i)=fHNQ3(i)-1; fNQ3(i)=fNQ3(i)+1;

%O3 Tracer
i=i+1; %<R057f>; 
Rnames{i} = 'OH+HNOQ2=NOQ2+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNOQ2'; 
fOH(i)=fOH(i)-1; fHNOQ2(i)=fHNOQ2(i)-1; fNOQ2(i)=fNOQ2(i)+1;

%O3 Tracer
i=i+1; %<R057g>;
Rnames{i} = 'OH+HNO2Q=NO2Q+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO2Q'; 
fOH(i)=fOH(i)-1; fHNO2Q(i)=fHNO2Q(i)-1; fNO2Q(i)=fNO2Q(i)+1;

i=i+1; %<R058>;
Rnames{i} = 'OH+NO3=HO2+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R058a>; 
Rnames{i} = 'QH+NO3=HOQ+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO3'; 
fQH(i)=fQH(i)-1; fNO3(i)=fNO3(i)-1; fHOQ(i)=fHOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R058b>; 
Rnames{i} = 'QH+NO2Q=0.5HQ2+0.5NO2 +0.5HOQ+0.5NOQ';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NO2Q'; 
fQH(i)=fQH(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHQ2(i)=fHQ2(i)+0.5; fNO2(i)=fNO2(i)+0.5; fHOQ(i)=fHOQ(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

%O3 Tracer
i=i+1; %<R058c>;
Rnames{i} = 'QH+NOQ2=0.5HQ2+0.5NOQ+0.5HOQ+0.5NQ2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NOQ2'; 
fQH(i)=fQH(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHQ2(i)=fHQ2(i)+0.5; fNOQ(i)=fNOQ(i)+0.5; fHOQ(i)=fHOQ(i)+0.5; fNQ2(i)=fNQ2(i)+0.5;

%O3 Tracer
i=i+1; %<R058d>; 
Rnames{i} = 'QH+NQ3=HQ2+NQ2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'NQ3'; 
fQH(i)=fQH(i)-1; fNQ3(i)=fNQ3(i)-1; fHQ2(i)=fHQ2(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R058e>; 
Rnames{i} = 'OH+NQ3=HOQ+NQ2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NQ3'; 
fOH(i)=fOH(i)-1; fNQ3(i)=fNQ3(i)-1; fHOQ(i)=fHOQ(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R058f>; 
Rnames{i} = 'OH+NOQ2=0.5HO2+0.5NQ2+0.5HOQ+0.5NOQ';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NOQ2'; 
fOH(i)=fOH(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+0.5; fHOQ(i)=fHOQ(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

%O3 Tracer
i=i+1; %<R058g>;
Rnames{i} = 'OH+NO2Q=0.5HOQ+0.5NO2 0.5HO2+0.5NOQ';
k(:,i) = 0.5*2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2Q'; 
fOH(i)=fOH(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHOQ(i)=fHOQ(i)+0.5; fNO2(i)=fNO2(i)+0.5; fHO2(i)=fHO2(i)+0.5; fNOQ(i)=fNOQ(i)+0.5;

i=i+1; %<R059>;
Rnames{i} = 'HO2+NO3=0.7OH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<R059a>; 
Rnames{i} = 'HOQ+NO3=0.35OH+0.35QH+0.3HNO3+0.7NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO3'; 
% %%fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<R059b>; 
Rnames{i} = 'HQ2+NO3=0.7QH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO3'; 
%% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNO3(i)=fNO3(i)-1; fQH(i)=fQH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<R059c>; 
Rnames{i} = 'HQ2+NO2Q=0.7QH+0.3HNO3+0.467NOQ+0.233NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO2Q'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fQH(i)=fQH(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNO2(i)=fNO2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<R059d; 
Rnames{i} = 'HQ2+NOQ2=0.7QH+0.3HNOQ2+0.467NOQ+0.233NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NOQ2'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fQH(i)=fQH(i)+0.7; fHNOQ2(i)=fHNOQ2(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNQ2(i)=fNQ2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<R059e>;
Rnames{i} = 'HQ2+NQ3=0.7QH+0.7NQ2+0.3HNQ3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHQ2(i)=fHQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fQH(i)=fQH(i)+0.7; fNQ2(i)=fNQ2(i)+0.70; fHNQ3(i)=fHNQ3(i)+0.3; %SR 20160406

%O3 Tracer
i=i+1; %<R059f>; 
Rnames{i} = 'HOQ+NQ3=0.35OH+0.35QH+0.3HNQ3+0.7NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNQ3(i)=fNQ3(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fHNQ3(i)=fHNQ3(i)+0.3; fNQ2(i)=fNQ2(i)+0.7; %SR 20160406

%O3 Tracer
i=i+1; %<R059g>; 
Rnames{i} = 'HOQ+NOQ2=0.35OH+0.35QH+0.3HNOQ2+0.467NOQ+0.233NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NOQ2'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fHNOQ2(i)=fHNOQ2(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNQ2(i)=fNQ2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<R059h>;
Rnames{i} = 'HOQ+NO2Q=0.35OH+0.35QH+0.3HNO2Q+0.467NOQ+0.233NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO2Q'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHOQ(i)=fHOQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOH(i)=fOH(i)+0.35; fQH(i)=fQH(i)+0.35; fHNO2Q(i)=fHNO2Q(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNO2(i)=fNO2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<R059i>; 
Rnames{i} = 'HO2+NO2Q=0.7OH+0.3HNO2Q+0.467NOQ+0.233NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2Q'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOH(i)=fOH(i)+0.7; fHNO2Q(i)=fHNO2Q(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNO2(i)=fNO2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<R059j>;
Rnames{i} = 'HO2+NOQ2=0.7OH+0.3HNOQ2+0.467NOQ+0.233NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NOQ2'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOH(i)=fOH(i)+0.7; fHNOQ2(i)=fHNOQ2(i)+0.3; fNOQ(i)=fNOQ(i)+(14/30); fNQ2(i)=fNQ2(i)+(7/30); %SR 20160406

%O3 Tracer
i=i+1; %<R059k>; 
Rnames{i} = 'HO2+NQ3=0.7OH+0.3HNQ3+.7NQ2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNQ3(i)=fNQ3(i)-1; fOH(i)=fOH(i)+0.7; fHNQ3(i)=fHNQ3(i)+0.3; fNQ2(i)=fNQ2(i)+0.7; %SR 20160406

i=i+1; %<R060>;
Rnames{i} = 'NO+NO3=NO2+NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
% fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=2; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; %SR 20160406

%O3 Tracer
i=i+1; %<R060a>; 
Rnames{i} = 'NQ + NO3 = NOQ + NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO3'; 
fNQ(i)=fNQ(i)-1; fNO3(i)=fNO3(i)-1; fNOQ(i)=fNOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R060b>; 
Rnames{i} = 'NQ + NO2Q = 0.333*NQ2 + 0.333*NO2 + 1.333*NOQ';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NO2Q'; 
fNQ(i)=fNQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNQ2(i)=fNQ2(i)+(1/3); fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(4/3); 

%O3 Tracer
i=i+1; %<R060c>; 
Rnames{i} = 'NQ + NOQ2 = NOQ + NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NOQ2'; 
fNQ(i)=fNQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+1; fNQ2(i)=fNQ2(i)+1;  

%O3 Tracer
i=i+1; %<R060d>; 
Rnames{i} = 'NQ + NQ3 = 2*NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NQ'; Gstr{i,2} = 'NQ3'; 
fNQ(i)=fNQ(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+2; 

%O3 Tracer
i=i+1; %<R060e>; 
Rnames{i} = 'NO + NO2Q = NO2 + NOQ';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO2Q'; 
fNO(i)=fNO(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R060f>;
Rnames{i} = 'NO + NOQ2 = 1.333*NOQ + 0.333*NO2 + 0.333*NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NOQ2';  
fNO(i)=fNO(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNO2(i)=fNO2(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/3); %SR 20160406

%O3 Tracer
i=i+1; %<R060g>; 
Rnames{i} = 'NO + NQ3 = NOQ + NQ2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NQ3';  
fNO(i)=fNO(i)-1; fNQ3(i)=fNQ3(i)-1; fNOQ(i)=fNOQ(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R061>;
Rnames{i} = 'NO2+NO3=NO+NO2+O2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R061a>; 
Rnames{i} = 'NOQ+NO3=0.5NO+0.5NQ+NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO3'; 
fNOQ(i)=fNOQ(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R061b>;
Rnames{i} = 'NQ2+NO3=NQ+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO3'; 
fNQ2(i)=fNQ2(i)-1; fNO3(i)=fNO3(i)-1; fNQ(i)=fNQ(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R061c>; 
Rnames{i} = 'NQ2+NO2Q=NQ+0.33NO2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO2Q'; 
fNQ2(i)=fNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNQ(i)=fNQ(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<R061d>;
Rnames{i} = 'NQ2+NOQ2=NQ+0.33NQ2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NOQ2'; 
fNQ2(i)=fNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNQ(i)=fNQ(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<R061e>;
Rnames{i} = 'NQ2+NQ3=NQ+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NQ3'; 
fNQ2(i)=fNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ(i)=fNQ(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R061f>; 
Rnames{i} = 'NOQ+NQ3=0.5NO+0.5NQ+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NQ3'; 
fNOQ(i)=fNOQ(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ(i)=fNQ(i)+0.5; fNO(i)=fNO(i)+0.5; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R061g>;
Rnames{i} = 'NOQ+NOQ2=0.5NO+0.5NQ+0.66NOQ+0.333NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NOQ2'; 
fNOQ(i)=fNOQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);

%O3 Tracer
i=i+1; %<R061h>; 
Rnames{i} = 'NOQ+NO2Q=0.5NO+0.5NQ+0.66NOQ+0.33NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO2Q'; 
fNOQ(i)=fNOQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO(i)=fNO(i)+0.5; fNQ(i)=fNQ(i)+0.5; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<R061i>;
Rnames{i} = 'NO2+NO2Q=NO+0.33NO2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO2Q'; 
fNO2(i)=fNO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<R061j>; 
Rnames{i} = 'NO2+NOQ2=NO+0.33NQ2+0.66NOQ';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NOQ2'; 
fNO2(i)=fNO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO(i)=fNO(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<R061k>;
Rnames{i} = 'NO2+NQ3=NO+NQ2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NQ3'; 
fNO2(i)=fNO2(i)-1; fNQ3(i)=fNQ3(i)-1; fNO(i)=fNO(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R062>;
Rnames{i} = 'NO3+NO3=NO2+NO2+O2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
% fNO3(i)=fNO3(i)-2; fNO2(i)=2;
fNO3(i)=fNO3(i)-2; fNO2(i)=fNO2(i)+2; %SR 20160406

%O3 Tracer
i=i+1; %<R062a>; 
Rnames{i} = 'NO2Q + NO3 = (2/3)*NOQ + (4/3)NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2Q'; Gstr{i,2} = 'NO3';
fNO2Q(i)=fNO2Q(i)-1; fNO3(i)=fNO3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(4/3);

%O3 Tracer
i=i+1; %<R062b>; 
Rnames{i} = 'NOQ2 + NO3 = (2/3)*NOQ + (1/3)*NQ2 + NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NOQ2'; Gstr{i,2} = 'NO3';
fNOQ2(i)=fNOQ2(i)-1; fNO3(i)=fNO3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<R062c>;
Rnames{i} = 'NQ3 + NO3 = NQ2 + NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NQ3'; Gstr{i,2} = 'NO3';
fNQ3(i)=fNQ3(i)-1; fNO3(i)=fNO3(i)-1; fNQ2(i)=fNQ2(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R062d>;
Rnames{i} = 'NQ3 + NO2Q = NQ2 + (2/3)*NOQ + (1/3)*NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NQ3'; Gstr{i,2} = 'NO2Q';
fNQ3(i)=fNQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNQ2(i)=fNQ2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<R062e>; 
Rnames{i} = 'NQ3 + NQ3 = NQ2 + NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NQ3'; Gstr{i,2} = 'NQ3';
fNQ3(i)=fNQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R062f>; 
Rnames{i} = 'NO2Q + NO2Q = (4/3)*NOQ + (2/3)*NO2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2Q'; Gstr{i,2} = 'NO2Q';
fNO2Q(i)=fNO2Q(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNO2(i)=fNO2(i)+(2/3);

%O3 Tracer
i=i+1; %<R062g>; 
Rnames{i} = 'NO2Q + NOQ2 = (4/3)*NOQ (1/3)*NO2 + (1/3)*NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2Q'; Gstr{i,2} = 'NOQ2';
fNO2Q(i)=fNO2Q(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNO2(i)=fNO2(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/3);

%O3 Tracer
i=i+1; %<R062h>;
Rnames{i} =  'NOQ2 + NOQ2 = (4/3)*NOQ + (2/3)*NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NOQ2'; Gstr{i,2} = 'NOQ2';
fNOQ2(i)=fNOQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(2/3);

%O3 Tracer
i=i+1; %<R062i>;
Rnames{i} = 'NOQ2 + NQ3 = (2/3)*NOQ + (4/3)*NQ2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NOQ2'; Gstr{i,2} = 'NQ3';
fNOQ2(i)=fNOQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(4/3);

i=i+1; %<R063>;
Rnames{i} = 'NO2+NO3=N2O5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

%O3 Tracer
i=i+1; %<R063a>;
Rnames{i} = 'NOQ+NO3=N2O4Q';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO3'; 
fNOQ(i)=fNOQ(i)-1; fNO3(i)=fNO3(i)-1; fN2O4Q(i)=fN2O4Q(i)+1; 

%O3 Tracer
i=i+1; %<R063b>; 
Rnames{i} = 'NQ2+NO3=N2O3Q2';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO3'; 
fNQ2(i)=fNQ2(i)-1; fNO3(i)=fNO3(i)-1; fN2O3Q2(i)=fN2O3Q2(i)+1; 

%O3 Tracer
i=i+1; %<R063c>; 
Rnames{i} = 'NQ2+NO2Q=N2O2Q3';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NO2Q'; 
fNQ2(i)=fNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fN2O2Q3(i)=fN2O2Q3(i)+1; 

%O3 Tracer
i=i+1; %<R063d>; 
Rnames{i} = 'NQ2+NOQ2=N2OQ4';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NOQ2'; 
fNQ2(i)=fNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fN2OQ4(i)=fN2OQ4(i)+1; 

%O3 Tracer
i=i+1; %<R063e>; 
Rnames{i} = 'NQ2+NQ3=N2Q5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NQ2'; Gstr{i,2} = 'NQ3'; 
fNQ2(i)=fNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fN2Q5(i)=fN2Q5(i)+1; 

%O3 Tracer
i=i+1; %<R063f>; 
Rnames{i} = 'NOQ+NQ3=N2OQ4';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NQ3'; 
fNOQ(i)=fNOQ(i)-1; fNQ3(i)=fNQ3(i)-1; fN2OQ4(i)=fN2OQ4(i)+1;

%O3 Tracer
i=i+1; %<R063g>; 
Rnames{i} = 'NOQ+NOQ2=N2O2Q3';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NOQ2'; 
fNOQ(i)=fNOQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fN2O2Q3(i)=fN2O2Q3(i)+1; 

%O3 Tracer
i=i+1; %<R063h>; 
Rnames{i} = 'NOQ+NO2Q=N2O3Q2';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NOQ'; Gstr{i,2} = 'NO2Q'; 
fNOQ(i)=fNOQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fN2O3Q2(i)=fN2O3Q2(i)+1;

%O3 Tracer
i=i+1; %<R063i>; 
Rnames{i} = 'NO2+NO2Q=N2O4Q';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO2Q'; 
fNO2(i)=fNO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fN2O4Q(i)=fN2O4Q(i)+1;

%O3 Tracer
i=i+1; %<R063j>; 
Rnames{i} = 'NO2+NOQ2=N2O3Q2';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NOQ2'; 
fNO2(i)=fNO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fN2O3Q2(i)=fN2O3Q2(i)+1;

%O3 Tracer
i=i+1; %<R063k>; 
Rnames{i} = 'NO2+NQ3=N2O2Q3';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2';  Gstr{i,2} ='NQ3'; 
fNO2(i)=fNO2(i)-1; fNQ3(i)=fNQ3(i)-1; fN2O2Q3(i)=fN2O2Q3(i)+1;

i=i+1; %<R064>;
Rnames{i} = 'N2O5= NO2+NO3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

%O3 Tracer
i=i+1; %<R064a>;
Rnames{i} = 'N2O4Q = (2/5)*NOQ + (2/5)*NO3 + (3/5)*NO2 + (3/5)*NO2Q ';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O4Q';
fN2O4Q(i)=fN2O4Q(i)-1; fNOQ(i)=fNOQ(i)+(2/5); fNO3(i)=fNO3(i)+(2/5); fNO2(i)=fNO2(i)+(3/5); fNO2Q(i)=fNO2Q(i)+(3/5);

%O3 Tracer
i=i+1; %<R064b>; 
Rnames{i} = 'N2O3Q2 =  0.3*NO2 + 0.6*NOQ + 0.1*NQ2 + 0.1NO3 + 0.6*NO2Q + 0.3*NOQ2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O3Q2';
fN2O3Q2(i)=fN2O3Q2(i)-1; fNO2(i)=fNO2(i)+0.3; fNOQ(i)=fNOQ(i)+0.6; 
fNQ2(i)=fNQ2(i)+0.1; fNO3(i)=fNO3(i)+0.1; fNO2Q(i)=fNO2Q(i)+0.6; fNOQ2(i)=fNOQ2(i)+0.3;

%O3 Tracer
i=i+1; %<R064c>; 
Rnames{i} = 'N2O2Q3 = 0.1*NO2 + 0.6*NOQ + 0.3*NQ2 + 0.3*NO2Q + 0.6*NOQ2 + 0.1*NQ3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O2Q3';
fN2O2Q3(i)=fN2O2Q3(i)-1; fNO2(i)=fNO2(i)+0.1; fNOQ(i)=fNOQ(i)+0.6; 
fNQ2(i)=fNQ2(i)+0.3; fNO2Q(i)=fNO2Q(i)+0.3; fNOQ2(i)=fNOQ2(i)+0.6; fNQ3(i)=fNQ3(i)+0.1;

%O3 Tracer
i=i+1; %<R064d>; 
Rnames{i} = 'N2OQ4 = 0.4*NOQ + 0.6*NQ2 + 0.6*NOQ2 + 0.4*NQ3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2OQ4';
fN2OQ4(i)=fN2OQ4(i)-1; fNOQ(i)=fNOQ(i)+0.4; fNQ2(i)=fNQ2(i)+0.6; 
fNOQ2(i)=fNOQ2(i)+0.6; fNQ3(i)=fNQ3(i)+0.4;

%O3 Tracer
i=i+1; %<R064e>; 
Rnames{i} = 'N2Q5 = NQ3 + NQ2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2Q5';
fN2Q5(i)=fN2Q5(i)-1; fNQ3(i)=fNQ3(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R065>;
Rnames{i} = 'N2O5+H2O=HNO3+HNO3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O5'; 
% fN2O5(i)=fN2O5(i)-1; fHNO3(i)=2; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; %SR 20160406

%O3 Tracer
i=i+1; %<R065a>;
Rnames{i} = 'N2O4Q +H2O = (2/5)*HNO2Q + (2/5)*HNO3 + (3/5)*HNO3 + (3/5)*HNO2Q ';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O4Q'; 
fN2O4Q(i)=fN2O4Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+(2/5); fHNO3(i)=fHNO3(i)+(2/5); fHNO3(i)=fHNO3(i)+(3/5); fHNO2Q(i)=fHNO2Q(i)+(3/5);

%O3 Tracer
i=i+1; %<R065b>;
Rnames{i} = 'N2O3Q2 +H2O =  0.3*HNO3 + 0.6*HNO2Q + 0.1*HNOQ2 + 0.1HNO3 + 0.6*HNO2Q + 0.3*HNOQ2';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O3Q2'; 
fN2O3Q2(i)=fN2O3Q2(i)-1; fHNO3(i)=fHNO3(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.6; 
fHNOQ2(i)=fHNOQ2(i)+0.1; fHNO3(i)=fHNO3(i)+0.1; fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3;

%O3 Tracer
i=i+1; %<R065c>;
Rnames{i} = 'N2O2Q3 +H2O = 0.1*HNO3 + 0.6*HNO2Q + 0.3*HNOQ2 + 0.3*HNO2Q + 0.6*HNOQ2 + 0.1*HNQ3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O2Q3'; 
fN2O2Q3(i)=fN2O2Q3(i)-1; fHNO3(i)=fHNO3(i)+0.1;  fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.3; 
fHNOQ2(i)=fHNOQ2(i)+0.6;  fHNQ3(i)=fHNQ3(i)+0.1;  

%O3 Tracer
i=i+1; %<R065d>; 
Rnames{i} = 'N2OQ4 +H2O = 0.4*HNO2Q + 0.6*HNOQ2 + 0.6*HNOQ2 + 0.4*HNQ3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2OQ4'; 
fN2OQ4(i)=fN2OQ4(i)-1; fHNO2Q(i)=fHNO2Q(i)+0.4; fHNOQ2(i)=fHNOQ2(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.6;
fHNQ3(i)=fHNQ3(i)+0.4; 

%O3 Tracer
i=i+1; %<R065e>; 
Rnames{i} = 'N2Q5 +H2O = HNQ3 + HNOQ2';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2Q5'; 
fN2Q5(i)=fN2Q5(i)-1; fHNQ3(i)=fHNQ3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1;

i=i+1; %<R066>;
Rnames{i} = 'HO2+NO2=HO2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

%O3 Tracer
i=i+1; %<R066a>; 
Rnames{i} = 'HOQ+NO2=HOQNO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NO2'; 
fHOQ(i)=fHOQ(i)-1; fNO2(i)=fNO2(i)-1; fHOQNO2(i)=fHOQNO2(i)+1; 

%O3 Tracer
i=i+1; %<R066b>; 
Rnames{i} = 'HQ2+NO2=HQ2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NO2'; 
fHQ2(i)=fHQ2(i)-1; fNO2(i)=fNO2(i)-1; fHQ2NO2(i)=fHQ2NO2(i)+1; 

%O3 Tracer
i=i+1; %<R066c>;
Rnames{i} = 'HQ2+NQ2=HQ2NQ2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NQ2'; 
fHQ2(i)=fHQ2(i)-1; fNQ2(i)=fNQ2(i)-1; fHQ2NQ2(i)=fHQ2NQ2(i)+1; 

%O3 Tracer
i=i+1; %<R066d>; 
Rnames{i} = 'HQ2+NOQ=HQ2NOQ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HQ2'; Gstr{i,2} = 'NOQ'; 
fHQ2(i)=fHQ2(i)-1; fNOQ(i)=fNOQ(i)-1; fHQ2NOQ(i)=fHQ2NOQ(i)+1;

%O3 Tracer
i=i+1; %<R066e>; 
Rnames{i} = 'HOQ+NOQ=HOQNOQ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NOQ'; 
fHOQ(i)=fHOQ(i)-1; fNOQ(i)=fNOQ(i)-1; fHOQNOQ(i)=fHOQNOQ(i)+1;

%O3 Tracer
i=i+1; %<R066f>; 
Rnames{i} = 'HOQ+NQ2=HOQNQ2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HOQ'; Gstr{i,2} = 'NQ2'; 
fHOQ(i)=fHOQ(i)-1; fNQ2(i)=fNQ2(i)-1; fHOQNQ2(i)=fHOQNQ2(i)+1;

%O3 Tracer
i=i+1; %<R066g>; 
Rnames{i} = 'HO2+NQ2=HO2NQ2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NQ2'; 
fHO2(i)=fHO2(i)-1; fNQ2(i)=fNQ2(i)-1; fHO2NQ2(i)=fHO2NQ2(i)+1;

%O3 Tracer
i=i+1; %<R066h>; 
Rnames{i} = 'HO2+NOQ=HO2NOQ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NOQ'; 
fHO2(i)=fHO2(i)-1; fNOQ(i)=fNOQ(i)-1; fHO2NOQ(i)=fHO2NOQ(i)+1;

i=i+1; %<R067>;
Rnames{i} = 'HO2NO2=HO2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R067a>; 
Rnames{i} = 'HOQNO2=HOQ+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HOQNO2'; 
fHOQNO2(i)=fHOQNO2(i)-1; fHOQ(i)=fHOQ(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R067b>; 
Rnames{i} = 'HQ2NO2=HQ2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HQ2NO2'; 
fHQ2NO2(i)=fHQ2NO2(i)-1; fHQ2(i)=fHQ2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R067c>; 
Rnames{i} = 'HQ2NOQ=HQ2+NOQ';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HQ2NOQ'; 
fHQ2NOQ(i)=fHQ2NOQ(i)-1; fHQ2(i)=fHQ2(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R067d>; 
Rnames{i} = 'HQ2NQ2=HQ2+NQ2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HQ2NQ2'; 
fHQ2NQ2(i)=fHQ2NQ2(i)-1; fHQ2(i)=fHQ2(i)+1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<R067e>; 
Rnames{i} = 'HOQNQ2=HOQ+NQ2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HOQNQ2'; 
fHOQNQ2(i)=fHOQNQ2(i)-1; fHOQ(i)=fHOQ(i)+1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<R067f>;
Rnames{i} = 'HOQNOQ=HOQ+NOQ';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HOQNOQ'; 
fHOQNOQ(i)=fHOQNOQ(i)-1; fHOQ(i)=fHOQ(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R067g>;
Rnames{i} = 'HO2NOQ=HO2+NOQ';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NOQ'; 
fHO2NOQ(i)=fHO2NOQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R067h>;
Rnames{i} = 'HO2NQ2=HO2+NQ2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NQ2'; 
fHO2NQ2(i)=fHO2NQ2(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R068>;
Rnames{i} = 'OH+HO2NO2=NO2+H2O+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R068a>;
Rnames{i} = 'QH+HO2NO2=NO2+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2NO2'; 
fQH(i)=fQH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R068b>;
Rnames{i} = 'QH+HOQNO2=NO2+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQNO2'; 
fQH(i)=fQH(i)-1; fHOQNO2(i)=fHOQNO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R068c>; 
Rnames{i} = 'QH+HQ2NO2=NO2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2NO2'; 
fQH(i)=fQH(i)-1; fHQ2NO2(i)=fHQ2NO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R068d>; 
Rnames{i} = 'QH+HQ2NOQ=NOQ+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2NOQ'; 
fQH(i)=fQH(i)-1; fHQ2NOQ(i)=fHQ2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R068e>; 
Rnames{i} = 'QH+HQ2NQ2=NQ2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HQ2NQ2'; 
fQH(i)=fQH(i)-1; fHQ2NQ2(i)=fHQ2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R068f>; 
Rnames{i} = 'QH+HOQNQ2=NQ2+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQNQ2'; 
fQH(i)=fQH(i)-1; fHOQNQ2(i)=fHOQNQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R068g>; 
Rnames{i} = 'QH+HOQNOQ=NOQ+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HOQNOQ'; 
fQH(i)=fQH(i)-1; fHOQNOQ(i)=fHOQNOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R068h>; 
Rnames{i} = 'QH+HO2NQ2=NQ2+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2NQ2'; 
fQH(i)=fQH(i)-1; fHO2NQ2(i)=fHO2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R068i>;
Rnames{i} = 'QH+HO2NOQ=NOQ+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HO2NOQ'; 
fQH(i)=fQH(i)-1; fHO2NOQ(i)=fHO2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R068j>; 
Rnames{i} = 'OH+HOQNO2=NO2+H2O+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQNO2'; 
fOH(i)=fOH(i)-1; fHOQNO2(i)=fHOQNO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R068k>;
Rnames{i} = 'OH+HQ2NO2=NO2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2NO2'; 
fOH(i)=fOH(i)-1; fHQ2NO2(i)=fHQ2NO2(i)-1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R068l>; 
Rnames{i} = 'OH+HQ2NOQ=NOQ+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2NOQ'; 
fOH(i)=fOH(i)-1; fHQ2NOQ(i)=fHQ2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R068m>; 
Rnames{i} = 'OH+HQ2NQ2=NQ2+H2Q+Q2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HQ2NQ2'; 
fOH(i)=fOH(i)-1; fHQ2NQ2(i)=fHQ2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R068n>; 
Rnames{i} = 'OH+HOQNQ2=NQ2+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQNQ2'; 
fOH(i)=fOH(i)-1; fHOQNQ2(i)=fHOQNQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R068o>; 
Rnames{i} = 'OH+HOQNOQ=NOQ+H2Q+OQ';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOQNOQ'; 
fOH(i)=fOH(i)-1; fHOQNOQ(i)=fHOQNOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

%O3 Tracer
i=i+1; %<R068p>; 
Rnames{i} = 'OH+HO2NQ2=NQ2+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NQ2'; 
fOH(i)=fOH(i)-1; fHO2NQ2(i)=fHO2NQ2(i)-1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R068q>;
Rnames{i} = 'OH+HO2NOQ=NOQ+H2Q+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NOQ'; 
fOH(i)=fOH(i)-1; fHO2NOQ(i)=fHO2NOQ(i)-1; fNOQ(i)=fNOQ(i)+1;

i=i+1; %<R069>;
Rnames{i} = 'OH+SO2=HO2+SULF';
k(:,i) = K_OH_SO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHO2(i)=fHO2(i)+1; fSULF(i)=fSULF(i)+1; 

%O3 Tracer
i=i+1; %<R069a>;
Rnames{i} = 'QH+SO2=HO2+SULF';
k(:,i) = K_OH_SO2;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'SO2'; 
fQH(i)=fQH(i)-1; fSO2(i)=fSO2(i)-1; fHO2(i)=fHO2(i)+1; fSULF(i)=fSULF(i)+1; 

i=i+1; %<R070>;
Rnames{i} = 'OH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

%O3 Tracer
i=i+1; %<R070a>;
Rnames{i} = 'QH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'CO'; 
fQH(i)=fQH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

%% VOC+OH
i=i+1; %<R071>;
Rnames{i} = 'OH+CH4=MO2+H2O';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMO2(i)=fMO2(i)+1;

%O3 Tracer
i=i+1; %<R071a>;
Rnames{i} = 'QH+CH4=MO2+H2O';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'CH4'; 
fQH(i)=fQH(i)-1; fCH4(i)=fCH4(i)-1; fMO2(i)=fMO2(i)+1;

i=i+1; %<R072>;
Rnames{i} = 'ETH+OH=ETHP+H2O';
k(:,i) = 6.90E-12.*exp(-1000./T);
Gstr{i,1} = 'ETH'; Gstr{i,2} = 'OH'; 
fETH(i)=fETH(i)-1; fOH(i)=fOH(i)-1; fETHP(i)=fETHP(i)+1; 

%O3 Tracer
i=i+1; %<R072a>;
Rnames{i} = 'ETH+QH=ETHP+H2O';
k(:,i) = 6.90E-12.*exp(-1000./T);
Gstr{i,1} = 'ETH'; Gstr{i,2} = 'QH'; 
fETH(i)=fETH(i)-1; fQH(i)=fQH(i)-1; fETHP(i)=fETHP(i)+1; 

i=i+1; %<R073>;
Rnames{i} = 'OH+HC3=HC3P';
k(:,i) = 7.68e-12.*exp(-370./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3'; 
fOH(i)=fOH(i)-1; fHC3(i)=fHC3(i)-1; fHC3P(i)=fHC3P(i)+1; 

%O3 Tracer
i=i+1; %<R073a>;
Rnames{i} = 'QH+HC3=HC3P';
k(:,i) = 7.68e-12.*exp(-370./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HC3'; 
fQH(i)=fQH(i)-1; fHC3(i)=fHC3(i)-1; fHC3P(i)=fHC3P(i)+1; 

i=i+1; %<R074>;
Rnames{i} = 'OH+HC5=HC5P+H2O';
k(:,i) = 1.01e-11.*exp(-245./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC5'; 
fOH(i)=fOH(i)-1; fHC5(i)=fHC5(i)-1; fHC5P(i)=fHC5P(i)+1;

%O3 Tracer
i=i+1; %<R074a>;
Rnames{i} = 'QH+HC5=HC5P+H2O';
k(:,i) = 1.01e-11.*exp(-245./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HC5'; 
fQH(i)=fQH(i)-1; fHC5(i)=fHC5(i)-1; fHC5P(i)=fHC5P(i)+1;

i=i+1; %<R075>;
Rnames{i} = 'OH+HC8=0.049HO2+0.951HC8P+H2O+0.025ALD+0.024HKET';
% k(:,i) = 2.82e-11.*exp(-273./T).*0.951;
k(:,i) = 2.82e-11.*exp(-273./T); %SR 20160405
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC8'; 
% fOH(i)=fOH(i)-1; fHC8(i)=fHC8(i)-1; fHC8P(i)=0.951; fHKET(i)=0.024; fALD(i)=0.025; fHO2(i)=0.049; 
fOH(i)=fOH(i)-1; fHC8(i)=fHC8(i)-1; fHC8P(i)=fHC8P(i)+0.951; fHKET(i)=fHKET(i)+0.024; fALD(i)=fALD(i)+0.025; fHO2(i)=fHO2(i)+0.049; %SR 20160406

%O3 Tracer
i=i+1; %<R075a>;
Rnames{i} = 'QH+HC8=0.049HO2+0.951HC8P+H2O+0.025ALD+0.024HKET';
% k(:,i) = 2.82e-11.*exp(-273./T).*0.951;
k(:,i) = 2.82e-11.*exp(-273./T); %SR 20160405
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HC8'; 
% fQH(i)=fQH(i)-1; fHC8(i)=fHC8(i)-1; fHC8P(i)=0.951; fHKET(i)=0.024; fALD(i)=0.025; fHO2(i)=0.049; 
fOH(i)=fOH(i)-1; fHC8(i)=fHC8(i)-1; fHC8P(i)=fHC8P(i)+0.951; fHKET(i)=fHKET(i)+0.024; fALD(i)=fALD(i)+0.025; fHO2(i)=fHO2(i)+0.049; %SR 20160406

i=i+1; %<R076>;
Rnames{i} = 'ETE+OH=ETEP';
k(:,i) = K_OH_ETE;
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'OH'; 
fETE(i)=fETE(i)-1; fOH(i)=fOH(i)-1; fETEP(i)=fETEP(i)+1; 

%O3 Tracer
i=i+1; %<R076a>;
Rnames{i} = 'ETE+QH=ETEP';
k(:,i) = K_OH_ETE;
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'QH'; 
fETE(i)=fETE(i)-1; fQH(i)=fQH(i)-1; fETEP(i)=fETEP(i)+1; 

i=i+1; %<R077>;
Rnames{i} = 'OLT+OH=OLTP';
k(:,i) = 5.72E-12.*exp(500./T) ;
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'OH'; 
fOLT(i)=fOLT(i)-1; fOH(i)=fOH(i)-1; fOLTP(i)=fOLTP(i)+1; 

%O3 Tracer
i=i+1; %<R077a>;
Rnames{i} = 'OLT+QH=OLTP';
k(:,i) = 5.72E-12.*exp(500./T) ;
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'QH'; 
fOLT(i)=fOLT(i)-1; fQH(i)=fQH(i)-1; fOLTP(i)=fOLTP(i)+1; 

i=i+1; %<R078>;
Rnames{i} = 'OLI+OH=OLIP';
k(:,i) = 1.33E-11.*exp(500./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'OH'; 
fOLI(i)=fOLI(i)-1; fOH(i)=fOH(i)-1; fOLIP(i)=fOLIP(i)+1; 

%O3 Tracer
i=i+1; %<R078a>;
Rnames{i} = 'OLI+QH=OLIP';
k(:,i) = 1.33E-11.*exp(500./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'QH'; 
fOLI(i)=fOLI(i)-1; fQH(i)=fQH(i)-1; fOLIP(i)=fOLIP(i)+1; 

i=i+1; %<R079>;
Rnames{i} = 'DIEN+OH=OLIP';
k(:,i) = 1.48E-11.*exp(448./T);
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'OH'; 
fDIEN(i)=fDIEN(i)-1; fOH(i)=fOH(i)-1; fOLIP(i)=fOLIP(i)+1; 

%O3 Tracer
i=i+1; %<R079a>;
Rnames{i} = 'DIEN+QH=OLIP';
k(:,i) = 1.48E-11.*exp(448./T);
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'QH'; 
fDIEN(i)=fDIEN(i)-1; fQH(i)=fQH(i)-1; fOLIP(i)=fOLIP(i)+1; 

i=i+1; %<R080>;
Rnames{i} = 'OH+ACE=0.35ORA1+0.35CO+0.35HO2+0.65GLY+0.65OH';
k(:,i) = K_OH_ACE;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACE'; 
fOH(i)=fOH(i)-1; fACE(i)=fACE(i)-1; fORA1(i)=fORA1(i)+0.35; fCO(i)=fCO(i)+0.35;
fHO2(i)=fHO2(i)+0.35; fGLY(i)=fGLY(i)+0.65; fOH(i)=fOH(i)+0.65;

%O3 Tracer
i=i+1; %<R080a>;
Rnames{i} = 'QH+ACE=0.35ORA1+0.35CO+0.35HO2+0.65GLY+0.65OH';
k(:,i) = K_OH_ACE;
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ACE'; 
fQH(i)=fQH(i)-1; fACE(i)=fACE(i)-1; fORA1(i)=fORA1(i)+0.35; fCO(i)=fCO(i)+0.35;
fHO2(i)=fHO2(i)+0.35; fGLY(i)=fGLY(i)+0.65; fOH(i)=fOH(i)+0.65;

i=i+1; %<R081>;
Rnames{i} = 'BEN+OH=0.648 HO2+0.352 BENP+0.118 EPX+0.53 PHEN';
k(:,i) = 2.33E-12.*exp(-193./T);
Gstr{i,1} = 'BEN'; Gstr{i,2} = 'OH'; 
fBEN(i)=fBEN(i)-1; fOH(i)=fOH(i)-1; fPHEN(i)=fPHEN(i)+0.53; fHO2(i)=fHO2(i)+0.648; 
fEPX(i)=fEPX(i)+0.118; fBENP(i)=fBENP(i)+0.352; 

%O3 Tracer
i=i+1; %<R081a>;
Rnames{i} = 'BEN+QH=0.648 HO2+0.352 BENP+0.118 EPX+0.53 PHEN';
k(:,i) = 2.33E-12.*exp(-193./T);
Gstr{i,1} = 'BEN'; Gstr{i,2} = 'QH'; 
fBEN(i)=fBEN(i)-1; fQH(i)=fQH(i)-1; fPHEN(i)=fPHEN(i)+0.53; fHO2(i)=fHO2(i)+0.648; 
fEPX(i)=fEPX(i)+0.118; fBENP(i)=fBENP(i)+0.352; 

i=i+1; %<R082>;
Rnames{i} = 'TOL+OH=0.177 HO2+0.763 TR2+0.06 TLP1+0.177 CSL';
k(:,i) = 1.81E-12.*exp(354./T);
Gstr{i,1} = 'TOL'; Gstr{i,2} = 'OH'; 
fTOL(i)=fTOL(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fTR2(i)=fTR2(i)+0.763;
fTLP1(i)=fTLP1(i)+0.06; fCSL(i)=fCSL(i)+0.177; 

%O3 Tracer
i=i+1; %<R082a>;
Rnames{i} = 'TOL+QH=0.177 HO2+0.763 TR2+0.06 TLP1+0.177 CSL';
k(:,i) = 1.81E-12.*exp(354./T);
Gstr{i,1} = 'TOL'; Gstr{i,2} = 'QH'; 
fTOL(i)=fTOL(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.177; fTR2(i)=fTR2(i)+0.763;
fTLP1(i)=fTLP1(i)+0.06; fCSL(i)=fCSL(i)+0.177; 

i=i+1; %<R083>;
Rnames{i} = 'XYM+OH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL';
k(:,i) = 2.31E-11;
Gstr{i,1} = 'XYM'; Gstr{i,2} = 'OH'; 
fXYM(i)=fXYM(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

%O3 Tracer
i=i+1; %<R083a>;
Rnames{i} = 'XYM+QH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL';
k(:,i) = 2.31E-11;
Gstr{i,1} = 'XYM'; Gstr{i,2} = 'QH'; 
fXYM(i)=fXYM(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

i=i+1;%<R084>;
Rnames{i} = 'XYP+OH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL';
k(:,i) = 1.43E-11;
Gstr{i,1} = 'XYP'; Gstr{i,2} = 'OH'; 
fXYP(i)=fXYP(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

%O3 Tracer
i=i+1;%<R084a>;
Rnames{i} = 'XYP+QH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL';
k(:,i) = 1.43E-11;
Gstr{i,1} = 'XYP'; Gstr{i,2} = 'QH'; 
fXYP(i)=fXYP(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

i=i+1; %<R085>;
Rnames{i} = 'XYO+OH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL'; %mmarvin 20151020
k(:,i) = 1.36E-11;
Gstr{i,1} = 'XYO'; Gstr{i,2} = 'OH'; 
fXYO(i)=fXYO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

%O3 Tracer
i=i+1; %<R085a>;
Rnames{i} = 'XYO+QH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL'; %mmarvin 20151020
k(:,i) = 1.36E-11;
Gstr{i,1} = 'XYO'; Gstr{i,2} = 'QH'; 
fXYO(i)=fXYO(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

i=i+1; %<R086>;
Rnames{i} = 'ISO+OH=ISOP';
k(:,i) = 2.54E-11.*exp(410./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'OH'; 
fISO(i)=fISO(i)-1; fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)+1; 

%O3 Tracer
i=i+1; %<R086a>;
Rnames{i} = 'ISO+QH=ISOP';
k(:,i) = 2.54E-11.*exp(410./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'QH'; 
fISO(i)=fISO(i)-1; fQH(i)=fQH(i)-1; fISOP(i)=fISOP(i)+1; 

i=i+1; %<R087>;
Rnames{i} = 'API+OH=APIP';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'OH'; 
fAPI(i)=fAPI(i)-1; fOH(i)=fOH(i)-1; fAPIP(i)=fAPIP(i)+1; 

%O3 Tracer
i=i+1; %<R087a>;
Rnames{i} = 'API+QH=APIP';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'QH'; 
fAPI(i)=fAPI(i)-1; fQH(i)=fQH(i)-1; fAPIP(i)=fAPIP(i)+1; 

i=i+1; %<R088>;
Rnames{i} = 'LIM+OH=LIMP';
k(:,i) = 4.20e-11.*exp(401./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'OH'; 
fLIM(i)=fLIM(i)-1; fOH(i)=fOH(i)-1; fLIMP(i)=fLIMP(i)+1; 

%O3 Tracer
i=i+1; %<R088a>;
Rnames{i} = 'LIM+QH=LIMP';
k(:,i) = 4.20e-11.*exp(401./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'QH'; 
fLIM(i)=fLIM(i)-1; fQH(i)=fQH(i)-1; fLIMP(i)=fLIMP(i)+1; 

%% oVOC+OH
i=i+1; %<R089>;
Rnames{i} = 'OH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R089a>;
Rnames{i} = 'QH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'HCHO'; 
fQH(i)=fQH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R090>;
Rnames{i} = 'OH+ACD=ACO3+H2O';
k(:,i) = 4.38E-12.*exp(366./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACD'; 
fOH(i)=fOH(i)-1; fACD(i)=fACD(i)-1; fACO3(i)=fACO3(i)+1;

%O3 Tracer
i=i+1; %<R090a>;
Rnames{i} = 'QH+ACD=ACO3+H2O';
k(:,i) = 4.38E-12.*exp(366./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ACD'; 
fQH(i)=fQH(i)-1; fACD(i)=fACD(i)-1; fACO3(i)=fACO3(i)+1;

i=i+1; %<R091>;
Rnames{i} = 'OH+ALD=RCO3+H2O';
k(:,i) = 5.10E-12.*exp(405./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALD'; 
fOH(i)=fOH(i)-1; fALD(i)=fALD(i)-1; fRCO3(i)=fRCO3(i)+1;

%O3 Tracer
i=i+1; %<R091a>;
Rnames{i} = 'QH+ALD=RCO3+H2O';
k(:,i) = 5.10E-12.*exp(405./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ALD'; 
fQH(i)=fQH(i)-1; fALD(i)=fALD(i)-1; fRCO3(i)=fRCO3(i)+1;

i=i+1; %<R092>;
Rnames{i} = 'ACT+OH=ACTP+H2O';
k(:,i) = 1.39E-13+3.72E-11.*exp(-2044./T);
Gstr{i,1} = 'ACT'; Gstr{i,2} = 'OH'; 
fACT(i)=fACT(i)-1; fOH(i)=fOH(i)-1; fACTP(i)=fACTP(i)+1; 

%O3 Tracer
i=i+1; %<R092a>;
Rnames{i} = 'ACT+QH=ACTP+H2O';
k(:,i) = 1.39E-13+3.72E-11.*exp(-2044./T);
Gstr{i,1} = 'ACT'; Gstr{i,2} = 'QH'; 
fACT(i)=fACT(i)-1; fQH(i)=fQH(i)-1; fACTP(i)=fACTP(i)+1; 

i=i+1; %<R093>;
Rnames{i} = 'OH+MEK=MEKP+H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MEK'; 
fOH(i)=fOH(i)-1; fMEK(i)=fMEK(i)-1; fMEKP(i)=fMEKP(i)+1; 

%O3 Tracer
i=i+1; %<R093a>;
Rnames{i} = 'QH+MEK=MEKP+H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'MEK'; 
fQH(i)=fQH(i)-1; fMEK(i)=fMEK(i)-1; fMEKP(i)=fMEKP(i)+1; 

i=i+1; %<R094>;
Rnames{i} = 'OH+KET=KETP+H2O';
k(:,i) = 2.80E-12.*exp(10./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'KET'; 
fOH(i)=fOH(i)-1; fKET(i)=fKET(i)-1; fKETP(i)=fKETP(i)+1; 

%O3 Tracer
i=i+1; %<R094a>;
Rnames{i} = 'QH+KET=KETP+H2O';
k(:,i) = 2.80E-12.*exp(10./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'KET'; 
fQH(i)=fQH(i)-1; fKET(i)=fKET(i)-1; fKETP(i)=fKETP(i)+1; 

i=i+1; %<R095>;
Rnames{i} = 'HKET+OH=HO2+MGLY+H2O';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'HKET'; Gstr{i,2} = 'OH'; 
fHKET(i)=fHKET(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

%O3 Tracer
i=i+1; %<R095a>;
Rnames{i} = 'HKET+QH=HO2+MGLY+H2O';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'HKET'; Gstr{i,2} = 'QH'; 
fHKET(i)=fHKET(i)-1; fQH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

i=i+1; %<R096>;
Rnames{i} = 'MACR+OH=0.57 MACP+0.43 MCP';
k(:,i) = 8.00E-12.*exp(380./T); %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'OH'; 
fMACR(i)=fMACR(i)-1; fOH(i)=fOH(i)-1; fMACP(i)=fMACP(i)+0.57; fMCP(i)=fMCP(i)+0.43; 

%O3 Tracer>;
i=i+1; %<R096a
Rnames{i} = 'MACR+QH=0.57 MACP+0.43 MCP';
k(:,i) = 8.00E-12.*exp(380./T); %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'QH'; 
fMACR(i)=fMACR(i)-1; fQH(i)=fQH(i)-1; fMACP(i)=fMACP(i)+0.57; fMCP(i)=fMCP(i)+0.43; 

i=i+1; %<R097>;
Rnames{i} = 'MVK+OH=MVKP';
k(:,i) = 2.60E-12.*exp(610./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'OH';
fMVK(i)=fMVK(i)-1; fOH(i)=fOH(i)-1; fMVKP(i)=fMVKP(i)+1; 

%O3 Tracer
i=i+1; %<R097a>;
Rnames{i} = 'MVK+QH=MVKP';
k(:,i) = 2.60E-12.*exp(610./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'QH';
fMVK(i)=fMVK(i)-1; fQH(i)=fQH(i)-1; fMVKP(i)=fMVKP(i)+1; 

i=i+1; %<R098>;
Rnames{i} = 'UALD+OH=0.313 ACO3+0.687 UALP';
k(:,i) = 5.77E-12.*exp(533./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'OH'; 
fUALD(i)=fUALD(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+0.313; fUALP(i)=fUALP(i)+0.687;  

%O3 Tracer
i=i+1; %<R098a>;
Rnames{i} = 'UALD+QH=0.313 ACO3+0.687 UALP';
k(:,i) = 5.77E-12.*exp(533./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'QH'; 
fUALD(i)=fUALD(i)-1; fQH(i)=fQH(i)-1; fACO3(i)=fACO3(i)+0.313; fUALP(i)=fUALP(i)+0.687;  

i=i+1; %<R099>;
Rnames{i} = 'GLY+OH=HO2+CO+CO+H2O';
k(:,i) = 1.10E-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'OH'; 
fGLY(i)=fGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R099a>;
Rnames{i} = 'GLY+QH=HO2+CO+CO+H2O';
k(:,i) = 1.10E-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'QH'; 
fGLY(i)=fGLY(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R100>;
Rnames{i} = 'MGLY+OH=ACO3+CO+H2O';
k(:,i) = 9.26E-13.*exp(830./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH'; 
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R100a>;
Rnames{i} = 'MGLY+QH=ACO3+CO+H2O';
k(:,i) = 9.26E-13.*exp(830./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'QH'; 
fMGLY(i)=fMGLY(i)-1; fQH(i)=fQH(i)-1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R101>;
Rnames{i} = 'DCB1+OH = HO2+CO+ALD+KET+GLY+MGLY';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'OH'; 
fDCB1(i)=fDCB1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fALD(i)=fALD(i)+0.40; fKET(i)=fKET(i)+0.78; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; 

%O3 Tracer
i=i+1; %<R101a>;
Rnames{i} = 'DCB1+QH = HO2+CO+ALD+KET+GLY+MGLY';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'QH'; 
fDCB1(i)=fDCB1(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fALD(i)=fALD(i)+0.40; fKET(i)=fKET(i)+0.78; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; 

i=i+1; %<R102>;
Rnames{i} = 'DCB2+OH= HO2+CO+MEK+GLY+MGLY+OP2';
k(:,i) = 2.80E-11.*exp(175./T) ;
Gstr{i,1} = 'DCB2'; Gstr{i,2} = 'OH'; 
fDCB2(i)=fDCB2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fMEK(i)=fMEK(i)+0.13; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; fOP2(i)=fOP2(i)+0.78; 

%O3 Tracer
i=i+1; %<R102a>;
Rnames{i} = 'DCB2+QH= HO2+CO+MEK+GLY+MGLY+OP2';
k(:,i) = 2.80E-11.*exp(175./T) ;
Gstr{i,1} = 'DCB2'; Gstr{i,2} = 'QH'; 
fDCB2(i)=fDCB2(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fMEK(i)=fMEK(i)+0.13; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; fOP2(i)=fOP2(i)+0.78; 

i=i+1; %<R103>;
Rnames{i} = 'DCB3+OH= HO2+MACP+CO+GLY +MGLY+OP2';
k(:,i) = 1.00E-13 ;
Gstr{i,1} = 'DCB3'; Gstr{i,2} = 'OH'; 
% fDCB3(i)=fDCB3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fMACP(i)=fMACP(i)+0.21; 
fDCB3(i)=fDCB3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.56; fMACP(i)=fMACP(i)+0.21; %SR 20160406
fCO(i)=fCO(i)+0.11; fGLY(i)=fGLY(i)+0.27; fMGLY(i)=fMGLY(i)+0.01; fOP2(i)=fOP2(i)+0.79; 

%O3 Tracer
i=i+1; %<R103a>;
Rnames{i} = 'DCB3+QH= HO2+MACP+CO+GLY +MGLY+OP2';
k(:,i) = 1.00E-13 ;
Gstr{i,1} = 'DCB3'; Gstr{i,2} = 'QH'; 
% fDCB3(i)=fDCB3(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.52; fMACP(i)=fMACP(i)+0.21; 
fDCB3(i)=fDCB3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.56; fMACP(i)=fMACP(i)+0.21; %SR 20160406
fCO(i)=fCO(i)+0.11; fGLY(i)=fGLY(i)+0.27; fMGLY(i)=fMGLY(i)+0.01; fOP2(i)=fOP2(i)+0.79; 

i=i+1; %<R104>;
Rnames{i} = 'BALD+OH=BALP+H2O';
k(:,i) = 5.32E-12.*exp(243./T);
Gstr{i,1} = 'BALD'; Gstr{i,2} = 'OH'; 
fBALD(i)=fBALD(i)-1; fOH(i)=fOH(i)-1; fBALP(i)=fBALP(i)+1; 

%O3 Tracer
i=i+1; %<R104a>;
Rnames{i} = 'BALD+QH=BALP+H2O';
k(:,i) = 5.32E-12.*exp(243./T);
Gstr{i,1} = 'BALD'; Gstr{i,2} = 'QH'; 
fBALD(i)=fBALD(i)-1; fQH(i)=fQH(i)-1; fBALP(i)=fBALP(i)+1; 

i=i+1; %<R105>;
Rnames{i} = 'PHEN+OH=0.73 HO2+0.20 ADDC+0.07 CHO+0.73 MCT';
k(:,i) = 6.75E-12.*exp(405./T);
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'OH'; 
fPHEN(i)=fPHEN(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.73; fADDC(i)=fADDC(i)+0.2;
fCHO(i)=fCHO(i)+0.07; fMCT(i)=fMCT(i)+0.73; 

%O3 Tracer
i=i+1; %<R105a>;
Rnames{i} = 'PHEN+QH=0.73 HO2+0.20 ADDC+0.07 CHO+0.73 MCT';
k(:,i) = 6.75E-12.*exp(405./T);
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'QH'; 
fPHEN(i)=fPHEN(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.73; fADDC(i)=fADDC(i)+0.2;
fCHO(i)=fCHO(i)+0.07; fMCT(i)=fMCT(i)+0.73; 

i=i+1; %<R106>;
Rnames{i} = 'CSL+OH=0.73 HO2+0.20 ADDC+0.07 CHO+0.73 MCT';
k(:,i) = 4.65E-11;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'OH'; 
fCSL(i)=fCSL(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.73; fADDC(i)=fADDC(i)+0.2; 
fCHO(i)=fCHO(i)+0.07; fMCT(i)=fMCT(i)+0.73;

%O3 Tracer
i=i+1; %<R106a>;
Rnames{i} = 'CSL+QH=0.73 HO2+0.20 ADDC+0.07 CHO+0.73 MCT';
k(:,i) = 4.65E-11;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'QH'; 
fCSL(i)=fCSL(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+0.73; fADDC(i)=fADDC(i)+0.2; 
fCHO(i)=fCHO(i)+0.07; fMCT(i)=fMCT(i)+0.73;

i=i+1; %<R107>;
Rnames{i} = 'EPX+OH=XO2+HO2+ALD+CO';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'OH'; 
fEPX(i)=fEPX(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R107a>;
Rnames{i} = 'EPX+QH=XO2+HO2+ALD+CO';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'QH'; 
fEPX(i)=fEPX(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R108>;
Rnames{i} = 'MCT+OH=MCTO';
k(:,i) = 2.05E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'OH'; 
fMCT(i)=fMCT(i)-1; fOH(i)=fOH(i)-1; fMCTO(i)=fMCTO(i)+1; 

%O3 Tracer
i=i+1; %<R108a>;
Rnames{i} = 'MCT+QH=MCTO';
k(:,i) = 2.05E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'QH'; 
fMCT(i)=fMCT(i)-1; fQH(i)=fQH(i)-1; fMCTO(i)=fMCTO(i)+1; 

i=i+1; %<R109>;
Rnames{i} = 'OH+MOH=HO2+HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MOH'; 
fOH(i)=fOH(i)-1; fMOH(i)=fMOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R109a>;
Rnames{i} = 'QH+MOH=HO2+HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'QH'; Gstr{i,2} = 'MOH'; 
fQH(i)=fQH(i)-1; fMOH(i)=fMOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<R110>;
Rnames{i} = 'OH+EOH=HO2+ACD';
% k(:,i) = 3.00e-12.*exp(20./T);
k(:,i) = 3.00e-12.*exp(-20./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'EOH'; 
fOH(i)=fOH(i)-1; fEOH(i)=fEOH(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; 

%O3 Tracer
i=i+1; %<R110a>;
Rnames{i} = 'QH+EOH=HO2+ACD';
% k(:,i) = 3.00e-12.*exp(20./T);
k(:,i) = 3.00e-12.*exp(-20./T); %SR 20160406
Gstr{i,1} = 'QH'; Gstr{i,2} = 'EOH'; 
fQH(i)=fQH(i)-1; fEOH(i)=fEOH(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; 

i=i+1; %<R111>;
Rnames{i} = 'OH+ROH=HO2+0.719 ALD+0.184 ACD';
% k(:,i) = 2.60E-12.*exp(200./T).*0.719;
k(:,i) = 2.60E-12.*exp(-200./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ROH'; 
fOH(i)=fOH(i)-1; fROH(i)=fROH(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.719; 
fACD(i)=fACD(i)+0.184;

%O3 Tracer
i=i+1; %<R111a>;
Rnames{i} = 'QH+ROH=HO2+0.719 ALD+0.184 ACD';
% k(:,i) = 2.60E-12.*exp(200./T).*0.719;
k(:,i) = 2.60E-12.*exp(-200./T); %SR 20160406
Gstr{i,1} = 'QH'; Gstr{i,2} = 'ROH'; 
fQH(i)=fQH(i)-1; fROH(i)=fROH(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.719; 
fACD(i)=fACD(i)+0.184;

i=i+1; %<R112>;
Rnames{i} = 'ETEG+OH=ALD+HO2';
k(:,i) = 1.47E-11;
Gstr{i,1} = 'ETEG'; Gstr{i,2} = 'OH'; 
fETEG(i)=fETEG(i)-1; fOH(i)=fOH(i)-1; fALD(i)=fALD(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R112a>;
Rnames{i} = 'ETEG+QH=ALD+HO2';
k(:,i) = 1.47E-11;
Gstr{i,1} = 'ETEG'; Gstr{i,2} = 'QH'; 
fETEG(i)=fETEG(i)-1; fQH(i)=fQH(i)-1; fALD(i)=fALD(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R113>;
Rnames{i} = 'OP1+OH=0.35 OH+0.65 MO2+0.35 HCHO ';
k(:,i) = 2.90E-12.*exp(190./T);
Gstr{i,1} = 'OP1'; Gstr{i,2} = 'OH'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fMO2(i)=fMO2(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35;

%O3 Tracer
i=i+1; %<R113a>;
Rnames{i} = 'OP1+QH=0.35 OH+0.65 MO2+0.35 HCHO ';
k(:,i) = 2.90E-12.*exp(190./T);
Gstr{i,1} = 'OP1'; Gstr{i,2} = 'QH'; 
fOP1(i)=fOP1(i)-1; fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+0.35; fMO2(i)=fMO2(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35;

i=i+1; %<R114>;
Rnames{i} = 'OP2+OH=0.49 HO+0.44 HC3P+0.07 XO2+0.08 ALD+0.41 KET';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'OP2'; Gstr{i,2} = 'OH'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.49; fHC3P(i)=fHC3P(i)+0.44; 
fXO2(i)=fXO2(i)+0.07; fALD(i)=fALD(i)+0.08; fKET(i)=fKET(i)+0.41;

%O3 Tracer
i=i+1; %<R114a>;
Rnames{i} = 'OP2+QH=0.49 HO+0.44 HC3P+0.07 XO2+0.08 ALD+0.41 KET';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'OP2'; Gstr{i,2} = 'QH'; 
fOP2(i)=fOP2(i)-1; fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+0.49; fHC3P(i)=fHC3P(i)+0.44; 
fXO2(i)=fXO2(i)+0.07; fALD(i)=fALD(i)+0.08; fKET(i)=fKET(i)+0.41;

i=i+1; %<R115>;
Rnames{i} = 'ISHP+OH=MACR+OH';
k(:,i) = 1.00E-10;
Gstr{i,1} = 'ISHP'; Gstr{i,2} = 'OH'; 
fISHP(i)=fISHP(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fOH(i)=fOH(i)+1; 

%O3 Tracer
i=i+1; %<R115a>;
Rnames{i} = 'ISHP+QH=MACR+OH';
k(:,i) = 1.00E-10;
Gstr{i,1} = 'ISHP'; Gstr{i,2} = 'QH'; 
fISHP(i)=fISHP(i)-1; fQH(i)=fQH(i)-1; fMACR(i)=fMACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %<R116>;
Rnames{i} = 'MAHP+OH=MACP';
k(:,i) = 3.00E-11;
Gstr{i,1} = 'MAHP'; Gstr{i,2} = 'OH'; 
fMAHP(i)=fMAHP(i)-1; fOH(i)=fOH(i)-1; fMACP(i)=fMACP(i)+1; 

%O3 Tracer
i=i+1; %<R116a>;
Rnames{i} = 'MAHP+QH=MACP';
k(:,i) = 3.00E-11;
Gstr{i,1} = 'MAHP'; Gstr{i,2} = 'QH'; 
fMAHP(i)=fMAHP(i)-1; fQH(i)=fQH(i)-1; fMACP(i)=fMACP(i)+1; 

i=i+1; %<R117>;
Rnames{i} = 'ORA1+OH=HO2+CO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'ORA1'; Gstr{i,2} = 'OH'; 
fORA1(i)=fORA1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

%O3 Tracer
i=i+1; %<R117a>;
Rnames{i} = 'ORA1+QH=HO2+CO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'ORA1'; Gstr{i,2} = 'QH'; 
fORA1(i)=fORA1(i)-1; fQH(i)=fQH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<R118>;
Rnames{i} = 'ORA2+OH=0.64 MO2+0.36 ORAP+0.64 CO2';
k(:,i) = 2.20E-14.*exp(1012./T);
Gstr{i,1} = 'ORA2'; Gstr{i,2} = 'OH'; 
fORA2(i)=fORA2(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+0.64; fORAP(i)=fORAP(i)+0.36;
fCO2(i)=fCO2(i)+0.64; 

%O3 Tracer
i=i+1; %<R118a>;
Rnames{i} = 'ORA2+QH=0.64 MO2+0.36 ORAP+0.64 CO2';
k(:,i) = 2.20E-14.*exp(1012./T);
Gstr{i,1} = 'ORA2'; Gstr{i,2} = 'QH'; 
fORA2(i)=fORA2(i)-1; fQH(i)=fQH(i)-1; fMO2(i)=fMO2(i)+0.64; fORAP(i)=fORAP(i)+0.36;
fCO2(i)=fCO2(i)+0.64; 

i=i+1; %<R119>;
Rnames{i} = 'PAA+OH=0.35 HO+0.65 ACO3+0.35 XO2+0.35 HCHO';
k(:,i) = 2.93E-12.*exp(190./T);
Gstr{i,1} = 'PAA'; Gstr{i,2} = 'OH'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fACO3(i)=fACO3(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35; fXO2(i)=fXO2(i)+0.35; 

%O3 Tracer
i=i+1; %<R119a>;
Rnames{i} = 'PAA+QH=0.35 HO+0.65 ACO3+0.35 XO2+0.35 HCHO';
k(:,i) = 2.93E-12.*exp(190./T);
Gstr{i,1} = 'PAA'; Gstr{i,2} = 'QH'; 
fPAA(i)=fPAA(i)-1; fQH(i)=fQH(i)-1; fOH(i)=fOH(i)+0.35; fACO3(i)=fACO3(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35; fXO2(i)=fXO2(i)+0.35; 

i=i+1; %<R120>;
Rnames{i} = 'PAN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R120a>; 
Rnames{i} = 'PAN+QH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'QH'; 
fPAN(i)=fPAN(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R120b>; 
Rnames{i} = 'PANQ+OH=XO2+NO2Q+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ'; Gstr{i,2} = 'OH'; 
fPANQ(i)=fPANQ(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R120c>; 
Rnames{i} = 'PANQ+QH=XO2+NO2Q+HCHO+H2Q';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ'; Gstr{i,2} = 'QH'; 
fPANQ(i)=fPANQ(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R120d>; 
Rnames{i} = 'PANQ2+OH=XO2+NOQ2+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ2'; Gstr{i,2} = 'OH'; 
fPANQ2(i)=fPANQ2(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R120e>; 
Rnames{i} = 'PANQ2+QH=XO2+NOQ2+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PANQ2'; Gstr{i,2} = 'QH'; 
fPANQ2(i)=fPANQ2(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<R121>;
Rnames{i} = 'PPN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'OH'; 
fPPN(i)=fPPN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R121a>; 
Rnames{i} = 'PPN+QH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'QH'; 
fPPN(i)=fPPN(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R121b>;
Rnames{i} = 'PPNQ+OH=XO2+NO2Q+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ'; Gstr{i,2} = 'OH'; 
fPPNQ(i)=fPPNQ(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R121c>;
Rnames{i} = 'PPNQ+QH=XO2+NO2Q+HCHO+H2Q';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ'; Gstr{i,2} = 'QH'; 
fPPNQ(i)=fPPNQ(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNO2Q(i)=fNO2Q(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R121d>; 
Rnames{i} = 'PPNQ2+OH=XO2+NOQ2+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ2'; Gstr{i,2} = 'OH'; 
fPPNQ2(i)=fPPNQ2(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R121e>; 
Rnames{i} = 'PPNQ2+QH=XO2+NOQ2+HCHO+H2Q';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPNQ2'; Gstr{i,2} = 'QH'; 
fPPNQ2(i)=fPPNQ2(i)-1; fQH(i)=fQH(i)-1; fXO2(i)=fXO2(i)+1; fNOQ2(i)=fNOQ2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<R122>;
Rnames{i} = 'MPAN+OH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'OH'; 
fMPAN(i)=fMPAN(i)-1; fOH(i)=fOH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R122a>;
Rnames{i} = 'MPAN+QH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'QH'; 
fMPAN(i)=fMPAN(i)-1; fQH(i)=fQH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R122b>;
Rnames{i} = 'MPANQ+OH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPANQ'; Gstr{i,2} = 'OH'; 
fMPANQ(i)=fMPANQ(i)-1; fOH(i)=fOH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R122c>;
Rnames{i} = 'MPANQ+QH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPANQ'; Gstr{i,2} = 'QH'; 
fMPANQ(i)=fMPANQ(i)-1; fQH(i)=fQH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R122d>;
Rnames{i} = 'MPANQ2+OH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPANQ2'; Gstr{i,2} = 'OH'; 
fMPANQ2(i)=fMPANQ2(i)-1; fOH(i)=fOH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R122e>;
Rnames{i} = 'MPANQ2+QH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPANQ2'; Gstr{i,2} = 'QH'; 
fMPANQ2(i)=fMPANQ2(i)-1; fQH(i)=fQH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<R123>;
Rnames{i} = 'ONIT+OH=HC3P+NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONIT'; Gstr{i,2} = 'OH'; 
fONIT(i)=fONIT(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R123a>; 
Rnames{i} = 'ONIT+QH=HC3P+NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONIT'; Gstr{i,2} = 'QH'; 
fONIT(i)=fONIT(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R123b>; 
Rnames{i} = 'ONITQ+OH=HC3P+0.666NOQ+0.33NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ'; Gstr{i,2} = 'OH'; 
fONITQ(i)=fONITQ(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<R123c>; 
Rnames{i} = 'ONITQ+QH=HC3P+0.666NOQ+0.33NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ'; Gstr{i,2} = 'QH'; 
fONITQ(i)=fONITQ(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);

%O3 Tracer
i=i+1; %<R123d>; 
Rnames{i} = 'ONITQ2+OH=HC3P+0.333NQ2+.666*NOQ+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ2'; Gstr{i,2} = 'OH'; 
fONITQ2(i)=fONITQ2(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<R123e>; 
Rnames{i} = 'ONITQ2+QH=HC3P+0.333NQ2+.666*NOQ+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ2'; Gstr{i,2} = 'QH'; 
fONITQ2(i)=fONITQ2(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3);

%O3 Tracer
i=i+1; %<R123f>; 
Rnames{i} = 'ONITQ3+OH=HC3P+NQ2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ3'; Gstr{i,2} = 'OH'; 
fONITQ3(i)=fONITQ3(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+1;

%O3 Tracer
i=i+1; %<R123g>; 
Rnames{i} = 'ONITQ3+QH=HC3P+NQ2+H2Q';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONITQ3'; Gstr{i,2} = 'QH'; 
fONITQ3(i)=fONITQ3(i)-1; fQH(i)=fQH(i)-1; fHC3P(i)=fHC3P(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R124>;
Rnames{i} = 'NALD+OH=NO2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALD'; Gstr{i,2} = 'OH'; 
fNALD(i)=fNALD(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R124a>;
Rnames{i} = 'NALD+QH=NO2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALD'; Gstr{i,2} = 'QH'; 
fNALD(i)=fNALD(i)-1; fQH(i)=fQH(i)-1; fNO2(i)=fNO2(i)+1; fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

i=i+1; %<R124b>;
Rnames{i} = 'NALDQ+OH=0.666NOQ+0.33NO2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALDQ'; Gstr{i,2} = 'OH'; 
fNALDQ(i)=fNALDQ(i)-1; fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R124c>;
Rnames{i} = 'NALDQ+QH=0.666NOQ+0.33NO2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALDQ'; Gstr{i,2} = 'QH'; 
fNALDQ(i)=fNALDQ(i)-1; fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

i=i+1; %<R124d>;
Rnames{i} = 'NALDQ2+OH=0.666NOQ+0.33NQ2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALDQ2'; Gstr{i,2} = 'OH'; 
fNALDQ2(i)=fNALDQ2(i)-1; fOH(i)=fOH(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R124e>;
Rnames{i} = 'NALDQ2+QH=0.666NOQ+0.33NQ2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALDQ2'; Gstr{i,2} = 'QH'; 
fNALDQ2(i)=fNALDQ2(i)-1; fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

i=i+1; %<R124f>;
Rnames{i} = 'NALDQ3+OH=NQ2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALDQ3'; Gstr{i,2} = 'OH'; 
fNALDQ3(i)=fNALDQ3(i)-1; fOH(i)=fOH(i)-1; fNQ2(i)=fNQ2(i)+1; fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R124g>;
Rnames{i} = 'NALDQ3+QH=NQ2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALDQ3'; Gstr{i,2} = 'QH'; 
fNALDQ3(i)=fNALDQ3(i)-1; fQH(i)=fQH(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+1; fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

i=i+1; %<R125>;
Rnames{i} = 'ISON+OH=NALD+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISON'; Gstr{i,2} = 'OH'; 
fISON(i)=fISON(i)-1; fOH(i)=fOH(i)-1; fNALD(i)=fNALD(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125a>;
Rnames{i} = 'ISON+QH=NALD+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISON'; Gstr{i,2} = 'QH'; 
fISON(i)=fISON(i)-1; fQH(i)=fQH(i)-1; fNALD(i)=fNALD(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125b>;
Rnames{i} = 'ISONQ+OH=NALDQ+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISONQ'; Gstr{i,2} = 'OH'; 
fISONQ(i)=fISONQ(i)-1; fOH(i)=fOH(i)-1; fNALDQ(i)=fNALDQ(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125c>;
Rnames{i} = 'ISONQ+QH=NALDQ+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISONQ'; Gstr{i,2} = 'QH'; 
fISONQ(i)=fISONQ(i)-1; fQH(i)=fQH(i)-1; fNALDQ(i)=fNALDQ(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125d>;
Rnames{i} = 'ISONQ2+OH=NALDQ2+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISONQ2'; Gstr{i,2} = 'OH'; 
fISONQ2(i)=fISONQ2(i)-1; fOH(i)=fOH(i)-1; fNALDQ2(i)=fNALDQ2(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125e>;
Rnames{i} = 'ISONQ2+QH=NALDQ2+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISONQ2'; Gstr{i,2} = 'QH'; 
fISONQ2(i)=fISONQ2(i)-1; fQH(i)=fQH(i)-1; fNALDQ2(i)=fNALDQ2(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125f>;
Rnames{i} = 'ISONQ3+OH=NALDQ3+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISONQ3'; Gstr{i,2} = 'OH'; 
fISONQ3(i)=fISONQ3(i)-1; fOH(i)=fOH(i)-1; fNALDQ3(i)=fNALDQ3(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%O3 Tracer
i=i+1; %<R125g>;
Rnames{i} = 'ISONQ3+QH=NALDQ3+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISONQ3'; Gstr{i,2} = 'QH'; 
fISONQ3(i)=fISONQ3(i)-1; fQH(i)=fQH(i)-1; fNALDQ3(i)=fNALDQ3(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%% VOC+O3
%O3 Tracer Rename
i=i+1; %<R126>;
Rnames{i} = 'ETE+O3= QH+HO2+CO+HCHO+ORA1+H2';
k(:,i) = 9.14E-15.*exp(-2580./T) ;
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'O3'; 
fETE(i)=fETE(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.08; fHO2(i)=fHO2(i)+0.15; fCO(i)=fCO(i)+0.43; 
fHCHO(i)=fHCHO(i)+1.00; fORA1(i)=fORA1(i)+0.37; fH2(i)=fH2(i)+0.13; 

%O3 Tracer Rename
i=i+1; %<R127>;
Rnames{i} = 'OLT+O3=QH+HO2+MO2+ETHP+H2O2+CO+CH4+ETH+HCHO+ALD+MEK+ORA1+ORA2+ACD+HKET+HC3+HC3P+ACT+HC5+HC5P+BALD+BEN';
k(:,i) = 4.33E-15.*exp(-1800./T) ;
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'O3'; 
fOLT(i)=fOLT(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.22; fHO2(i)=fHO2(i)+0.32; fMO2(i)=fMO2(i)+0.08; 
fETHP(i)=fETHP(i)+0.06; fH2O2(i)=fH2O2(i)+0.068; fCO(i)=fCO(i)+0.43; fCH4(i)=fCH4(i)+0.01; 
fETH(i)=fETH(i)+0.02; fHCHO(i)=fHCHO(i)+0.56; fALD(i)=fALD(i)+0.44; fMEK(i)=fMEK(i)+0.06; 
fORA1(i)=fORA1(i)+0.03; fORA2(i)=fORA2(i)+0.06; fACD(i)=fACD(i)+0.01; fHKET(i)=fHKET(i)+0.01; 
fHC3(i)=fHC3(i)+0.015; fHC3P(i)=fHC3P(i)+0.04; fACT(i)=fACT(i)+0.03; fHC5(i)=fHC5(i)+0.006; 
fHC5P(i)=fHC5P(i)+0.02; fBALD(i)=fBALD(i)+0.02; fBEN(i)=fBEN(i)+0.032; 

%O3 Tracer Rename
i=i+1; %<R128>;
Rnames{i} = 'OLI+O3= QH+HO2+MO2+ETHP+HC3P+ACO3+CO+H2O2+CH4+ETH+HC3+HCHO+ACD+ALD+ACT+KET+HKET+ORA2';
k(:,i) = 4.40E-15.*exp(-845./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'O3'; 
fOLI(i)=fOLI(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.46; fHO2(i)=fHO2(i)+0.07; fMO2(i)=fMO2(i)+0.32; 
fETHP(i)=fETHP(i)+0.07; fH2O2(i)=fH2O2(i)+0.026; fCO(i)=fCO(i)+0.37; fCH4(i)=fCH4(i)+0.04; 
fETH(i)=fETH(i)+0.01; fHCHO(i)=fHCHO(i)+0.09; fALD(i)=fALD(i)+0.73; fKET(i)=fKET(i)+0.017; 
fORA2(i)=fORA2(i)+0.017; fHC3P(i)=fHC3P(i)+0.04; fACO3(i)=fACO3(i)+0.09; fHC3(i)=fHC3(i)+0.01; 
fACD(i)=fACD(i)+0.457; fACT(i)=fACT(i)+0.11; fHKET(i)=fHKET(i)+0.44; %mmarvin 20151020

%O3 Tracer Rename
i=i+1; %<R129>;
Rnames{i} = 'DIEN+O3= O3P+QH+HO2+MO2+ACO3+KETP+XO2+H2O2+CO+OLT+HCHO+MACR+ORA1+H2';
k(:,i) = 1.34E-14.*exp(-2283./T);
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'O3'; 
fDIEN(i)=fDIEN(i)-1; fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+0.09; fQH(i)=fQH(i)+0.28; 
fHO2(i)=fHO2(i)+0.30; fMO2(i)=fMO2(i)+0.03; fACO3(i)=fACO3(i)+0.15; fKETP(i)=fKETP(i)+0.02; 
fXO2(i)=fXO2(i)+0.13; fH2O2(i)=fH2O2(i)+0.001; fCO(i)=fCO(i)+0.36; fOLT(i)=fOLT(i)+0.35; 
fHCHO(i)=fHCHO(i)+0.90; fMACR(i)=fMACR(i)+0.39; fORA1(i)=fORA1(i)+0.15; fH2(i)=fH2(i)+0.05; 

%O3 Tracer Rename
i=i+1; %<R130>;
Rnames{i} = 'ISO+O3= QH+HO2+MO2+ACO3+MACP+H2O2+CO+HCHO+MACR+MVK+ORA1+OLT';
k(:,i) = 7.86E-15.*exp(-1913./T) ;
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'O3'; 
fISO(i)=fISO(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.25; fHO2(i)=fHO2(i)+0.25; fMO2(i)=fMO2(i)+0.08; 
fACO3(i)=fACO3(i)+0.10; fMACP(i)=fMACP(i)+0.10; fH2O2(i)=fH2O2(i)+0.09; fCO(i)=fCO(i)+0.14; 
fHCHO(i)=fHCHO(i)+0.58; fMACR(i)=fMACR(i)+0.461; fMVK(i)=fMVK(i)+0.189; fORA1(i)=fORA1(i)+0.28; 
fOLT(i)=fOLT(i)+0.153; 

%O3 Tracer Rename
i=i+1; %<R131>;
Rnames{i} = 'API+O3= QH+HO2+ETHP+KETP+CO+H2O2+ALD+KET';
k(:,i) = 5.00E-16.*exp(-530./T) ;
Gstr{i,1} = 'API'; Gstr{i,2} = 'O3'; 
fAPI(i)=fAPI(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.85; fHO2(i)=fHO2(i)+0.10; 
fETHP(i)=fETHP(i)+0.20; fKETP(i)=fKETP(i)+0.42; fCO(i)=fCO(i)+0.14; fH2O2(i)=fH2O2(i)+0.02; 
fALD(i)=fALD(i)+0.65; fKET(i)=fKET(i)+0.53; 

%O3 Tracer Rename
i=i+1; %<R132>;
Rnames{i} = 'LIM+O3= QH+HO2+ETHP+KETP+H2O2+CO+OLT+HCHO+MACR+ORA1+ORA2';
k(:,i) = 2.95E-15.*exp(-783./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'O3'; 
fLIM(i)=fLIM(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.85; fHO2(i)=fHO2(i)+0.10; 
fETHP(i)=fETHP(i)+0.16; fKETP(i)=fKETP(i)+0.42; fH2O2(i)=fH2O2(i)+0.02; fCO(i)=fCO(i)+0.14; 
fOLT(i)=fOLT(i)+0.46; fHCHO(i)=fHCHO(i)+0.04; fMACR(i)=fMACR(i)+0.79; fORA1(i)=fORA1(i)+0.01; 
fORA2(i)=fORA2(i)+0.07; 

%O3 Tracer Rename
i=i+1; %<R133>;
Rnames{i} = 'MACR+O3= QH+HO2+ACO3+CO+MGLY+ORA1';
k(:,i) = 1.36E-15.*exp(-2112./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'O3'; 
fMACR(i)=fMACR(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.19; fHO2(i)=fHO2(i)+0.14; 
fACO3(i)=fACO3(i)+0.10; fCO(i)=fCO(i)+0.22; fMGLY(i)=fMGLY(i)+0.50; fORA1(i)=fORA1(i)+0.45; 

%O3 Tracer Rename
i=i+1; %<R134>;
Rnames{i} = 'MVK+O3=QH+HO2+ACO3+XO2+CO+HCHO+MGLY+ORA1+ORA2+ALD';
k(:,i) = 7.51E-16.*exp(-1520./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'O3'; 
fMVK(i)=fMVK(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.16; fHO2(i)=fHO2(i)+0.11; 
fACO3(i)=fACO3(i)+0.28; fXO2(i)=fXO2(i)+0.01; fCO(i)=fCO(i)+0.56; fHCHO(i)=fHCHO(i)+0.10; 
fMGLY(i)=fMGLY(i)+0.54; fORA1(i)=fORA1(i)+0.07; fORA2(i)=fORA2(i)+0.07; fALD(i)=fALD(i)+0.1; 

%O3 Tracer Rename
i=i+1; %<R135>;
Rnames{i} = 'UALD+O3= QH+HO2+MO2+ACO3+XO2+CO+HCHO+ACD+KET+GLY+MGLY+ORA1';
k(:,i) = 1.66E-18;
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'O3'; 
fUALD(i)=fUALD(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.1; fHO2(i)=fHO2(i)+0.072; 
fMO2(i)=fMO2(i)+0.008; fACO3(i)=fACO3(i)+0.002; fXO2(i)=fXO2(i)+0.10; fCO(i)=fCO(i)+0.243; 
fHCHO(i)=fHCHO(i)+0.080; fACD(i)=fACD(i)+0.420; fKET(i)=fKET(i)+0.028; fGLY(i)=fGLY(i)+0.491; 
fMGLY(i)=fMGLY(i)+0.003; fORA1(i)=fORA1(i)+0.044; 

%O3 Tracer Rename
i=i+1; %<R136>;
Rnames{i} = 'DCB1+O3= QH+HO2+RCO3+XO2+CO+HCHO+GLY+MGLY+OP2+CO2';
k(:,i) = 2.00E-16;
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'O3'; 
fDCB1(i)=fDCB1(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.05; fHO2(i)=fHO2(i)+1.0; 
fRCO3(i)=fRCO3(i)+0.60; fXO2(i)=fXO2(i)+0.60; fCO(i)=fCO(i)+1.50; fHCHO(i)=fHCHO(i)+0.05; 
fGLY(i)=fGLY(i)+0.05; fMGLY(i)=fMGLY(i)+0.08; fOP2(i)=fOP2(i)+0.65; fCO2(i)=fCO2(i)+0.50; 

%O3 Tracer Rename
i=i+1; %<R137>;
Rnames{i} = 'DCB2+O3= QH+HO2+RCO3+XO2+CO+HCHO+GLY+MGLY+DCB1+OP2+CO2';
k(:,i) = 2.00E-16;
Gstr{i,1} = 'DCB2'; Gstr{i,2} = 'O3'; 
fDCB2(i)=fDCB2(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.05; fHO2(i)=fHO2(i)+1.0; 
fRCO3(i)=fRCO3(i)+0.60; fXO2(i)=fXO2(i)+0.60; fCO(i)=fCO(i)+1.50; fHCHO(i)=fHCHO(i)+0.05; 
fGLY(i)=fGLY(i)+0.05; fMGLY(i)=fMGLY(i)+0.08; fDCB1(i)=fDCB1(i)+0.70; fOP2(i)=fOP2(i)+0.65; 
fCO2(i)=fCO2(i)+0.50; 

%O3 Tracer Rename
i=i+1; %<R138>;
Rnames{i} = 'DCB3+O3 = QH+HO2+CO+GLY+DCB1+ORA1+ORA2+PAA+CO2';
k(:,i) = 9.00E-17;
Gstr{i,1} = 'DCB3'; Gstr{i,2} = 'O3'; 
fDCB3(i)=fDCB3(i)-1; fO3(i)=fO3(i)-1; fQH(i)=fQH(i)+0.05; fHO2(i)=fHO2(i)+1.0; fCO(i)=fCO(i)+1.5; 
fGLY(i)=fGLY(i)+0.48; fDCB1(i)=fDCB1(i)+0.70; fORA1(i)=fORA1(i)+0.25; fORA2(i)=fORA2(i)+0.25; 
fPAA(i)=fPAA(i)+0.11; fCO2(i)=fCO2(i)+0.50; 

%O3 Tracer Rename
i=i+1; %<R139>;
Rnames{i} = 'EPX+O3=QH+H2O+CO+CO2+GLY+BALD';
k(:,i) = 1.00E-16;
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'O3'; 
fEPX(i)=fEPX(i)-1; fO3(i)=fO3(i)-1; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fBALD(i)=fBALD(i)+0.85; fCO(i)=fCO(i)+1.5; 
fHO2(i)=fHO2(i)+1.5; fQH(i)=fQH(i)+0.05; %SR 20160406

i=i+1; %<R140>;
Rnames{i} = 'MCTO+O3=MCTP';
k(:,i) = 2.86E-13;
Gstr{i,1} = 'MCTO'; Gstr{i,2} = 'O3'; 
fMCTO(i)=fMCTO(i)-1; fO3(i)=fO3(i)-1; fMCTP(i)=fMCTP(i)+1; 

%% VOC+NO3
i=i+1; %<R141>;
Rnames{i} = 'ETE+NO3=0.80 OLNN+0.20 OLND';
k(:,i) = 4.88E-18.*T.^2.*exp(-2282./T);
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'NO3'; 
fETE(i)=fETE(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.8; fOLND(i)=fOLND(i)+0.2; 

%O3 Tracer
i=i+1; %<R141a>;
Rnames{i} = 'ETE+NO2Q=0.80 OLNNQ+0.20 OLNDQ';
k(:,i) = 4.88E-18.*T.^2.*exp(-2282./T);
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'NO2Q'; 
fETE(i)=fETE(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.8; fOLNDQ(i)=fOLNDQ(i)+0.2; 

%O3 Tracer
i=i+1; %<R141b>;
Rnames{i} = 'ETE+NOQ2=0.80 OLNNQ2+0.20 OLNDQ2';
k(:,i) = 4.88E-18.*T.^2.*exp(-2282./T);
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'NOQ2'; 
fETE(i)=fETE(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.8; fOLNDQ2(i)=fOLNDQ2(i)+0.2; 

%O3 Tracer
i=i+1; %<R141c>;
Rnames{i} = 'ETE+NQ3=0.80 OLNNQ3+0.20 OLNDQ3';
k(:,i) = 4.88E-18.*T.^2.*exp(-2282./T);
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'NQ3'; 
fETE(i)=fETE(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.8; fOLNDQ3(i)=fOLNDQ3(i)+0.2; 

i=i+1; %<R142>;
Rnames{i} = 'OLT+NO3=0.43 OLNN+0.57 OLND';
k(:,i) = 1.79E-13.*exp(-450./T);
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'NO3'; 
fOLT(i)=fOLT(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.43; fOLND(i)=fOLND(i)+0.57; 

%O3 Tracer
i=i+1; %<R142a>;
Rnames{i} = 'OLT+NO2Q=0.43 OLNNQ+0.57 OLNDQ';
k(:,i) = 1.79E-13.*exp(-450./T);
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'NO2Q'; 
fOLT(i)=fOLT(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.43; fOLNDQ(i)=fOLNDQ(i)+0.57; 

%O3 Tracer
i=i+1; %<R142b>;
Rnames{i} = 'OLT+NOQ2=0.43 OLNNQ2+0.57 OLNDQ2';
k(:,i) = 1.79E-13.*exp(-450./T);
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'NOQ2'; 
fOLT(i)=fOLT(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.43; fOLNDQ2(i)=fOLNDQ2(i)+0.57;

%O3 Tracer
i=i+1; %<R142c>;
Rnames{i} = 'OLT+NQ3=0.43 OLNNQ3+0.57 OLNDQ3';
k(:,i) = 1.79E-13.*exp(-450./T);
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'NQ3'; 
fOLT(i)=fOLT(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.43; fOLNDQ3(i)=fOLNDQ3(i)+0.57;

i=i+1; %<R143>;
Rnames{i} = 'OLI+NO3=0.11 OLNN+0.89 OLND';
k(:,i) = 8.64E-13.*exp(450./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'NO3'; 
fOLI(i)=fOLI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.11; fOLND(i)=fOLND(i)+0.89; 

%O3 Tracer
i=i+1; %<R143a>;
Rnames{i} = 'OLI+NO2Q=0.11 OLNNQ+0.89 OLNDQ';
k(:,i) = 8.64E-13.*exp(450./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'NO2Q'; 
fOLI(i)=fOLI(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.11; fOLNDQ(i)=fOLNDQ(i)+0.89; 

%O3 Tracer
i=i+1; %<R143b>;
Rnames{i} = 'OLI+NOQ2=0.11 OLNNQ2+0.89 OLNDQ2';
k(:,i) = 8.64E-13.*exp(450./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'NOQ2'; 
fOLI(i)=fOLI(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.11; fOLNDQ2(i)=fOLNDQ2(i)+0.89; 

%O3 Tracer
i=i+1; %<R143c>;
Rnames{i} = 'OLI+NQ3=0.11 OLNNQ3+0.89 OLNDQ3';
k(:,i) = 8.64E-13.*exp(450./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'NQ3'; 
fOLI(i)=fOLI(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.11; fOLNDQ3(i)=fOLNDQ3(i)+0.89;

i=i+1; %<R144>;
Rnames{i} = 'DIEN+NO3=0.90 OLNN+0.10 OLND+0.90 MACR';
k(:,i) = 1.0E-13;
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'NO3'; 
fDIEN(i)=fDIEN(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.9; fOLND(i)=fOLND(i)+0.1; 
fMACR(i)=fMACR(i)+0.9; 

%O3 Tracer
i=i+1; %<R144a>;
Rnames{i} = 'DIEN+NO2Q=0.90 OLNNQ+0.10 OLNDQ+0.90 MACR';
k(:,i) = 1.0E-13;
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'NO2Q'; 
fDIEN(i)=fDIEN(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.9; fOLNDQ(i)=fOLNDQ(i)+0.1; 
fMACR(i)=fMACR(i)+0.9; 

%O3 Tracer
i=i+1; %<R144b>;
Rnames{i} = 'DIEN+NOQ2=0.90 OLNNQ2+0.10 OLNDQ2+0.90 MACR';
k(:,i) = 1.0E-13;
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'NOQ2'; 
fDIEN(i)=fDIEN(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.9; fOLNDQ2(i)=fOLNDQ2(i)+0.1; 
fMACR(i)=fMACR(i)+0.9; 

%O3 Tracer
i=i+1; %<R144c>;
Rnames{i} = 'DIEN+NQ3=0.90 OLNNQ3+0.10 OLNDQ3+0.90 MACR';
k(:,i) = 1.0E-13;
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'NQ3'; 
fDIEN(i)=fDIEN(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.9; fOLNDQ3(i)=fOLNDQ3(i)+0.1; 
fMACR(i)=fMACR(i)+0.9; 

i=i+1; %<R145>;
Rnames{i} = 'ISO+NO3=ISON';
k(:,i) = 3.03E-12.*exp(-446./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'NO3'; 
fISO(i)=fISO(i)-1; fNO3(i)=fNO3(i)-1; fISON(i)=fISON(i)+1; 

%O3 Tracer
i=i+1; %<R145a>;
Rnames{i} = 'ISO+NO2Q=ISONQ';
k(:,i) = 3.03E-12.*exp(-446./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'NO2Q'; 
fISO(i)=fISO(i)-1; fNO2Q(i)=fNO2Q(i)-1; fISONQ(i)=fISONQ(i)+1; 

%O3 Tracer
i=i+1; %<R145b>;
Rnames{i} = 'ISO+NOQ2=ISONQ2';
k(:,i) = 3.03E-12.*exp(-446./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'NOQ2'; 
fISO(i)=fISO(i)-1; fNOQ2(i)=fNOQ2(i)-1; fISONQ2(i)=fISONQ2(i)+1;

%O3 Tracer
i=i+1; %<R145c>;
Rnames{i} = 'ISO+NQ3=ISONQ3';
k(:,i) = 3.03E-12.*exp(-446./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'NQ3'; 
fISO(i)=fISO(i)-1; fNQ3(i)=fNQ3(i)-1; fISONQ3(i)=fISONQ3(i)+1;

i=i+1; %<R146>;
Rnames{i} = 'API+NO3=0.10 OLNN+0.90 OLND';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO3'; 
fAPI(i)=fAPI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.1;  fOLND(i)=fOLND(i)+0.9; 

%O3 Tracer
i=i+1; %<R146a>; 
Rnames{i} = 'API+NO2Q=0.10 OLNNQ+0.90 OLNDQ';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO2Q'; 
fAPI(i)=fAPI(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.1;  fOLNDQ(i)=fOLNDQ(i)+0.9; 

%O3 Tracer
i=i+1; %<R146b>; 
Rnames{i} = 'API+NOQ2=0.10 OLNNQ2+0.90 OLNDQ2';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NOQ2'; 
fAPI(i)=fAPI(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.1;  fOLNDQ2(i)=fOLNDQ2(i)+0.9;

%O3 Tracer
i=i+1; %<R146c>; 
Rnames{i} = 'API+NQ3=0.10 OLNNQ2+0.90 OLNDQ3';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NQ3'; 
fAPI(i)=fAPI(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.1;  fOLNDQ3(i)=fOLNDQ3(i)+0.9;

i=i+1; %<R147>;
Rnames{i} = 'LIM+NO3=0.71 OLNN+0.29 OLND';
k(:,i) = 1.22E-11;
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'NO3'; 
fLIM(i)=fLIM(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.71; fOLND(i)=fOLND(i)+0.29; 

%O3 Tracer
i=i+1; %<R147a>;
Rnames{i} = 'LIM+NO2Q=0.71 OLNNQ+0.29 OLNDQ';
k(:,i) = 1.22E-11;
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'NO2Q'; 
fLIM(i)=fLIM(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOLNNQ(i)=fOLNNQ(i)+0.71; fOLNDQ(i)=fOLNDQ(i)+0.29; 

%O3 Tracer
i=i+1; %<R147b>;
Rnames{i} = 'LIM+NOQ2=0.71 OLNNQ2+0.29 OLNDQ2';
k(:,i) = 1.22E-11;
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'NOQ2'; 
fLIM(i)=fLIM(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)+0.71; fOLNDQ2(i)=fOLNDQ2(i)+0.29; 

%O3 Tracer
i=i+1; %<R147c>;
Rnames{i} = 'LIM+NQ3=0.71 OLNNQ3+0.29 OLNDQ3';
k(:,i) = 1.22E-11;
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'NQ3'; 
fLIM(i)=fLIM(i)-1; fNQ3(i)=fNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)+0.71; fOLNDQ3(i)=fOLNDQ3(i)+0.29; 

i=i+1; %<R148>;
Rnames{i} = 'HCHO+NO3=HO2+HNO3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R148a>; 
Rnames{i} = 'HCHO+NO2Q=HO2+HNO2Q+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO2Q'; 
fHCHO(i)=fHCHO(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R148b>; 
Rnames{i} = 'HCHO+NOQ2=HO2+HNOQ2+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NOQ2'; 
fHCHO(i)=fHCHO(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R148c>; 
Rnames{i} = 'HCHO+NQ3=HO2+HNQ3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NQ3'; 
fHCHO(i)=fHCHO(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fHNQ3(i)=fHNQ3(i)+1; fCO(i)=fCO(i)+1;

i=i+1; %<R149>;
Rnames{i} = 'ACD+NO3=ACO3+HNO3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NO3'; 
fACD(i)=fACD(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<R149a>; 
Rnames{i} = 'ACD+NO2Q=ACO3+HNO2Q';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NO2Q'; 
fACD(i)=fACD(i)-1; fNO2Q(i)=fNO2Q(i)-1; fACO3(i)=fACO3(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<R149b>; 
Rnames{i} = 'ACD+NOQ2=ACO3+HNOQ2';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NOQ2'; 
fACD(i)=fACD(i)-1; fNOQ2(i)=fNOQ2(i)-1; fACO3(i)=fACO3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R149c>; 
Rnames{i} = 'ACD+NQ3=ACO3+HNQ3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NQ3'; 
fACD(i)=fACD(i)-1; fNQ3(i)=fNQ3(i)-1; fACO3(i)=fACO3(i)+1; fHNQ3(i)=fHNQ3(i)+1; 

i=i+1; %<R150>;
Rnames{i} = 'ALD+NO3=RCO3+HNO3';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NO3'; 
fALD(i)=fALD(i)-1; fNO3(i)=fNO3(i)-1; fRCO3(i)=fRCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<R150a>; 
Rnames{i} = 'ALD+NO2Q=RCO3+HNO2Q';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NO2Q'; 
fALD(i)=fALD(i)-1; fNO2Q(i)=fNO2Q(i)-1; fRCO3(i)=fRCO3(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<R150b>; 
Rnames{i} = 'ALD+NOQ2=RCO3+HNOQ2';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NOQ2'; 
fALD(i)=fALD(i)-1; fNOQ2(i)=fNOQ2(i)-1; fRCO3(i)=fRCO3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R150c>; 
Rnames{i} = 'ALD+NQ3=RCO3+HNQ3';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NQ3'; 
fALD(i)=fALD(i)-1; fNQ3(i)=fNQ3(i)-1; fRCO3(i)=fRCO3(i)+1; fHNQ3(i)=fHNQ3(i)+1;

i=i+1; %<R151>;
Rnames{i} = 'MACR+NO3=0.32 MACP+0.68 XO2+0.32 HNO3+0.68 HCHO+0.68 MGLY+0.68 NO2';
k(:,i) = 3.40E-15; %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3'; 
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fMACP(i)=fMACP(i)+0.32; fXO2(i)=fXO2(i)+0.68;
fHNO3(i)=fHNO3(i)+0.32; fHCHO(i)=fHCHO(i)+0.68; fMGLY(i)=fMGLY(i)+0.68; fNO2(i)=fNO2(i)+0.68;  

%O3 Tracer
i=i+1; %<R151a>;
Rnames{i} = 'MACR+NO2Q=0.32 MACP+0.68 XO2+0.32 HNO2Q+0.68 HCHO+0.68 MGLY+0.453 NOQ + 0.227 NO2';
k(:,i) = 3.40E-15; %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO2Q'; 
fMACR(i)=fMACR(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMACP(i)=fMACP(i)+0.32; fXO2(i)=fXO2(i)+0.68;
fHNO2Q(i)=fHNO2Q(i)+0.32; fHCHO(i)=fHCHO(i)+0.68; fMGLY(i)=fMGLY(i)+0.68; fNOQ(i)=fNOQ(i)+0.453; fNO2(i)=fNO2(i)+0.227;  

%O3 Tracer
i=i+1; %<R151b>;
Rnames{i} = 'MACR+NOQ2=0.32 MACP+0.68 XO2+0.32 HNOQ2+0.68 HCHO+0.68 MGLY+0.453 NOQ + 0.227 NQ2';
k(:,i) = 3.40E-15; %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NOQ2'; 
fMACR(i)=fMACR(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMACP(i)=fMACP(i)+0.32; fXO2(i)=fXO2(i)+0.68;
fHNOQ2(i)=fHNOQ2(i)+0.32; fHCHO(i)=fHCHO(i)+0.68; fMGLY(i)=fMGLY(i)+0.68; fNOQ(i)=fNOQ(i)+0.453; fNQ2(i)=fNQ2(i)+0.227;

%O3 Tracer
i=i+1; %<R151c>;
Rnames{i} = 'MACR+NQ3=0.32 MACP+0.68 XO2+0.32 HNQ3+0.68 HCHO+0.68 MGLY+0.68NQ2';
k(:,i) = 3.40E-15; %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NQ3'; 
fMACR(i)=fMACR(i)-1; fNQ3(i)=fNQ3(i)-1; fMACP(i)=fMACP(i)+0.32; fXO2(i)=fXO2(i)+0.68;
fHNQ3(i)=fHNQ3(i)+0.32; fHCHO(i)=fHCHO(i)+0.68; fMGLY(i)=fMGLY(i)+0.68; fNQ2(i)=fNQ2(i)+0.68;

i=i+1; %<R152>;
Rnames{i} = 'UALD+NO3= HO2+XO2+0.668 CO+0.332 HCHO+0.332 ALD+ONIT ';
k(:,i) = 5.02E-13.*exp(-1076./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'NO3'; 
fUALD(i)=fUALD(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 
fCO(i)=fCO(i)+0.668; fHCHO(i)=fHCHO(i)+0.332; fALD(i)=fALD(i)+0.332; 
fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R152a>;
Rnames{i} = 'UALD+NO2Q= HO2+XO2+0.668 CO+0.332 HCHO+0.332 ALD+ONITQ ';
k(:,i) = 5.02E-13.*exp(-1076./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'NO2Q'; 
fUALD(i)=fUALD(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 
fCO(i)=fCO(i)+0.668; fHCHO(i)=fHCHO(i)+0.332; fALD(i)=fALD(i)+0.332; 
fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1; %<R152b>;
Rnames{i} = 'UALD+NOQ2= HO2+XO2+0.668 CO+0.332 HCHO+0.332 ALD+ONITQ2 ';
k(:,i) = 5.02E-13.*exp(-1076./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'NOQ2'; 
fUALD(i)=fUALD(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 
fCO(i)=fCO(i)+0.668; fHCHO(i)=fHCHO(i)+0.332; fALD(i)=fALD(i)+0.332; 
fONITQ2(i)=fONITQ2(i)+1; 

%O3 Tracer
i=i+1; %<R152c>;
Rnames{i} = 'UALD+NQ3= HO2+XO2+0.668 CO+0.332 HCHO+0.332 ALD+ONITQ3 ';
k(:,i) = 5.02E-13.*exp(-1076./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'NQ3'; 
fUALD(i)=fUALD(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 
fCO(i)=fCO(i)+0.668; fHCHO(i)=fHCHO(i)+0.332; fALD(i)=fALD(i)+0.332; 
fONITQ2(i)=fONITQ2(i)+1; 

i=i+1; %<R153>;
Rnames{i} = 'GLY+NO3=HNO3+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3'; 
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R153a>; 
Rnames{i} = 'GLY+NO2Q=HNO2Q+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO2Q'; 
fGLY(i)=fGLY(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R153b>; 
Rnames{i} = 'GLY+NOQ2=HNOQ2+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NOQ2'; 
fGLY(i)=fGLY(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

%O3 Tracer
i=i+1; %<R153c>; 
Rnames{i} = 'GLY+NQ3=HNQ3+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NQ3'; 
fGLY(i)=fGLY(i)-1; fNQ3(i)=fNQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<R154>;
Rnames{i} = 'MGLY+NO3=HNO3+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3'; 
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%o3 Tracer
i=i+1; %<R154a>; 
Rnames{i} = 'MGLY+NO2Q=HNO2Q+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO2Q'; 
fMGLY(i)=fMGLY(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%o3 Tracer
i=i+1; %<R154b>; 
Rnames{i} = 'MGLY+NOQ2=HNOQ2+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NOQ2'; 
fMGLY(i)=fMGLY(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

%o3 Tracer
i=i+1; %<R154c>; 
Rnames{i} = 'MGLY+NQ3=HNQ3+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NQ3'; 
fMGLY(i)=fMGLY(i)-1; fNQ3(i)=fNQ3(i)-1; fHNQ3(i)=fHNQ3(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1;

i=i+1; %<R155>;
Rnames{i} = 'PHEN+NO3=0.4 CHO+0.1 ADDC+0.5 ADCN+0.5 HNO3';
k(:,i) = 3.78E-12;
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'NO3'; 
fPHEN(i)=fPHEN(i)-1; fNO3(i)=fNO3(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCN(i)=fADCN(i)+0.5; fHNO3(i)=fHNO3(i)+0.5; 

%O3 Tracer
i=i+1; %<R155a>;
Rnames{i} = 'PHEN+NO2Q=0.4 CHO+0.1 ADDC+0.5 ADCNQ+0.5 HNO2Q';
k(:,i) = 3.78E-12;
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'NO2Q'; 
fPHEN(i)=fPHEN(i)-1; fNO2Q(i)=fNO2Q(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCNQ(i)=fADCNQ(i)+0.5; fHNO2Q(i)=fHNO2Q(i)+0.5; 

%O3 Tracer
i=i+1; %<R155b>;
Rnames{i} = 'PHEN+NOQ2=0.4 CHO+0.1 ADDC+0.5 ADCNQ2+0.5 HNOQ2';
k(:,i) = 3.78E-12;
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'NOQ2'; 
fPHEN(i)=fPHEN(i)-1; fNOQ2(i)=fNOQ2(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCNQ2(i)=fADCNQ2(i)+0.5; fHNOQ2(i)=fHNOQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<R155c>;
Rnames{i} = 'PHEN+NQ3=0.4 CHO+0.1 ADDC+0.5 ADCNQ3+0.5 HNQ3';
k(:,i) = 3.78E-12;
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'NQ3'; 
fPHEN(i)=fPHEN(i)-1; fNQ3(i)=fNQ3(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCNQ3(i)=fADCNQ3(i)+0.5; fHNQ3(i)=fHNQ3(i)+0.5; 

i=i+1; %<R156>;
Rnames{i} = 'CSL+NO3=0.4 CHO+0.1 ADDC+0.5 ADCN+0.5 HNO3';
k(:,i) = 1.06E-12;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'NO3'; 
fCSL(i)=fCSL(i)-1; fNO3(i)=fNO3(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCN(i)=fADCN(i)+0.5; fHNO3(i)=fHNO3(i)+0.5;

%O3 Tracer
i=i+1; %<R156a>;
Rnames{i} = 'CSL+NO2Q=0.4 CHO+0.1 ADDC+0.5 ADCNQ+0.5 HNO2Q';
k(:,i) = 1.06E-12;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'NO2Q'; 
fCSL(i)=fCSL(i)-1; fNO2Q(i)=fNO2Q(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCNQ(i)=fADCNQ(i)+0.5; fHNO2Q(i)=fHNO2Q(i)+0.5;

%O3 Tracer
i=i+1; %<R156b>;
Rnames{i} = 'CSL+NOQ2=0.4 CHO+0.1 ADDC+0.5 ADCNQ2+0.5 HNOQ2';
k(:,i) = 1.06E-12;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'NOQ2'; 
fCSL(i)=fCSL(i)-1; fNOQ2(i)=fNOQ2(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCNQ2(i)=fADCNQ2(i)+0.5; fHNOQ2(i)=fHNOQ2(i)+0.5;

%O3 Tracer
i=i+1; %<R156c>;
Rnames{i} = 'CSL+NQ3=0.4 CHO+0.1 ADDC+0.5 ADCNQ3+0.5 HNQ3';
k(:,i) = 1.06E-12;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'NQ3'; 
fCSL(i)=fCSL(i)-1; fNQ3(i)=fNQ3(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCNQ3(i)=fADCNQ3(i)+0.5; fHNQ3(i)=fHNQ3(i)+0.5;

i=i+1; %<R157>;
Rnames{i} = 'EPX+NO3=0.50 HO+1.50 HO2+1.50 CO+0.50 CO2+GLY+0.50 NO2+0.50 HNO3';
k(:,i) = 2.87E-13.*exp(-1000./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'NO3'; 
fEPX(i)=fEPX(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.5; fHO2(i)=fHO2(i)+1.5;
fCO(i)=fCO(i)+1.5; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+0.5; 
fHNO3(i)=fHNO3(i)+0.5; 

%O3 Tracer
i=i+1; %<R157a>;
Rnames{i} = 'EPX+NO2Q=0.50 HO+1.50 HO2+1.50 CO+0.50 CO2+GLY+0.33 NOQ + 0.166NO2 +0.50 HNO2Q';
k(:,i) = 2.87E-13.*exp(-1000./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'NO2Q'; 
fEPX(i)=fEPX(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOH(i)=fOH(i)+0.5; fHO2(i)=fHO2(i)+1.5;
fCO(i)=fCO(i)+1.5; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(1/3); fNO2(i)=fNO2(i)+(1/6); 
fHNO2Q(i)=fHNO2Q(i)+0.5;

%O3 Tracer
i=i+1; %<R157b>;
Rnames{i} = 'EPX+NOQ2=0.50 HO+1.50 HO2+1.50 CO+0.50 CO2+GLY+0.33 NOQ + 0.166NQ2 +0.50 HNOQ2';
k(:,i) = 2.87E-13.*exp(-1000./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'NOQ2'; 
fEPX(i)=fEPX(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOH(i)=fOH(i)+0.5; fHO2(i)=fHO2(i)+1.5;
fCO(i)=fCO(i)+1.5; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(1/3); fNQ2(i)=fNQ2(i)+(1/6); 
fHNOQ2(i)=fHNOQ2(i)+0.5;

%O3 Tracer
i=i+1; %<R157c>;
Rnames{i} = 'EPX+NQ3=0.50 HO+1.50 HO2+1.50 CO+0.50 CO2+GLY+0.5 NQ2 + 0.50 HNQ3';
k(:,i) = 2.87E-13.*exp(-1000./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'NQ3'; 
fEPX(i)=fEPX(i)-1; fNQ3(i)=fNQ3(i)-1; fOH(i)=fOH(i)+0.5; fHO2(i)=fHO2(i)+1.5;
fCO(i)=fCO(i)+1.5; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fNQ2(i)=fNQ2(i)+(1/2); 
fHNQ3(i)=fHNQ3(i)+0.5;

i=i+1; %<R158>;
Rnames{i} = 'MCT+NO3=MCTO+HNO3';
k(:,i) = 2.01E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'NO3'; 
fMCT(i)=fMCT(i)-1; fNO3(i)=fNO3(i)-1; fMCTO(i)=fMCTO(i)+1; fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<R158a>;
Rnames{i} = 'MCT+NO2Q=MCTO+HNO2Q';
k(:,i) = 2.01E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'NO2Q'; 
fMCT(i)=fMCT(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMCTO(i)=fMCTO(i)+1; fHNO2Q(i)=fHNO2Q(i)+1; 

%O3 Tracer
i=i+1; %<R158b>;
Rnames{i} = 'MCT+NOQ2=MCTO+HNOQ2';
k(:,i) = 2.01E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'NOQ2'; 
fMCT(i)=fMCT(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMCTO(i)=fMCTO(i)+1; fHNOQ2(i)=fHNOQ2(i)+1; 

%O3 Tracer
i=i+1; %<R158c>;
Rnames{i} = 'MCT+NQ3=MCTO+HNQ3';
k(:,i) = 2.01E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'NQ3'; 
fMCT(i)=fMCT(i)-1; fNQ3(i)=fNQ3(i)-1; fMCTO(i)=fMCTO(i)+1; fHNQ3(i)=fHNQ3(i)+1; 

i=i+1; %<R159>;
Rnames{i} = 'MPAN+NO3=MACP+NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'NO3'; 
fMPAN(i)=fMPAN(i)-1; fNO3(i)=fNO3(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R159a>;
Rnames{i} = 'MPAN+NO2Q=MACP+(2/3)NOQ + (1/3)NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'NO2Q'; 
fMPAN(i)=fMPAN(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMACP(i)=fMACP(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R159b>;
Rnames{i} = 'MPAN+NOQ2=MACP+(2/3)NOQ + (1/3)NQ2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'NOQ2'; 
fMPAN(i)=fMPAN(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMACP(i)=fMACP(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R159c>;
Rnames{i} = 'MPAN+NQ3=MACP+ NQ2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'NQ3'; 
fMPAN(i)=fMPAN(i)-1; fNQ3(i)=fNQ3(i)-1; fMACP(i)=fMACP(i)+1; fNQ2(i)=fNQ2(i)+1; 

%O3 Tracer
i=i+1; %<R159d>;
Rnames{i} = 'MPANQ+NO3=MACP+NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ'; Gstr{i,2} = 'NO3'; 
fMPANQ(i)=fMPANQ(i)-1; fNO3(i)=fNO3(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R159e>;
Rnames{i} = 'MPANQ+NO2Q=MACP+(2/3)NOQ + (1/3)NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ'; Gstr{i,2} = 'NO2Q'; 
fMPANQ(i)=fMPANQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R159f>;
Rnames{i} = 'MPANQ+NOQ2=MACP+(2/3)NOQ + (1/3)NQ2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ'; Gstr{i,2} = 'NOQ2'; 
fMPANQ(i)=fMPANQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMACP(i)=fMACP(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R159g>;
Rnames{i} = 'MPANQ+NQ3=MACP+ NQ2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ'; Gstr{i,2} = 'NQ3'; 
fMPANQ(i)=fMPANQ(i)-1; fNQ3(i)=fNQ3(i)-1; fMACP(i)=fMACP(i)+1; fNQ2(i)=fNQ2(i)+1;  

%O3 Tracer
i=i+1; %<R159h>;
Rnames{i} = 'MPANQ2+NO3=MACP+NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ2'; Gstr{i,2} = 'NO3'; 
fMPANQ2(i)=fMPANQ2(i)-1; fNO3(i)=fNO3(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R159i>;
Rnames{i} = 'MPANQ2+NO2Q=MACP+(2/3)NOQ + (1/3)NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ2'; Gstr{i,2} = 'NO2Q'; 
fMPANQ2(i)=fMPANQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R159j>;
Rnames{i} = 'MPANQ2+NOQ2=MACP+(2/3)NOQ + (1/3)NQ2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ2'; Gstr{i,2} = 'NOQ2'; 
fMPANQ2(i)=fMPANQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMACP(i)=fMACP(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R159k>;
Rnames{i} = 'MPANQ2+NQ3=MACP+ NQ2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPANQ2'; Gstr{i,2} = 'NQ3'; 
fMPANQ2(i)=fMPANQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fMACP(i)=fMACP(i)+1; fNQ2(i)=fNQ2(i)+1;  

%% AROMATIC INTERMEDIATE DECOMPOSITION
i=i+1; %<R160>;
Rnames{i} = 'TR2= OH+HO2+TOLP+PER1+DCB2+CSL+EPX';
k(:,i) = 1.00E3;
Gstr{i,1} = 'TR2'; 
fTR2(i)=fTR2(i)-1; fOH(i)=fOH(i)+0.280; fHO2(i)=fHO2(i)+0.290; fTOLP(i)=fTOLP(i)+0.280; 
fPER1(i)=fPER1(i)+0.150; fDCB2(i)=fDCB2(i)+0.280; fCSL(i)=fCSL(i)+0.01; fEPX(i)=fEPX(i)+0.280; 

%mmarvin 20151020
i=i+1; %<R161>;
Rnames{i} = 'TOLP= OH+HO2+PER1+DCB2+CSL';
k(:,i) = 1.00E3;
Gstr{i,1} = 'TOLP'; 
fTOLP(i)=fTOLP(i)-1; fOH(i)=fOH(i)+0.49; fHO2(i)=fHO2(i)+0.01; fPER1(i)=fPER1(i)+0.50; 
fDCB2(i)=fDCB2(i)+0.49; fCSL(i)=fCSL(i)+0.01;

i=i+1; %<R162>;
Rnames{i} = 'XY2= OH+HO2+RCO3+XYLP+PER2+DCB2+CSL+EPX';
k(:,i) = 1.00E3;
Gstr{i,1} = 'XY2'; 
fXY2(i)=fXY2(i)-1; fOH(i)=fOH(i)+0.158; fHO2(i)=fHO2(i)+0.308; fRCO3(i)=fRCO3(i)+0.250; 
fXYLP(i)=fXYLP(i)+0.308; fPER2(i)=fPER2(i)+0.150; fDCB2(i)=fDCB2(i)+0.224; fCSL(i)=fCSL(i)+0.010; 
fEPX(i)=fEPX(i)+0.840; 

i=i+1; %<R163>;
Rnames{i} = 'XYLP= OH+HO2+PER2+DCB2+CSL';
k(:,i) = 1.00E3;
Gstr{i,1} = 'XYLP'; 
fXYLP(i)=fXYLP(i)-1; fOH(i)=fOH(i)+0.39; fHO2(i)=fHO2(i)+0.01; fPER2(i)=fPER2(i)+0.50; 
fDCB2(i)=fDCB2(i)+0.490; fCSL(i)=fCSL(i)+0.01; 

i=i+1; %<R164>;
Rnames{i} = 'XYO2= OH+HO2+RCO3+XYLP+PER2+DCB2+CSL+EPX'; %mmarvin 20151020
k(:,i) = 1.00E3;
Gstr{i,1} = 'XYO2'; 
fXYO2(i)=fXYO2(i)-1; fOH(i)=fOH(i)+0.158; fHO2(i)=fHO2(i)+0.308; fRCO3(i)=fRCO3(i)+0.250; 
fXYLP(i)=fXYLP(i)+0.308; fPER2(i)=fPER2(i)+0.150; fDCB2(i)=fDCB2(i)+0.224; fCSL(i)=fCSL(i)+0.010; 
fEPX(i)=fEPX(i)+0.84;

i=i+1; %<R165>;
Rnames{i} = 'XYOP= OH+HO2+PER2+DCB2+CSL';
k(:,i) = 1.00E3;
Gstr{i,1} = 'XYOP'; 
fXYOP(i)=fXYOP(i)-1; fOH(i)=fOH(i)+0.39; fHO2(i)=fHO2(i)+0.01; fPER2(i)=fPER2(i)+0.50; 
fDCB2(i)=fDCB2(i)+0.49; fCSL(i)=fCSL(i)+0.01; 

%% PAN EQUILIBRIA
i=i+1; %<R166>;
Rnames{i} = 'ACO3+NO2=PAN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2'; 
fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

%O3 Tracer
i=i+1; %<R166a>; 
Rnames{i} = 'ACO3+NOQ=PANQ';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NOQ'; 
fACO3(i)=fACO3(i)-1; fNOQ(i)=fNOQ(i)-1; fPANQ(i)=fPANQ(i)+1; 

%O3 Tracer
i=i+1; %<R166b>; 
Rnames{i} = 'ACO3+NQ2=PANQ2';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NQ2'; 
fACO3(i)=fACO3(i)-1; fNQ2(i)=fNQ2(i)-1; fPANQ2(i)=fPANQ2(i)+1; 

i=i+1; %<R167>;
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R167a>; 
Rnames{i} = 'PANQ=ACO3+NOQ';
k(:,i) = K_PAN;
Gstr{i,1} = 'PANQ'; 
fPANQ(i)=fPANQ(i)-1; fACO3(i)=fACO3(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R167b; 
Rnames{i} = 'PANQ2=ACO3+NQ2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PANQ2'; 
fPANQ2(i)=fPANQ2(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R168>;
Rnames{i} = 'RCO3+NO2=PPN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2'; 
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

%O3 Tracer
i=i+1; %<R168a>; 
Rnames{i} = 'RCO3+NOQ=PPNQ';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NOQ'; 
fRCO3(i)=fRCO3(i)-1; fNOQ(i)=fNOQ(i)-1; fPPNQ(i)=fPPNQ(i)+1; 

%O3 Tracer
i=i+1; %<R168b>; 
Rnames{i} = 'RCO3+NQ2=PPNQ2';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NQ2'; 
fRCO3(i)=fRCO3(i)-1; fNQ2(i)=fNQ2(i)-1; fPPNQ2(i)=fPPNQ2(i)+1; 

i=i+1; %<R169>;
Rnames{i} = 'PPN=RCO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R169a>; 
Rnames{i} = 'PPNQ=RCO3+NOQ';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPNQ'; 
fPPNQ(i)=fPPNQ(i)-1; fRCO3(i)=fRCO3(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R169b>; 
Rnames{i} = 'PPNQ2=RCO3+NQ2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPNQ2'; 
fPPNQ2(i)=fPPNQ2(i)-1; fRCO3(i)=fRCO3(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R170>;
Rnames{i} = 'MACP+NO2=MPAN';
k(:,i) = K_ACO3_NO2; %MISSING FROM GOLIFF TABLE S2D
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO2'; 
fMACP(i)=fMACP(i)-1; fNO2(i)=fNO2(i)-1; fMPAN(i)=fMPAN(i)+1; 

%O3 Tracer
i=i+1; %<R170a>;
Rnames{i} = 'MACP+NOQ=MPANQ';
k(:,i) = K_ACO3_NO2; %MISSING FROM GOLIFF TABLE S2D
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NOQ'; 
fMACP(i)=fMACP(i)-1; fNOQ(i)=fNOQ(i)-1; fMPANQ(i)=fMPANQ(i)+1; 

%O3 Tracer
i=i+1; %<R170b>;
Rnames{i} = 'MACP+NQ2=MPANQ2';
k(:,i) = K_ACO3_NO2; %MISSING FROM GOLIFF TABLE S2D
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NQ2'; 
fMACP(i)=fMACP(i)-1; fNQ2(i)=fNQ2(i)-1; fMPANQ2(i)=fMPANQ2(i)+1; 

i=i+1; %<R171>;
Rnames{i} = 'MPAN=MACP+NO2';
k(:,i) = 1.60E16.*exp(-13486./T);
Gstr{i,1} = 'MPAN'; 
fMPAN(i)=fMPAN(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R171a>;
Rnames{i} = 'MPANQ=MACP+NOQ';
k(:,i) = 1.60E16.*exp(-13486./T);
Gstr{i,1} = 'MPANQ'; 
fMPANQ(i)=fMPANQ(i)-1; fMACP(i)=fMACP(i)+1; fNOQ(i)=fNOQ(i)+1; 

%O3 Tracer
i=i+1; %<R171b>;
Rnames{i} = 'MPANQ2=MACP+NQ2';
k(:,i) = 1.60E16.*exp(-13486./T);
Gstr{i,1} = 'MPANQ2'; 
fMPANQ2(i)=fMPANQ2(i)-1; fMACP(i)=fMACP(i)+1; fNQ2(i)=fNQ2(i)+1; 

%% PEROXY RADICALS+NO, NO2
i=i+1; %<R172>;
Rnames{i} = 'MO2+NO=HCHO+HO2+NO2';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO'; 
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R172a>;
Rnames{i} = 'MO2+NQ=HCHO+HO2+NOQ';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NQ'; 
fMO2(i)=fMO2(i)-1; fNQ(i)=fNQ(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R173>;
Rnames{i} = 'ETHP+NO=HO2+ACD+NO2';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO'; 
fETHP(i)=fETHP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R173a>;
Rnames{i} = 'ETHP+NQ=HO2+ACD+NOQ';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NQ'; 
fETHP(i)=fETHP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R174>;
Rnames{i} = 'HC3P+NO=HO2+MO2+ETHP+XO2+NO2+ACD+ALD+ACT+MEK+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO'; 
fHC3P(i)=fHC3P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.66; fMO2(i)=fMO2(i)+0.131; 
fETHP(i)=fETHP(i)+0.048; fXO2(i)=fXO2(i)+0.089; fNO2(i)=fNO2(i)+0.935; fACD(i)=fACD(i)+0.504; 
fALD(i)=fALD(i)+0.132; fACT(i)=fACT(i)+0.165; fMEK(i)=fMEK(i)+0.042; fONIT(i)=fONIT(i)+0.065; %mmarvin 20151020

%O3 Tracer
i=i+1; %<R174a>;
Rnames{i} = 'HC3P+NQ=HO2+MO2+ETHP+XO2+NOQ+ACD+ALD+ACT+MEK+ONITQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NQ'; 
fHC3P(i)=fHC3P(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.66; fMO2(i)=fMO2(i)+0.131; 
fETHP(i)=fETHP(i)+0.048; fXO2(i)=fXO2(i)+0.089; fNOQ(i)=fNOQ(i)+0.935; fACD(i)=fACD(i)+0.504; 
fALD(i)=fALD(i)+0.132; fACT(i)=fACT(i)+0.165; fMEK(i)=fMEK(i)+0.042; fONITQ(i)=fONITQ(i)+0.065; %mmarvin 20151020

i=i+1; %<R175>;
Rnames{i} = 'HC5P+NO=HO2+MO2+ETHP+XO2+NO2+HCHO+ACD+ALD+ACT+MEK+KET+HKET+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NO'; 
fHC5P(i)=fHC5P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.20; fMO2(i)=fMO2(i)+0.051; 
fETHP(i)=fETHP(i)+0.231; fXO2(i)=fXO2(i)+0.235; fNO2(i)=fNO2(i)+0.864; fHCHO(i)=fHCHO(i)+0.018; 
fACD(i)=fACD(i)+0.045; fALD(i)=fALD(i)+0.203; fACT(i)=fACT(i)+0.217; fMEK(i)=fMEK(i)+0.033; 
fKET(i)=fKET(i)+0.039; fHKET(i)=fHKET(i)+0.272; fONIT(i)=fONIT(i)+0.136; 

%O3 Tracer
i=i+1; %<R175a>;
Rnames{i} = 'HC5P+NQ=HO2+MO2+ETHP+XO2+NOQ+HCHO+ACD+ALD+ACT+MEK+KET+HKET+ONITQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NQ'; 
fHC5P(i)=fHC5P(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.20; fMO2(i)=fMO2(i)+0.051; 
fETHP(i)=fETHP(i)+0.231; fXO2(i)=fXO2(i)+0.235; fNOQ(i)=fNOQ(i)+0.864; fHCHO(i)=fHCHO(i)+0.018; 
fACD(i)=fACD(i)+0.045; fALD(i)=fALD(i)+0.203; fACT(i)=fACT(i)+0.217; fMEK(i)=fMEK(i)+0.033; 
fKET(i)=fKET(i)+0.039; fHKET(i)=fHKET(i)+0.272; fONITQ(i)=fONITQ(i)+0.136; 

i=i+1; %<R176>;
Rnames{i} = 'HC8P+NO=0.606 HO2+0.133 ETHP+0.416 XO2+0.739 NO2+0 .150 ALD+0.642 KET+0.261 ONIT ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NO'; 
fHC8P(i)=fHC8P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.606; fETHP(i)=fETHP(i)+0.133; 
fXO2(i)=fXO2(i)+0.416; fNO2(i)=fNO2(i)+0.739; fALD(i)=fALD(i)+0.150; 
fKET(i)=fKET(i)+0.642; fONIT(i)=fONIT(i)+0.261; 

%O3 Tracer
i=i+1; %<R176a>;
Rnames{i} = 'HC8P+NQ=0.606 HO2+0.133 ETHP+0.416 XO2+0.739 NOQ+0 .150 ALD+0.642 KET+0.261 ONITQ ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NQ'; 
fHC8P(i)=fHC8P(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.606; fETHP(i)=fETHP(i)+0.133; 
fXO2(i)=fXO2(i)+0.416; fNOQ(i)=fNOQ(i)+0.739; fALD(i)=fALD(i)+0.150; 
fKET(i)=fKET(i)+0.642; fONITQ(i)=fONITQ(i)+0.261; 

i=i+1; %<R177>;
Rnames{i} = 'ETEP+NO=HO2+NO2+1.6 HCHO+0.2 ALD';
k(:,i) = 9.00E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NO'; 
fETEP(i)=fETEP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fHCHO(i)=fHCHO(i)+1.6; fHCHO(i)=fHCHO(i)+0.2; 

%O3 Tracer
i=i+1; %<R177a>;
Rnames{i} = 'ETEP+NQ=HO2+NOQ+1.6 HCHO+0.2 ALD';
k(:,i) = 9.00E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NQ'; 
fETEP(i)=fETEP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1;
fHCHO(i)=fHCHO(i)+1.6; fHCHO(i)=fHCHO(i)+0.2; 

i=i+1; %<R178>;
Rnames{i} = 'OLTP+NO= HO2+NO2+HCHO+ACD+ALD+ACT+MEK+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NO'; 
fOLTP(i)=fOLTP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.78; fNO2(i)=fNO2(i)+0.97; 
fHCHO(i)=fHCHO(i)+0.78; fACD(i)=fACD(i)+0.012; fALD(i)=fALD(i)+0.44; fACT(i)=fACT(i)+0.06; 
fMEK(i)=fMEK(i)+0.13; fONIT(i)=fONIT(i)+0.03; 

%O3 Tracer
i=i+1; %<R178a>;
Rnames{i} = 'OLTP+NQ= HO2+NOQ+HCHO+ACD+ALD+ACT+MEK+ONITQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NQ'; 
fOLTP(i)=fOLTP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.78; fNOQ(i)=fNOQ(i)+0.97; 
fHCHO(i)=fHCHO(i)+0.78; fACD(i)=fACD(i)+0.012; fALD(i)=fALD(i)+0.44; fACT(i)=fACT(i)+0.06; 
fMEK(i)=fMEK(i)+0.13; fONITQ(i)=fONITQ(i)+0.03; 

i=i+1; %<R179>;
Rnames{i} = 'OLIP+NO = HO2+NO2+ACD+ALD+ACT+KET+HKET+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NO'; 
fOLIP(i)=fOLIP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.83; fNO2(i)=fNO2(i)+0.95; 
fACD(i)=fACD(i)+0.81; fALD(i)=fALD(i)+0.68; fACT(i)=fACT(i)+0.20; fKET(i)=fKET(i)+0.09; 
fHKET(i)=fHKET(i)+0.02; fONIT(i)=fONIT(i)+0.05; %mmarvin 20151020

%O3 Tracer
i=i+1; %<R179a>;
Rnames{i} = 'OLIP+NQ = HO2+NOQ+ACD+ALD+ACT+KET+HKET+ONITQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NQ'; 
fOLIP(i)=fOLIP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.83; fNOQ(i)=fNOQ(i)+0.95; 
fACD(i)=fACD(i)+0.81; fALD(i)=fALD(i)+0.68; fACT(i)=fACT(i)+0.20; fKET(i)=fKET(i)+0.09; 
fHKET(i)=fHKET(i)+0.02; fONITQ(i)=fONITQ(i)+0.05; %mmarvin 20151020

i=i+1; %<R180>;
Rnames{i} = 'BENP+NO=0.918 HO2+0.918 NO2+0.459 DCB2+0.459 DCB3+0.918 GLY+0.082 ONIT';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NO'; 
fBENP(i)=fBENP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.918; fNO2(i)=fNO2(i)+0.918;
fDCB2(i)=fDCB2(i)+0.459; fDCB3(i)=fDCB3(i)+0.459; fGLY(i)=fGLY(i)+0.918; 
fONIT(i)=fONIT(i)+0.082; 

%O3 Tracer
i=i+1; %<R180a>;
Rnames{i} = 'BENP+NQ=0.918 HO2+0.918 NOQ+0.459 DCB2+0.459 DCB3+0.918 GLY+0.082 ONITQ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NQ'; 
fBENP(i)=fBENP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.918; fNOQ(i)=fNOQ(i)+0.918;
fDCB2(i)=fDCB2(i)+0.459; fDCB3(i)=fDCB3(i)+0.459; fGLY(i)=fGLY(i)+0.918; 
fONITQ(i)=fONITQ(i)+0.082; 

i=i+1; %<R181>;
Rnames{i} = 'TLP1+NO=NO2+BALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NO'; 
fTLP1(i)=fTLP1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R181a>;
Rnames{i} = 'TLP1+NQ=NOQ+BALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NQ'; 
fTLP1(i)=fTLP1(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R182>;
Rnames{i} = 'TOLP+NO=0.95 HO2+0.95 NO2+0.95 DCB2+0.050 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NO'; 
fTOLP(i)=fTOLP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95; 
fDCB2(i)=fDCB2(i)+0.95; fONIT(i)=fONIT(i)+0.05; 

%O3 Tracer
i=i+1; %<R182a>;
Rnames{i} = 'TOLP+NQ=0.95 HO2+0.95 NOQ+0.95 DCB2+0.050 ONITQ ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NQ'; 
fTOLP(i)=fTOLP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.95; fNOQ(i)=fNOQ(i)+0.95; 
fDCB2(i)=fDCB2(i)+0.95; fONIT(i)=fONIT(i)+0.05; 

i=i+1; %<R183>;
Rnames{i} = 'PER1+NO=0.5 HO2+0.95 NO2+0.5 BALD+0.5 MGLY+0.5 DCB1+0.05 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NO'; 
fPER1(i)=fPER1(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+0.95;
fBALD(i)=fBALD(i)+0.5; fMGLY(i)=fMGLY(i)+0.5; fDCB1(i)=fDCB1(i)+0.5; 
fONIT(i)=fONIT(i)+0.05; 

%O3 Tracer
i=i+1; %<R183a>;
Rnames{i} = 'PER1+NQ=0.5 HO2+0.95 NOQ+0.5 BALD+0.5 MGLY+0.5 DCB1+0.05 ONITQ ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NQ'; 
fPER1(i)=fPER1(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNOQ(i)=fNOQ(i)+0.95;
fBALD(i)=fBALD(i)+0.5; fMGLY(i)=fMGLY(i)+0.5; fDCB1(i)=fDCB1(i)+0.5; 
fONITQ(i)=fONITQ(i)+0.05; 

i=i+1; %<R184>;
Rnames{i} = 'XYL1+NO=NO2+BALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NO'; 
fXYL1(i)=fXYL1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R184a>;
Rnames{i} = 'XYL1+NQ=NOQ+BALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NQ'; 
fXYL1(i)=fXYL1(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R185>;
Rnames{i} = 'XYLP+NO=0.95 HO2+0.95 NO2+0.95 DCB3+0.050 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NO'; 
fXYLP(i)=fXYLP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95; 
fDCB3(i)=fDCB3(i)+0.95; fONIT(i)=fONIT(i)+0.05;

%O3 Tracer
i=i+1; %<R185a>;
Rnames{i} = 'XYLP+NQ=0.95 HO2+0.95 NOQ+0.95 DCB3+0.050 ONITQ ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NQ'; 
fXYLP(i)=fXYLP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.95; fNOQ(i)=fNOQ(i)+0.95; 
fDCB3(i)=fDCB3(i)+0.95; fONITQ(i)=fONITQ(i)+0.05;

i=i+1; %<R186>;
Rnames{i} = 'PER2+NO=0.95 HO2+0.95 NO2+0.95 MGLY+0.95 DCB1+1.05 DCB3+0.05 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NO'; 
fPER2(i)=fPER2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95;
fMGLY(i)=fMGLY(i)+0.95; fDCB1(i)=fDCB1(i)+0.95; fDCB3(i)=fDCB3(i)+1.05; 
fONIT(i)=fONIT(i)+0.05;

%O3 Tracer
i=i+1; %<R186a>;
Rnames{i} = 'PER2+NQ=0.95 HO2+0.95 NOQ+0.95 MGLY+0.95 DCB1+1.05 DCB3+0.05 ONITQ ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NQ'; 
fPER2(i)=fPER2(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.95; fNOQ(i)=fNOQ(i)+0.95;
fMGLY(i)=fMGLY(i)+0.95; fDCB1(i)=fDCB1(i)+0.95; fDCB3(i)=fDCB3(i)+1.05; 
fONITQ(i)=fONITQ(i)+0.05;

i=i+1; %<R187>;
Rnames{i} = 'XYOP+NO= HO2+NO2+GLY+MGLY+DCB1+DCB2+DCB3+ONIT';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NO'; 
fXYOP(i)=fXYOP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95; 
fGLY(i)=fGLY(i)+0.350; fMGLY(i)=fMGLY(i)+0.60; fDCB1(i)=fDCB1(i)+0.70; fDCB2(i)=fDCB2(i)+0.073; 
fDCB3(i)=fDCB3(i)+0.117; fONIT(i)=fONIT(i)+0.05; 

%O3 Tracer
i=i+1; %<R187a>;
Rnames{i} = 'XYOP+NQ= HO2+NOQ+GLY+MGLY+DCB1+DCB2+DCB3+ONITQ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NQ'; 
fXYOP(i)=fXYOP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.95; fNOQ(i)=fNOQ(i)+0.95; 
fGLY(i)=fGLY(i)+0.350; fMGLY(i)=fMGLY(i)+0.60; fDCB1(i)=fDCB1(i)+0.70; fDCB2(i)=fDCB2(i)+0.073; 
fDCB3(i)=fDCB3(i)+0.117; fONITQ(i)=fONITQ(i)+0.05; 

i=i+1;%<R188>;
Rnames{i} = 'ISOP+NO=HO2+NO2+HCHO+MACR+MVK+ISON+GLY+HKET+ALD';
k(:,i) = 2.43E-12.*exp(360./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO'; 
fISOP(i)=fISOP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.88; fNO2(i)=fNO2(i)+0.88; 
fHCHO(i)=fHCHO(i)+0.2; fMACR(i)=fMACR(i)+0.28; fMVK(i)=fMVK(i)+0.44; 
fISON(i)=fISON(i)+0.12; fGLY(i)=fGLY(i)+0.021; fHKET(i)=fHKET(i)+0.029; fALD(i)=fALD(i)+0.27;
fHCHO(i)=fHCHO(i)+0.52; %additional yield to match MVK+MACR

%O3 Tracer
i=i+1;%<R188a>;
Rnames{i} = 'ISOP+NQ=HO2+NOQ+HCHO+MACR+MVK+ISONQ+GLY+HKET+ALD';
k(:,i) = 2.43E-12.*exp(360./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NQ'; 
fISOP(i)=fISOP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.88; fNOQ(i)=fNOQ(i)+0.88; 
fHCHO(i)=fHCHO(i)+0.2; fMACR(i)=fMACR(i)+0.28; fMVK(i)=fMVK(i)+0.44; 
fISONQ(i)=fISONQ(i)+0.12; fGLY(i)=fGLY(i)+0.021; fHKET(i)=fHKET(i)+0.029; fALD(i)=fALD(i)+0.27;
fHCHO(i)=fHCHO(i)+0.52; %additional yield to match MVK+MACR

i=i+1; %<R189>;
Rnames{i} = 'APIP+NO= HO2+NO2+HCHO+ALD+ACT+KET+ORA1+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO'; 
fAPIP(i)=fAPIP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.82; fNO2(i)=fNO2(i)+0.82; 
fHCHO(i)=fHCHO(i)+0.23; fALD(i)=fALD(i)+0.43; fACT(i)=fACT(i)+0.11; fKET(i)=fKET(i)+0.44; 
fORA1(i)=fORA1(i)+0.07; fONIT(i)=fONIT(i)+0.18; 

%O3 Tracer
i=i+1; %<R189a>;
Rnames{i} = 'APIP+NQ= HO2+NOQ+HCHO+ALD+ACT+KET+ORA1+ONITQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NQ'; 
fAPIP(i)=fAPIP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.82; fNOQ(i)=fNOQ(i)+0.82; 
fHCHO(i)=fHCHO(i)+0.23; fALD(i)=fALD(i)+0.43; fACT(i)=fACT(i)+0.11; fKET(i)=fKET(i)+0.44; 
fORA1(i)=fORA1(i)+0.07; fONITQ(i)=fONITQ(i)+0.18; 

i=i+1; %<R190>;
Rnames{i} = 'LIMP+NO= HO2+NO2+OLI+HCHO+UALD+ORA1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NO'; 
fLIMP(i)=fLIMP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fOLI(i)=fOLI(i)+0.05; 
fHCHO(i)=fHCHO(i)+0.43; fUALD(i)=fUALD(i)+0.68; fORA1(i)=fORA1(i)+0.07; 

%O3 Tracer
i=i+1; %<R190a>;
Rnames{i} = 'LIMP+NQ= HO2+NOQ+OLI+HCHO+UALD+ORA1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NQ'; 
fLIMP(i)=fLIMP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; fOLI(i)=fOLI(i)+0.05; 
fHCHO(i)=fHCHO(i)+0.43; fUALD(i)=fUALD(i)+0.68; fORA1(i)=fORA1(i)+0.07; 

i=i+1; %<R191>;
Rnames{i} = 'ACO3+NO=MO2+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO'; 
fACO3(i)=fACO3(i)-1; fNO(i)=fNO(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R191a>; 
Rnames{i} = 'ACO3+NQ=MO2+NOQ';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NQ'; 
fACO3(i)=fACO3(i)-1; fNQ(i)=fNQ(i)-1; fMO2(i)=fMO2(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R192>;
Rnames{i} = 'RCO3+NO=ETHP+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO'; 
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R192a>; 
Rnames{i} = 'RCO3+NQ=ETHP+NOQ';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NQ'; 
fRCO3(i)=fRCO3(i)-1; fNQ(i)=fNQ(i)-1; fETHP(i)=fETHP(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R193>;
Rnames{i} = 'ACTP+NO=ACO3+NO2+HCHO';
k(:,i) = 2.90E-12.*exp(300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO'; 
fACTP(i)=fACTP(i)-1; fNO(i)=fNO(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 Tracer
i=i+1; %<R193a>; 
Rnames{i} = 'ACTP+NQ=ACO3+NOQ+HCHO';
k(:,i) = 2.90E-12.*exp(300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NQ'; 
fACTP(i)=fACTP(i)-1; fNQ(i)=fNQ(i)-1; fACO3(i)=fACO3(i)+1; fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<R194>;
Rnames{i} = 'MEKP+NO=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO'; 
fMEKP(i)=fMEKP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 tracer
i=i+1; %<R194a>; 
Rnames{i} = 'MEKP+NQ=0.67 HO2+NOQ+0.33 HCHO+0.67 DCB1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NQ'; 
fMEKP(i)=fMEKP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.67; fNOQ(i)=fNOQ(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %<R195>;
Rnames{i} = 'KETP+NO= HO2+ACO3+XO2+NO2+MGLY+ALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO'; 
fKETP(i)=fKETP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.77; fACO3(i)=fACO3(i)+0.23; 
fXO2(i)=fXO2(i)+0.16; fNO2(i)=fNO2(i)+1; fMGLY(i)=fMGLY(i)+0.54; fALD(i)=fALD(i)+0.46; 

%O3 Tracer
i=i+1; %<R195a>; 
Rnames{i} = 'KETP+NQ= HO2+ACO3+XO2+NOQ+MGLY+ALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NQ'; 
fKETP(i)=fKETP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.77; fACO3(i)=fACO3(i)+0.23; 
fXO2(i)=fXO2(i)+0.16; fNOQ(i)=fNOQ(i)+1; fMGLY(i)=fMGLY(i)+0.54; fALD(i)=fALD(i)+0.46; 

i=i+1; %<R196>;
Rnames{i} = 'MACP+NO=0.75 HO2+0.25 ACO3+NO2+0.25 CO+0.75 HCHO+0.50 MGLY+0.25 HKET ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO'; 
fMACP(i)=fMACP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.75; fACO3(i)=fACO3(i)+0.25; 
fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+0.25; fHCHO(i)=fHCHO(i)+0.75; fMGLY(i)=fMGLY(i)+0.5;
fHKET(i)=fHKET(i)+0.25; 

%O3 Tracer
i=i+1; %<R196a>;
Rnames{i} = 'MACP+NQ=0.75 HO2+0.25 ACO3+NOQ+0.25 CO+0.75 HCHO+0.50 MGLY+0.25 HKET ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NQ'; 
fMACP(i)=fMACP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.75; fACO3(i)=fACO3(i)+0.25; 
fNOQ(i)=fNOQ(i)+1; fCO(i)=fCO(i)+0.25; fHCHO(i)=fHCHO(i)+0.75; fMGLY(i)=fMGLY(i)+0.5;
fHKET(i)=fHKET(i)+0.25;

i=i+1; %<R197>;
Rnames{i} = 'MCP+NO=NO2+0.50 HO2+0.50 HCHO+HKET   ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NO'; 
fMCP(i)=fMCP(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.5; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R197a>;
Rnames{i} = 'MCP+NQ=NOQ+0.50 HO2+0.50 HCHO+HKET   ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NQ'; 
fMCP(i)=fMCP(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.5; fHKET(i)=fHKET(i)+1; 

i=i+1; %<R198>;
Rnames{i} = 'MVKP+NO=0.3 HO2+0.7 ACO3+0.7 XO2+NO2+0.3 HCHO+0.7 ALD+0.3 MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NO'; 
fMVKP(i)=fMVKP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+0.3; 

%O3 Tracer
i=i+1; %<R198a>;
Rnames{i} = 'MVKP+NQ=0.3 HO2+0.7 ACO3+0.7 XO2+NOQ+0.3 HCHO+0.7 ALD+0.3 MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NQ'; 
fMVKP(i)=fMVKP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+0.3; 

i=i+1; %<R199>;
Rnames{i} = 'UALP+NO= HO2+CO+NO2+HCHO+ALD+KET+GLY+MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO'; 
fUALP(i)=fUALP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.61; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21; 

%O3 Tracer
i=i+1; %<R199a>;
Rnames{i} = 'UALP+NQ= HO2+CO+NOQ+HCHO+ALD+KET+GLY+MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NQ'; 
fUALP(i)=fUALP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.61; fNOQ(i)=fNOQ(i)+1; 
fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21; 

i=i+1; %<R200>;
Rnames{i} = 'BALP+NO=BAL1+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NO'; 
fBALP(i)=fBALP(i)-1; fNO(i)=fNO(i)-1; fBAL1(i)=fBAL1(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R200a>;
Rnames{i} = 'BALP+NQ=BAL1+NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NQ'; 
fBALP(i)=fBALP(i)-1; fNQ(i)=fNQ(i)-1; fBAL1(i)=fBAL1(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1; %<R201>;
Rnames{i} = 'BAL1+NO=BAL2+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NO'; 
fBAL1(i)=fBAL1(i)-1; fNO(i)=fNO(i)-1; fBAL2(i)=fBAL2(i)+1; fNO2(i)=fNO2(i)+1;

%O3 Tracer
i=i+1; %<R201a>;
Rnames{i} = 'BAL1+NQ=BAL2+NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NQ'; 
fBAL1(i)=fBAL1(i)-1; fNQ(i)=fNQ(i)-1; fBAL2(i)=fBAL2(i)+1; fNOQ(i)=fNOQ(i)+1; 
 
i=i+1; %<R202>;
Rnames{i} = 'ADDC+NO=HO2+NO2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NO'; 
fADDC(i)=fADDC(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;  

%O3 Tracer
i=i+1; %<R202a>;
Rnames{i} = 'ADDC+NQ=HO2+NOQ+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NQ'; 
fADDC(i)=fADDC(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;  

i=i+1; %<R203>;
Rnames{i} = 'MCTP+NO=MCTO+NO2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NO'; 
fMCTP(i)=fMCTP(i)-1; fNO(i)=fNO(i)-1; fMCTO(i)=fMCTO(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R203a>;
Rnames{i} = 'MCTP+NQ=MCTO+NOQ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NQ'; 
fMCTP(i)=fMCTP(i)-1; fNQ(i)=fNQ(i)-1; fMCTO(i)=fMCTO(i)+1; fNOQ(i)=fNOQ(i)+1; 

i=i+1;  %<R204>;
Rnames{i} = 'ORAP+NO=HO2+NO2+GLY';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO'; 
fORAP(i)=fORAP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1;  %<R204a>; 
Rnames{i} = 'ORAP+NQ=HO2+NOQ+GLY';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NQ'; 
fORAP(i)=fORAP(i)-1; fNQ(i)=fNQ(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1;  %<R205>;
Rnames{i} = 'OLNN+NO=ONIT+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO'; 
fOLNN(i)=fOLNN(i)-1; fNO(i)=fNO(i)-1; fONIT(i)=fONIT(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205a>;
Rnames{i} = 'OLNN+NQ=ONIT+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NQ'; 
fOLNN(i)=fOLNN(i)-1; fNQ(i)=fNQ(i)-1; fONIT(i)=fONIT(i)+1; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205b>; 
Rnames{i} = 'OLNNQ+NO=ONITQ+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NO'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNO(i)=fNO(i)-1; fONITQ(i)=fONITQ(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205c>;
Rnames{i} = 'OLNNQ+NQ=ONITQ+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNQ(i)=fNQ(i)-1; fONITQ(i)=fONITQ(i)+1; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205d>; 
Rnames{i} = 'OLNNQ2+NO=ONITQ2+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NO'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNO(i)=fNO(i)-1; fONITQ2(i)=fONITQ2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205e>;
Rnames{i} = 'OLNNQ2+NQ=ONITQ2+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NQ'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNQ(i)=fNQ(i)-1; fONITQ2(i)=fONITQ2(i)+1; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205f>; 
Rnames{i} = 'OLNNQ3+NO=ONITQ3+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NO'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNO(i)=fNO(i)-1; fONITQ3(i)=fONITQ3(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1;  %<R205g>; 
Rnames{i} = 'OLNNQ3+NQ=ONITQ3+NOQ+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NQ'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNQ(i)=fNQ(i)-1; fONITQ3(i)=fONITQ3(i)+1; fNOQ(i)=fNOQ(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;  %<R206>;
Rnames{i} = 'OLND+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO'; 
fOLND(i)=fOLND(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206a>; 
Rnames{i} = 'OLND+NQ=NO2+NOQ+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NQ'; 
fOLND(i)=fOLND(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206b>; 
Rnames{i} = 'OLNDQ+NO=(2/3)NO2+(1/3)NOQ+NO2+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NO'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+(2/3); fNOQ(i)=fNOQ(i)+(1/3); fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206c>; 
Rnames{i} = 'OLNDQ+NQ=(2/3)NO2+(1/3)NOQ+NO2+NOQ+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NQ'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNQ(i)=fNQ(i)-1; fNO2(i)=fNO2(i)+(2/3); fNOQ(i)=fNOQ(i)+(1/3); fNO2(i)=fNO2(i)+1; fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206d>; 
Rnames{i} = 'OLNDQ2+NO=(2/3)NOQ+(1/3)NQ2+NO2+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NO'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNO(i)=fNO(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206e>;
Rnames{i} = 'OLNDQ2+NQ=(2/3)NOQ+(1/3)NQ2+NOQ+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NQ'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206f>; 
Rnames{i} = 'OLNDQ3+NO=NQ2+NO2+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NO'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

%O3 Tracer
i=i+1;  %<R206g>; 
Rnames{i} = 'OLNDQ3+NQ=NQ2+NOQ+0.287HCHO+1.24ALD+0.464KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NQ'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNQ(i)=fNQ(i)-1; fNQ2(i)=fNQ2(i)+1; fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

i=i+1;  %<R207>;
Rnames{i} = 'ADCN+NO=GLY+NO2+NO2+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NO'; 
fADCN(i)=fADCN(i)-1; fNO(i)=fNO(i)-1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207a>;
Rnames{i} = 'ADCN+NQ=GLY+NO2+NOQ+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NQ'; 
fADCN(i)=fADCN(i)-1; fNQ(i)=fNQ(i)-1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; fNOQ(i)=fNOQ(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207b>;
Rnames{i} = 'ADCNQ+NO=GLY+0.66NOQ+0.33NO2+NO2+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'NO'; 
fADCNQ(i)=fADCNQ(i)-1; fNO(i)=fNO(i)-1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fNO2(i)=fNO2(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207c>;
Rnames{i} = 'ADCNQ+NQ=GLY+0.66NOQ+0.33NO2+NOQ+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'NQ'; 
fADCNQ(i)=fADCNQ(i)-1; fNQ(i)=fNQ(i)-1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207d>;
Rnames{i} = 'ADCNQ2+NO=GLY+0.66NOQ+0.33NQ2+NO2+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'NO'; 
fADCNQ2(i)=fADCNQ2(i)-1; fNO(i)=fNO(i)-1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fNO2(i)=fNO2(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207e>;
Rnames{i} = 'ADCNQ2+NQ=GLY+0.66NOQ+0.33NQ2+NOQ+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'NQ'; 
fADCNQ2(i)=fADCNQ2(i)-1; fNQ(i)=fNQ(i)-1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207f>;
Rnames{i} = 'ADCNQ3+NO=GLY+NQ2+NO2+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'NO'; 
fADCNQ3(i)=fADCNQ3(i)-1; fNO(i)=fNO(i)-1; fGLY(i)=fGLY(i)+1; fNQ2(i)=fNQ2(i)+1; fNO2(i)=fNO2(i)+1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R207g>;
Rnames{i} = 'ADCNQ3+NQ=GLY+NQ2+NOQ+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'NQ'; 
fADCNQ3(i)=fADCNQ3(i)-1; fNQ(i)=fNQ(i)-1; fGLY(i)=fGLY(i)+1; fNQ3(i)=fNQ3(i)+(1/3); fNOQ(i)=fNOQ(i)+1; fOP2(i)=fOP2(i)+1;

i=i+1;  %<R208>
Rnames{i} = 'XO2+NO=NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO'; 
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1;  %<R208a>;
Rnames{i} = 'XO2+NQ=NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NQ'; 
fXO2(i)=fXO2(i)-1; fNQ(i)=fNQ(i)-1; fNOQ(i)=fNOQ(i)+1; 

i=i+1;  %<R209>;
Rnames{i} = 'BAL2+NO2=ONIT';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'BAL2'; Gstr{i,2} = 'NO2'; 
fBAL2(i)=fBAL2(i)-1; fNO2(i)=fNO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1;  %<R209a>;
Rnames{i} = 'BAL2+NOQ=ONITQ';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'BAL2'; Gstr{i,2} = 'NOQ'; 
fBAL2(i)=fBAL2(i)-1; fNOQ(i)=fNOQ(i)-1; fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1;  %<R209b>;
Rnames{i} = 'BAL2+NQ2=ONITQ2';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'BAL2'; Gstr{i,2} = 'NQ2'; 
fBAL2(i)=fBAL2(i)-1; fNQ2(i)=fNQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1; 

i=i+1; %<R210>;
Rnames{i} = 'CHO+NO2=ONIT';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'NO2'; 
fCHO(i)=fCHO(i)-1; fNO2(i)=fNO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R210a>;
Rnames{i} = 'CHO+NOQ=ONITQ';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'NOQ'; 
fCHO(i)=fCHO(i)-1; fNOQ(i)=fNOQ(i)-1; fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1; %<R210b>;
Rnames{i} = 'CHO+NQ2=ONITQ2';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'NQ2'; 
fCHO(i)=fCHO(i)-1; fNQ2(i)=fNQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1; 

i=i+1; %<R211>;
Rnames{i} = 'MCTO+NO2=ONIT';
k(:,i) = 2.08E-12;
Gstr{i,1} = 'MCTO'; Gstr{i,2} = 'NO2'; 
fMCTO(i)=fMCTO(i)-1; fNO2(i)=fNO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R211a>;
Rnames{i} = 'MCTO+NOQ=ONITQ';
k(:,i) = 2.08E-12;
Gstr{i,1} = 'MCTO'; Gstr{i,2} = 'NOQ'; 
fMCTO(i)=fMCTO(i)-1; fNOQ(i)=fNOQ(i)-1; fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1; %<R211b>;
Rnames{i} = 'MCTO+NQ2=ONITQ2';
k(:,i) = 2.08E-12;
Gstr{i,1} = 'MCTO'; Gstr{i,2} = 'NQ2'; 
fMCTO(i)=fMCTO(i)-1; fNQ2(i)=fNQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1; 

%% RO2+HO2
i=i+1; %<R212>;
Rnames{i} = 'MO2+HO2=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2'; 
fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)-1; fOP1(i)=fOP1(i)+1; 

%O3 Tracer
i=i+1; %<R212a>; 
Rnames{i} = 'MO2+HOQ=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HOQ'; 
fMO2(i)=fMO2(i)-1; fHOQ(i)=fHOQ(i)-1; fOP1(i)=fOP1(i)+1; 

%O3 Tracer
i=i+1; %<R212b>; 
Rnames{i} = 'MO2+H2Q=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HQ2'; 
fMO2(i)=fMO2(i)-1; fHQ2(i)=fHQ2(i)-1; fOP1(i)=fOP1(i)+1; 

i=i+1;  %<R213>;
Rnames{i} = 'ETHP+HO2=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HO2'; 
fETHP(i)=fETHP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R213a>; 
Rnames{i} = 'ETHP+HOQ=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HOQ'; 
fETHP(i)=fETHP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R213b>; 
Rnames{i} = 'ETHP+HQ2=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HQ2'; 
fETHP(i)=fETHP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<R214>;
Rnames{i} = 'HC3P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HO2'; 
fHC3P(i)=fHC3P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R214a>; 
Rnames{i} = 'HC3P+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HOQ'; 
fHC3P(i)=fHC3P(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R214b>; 
Rnames{i} = 'HC3P+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HQ2'; 
fHC3P(i)=fHC3P(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<R215>;
Rnames{i} = 'HC5P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'HO2'; 
fHC5P(i)=fHC5P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R215a>;
Rnames{i} = 'HC5P+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'HOQ'; 
fHC5P(i)=fHC5P(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R215b>;
Rnames{i} = 'HC5P+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'HQ2'; 
fHC5P(i)=fHC5P(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<R216>;
Rnames{i} = 'HC8P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'HO2'; 
fHC8P(i)=fHC8P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R216a>;
Rnames{i} = 'HC8P+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'HOQ'; 
fHC8P(i)=fHC8P(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R216b>;
Rnames{i} = 'HC8P+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'HQ2'; 
fHC8P(i)=fHC8P(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<R217>;
Rnames{i} = 'ETEP+HO2=OP2';
k(:,i) = 1.90E-13.*exp(1300./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'HO2'; 
fETEP(i)=fETEP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R217a>;
Rnames{i} = 'ETEP+HOQ=OP2';
k(:,i) = 1.90E-13.*exp(1300./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'HOQ'; 
fETEP(i)=fETEP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R217b>;
Rnames{i} = 'ETEP+HQ2=OP2';
k(:,i) = 1.90E-13.*exp(1300./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'HQ2'; 
fETEP(i)=fETEP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<R218>;
Rnames{i} = ' OLTP+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'HO2'; 
fOLTP(i)=fOLTP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R218a>;
Rnames{i} = ' OLTP+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'HOQ'; 
fOLTP(i)=fOLTP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1;  %<R218b>;
Rnames{i} = ' OLTP+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'HQ2'; 
fOLTP(i)=fOLTP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R219>;
Rnames{i} = 'OLIP+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'HO2'; 
fOLIP(i)=fOLIP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R219a>;
Rnames{i} = 'OLIP+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'HOQ'; 
fOLIP(i)=fOLIP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R219b>;
Rnames{i} = 'OLIP+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'HQ2'; 
fOLIP(i)=fOLIP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R220>;
Rnames{i} = 'BENP+HO2=OP2';
k(:,i) = 2.91E-13.*exp(1300./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'HO2'; 
fBENP(i)=fBENP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R220a>;
Rnames{i} = 'BENP+HOq=OP2';
k(:,i) = 2.91E-13.*exp(1300./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'HOQ'; 
fBENP(i)=fBENP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R220b>;
Rnames{i} = 'BENP+HQ2=OP2';
k(:,i) = 2.91E-13.*exp(1300./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'HQ2'; 
fBENP(i)=fBENP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1;

i=i+1; %<R221>;
Rnames{i} = 'TLP1+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'HO2'; 
fTLP1(i)=fTLP1(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R221a>;
Rnames{i} = 'TLP1+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'HOQ'; 
fTLP1(i)=fTLP1(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R221b>;
Rnames{i} = 'TLP1+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'HQ2'; 
fTLP1(i)=fTLP1(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R222>;
Rnames{i} = 'TOLP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'HO2'; 
fTOLP(i)=fTOLP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R222a>;
Rnames{i} = 'TOLP+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'HOQ'; 
fTOLP(i)=fTOLP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R222b>;
Rnames{i} = 'TOLP+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'HQ2'; 
fTOLP(i)=fTOLP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R223>;
Rnames{i} = 'PER1+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'HO2'; 
fPER1(i)=fPER1(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R223a>;
Rnames{i} = 'PER1+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'HOQ'; 
fPER1(i)=fPER1(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R223b>;
Rnames{i} = 'PER1+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'HQ2'; 
fPER1(i)=fPER1(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R224>;
Rnames{i} = 'XYL1+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'HO2'; 
fXYL1(i)=fXYL1(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R224a>;
Rnames{i} = 'XYL1+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'HOQ'; 
fXYL1(i)=fXYL1(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1;

%O3 Tracer
i=i+1; %<R224b>;
Rnames{i} = 'XYL1+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'HQ2'; 
fXYL1(i)=fXYL1(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1;

i=i+1; %<R225>;
Rnames{i} = 'XYLP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'HO2'; 
fXYLP(i)=fXYLP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R225a>;
Rnames{i} = 'XYLP+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'HOQ'; 
fXYLP(i)=fXYLP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R225b>;
Rnames{i} = 'XYLP+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'HQ2'; 
fXYLP(i)=fXYLP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R226>;
Rnames{i} = 'PER2+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'HO2'; 
fPER2(i)=fPER2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R226a>;
Rnames{i} = 'PER2+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'HOQ'; 
fPER2(i)=fPER2(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R226b>;
Rnames{i} = 'PER2+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'HQ2'; 
fPER2(i)=fPER2(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R227>;
Rnames{i} = 'XYOP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'HO2'; 
fXYOP(i)=fXYOP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R227a>;
Rnames{i} = 'XYOP+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'HOQ'; 
fXYOP(i)=fXYOP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R227b>;
Rnames{i} = 'XYOP+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'HQ2'; 
fXYOP(i)=fXYOP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R228>;
Rnames{i} = 'ISOP+HO2=ISHP';
k(:,i) = 2.05E-13.*exp(1300./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'HO2'; 
fISOP(i)=fISOP(i)-1; fHO2(i)=fHO2(i)-1; fISHP(i)=fISHP(i)+1; 

%O3 Tracer
i=i+1; %<R228a>;
Rnames{i} = 'ISOP+HOQ=ISHP';
k(:,i) = 2.05E-13.*exp(1300./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'HOQ'; 
fISOP(i)=fISOP(i)-1; fHOQ(i)=fHOQ(i)-1; fISHP(i)=fISHP(i)+1; 

%O3 Tracer
i=i+1; %<R228b>;
Rnames{i} = 'ISOP+HQ2=ISHP';
k(:,i) = 2.05E-13.*exp(1300./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'HQ2'; 
fISOP(i)=fISOP(i)-1; fHQ2(i)=fHQ2(i)-1; fISHP(i)=fISHP(i)+1; 

i=i+1; %<R229>;
Rnames{i} = 'APIP+HO2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HO2'; 
fAPIP(i)=fAPIP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R229a>;
Rnames{i} = 'APIP+HOQ=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HOQ'; 
fAPIP(i)=fAPIP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R229b>;
Rnames{i} = 'APIP+HQ2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HQ2'; 
fAPIP(i)=fAPIP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R230>;
Rnames{i} = 'LIMP+HO2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'HO2'; 
fLIMP(i)=fLIMP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R230a>;
Rnames{i} = 'LIMP+HOQ=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'HOQ'; 
fLIMP(i)=fLIMP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R230b>;
Rnames{i} = 'LIMP+HQ2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'HQ2'; 
fLIMP(i)=fLIMP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R231>;
Rnames{i} = 'ACO3+HO2=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<R231a>;
Rnames{i} = 'ACO3+HOQ=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HOQ'; 
fACO3(i)=fACO3(i)-1; fHOQ(i)=fHOQ(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<R231b>;
Rnames{i} = 'ACO3+HQ2=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HQ2'; 
fACO3(i)=fACO3(i)-1; fHQ2(i)=fHQ2(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %<R232>;
Rnames{i} = 'RCO3+HO2=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2'; 
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<R232a>;
Rnames{i} = 'RCO3+HOQ=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HOQ'; 
fRCO3(i)=fRCO3(i)-1; fHOQ(i)=fHOQ(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

%O3 Tracer
i=i+1; %<R232b>;
Rnames{i} = 'RCO3+HQ2=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HQ2'; 
fRCO3(i)=fRCO3(i)-1; fHQ2(i)=fHQ2(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41;

i=i+1; %<R233>;
Rnames{i} = 'ACTP+HO2= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HO2'; 
fACTP(i)=fACTP(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

%O3 Tracer
i=i+1; %<R233a>;
Rnames{i} = 'ACTP+HOQ= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HOQ'; 
fACTP(i)=fACTP(i)-1; fHOQ(i)=fHOQ(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

%O3 Tracer
i=i+1; %<R233b>;
Rnames{i} = 'ACTP+HQ2= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HQ2'; 
fACTP(i)=fACTP(i)-1; fHQ2(i)=fHQ2(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

i=i+1; %<R234>;
Rnames{i} = 'MEKP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HO2'; 
fMEKP(i)=fMEKP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R234a>;
Rnames{i} = 'MEKP+HOQ=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HOQ'; 
fMEKP(i)=fMEKP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R234b>;
Rnames{i} = 'MEKP+HQ2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HQ2'; 
fMEKP(i)=fMEKP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R235>;
Rnames{i} = 'KETP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HO2'; 
fKETP(i)=fKETP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R235a>;
Rnames{i} = 'KETP+HOQ=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HOQ'; 
fKETP(i)=fKETP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R235b>;
Rnames{i} = 'KETP+HQ2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HQ2'; 
fKETP(i)=fKETP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R236>;
Rnames{i} = 'MACP+HO2=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'HO2'; 
fMACP(i)=fMACP(i)-1; fHO2(i)=fHO2(i)-1; fMAHP(i)=fMAHP(i)+1; 

%O3 Tracer
i=i+1; %<R236a>;
Rnames{i} = 'MACP+HOQ=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'HOQ'; 
fMACP(i)=fMACP(i)-1; fHOQ(i)=fHOQ(i)-1; fMAHP(i)=fMAHP(i)+1; 

%O3 Tracer
i=i+1; %<R236b>;
Rnames{i} = 'MACP+HQ2=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'HQ2'; 
fMACP(i)=fMACP(i)-1; fHQ2(i)=fHQ2(i)-1; fMAHP(i)=fMAHP(i)+1;

i=i+1; %<R237>;
Rnames{i} = 'MCP+HO2=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'HO2'; 
fMCP(i)=fMCP(i)-1; fHO2(i)=fHO2(i)-1; fMAHP(i)=fMAHP(i)+1; 

%O3 Tracer
i=i+1; %<R237a>;
Rnames{i} = 'MCP+HOQ=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'HOQ'; 
fMCP(i)=fMCP(i)-1; fHOQ(i)=fHOQ(i)-1; fMAHP(i)=fMAHP(i)+1; 

%O3 Tracer
i=i+1; %<R237b>;
Rnames{i} = 'MCP+HQ2=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'HQ2'; 
fMCP(i)=fMCP(i)-1; fHQ2(i)=fHQ2(i)-1; fMAHP(i)=fMAHP(i)+1; 

i=i+1; %<R238>;
Rnames{i} = 'MVKP+HO2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'HO2'; 
fMVKP(i)=fMVKP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R238a>;
Rnames{i} = 'MVKP+HOQ=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'HOQ'; 
fMVKP(i)=fMVKP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R238b>;
Rnames{i} = 'MVKP+HQ2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'HQ2'; 
fMVKP(i)=fMVKP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R239>;
Rnames{i} = 'UALP+HO2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'HO2'; 
fUALP(i)=fUALP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R239a>;
Rnames{i} = 'UALP+HOQ=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'HOQ'; 
fUALP(i)=fUALP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R239b>;
Rnames{i} = 'UALP+HQ2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'HQ2'; 
fUALP(i)=fUALP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1;

i=i+1; %<R240>;
Rnames{i} = 'ADDC+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'HO2'; 
fADDC(i)=fADDC(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R240a>;
Rnames{i} = 'ADDC+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'HOQ'; 
fADDC(i)=fADDC(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R240b>;
Rnames{i} = 'ADDC+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'HQ2'; 
fADDC(i)=fADDC(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R241>;
Rnames{i} = 'CHO+HO2=CSL';
k(:,i) = 1.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'HO2'; 
fCHO(i)=fCHO(i)-1; fHO2(i)=fHO2(i)-1; fCSL(i)=fCSL(i)+1; 

%O3 Tracer
i=i+1; %<R241a>;
Rnames{i} = 'CHO+HOQ=CSL';
k(:,i) = 1.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'HOQ'; 
fCHO(i)=fCHO(i)-1; fHOQ(i)=fHOQ(i)-1; fCSL(i)=fCSL(i)+1; 

%O3 Tracer
i=i+1; %<R241b>;
Rnames{i} = 'CHO+HQ2=CSL';
k(:,i) = 1.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'HQ2'; 
fCHO(i)=fCHO(i)-1; fHQ2(i)=fHQ2(i)-1; fCSL(i)=fCSL(i)+1; 

i=i+1; %<R242>;
Rnames{i} = 'MCTP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'HO2'; 
fMCTP(i)=fMCTP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R242a>;
Rnames{i} = 'MCTP+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'HOQ'; 
fMCTP(i)=fMCTP(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R242b>;
Rnames{i} = 'MCTP+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'HQ2'; 
fMCTP(i)=fMCTP(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R243>;
Rnames{i} = 'ORAP+HO2=ONIT'; %mmarvin 20151020
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HO2'; 
fORAP(i)=fORAP(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R243a>;
Rnames{i} = 'ORAP+HOQ=ONIT'; %mmarvin 20151020
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HOQ'; 
fORAP(i)=fORAP(i)-1; fHOQ(i)=fHOQ(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R243b>;
Rnames{i} = 'ORAP+HQ2=ONIT'; %mmarvin 20151020
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HQ2'; 
fORAP(i)=fORAP(i)-1; fHQ2(i)=fHQ2(i)-1; fONIT(i)=fONIT(i)+1;

i=i+1; %<R244>;
Rnames{i} = 'OLNN+HO2=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HO2'; 
fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R244a>;
Rnames{i} = 'OLNN+HOQ=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HOQ'; 
fOLNN(i)=fOLNN(i)-1; fHOQ(i)=fHOQ(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R244b>; 
Rnames{i} = 'OLNN+HQ2=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HQ2'; 
fOLNN(i)=fOLNN(i)-1; fHQ2(i)=fHQ2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R244c>;
Rnames{i} = 'OLNNQ+HO2=ONITQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'HO2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fHO2(i)=fHO2(i)-1; fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1; %<R244d>;
Rnames{i} = 'OLNNQ+HOQ=ONITQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'HOQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fHOQ(i)=fHOQ(i)-1; fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1; %<R244e>;
Rnames{i} = 'OLNNQ+HQ2=ONITQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'HQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fHQ2(i)=fHQ2(i)-1; fONITQ(i)=fONITQ(i)+1;

%O3 Tracer
i=i+1; %<R244f>; 
Rnames{i} = 'OLNNQ2+HO2=ONITQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'HO2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fHO2(i)=fHO2(i)-1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R244g>;
Rnames{i} = 'OLNNQ2+HOQ=ONITQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'HOQ'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R244h>;
Rnames{i} = 'OLNNQ2+HQ2=ONITQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'HQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fHQ2(i)=fHQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R244i>; 
Rnames{i} = 'OLNNQ3+HO2=ONITQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'HO2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fHO2(i)=fHO2(i)-1; fONITQ3(i)=fONITQ3(i)+1;

%O3 Tracer
i=i+1; %<R244j>; 
Rnames{i} = 'OLNNQ3+HOQ=ONITQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'HOQ'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fHOQ(i)=fHOQ(i)-1; fONITQ3(i)=fONITQ3(i)+1;

%O3 Tracer
i=i+1; %<R244k>;
Rnames{i} = 'OLNNQ3+HQ2=ONITQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'HQ2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fHQ2(i)=fHQ2(i)-1; fONITQ3(i)=fONITQ3(i)+1;

i=i+1; %<R245>; 
Rnames{i} = 'OLND+HO2=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HO2'; 
fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R245a>; 
Rnames{i} = 'OLND+HOQ=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HOQ'; 
fOLND(i)=fOLND(i)-1; fHOQ(i)=fHOQ(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R245b>; 
Rnames{i} = 'OLND+HQ2=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HQ2'; 
fOLND(i)=fOLND(i)-1; fHQ2(i)=fHQ2(i)-1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R245c>;
Rnames{i} = 'OLNDQ+HO2=ONITQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'HO2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)-1; fONITQ(i)=fONITQ(i)+1; 

%O3 Tracer
i=i+1; %<R245d>; 
Rnames{i} = 'OLNDQ+HOQ=ONITQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'HOQ'; 
fOLNDQ(i)=fOLNDQ(i)-1; fHOQ(i)=fHOQ(i)-1; fONITQ(i)=fONITQ(i)+1;

%O3 Tracer
i=i+1; %<R245e>; 
Rnames{i} = 'OLNDQ+HQ2=ONITQ';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'HQ2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fHQ2(i)=fHQ2(i)-1; fONITQ(i)=fONITQ(i)+1;

%O3 Tracer
i=i+1; %<R245f>;
Rnames{i} = 'OLNDQ2+HO2=ONITQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'HO2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)-1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R245g>; 
Rnames{i} = 'OLNDQ2+HOQ=ONITQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'HOQ'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R245h>; 
Rnames{i} = 'OLNDQ2+HQ2=ONITQ2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'HQ2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fHQ2(i)=fHQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R245i>; 
Rnames{i} = 'OLNDQ3+HO2=ONITQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'HO2'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)-1; fONITQ3(i)=fONITQ3(i)+1;

%O3 Tracer
i=i+1; %<R245j>; 
Rnames{i} = 'OLNDQ3+HOQ=ONITQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'HOQ'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fHOQ(i)=fHOQ(i)-1; fONITQ3(i)=fONITQ3(i)+1;

%O3 Tracer
i=i+1; %<R245k>;
Rnames{i} = 'OLNDQ3+HQ2=ONITQ3';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'HQ2'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fHQ2(i)=fHQ2(i)-1; fONITQ3(i)=fONITQ3(i)+1;

i=i+1; %<R246>;
Rnames{i} = 'ADCN+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'HO2'; 
fADCN(i)=fADCN(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246a>;
Rnames{i} = 'ADCN+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'HOQ'; 
fADCN(i)=fADCN(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246b>;
Rnames{i} = 'ADCN+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'HQ2'; 
fADCN(i)=fADCN(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R246c>;
Rnames{i} = 'ADCNQ+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'HO2'; 
fADCNQ(i)=fADCNQ(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246d>;
Rnames{i} = 'ADCNQ+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'HOQ'; 
fADCNQ(i)=fADCNQ(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246e>;
Rnames{i} = 'ADCNQ+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'HQ2'; 
fADCNQ(i)=fADCNQ(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R246f>;
Rnames{i} = 'ADCNQ2+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'HO2'; 
fADCNQ2(i)=fADCNQ2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246g>;
Rnames{i} = 'ADCNQ2+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'HOQ'; 
fADCNQ2(i)=fADCNQ2(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246h>;
Rnames{i} = 'ADCNQ2+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'HQ2'; 
fADCNQ2(i)=fADCNQ2(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R246i>;
Rnames{i} = 'ADCNQ3+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'HO2'; 
fADCNQ3(i)=fADCNQ3(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246j>;
Rnames{i} = 'ADCNQ3+HOQ=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'HOQ'; 
fADCNQ3(i)=fADCNQ3(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R246k>;
Rnames{i} = 'ADCNQ3+HQ2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'HQ2'; 
fADCNQ3(i)=fADCNQ3(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<R247>;
Rnames{i} = 'XO2+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2'; 
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R247a>;
Rnames{i} = 'XO2+HOQ=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HOQ'; 
fXO2(i)=fXO2(i)-1; fHOQ(i)=fHOQ(i)-1; fOP2(i)=fOP2(i)+1; 

%O3 Tracer
i=i+1; %<R247b>;
Rnames{i} = 'XO2+HQ2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HQ2'; 
fXO2(i)=fXO2(i)-1; fHQ2(i)=fHQ2(i)-1; fOP2(i)=fOP2(i)+1; 

%% RO2+MO2
i=i+1; %<R248>;
Rnames{i} = 'MO2+MO2=0.74 HO2+1.37 HCHO+0.63  MOH';
k(:,i) = 9.50E-14.*exp(390./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2'; 
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.74; fHCHO(i)=fHCHO(i)+1.37;
fMOH(i)=fMOH(i)+0.63;

i=i+1; %<R249>;
Rnames{i} = 'ETHP+MO2=HO2+0.75 HCHO+0.75 ACD+0.25 MOH+0.25 EOH';
k(:,i) = 1.18E-13.*exp(158./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'MO2'; 
fETHP(i)=fETHP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fACD(i)=fACD(i)+0.75; fMOH(i)=fMOH(i)+0.25; fEOH(i)=fEOH(i)+0.25;

i=i+1; %<R250>;
Rnames{i} = 'HC3P+MO2= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+MOH+ROH';
k(:,i) = 9.46E-14.*exp(431./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'MO2'; 
fHC3P(i)=fHC3P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.894; fMO2(i)=fMO2(i)+0.08; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.827; fALD(i)=fALD(i)+0.198; 
fKET(i)=fKET(i)+0.497; fGLY(i)=fGLY(i)+0.050; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1; %<R251>;
Rnames{i} = 'HC5P+MO2= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 1.00E-13.*exp(467./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'MO2'; 
fHC5P(i)=fHC5P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.842; fMO2(i)=fMO2(i)+0.018; 
fETHP(i)=fETHP(i)+0.140; fXO2(i)=fXO2(i)+0.191; fHCHO(i)=fHCHO(i)+0.777; fALD(i)=fALD(i)+0.251; 
fKET(i)=fKET(i)+0.618; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R252>;
Rnames{i} = 'HC8P+MO2= HO2+ETHP+XO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 4.34E-14.*exp(633./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'MO2'; 
fHC8P(i)=fHC8P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.91; fETHP(i)=fETHP(i)+0.09; 
fXO2(i)=fXO2(i)+0.281; fHCHO(i)=fHCHO(i)+0.750; fALD(i)=fALD(i)+0.197; fKET(i)=fKET(i)+0.652; 
fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R253>;
Rnames{i} = 'ETEP+MO2= HO2+HCHO+ALD+MOH+ETEG';
k(:,i) = 1.71E-13.*exp(708./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'MO2'; 
fETEP(i)=fETEP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1.95; 
fALD(i)=fALD(i)+0.15; fMOH(i)=fMOH(i)+0.25; fETEG(i)=fETEG(i)+0.25; 

i=i+1; %<R254>;
Rnames{i} = 'OLTP+MO2= HO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 1.46E-13.*exp(708./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'MO2'; 
fOLTP(i)=fOLTP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1.5; 
fALD(i)=fALD(i)+0.705; fKET(i)=fKET(i)+0.045; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R255>;
Rnames{i} = 'OLIP+MO2= HO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 9.18E-14.*exp(708./T) ;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'MO2'; 
fOLIP(i)=fOLIP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75; 
fALD(i)=fALD(i)+1.28; fKET(i)=fKET(i)+0.218; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R256>;
Rnames{i} = 'BENP+MO2= HO2+DCB3+HCHO+DCB2+GLY';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'MO2'; 
fBENP(i)=fBENP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1.6; fDCB3(i)=fDCB3(i)+0.459; 
fHCHO(i)=fHCHO(i)+1; fDCB2(i)=fDCB2(i)+0.459; fGLY(i)=fGLY(i)+0.60; 

i=i+1; %<R257>;
Rnames{i} = 'TLP1+MO2=HCHO+HO2+BALD';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'MO2'; 
fTLP1(i)=fTLP1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R258>;
Rnames{i} = 'TOLP+MO2= 2 HO2+HCHO+0.271 GLY+DCB2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'MO2'; 
fTOLP(i)=fTOLP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2; fHCHO(i)=fHCHO(i)+1;
fGLY(i)=fGLY(i)+0.271; fDCB2(i)=fDCB2(i)+1; 

i=i+1; %<R259>;
Rnames{i} = 'PER1+MO2=HCHO+HO2+HO2+MGLY+DCB1';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'MO2'; 
fPER1(i)=fPER1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 
fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; fDCB1(i)=fDCB1(i)+1; 

i=i+1; %<R260>;
Rnames{i} = 'XYL1+MO2=HCHO+HO2+BALD';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'MO2'; 
fXYL1(i)=fXYL1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R261>;
Rnames{i} = 'XYLP+MO2=HCHO+HO2+HO2+DCB2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'MO2'; 
fXYLP(i)=fXYLP(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 
fHO2(i)=fHO2(i)+1; fDCB2(i)=fDCB2(i)+1; 

i=i+1; %<R262>;
Rnames{i} = 'PER2+MO2=HCHO+HO2+HO2+MGLY+DCB1+DCB3';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'MO2'; 
% fPER2(i)=-1; fMO2(i)=-1; fHCHO(i)=1; fHO2(i)=2; fMGLY(i)=1; fDCB1(i)=1; fDCB3(i)=1.05; 
fPER2(i)=fPER2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+2; 
fMGLY(i)=fMGLY(i)+1; fDCB1(i)=fDCB1(i)+1; fDCB3(i)=fDCB3(i)+1.05; %SR 20160406

i=i+1; %<R263>;
Rnames{i} = 'XYOP+MO2= HO2+HCHO+GLY+MGLY+DCB1+DCB2+DCB3';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'MO2'; 
fXYOP(i)=fXYOP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2; fHCHO(i)=fHCHO(i)+1; 
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

i=i+1; %<R264>;
Rnames{i} = 'ISOP+MO2=HO2+HCHO+MACR+MVK+MOH+ROH+ALD+GLY+HKET';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'MO2'; 
fISOP(i)=fISOP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1.31; 
fMACR(i)=fMACR(i)+0.159; fMVK(i)=fMVK(i)+0.250; fMOH(i)=fMOH(i)+0.250; 
fROH(i)=fROH(i)+0.250; fALD(i)=fALD(i)+0.230; fGLY(i)=fGLY(i)+0.018; fHKET(i)=fHKET(i)+0.016; 

i=i+1; %<R265>;
Rnames{i} = 'APIP+MO2=HO2+0.75 HCHO+0.75 ALD+0.75 KET+0.25 MOH+0.25 ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'MO2'; 
fAPIP(i)=fAPIP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fALD(i)=fALD(i)+0.75; fKET(i)=fKET(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25;

i=i+1; %<R266>;
Rnames{i} = 'LIMP+MO2= HO2+OLI+HCHO+MACR+MOH+ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'MO2'; 
fLIMP(i)=fLIMP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fOLI(i)=fOLI(i)+0.192; 
fHCHO(i)=fHCHO(i)+1.04; fMACR(i)=fMACR(i)+0.308; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R267>;
Rnames{i} = 'ACO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1; %SR 20160406

i=i+1; %<R268>;
Rnames{i} = 'RCO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1;

i=i+1; %<R269>;
Rnames{i} = 'ACTP+MO2=0.5 HO2+0.5 ACO3+1.5 HCHO+0.25 MOH+0.25 ROH+0.125 ORA2';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'MO2'; 
fACTP(i)=fACTP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.5; fACO3(i)=fACO3(i)+0.5;
fHCHO(i)=fHCHO(i)+1.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fORA2(i)=fORA2(i)+0.125;

i=i+1; %<R270>;
Rnames{i} = 'MEKP+MO2=0.834 HO2+HCHO+0.334 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'MO2'; 
fMEKP(i)=fMEKP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.834; fHCHO(i)=fHCHO(i)+1;
fDCB1(i)=fDCB1(i)+0.334; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R271>;
Rnames{i} = 'KETP+MO2=HO2+0.75 HCHO+0.50 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'MO2'; 
fKETP(i)=fKETP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fDCB1(i)=fDCB1(i)+0.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<R272>;
Rnames{i} = 'MACP+MO2=HO2+ACO3+CO+HCHO+MOH+ROH+ORA2+MO2';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'MO2'; 
fMACP(i)=fMACP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fACO3(i)=fACO3(i)+0.269; 
fCO(i)=fCO(i)+0.50; fHCHO(i)=fHCHO(i)+1.66; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 
fORA2(i)=fORA2(i)+0.067; fMO2(i)=fMO2(i)+0.25; 

i=i+1; %<R273>;
Rnames{i} = 'MCP+MO2=NO2+HO2+1.5 HCHO+.5 HKET+.25 MOH+.25 ROH';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'MO2'; 
fMCP(i)=fMCP(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;
fHCHO(i)=fHCHO(i)+1.5; fHKET(i)=fHKET(i)+0.5; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25;

i=i+1; %<R274>;
Rnames{i} = 'MVKP+MO2= HO2+ACO3+XO2+HCHO+ALD+MGLY+MOH+ROH+ORA2';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'MO2'; 
fMVKP(i)=fMVKP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1.16; 
fXO2(i)=fXO2(i)+1.16; fHCHO(i)=fHCHO(i)+1.50; fALD(i)=fALD(i)+1.75; fMGLY(i)=fMGLY(i)+0.50; 
fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fORA2(i)=fORA2(i)+0.292; 

i=i+1; %<R275>;
Rnames{i} = 'UALP+MO2= HO2+CO+HCHO+ALD+KET+MGLY+GLY+MOH+ROH';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'MO2'; 
fUALP(i)=fUALP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.305; 
fHCHO(i)=fHCHO(i)+0.773; fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.525; fMGLY(i)=fMGLY(i)+0.105; 
fGLY(i)=fGLY(i)+0.135; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; %mmarvin 20151020 

i=i+1; %<R276>;
Rnames{i} = 'BALP+MO2=HCHO+HO2+BAL1';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'MO2'; 
fBALP(i)=fBALP(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBAL1(i)=fBAL1(i)+1; 

i=i+1; %<R277>;
Rnames{i} = 'BAL1+MO2=HCHO+HO2+BAL2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'MO2'; 
fBAL1(i)=fBAL1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBAL2(i)=fBAL2(i)+1; 

i=i+1; %<R278>;
Rnames{i} = 'ADDC+MO2=2 HO2+HCHO+0.32 HKET+0.68 GLY+0.68 OP2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'MO2'; 
fADDC(i)=fADDC(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1;  
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

i=i+1; %<R279>;
Rnames{i} = 'MCTP+MO2=HCHO+HO2+MCTO';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'MO2'; 
fMCTP(i)=fMCTP(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMCTO(i)=fMCTO(i)+1; 

i=i+1; %<R280>;
Rnames{i} = 'ORAP+MO2=HO2+HCHO+GLY';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'MO2'; 
fORAP(i)=fORAP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<R281>; 
Rnames{i} = 'OLNN+MO2=HCHO+HO2+HO2+ONIT';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MO2'; 
fOLNN(i)=fOLNN(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fONIT(i)=fONIT(i)+1; 

%O3 Tracer
i=i+1; %<R281a>; 
Rnames{i} = 'OLNNQ+MO2=HCHO+HO2+HO2+ONITQ';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'MO2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fONITQ(i)=fONITQ(i)+1;

%O3 Tracer
i=i+1; %<R281b>; 
Rnames{i} = 'OLNNQ2+MO2=HCHO+HO2+HO2+ONITQ2';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'MO2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fONITQ2(i)=fONITQ2(i)+1;

%O3 Tracer
i=i+1; %<R281c>; 
Rnames{i} = 'OLNNQ3+MO2=HCHO+HO2+HO2+ONITQ3';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'MO2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fONITQ3(i)=fONITQ3(i)+1;

i=i+1; %<R282>; 
Rnames{i} = 'OLND+MO2= HO2+NO2+HCHO+ALD+KET+MOH+ROH+ONIT';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+0.50; 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fONIT(i)=fONIT(i)+0.5; 

%O3 Tracer
i=i+1; %<R282a>; 
Rnames{i} = 'OLNDQ+MO2= HO2+NOQ+NO2+HCHO+ALD+KET+MOH+ROH+ONITQ';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(1/3); 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fONITQ(i)=fONITQ(i)+0.5; 

%O3 Tracer
i=i+1; %<R282b>; 
Rnames{i} = 'OLNDQ2+MO2= HO2+NOQ+NQ2+HCHO+ALD+KET+MOH+ROH+ONITQ2';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(1/3); 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fONITQ2(i)=fONITQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<R282c>; 
Rnames{i} = 'OLNDQ3+MO2= HO2+NQ2+HCHO+ALD+KET+MOH+ROH+ONITQ3';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNQ2(i)=fNQ2(i)+0.5; 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fONITQ3(i)=fONITQ3(i)+0.5;

i=i+1; %<R283>;
Rnames{i} = 'ADCN+MO2=HO2+0.7 NO2+HCHO+0.7 GLY+0.7 OP2+0.3 ONIT';
k(:,i) = 3.56E-14;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'MO2'; 
fADCN(i)=fADCN(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+0.7;
fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7;  
fONIT(i)=fONIT(i)+0.3; 

%O3 Tracer
i=i+1; %<R283a>;
Rnames{i} = 'ADCNQ+MO2=HO2+0.4667 NOQ + 0.233 NO2 +HCHO+0.7 GLY+0.7 OP2+0.3 ONITQ';
k(:,i) = 3.56E-14;
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'MO2'; 
fADCNQ(i)=fADCNQ(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+0.4667; fNO2(i)=fNO2(i)+0.233;
fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7;  
fONITQ(i)=fONITQ(i)+0.3; 

%O3 Tracer
i=i+1; %<R283b>;
Rnames{i} = 'ADCNQ2+MO2=HO2+0.4667 NOQ + 0.233 NQ2 +HCHO+0.7 GLY+0.7 OP2+0.3 ONITQ2';
k(:,i) = 3.56E-14;
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'MO2'; 
fADCNQ2(i)=fADCNQ2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+0.4667; fNQ2(i)=fNQ2(i)+0.233;
fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7;  
fONITQ2(i)=fONITQ2(i)+0.3;

%O3 Tracer
i=i+1; %<R283c>;
Rnames{i} = 'ADCNQ3+MO2=HO2+0.7 NQ2 +HCHO+0.7 GLY+0.7 OP2+0.3 ONITQ3';
k(:,i) = 3.56E-14;
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'MO2'; 
fADCNQ3(i)=fADCNQ3(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+0.7;
fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7;  
fONITQ3(i)=fONITQ3(i)+0.3;

i=i+1; %<R284>;
Rnames{i} = 'XO2+MO2=HCHO+HO2';
k(:,i) = 5.99E-15.*exp(1510./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'MO2'; 
fXO2(i)=fXO2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

%% RO2+ACO3 (ACETYL PEROXY RADICAL)
i=i+1; %<R285>;
Rnames{i} = 'ETHP+ACO3=0.500 HO2+0.5 MO2+ACD+0.5 ORA2';
k(:,i) = 1.03E-12.*exp(211./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'ACO3'; 
fETHP(i)=fETHP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;  
fACD(i)=fACD(i)+1; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<R286>;
Rnames{i} = 'HC3P+ACO3= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+ORA2';
k(:,i) = 6.90E-13.*exp(460./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'ACO3'; 
fHC3P(i)=fHC3P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.394; fMO2(i)=fMO2(i)+0.580; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.130; fALD(i)=fALD(i)+0.273; 
fKET(i)=fKET(i)+0.662; fGLY(i)=fGLY(i)+0.067; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %<R287>;
Rnames{i} = 'HC5P+ACO3= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.59E-13.*exp(522./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'ACO3'; 
fHC5P(i)=fHC5P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.342; fMO2(i)=fMO2(i)+0.518; 
fETHP(i)=fETHP(i)+0.140; fXO2(i)=fXO2(i)+0.191; fHCHO(i)=fHCHO(i)+0.042; fALD(i)=fALD(i)+0.381; 
fKET(i)=fKET(i)+0.824; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<R288>;
Rnames{i} = 'HC8P+ACO3= HO2+MO2+ETHP+XO2+ALD+KET+ORA2';
k(:,i) = 2.47E-13.*exp(683./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'ACO3'; 
fHC8P(i)=fHC8P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.303; fMO2(i)=fMO2(i)+0.500; 
fETHP(i)=fETHP(i)+0.067; fXO2(i)=fXO2(i)+0.208; fALD(i)=fALD(i)+0.217; fKET(i)=fKET(i)+0.642; fORA2(i)=fORA2(i)+0.495; 

i=i+1; %<R289>;
Rnames{i} = 'ETEP+ACO3=0.5 HO2+0.5 MO2+1.6 HCHO+0.2 ALD+0.5 ORA2';
k(:,i) = 9.48E-13.*exp(765./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'ACO3'; 
fETEP(i)=fETEP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2; fORA2(i)=fORA2(i)+0.5;  

i=i+1; %<R290>;
Rnames{i} = 'OLTP+ACO3=0.50 HO2+0.50 MO2+HCHO+0.94 ALD+0.06 KET+0.50 ORA2 ';
k(:,i) = 8.11E-13.*exp(765./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'ACO3'; 
fOLTP(i)=fOLTP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+1; fALD(i)=fALD(i)+0.94; fKET(i)=fKET(i)+0.06; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<R291>;
Rnames{i} = 'OLIP+ACO3=0.50 HO2+0.50 MO2+1.71 ALD+0.29 KET+0.50 ORA2';
k(:,i) = 5.09E-13.*exp(765./T);
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'ACO3'; 
fOLIP(i)=fOLIP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fALD(i)=fALD(i)+1.71; fKET(i)=fKET(i)+0.29; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<R292>;
Rnames{i} = 'BENP+ACO3= HO2+MO2+DCB2+DCB3+GLY';
k(:,i) = 7.40E-13.*exp(765./T) ;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'ACO3'; 
fBENP(i)=fBENP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.60; fMO2(i)=fMO2(i)+1; 
fDCB2(i)=fDCB2(i)+0.459; fDCB3(i)=fDCB3(i)+0.458; fGLY(i)=fGLY(i)+0.6; 

i=i+1; %<R293>;
Rnames{i} = 'TLP1+ACO3=MO2+BALD';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'ACO3'; 
fTLP1(i)=fTLP1(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R294>;
Rnames{i} = 'TOLP+ACO3=DCB2+HO2+MO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'ACO3'; 
fTOLP(i)=fTOLP(i)-1; fACO3(i)=fACO3(i)-1; fDCB2(i)=fDCB2(i)+1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %<R295>;
Rnames{i} = 'PER1+ACO3=DCB1+MO2+MGLY+HO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'ACO3'; 
fPER1(i)=fPER1(i)-1; fACO3(i)=fACO3(i)-1; fDCB1(i)=fDCB1(i)+1; fMO2(i)=fMO2(i)+1; fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R296>;
Rnames{i} = 'XYL1+ACO3=MO2+BALD';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'ACO3'; 
fXYL1(i)=fXYL1(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R297>;
Rnames{i} = 'XYLP+ACO3=DCB2+MO2+HO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'ACO3'; 
fXYLP(i)=fXYLP(i)-1; fACO3(i)=fACO3(i)-1; fDCB2(i)=fDCB2(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R298>;
Rnames{i} = 'PER2+ACO3=DCB1+MO2+MGLY+HO2+DCB3';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'ACO3'; 
fPER2(i)=fPER2(i)-1; fACO3(i)=fACO3(i)-1; fDCB1(i)=fDCB1(i)+1; fMO2(i)=fMO2(i)+1; 
% fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=1.05; 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05; %SR 20160406

i=i+1; %<R299>;
Rnames{i} = 'XYOP+ACO3= HO2+MO2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'ACO3'; 
fXYOP(i)=fXYOP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737;
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186;

i=i+1; %<R300>;
Rnames{i} = 'ISOP+ACO3=HO2+MO2+HCHO+MACR+MVK+ORA2+ALD+GLY+HKET';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'ACO3'; 
fISOP(i)=fISOP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.50; 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.159; fMVK(i)=fMVK(i)+0.25; fORA2(i)=fORA2(i)+0.5; 
fALD(i)=fALD(i)+0.031; fGLY(i)=fGLY(i)+0.024; fHKET(i)=fHKET(i)+0.033; 

i=i+1; %<R301>;
Rnames{i} = 'APIP+ACO3=0.5 HO2+0.5 MO2+ALD+KET+ORA2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'ACO3'; 
fAPIP(i)=fAPIP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fALD(i)=fALD(i)+1; fKET(i)=fKET(i)+1; fORA2(i)=fORA2(i)+1; 

i=i+1; %<R302>;
Rnames{i} = 'LIMP+ACO3=0.5 HO2+0.5 MO2+0.192 OLI+0.385 HCHO+0.308 MACR+0.5 ORA2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'ACO3'; 
fLIMP(i)=fLIMP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fOLI(i)=fOLI(i)+0.192; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.308; 
fORA2(i)=fORA2(i)+0.5;

i=i+1; %<R303>;
Rnames{i} = 'ACO3+ACO3=MO2+MO2+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'ACO3'; 
fACO3(i)=fACO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fMO2(i)=fMO2(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<R304>;
Rnames{i} = 'RCO3+ACO3=MO2+ETHP+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'ACO3'; 
fRCO3(i)=fRCO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<R305>;
Rnames{i} = 'ACTP+ACO3=0.50 MO2+0.50 ACO3+HCHO+0.75 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'ACO3'; 
fACTP(i)=fACTP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.5; fACO3(i)=fACO3(i)+0.5; 
fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.75;

i=i+1; %<R306>;
Rnames{i} = 'MEKP+ACO3=0.33 HO2+0.50 MO2+0.33 HCHO+0.334 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'ACO3'; 
fMEKP(i)=fMEKP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.33; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.334; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<R307>;
Rnames{i} = 'KETP+ACO3=0.50 HO2+0.50 MO2+0.50 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'ACO3'; 
fKETP(i)=fKETP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fDCB1(i)=fDCB1(i)+0.5; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<R308>;
Rnames{i} = 'MACP+ACO3= HO2+MO2+ACO3+CO+HCHO+HKET+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T) ;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'ACO3'; 
fMACP(i)=fMACP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; 
fACO3(i)=fACO3(i)+0.167; fCO(i)=fCO(i)+0.167; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.167; 
fMGLY(i)=fMGLY(i)+0.33; fORA2(i)=fORA2(i)+0.583; 

i=i+1; %<R309>;
Rnames{i} = 'MCP+ACO3=NO2+.5 HO2+HCHO .5 HKET+.5 MO2+.5 ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'ACO3'; 
fMCP(i)=fMCP(i)-1; fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+0.5; 
fHCHO(i)=fHCHO(i)+1; fMO2(i)=fMO2(i)+0.5; fHKET(i)=fHKET(i)+0.5; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<R310>;
Rnames{i} = 'MVKP+ACO3= HO2+MO2+ACO3+XO2+HCHO+ALD+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'ACO3'; 
fMVKP(i)=fMVKP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5; 
fACO3(i)=fACO3(i)+1.16; fXO2(i)=fXO2(i)+1.16; fHCHO(i)=fHCHO(i)+1; fALD(i)=fALD(i)+2.3; 
fMGLY(i)=fMGLY(i)+0.50; fORA2(i)=fORA2(i)+1.083; 

i=i+1; %<R311>;
Rnames{i} = 'UALP+ACO3= HO2+MO2+CO+HCHO+ALD+KET+GLY+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'ACO3'; 
fUALP(i)=fUALP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; 
fCO(i)=fCO(i)+0.50; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; 
fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.105; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<R312>;
Rnames{i} = 'BALP+ACO3=BAL1+MO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'ACO3'; 
fBALP(i)=fBALP(i)-1; fACO3(i)=fACO3(i)-1; fBAL1(i)=fBAL1(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %<R313>;
Rnames{i} = 'BAL1+ACO3=BAL2+MO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'ACO3'; 
fBAL1(i)=fBAL1(i)-1; fACO3(i)=fACO3(i)-1; fBAL2(i)=fBAL2(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %<R314>;
Rnames{i} = 'ADDC+ACO3=2 HO2+MO2+0.32 HKET+0.68 GLY+0.68 OP2';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'ACO3'; 
fADDC(i)=fADDC(i)-1; fACO3(i)=fACO3(i)-1; 
fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+2; fMO2(i)=fMO2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68; 

i=i+1; %<R315>;
Rnames{i} = 'MCTP+ACO3=MO2+HO2+MCTO';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'ACO3'; 
fMCTP(i)=fMCTP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; fMCTO(i)=fMCTO(i)+1; 

i=i+1; %<R316>;
Rnames{i} = 'ORAP+ACO3=MO2+GLY';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'ACO3'; 
fORAP(i)=fORAP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<R317>; 
Rnames{i} = 'OLNN+ACO3=ONIT+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'ACO3'; 
fOLNN(i)=fOLNN(i)-1; fACO3(i)=fACO3(i)-1; fONIT(i)=fONIT(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R317a>; 
Rnames{i} = 'OLNNQ+ACO3=ONITQ+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'ACO3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fACO3(i)=fACO3(i)-1; fONITQ(i)=fONITQ(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R317b>; 
Rnames{i} = 'OLNNQ2+ACO3=ONITQ2+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'ACO3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fACO3(i)=fACO3(i)-1; fONITQ2(i)=fONITQ2(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R317c>; 
Rnames{i} = 'OLNNQ3+ACO3=ONITQ3+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'ACO3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fACO3(i)=fACO3(i)-1; fONITQ3(i)=fONITQ3(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R318>;
Rnames{i} = 'OLND+ACO3= MO2+NO2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'ACO3'; 
fOLND(i)=fOLND(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

%O3 Tracer
i=i+1; %<R318a>; 
Rnames{i} = 'OLNDQ+ACO3= MO2+(1/3)*NO2+(2/3)*NOQ+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'ACO3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

%O3 Tracer
i=i+1; %<R318b>; 
Rnames{i} = 'OLNDQ2+ACO3= MO2+(1/3)*NQ2+(2/3)*NOQ+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'ACO3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

%O3 Tracer
i=i+1; %<R318c>;
Rnames{i} = 'OLNDQ3+ACO3= MO2+NQ2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'ACO3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNQ2(i)=fNQ2(i)+1;  
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %<R319>;
Rnames{i} = 'ADCN+ACO3=HO2+MO2+0.7 NO2+0.7 GLY+0.7 OP2+0.3 ONIT';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'ACO3'; 
fADCN(i)=fADCN(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fNO2(i)=fNO2(i)+0.7; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7; fONIT(i)=fONIT(i)+0.3;

%O3 Tracer
i=i+1; %<R319a>;
Rnames{i} = 'ADCNQ+ACO3=HO2+MO2+0.4667NOQ+0.233NO2 + 0.7 GLY+0.7 OP2+0.3 ONITQ';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'ACO3'; 
fADCNQ(i)=fADCNQ(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fNOQ(i)=fNOQ(i)+0.4667; fNO2(i)=fNO2(i)+0.233; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7; fONITQ(i)=fONITQ(i)+0.3;

%O3 Tracer
i=i+1; %<R319b>;
Rnames{i} = 'ADCNQ2+ACO3=HO2+MO2+0.4667NOQ+0.233NQ2 + 0.7 GLY+0.7 OP2+0.3 ONITQ2';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'ACO3'; 
fADCNQ2(i)=fADCNQ2(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fNOQ(i)=fNOQ(i)+0.4667; fNQ2(i)=fNQ2(i)+0.233; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7; fONITQ2(i)=fONITQ2(i)+0.3;

%O3 Tracer
i=i+1; %<R319c>;
Rnames{i} = 'ADCNQ3+ACO3=HO2+MO2+7NQ2 + 0.7 GLY+0.7 OP2+0.3 ONITQ3';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'ACO3'; 
fADCNQ3(i)=fADCNQ3(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fNQ2(i)=fNQ2(i)+0.7; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7; fONITQ3(i)=fONITQ3(i)+0.3;

i=i+1; %<R320>;
Rnames{i} = 'XO2+ACO3=MO2';
k(:,i) = 3.40E-14.*exp(1560./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'ACO3'; 
fXO2(i)=fXO2(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; 

%% RO2+NO3
i=i+1; %<R321>;
Rnames{i} = 'MO2+NO3=HCHO+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO3'; 
fMO2(i)=fMO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R321a>; 
Rnames{i} = 'MO2+NO2Q=HCHO+HO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO2Q'; 
fMO2(i)=fMO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R321b>; 
Rnames{i} = 'MO2+NOQ2=HCHO+HO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NOQ2'; 
fMO2(i)=fMO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R321c>; 
Rnames{i} = 'MO2+NQ3=HCHO+HO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NQ3'; 
fMO2(i)=fMO2(i)-1; fNQ3(i)=fNQ3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R322>;
Rnames{i} = 'ETHP+NO3=ACD+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO3'; 
fETHP(i)=fETHP(i)-1; fNO3(i)=fNO3(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R322a>; 
Rnames{i} = 'ETHP+NO2Q=ACD+HO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO2Q'; 
fETHP(i)=fETHP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R322b>; 
Rnames{i} = 'ETHP+NOQ2=ACD+HO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NOQ2'; 
fETHP(i)=fETHP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R322c>; 
Rnames{i} = 'ETHP+NQ3=ACD+HO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NQ3'; 
fETHP(i)=fETHP(i)-1; fNQ3(i)=fNQ3(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R323>;
Rnames{i} = 'HC3P+NO3=HO2+MO2+XO2+ETHP+NO2+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO3'; 
fHC3P(i)=fHC3P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNO2(i)=fNO2(i)+1; fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

%O3 Tracer
i=i+1; %<R323a>; 
Rnames{i} = 'HC3P+NO2Q=HO2+MO2+XO2+ETHP+(1/3)*NO2+(2/3)*NOQ+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO2Q'; 
fHC3P(i)=fHC3P(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

%O3 Tracer
i=i+1; %<R323b; 
Rnames{i} = 'HC3P+NOQ2=HO2+MO2+XO2+ETHP+(1/3)*NQ2+(2/3)*NOQ+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NOQ2'; 
fHC3P(i)=fHC3P(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

%O3 Tracer
i=i+1; %<R323c>;
Rnames{i} = 'HC3P+NQ3=HO2+MO2+XO2+ETHP+NQ2+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NQ3'; 
fHC3P(i)=fHC3P(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNQ2(i)=fNQ2(i)+1; fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

i=i+1; %<R324>;
Rnames{i} = 'HC5P+NO3= HO2+MO2+ETHP+XO2+NO2+HCHO+ALD+KET+MEK+ACT+ACD+HKET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NO3'; 
fHC5P(i)=fHC5P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.488; fMO2(i)=fMO2(i)+0.055; 
fETHP(i)=fETHP(i)+0.28; fXO2(i)=fXO2(i)+0.485; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.024; 
fALD(i)=fALD(i)+0.241; fKET(i)=fKET(i)+0.060; fMEK(i)=fMEK(i)+0.063; fACT(i)=fACT(i)+0.247; 
fACD(i)=fACD(i)+0.048; fHKET(i)=fHKET(i)+0.275; 

%O3 Tracer
i=i+1; %<R324a>;
Rnames{i} = 'HC5P+NO2Q= HO2+MO2+ETHP+XO2+(2/3)NOQ + (1/3)NO2+HCHO+ALD+KET+MEK+ACT+ACD+HKET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NO2Q'; 
fHC5P(i)=fHC5P(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.488; fMO2(i)=fMO2(i)+0.055; 
fETHP(i)=fETHP(i)+0.28; fXO2(i)=fXO2(i)+0.485; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.024; 
fALD(i)=fALD(i)+0.241; fKET(i)=fKET(i)+0.060; fMEK(i)=fMEK(i)+0.063; fACT(i)=fACT(i)+0.247; 
fACD(i)=fACD(i)+0.048; fHKET(i)=fHKET(i)+0.275; 

%O3 Tracer
i=i+1; %<R324b>;
Rnames{i} = 'HC5P+NOQ2= HO2+MO2+ETHP+XO2+(2/3)NOQ + (1/3)NQ2+HCHO+ALD+KET+MEK+ACT+ACD+HKET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NOQ2'; 
fHC5P(i)=fHC5P(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.488; fMO2(i)=fMO2(i)+0.055; 
fETHP(i)=fETHP(i)+0.28; fXO2(i)=fXO2(i)+0.485; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.024; 
fALD(i)=fALD(i)+0.241; fKET(i)=fKET(i)+0.060; fMEK(i)=fMEK(i)+0.063; fACT(i)=fACT(i)+0.247; 
fACD(i)=fACD(i)+0.048; fHKET(i)=fHKET(i)+0.275; 

%O3 Tracer
i=i+1; %<R324c>;
Rnames{i} = 'HC5P+NQ3= HO2+MO2+ETHP+XO2+NQ2+HCHO+ALD+KET+MEK+ACT+ACD+HKET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NQ3'; 
fHC5P(i)=fHC5P(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.488; fMO2(i)=fMO2(i)+0.055; 
fETHP(i)=fETHP(i)+0.28; fXO2(i)=fXO2(i)+0.485; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.024; 
fALD(i)=fALD(i)+0.241; fKET(i)=fKET(i)+0.060; fMEK(i)=fMEK(i)+0.063; fACT(i)=fACT(i)+0.247; 
fACD(i)=fACD(i)+0.048; fHKET(i)=fHKET(i)+0.275; 

i=i+1; %<R325>;
Rnames{i} = 'HC8P+NO3= HO2+ETHP+XO2+NO2+ALD+KET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NO3'; 
fHC8P(i)=fHC8P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.82; fETHP(i)=fETHP(i)+0.18; 
fXO2(i)=fXO2(i)+0.563; fNO2(i)=fNO2(i)+1; fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.869; 

%O3 Tracer
i=i+1; %<R325a>;
Rnames{i} = 'HC8P+NO2Q= HO2+ETHP+XO2+(2/3)NOQ+(1/3)NO2+ALD+KET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NO2Q'; 
fHC8P(i)=fHC8P(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.82; fETHP(i)=fETHP(i)+0.18; 
fXO2(i)=fXO2(i)+0.563; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.869; 

%O3 Tracer
i=i+1; %<R325b>;
Rnames{i} = 'HC8P+NOQ2= HO2+ETHP+XO2+(2/3)NOQ+(1/3)NQ2+ALD+KET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NOQ2'; 
fHC8P(i)=fHC8P(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.82; fETHP(i)=fETHP(i)+0.18; 
fXO2(i)=fXO2(i)+0.563; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.869; 

%O3 Tracer
i=i+1; %<R325c>;
Rnames{i} = 'HC8P+NQ3= HO2+ETHP+XO2+NQ2+ALD+KET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NQ3'; 
fHC8P(i)=fHC8P(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.82; fETHP(i)=fETHP(i)+0.18; 
fXO2(i)=fXO2(i)+0.563; fNQ3(i)=fNQ3(i)+1; fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.869; 

i=i+1; %<R326>;
Rnames{i} = 'ETEP+NO3=HO2+NO2+1.6 HCHO+0.2 ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NO3'; 
fETEP(i)=fETEP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2; 

%O3 Tracer
i=i+1; %<R326a>;
Rnames{i} = 'ETEP+NO2Q=HO2+(2/3)NOQ+(1/3)NO2+1.6 HCHO+0.2 ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NO2Q'; 
fETEP(i)=fETEP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2;

%O3 Tracer
i=i+1; %<R326b>;
Rnames{i} = 'ETEP+NOQ2=HO2+(2/3)NOQ+(1/3)NQ2+1.6 HCHO+0.2 ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NOQ2'; 
fETEP(i)=fETEP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2;

%O3 Tracer
i=i+1; %<R326c>;
Rnames{i} = 'ETEP+NQ3=HO2+NQ2+1.6 HCHO+0.2 ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NQ3'; 
fETEP(i)=fETEP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2;

i=i+1; %<R327>;
Rnames{i} = 'OLTP+NO3= ALD+HCHO+HO2+NO2+MEK+ACD+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NO3'; 
fOLTP(i)=fOLTP(i)-1; fNO3(i)=fNO3(i)-1; fALD(i)=fALD(i)+0.47; fHCHO(i)=fHCHO(i)+0.79; 
fHO2(i)=fHO2(i)+0.79; fNO2(i)=fNO2(i)+1; fMEK(i)=fMEK(i)+0.18; fACD(i)=fACD(i)+0.02; fACT(i)=fACT(i)+0.09; 

%O3 Tracer
i=i+1; %<R327a>;
Rnames{i} = 'OLTP+NO2Q= ALD+HCHO+HO2+(2/3)NOQ+(1/3)NO2+MEK+ACD+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NO2Q'; 
fOLTP(i)=fOLTP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fALD(i)=fALD(i)+0.47; fHCHO(i)=fHCHO(i)+0.79; 
fHO2(i)=fHO2(i)+0.79; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fMEK(i)=fMEK(i)+0.18; fACD(i)=fACD(i)+0.02; fACT(i)=fACT(i)+0.09; 

%O3 Tracer
i=i+1; %<R327b>;
Rnames{i} = 'OLTP+NOQ2= ALD+HCHO+HO2+(2/3)NOQ+(1/3)NQ2+MEK+ACD+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NOQ2'; 
fOLTP(i)=fOLTP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fALD(i)=fALD(i)+0.47; fHCHO(i)=fHCHO(i)+0.79; 
fHO2(i)=fHO2(i)+0.79; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fMEK(i)=fMEK(i)+0.18; fACD(i)=fACD(i)+0.02; fACT(i)=fACT(i)+0.09; 

%O3 Tracer
i=i+1; %<R327c>;
Rnames{i} = 'OLTP+NQ3= ALD+HCHO+HO2+NQ2+MEK+ACD+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NQ3'; 
fOLTP(i)=fOLTP(i)-1; fNQ3(i)=fNQ3(i)-1; fALD(i)=fALD(i)+0.47; fHCHO(i)=fHCHO(i)+0.79; 
fHO2(i)=fHO2(i)+0.79; fNQ2(i)=fNQ2(i)+1; fMEK(i)=fMEK(i)+0.18; fACD(i)=fACD(i)+0.02; fACT(i)=fACT(i)+0.09;

i=i+1; %<R328>;
Rnames{i} = 'OLIP+NO3= HO2+ALD+KET+NO2+ACT+ACD+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NO3'; 
fOLIP(i)=fOLIP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.86; fALD(i)=fALD(i)+0.72; 
fKET(i)=fKET(i)+0.11; fNO2(i)=fNO2(i)+1; fACT(i)=fACT(i)+0.2; fACD(i)=fACD(i)+0.85; fHKET(i)=fHKET(i)+0.04; 

%O3 Tracer
i=i+1; %<R328a>;
Rnames{i} = 'OLIP+NO2Q= HO2+ALD+KET+(2/3)NOQ+(1/3)NO2+ACT+ACD+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NO2Q'; 
fOLIP(i)=fOLIP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.86; fALD(i)=fALD(i)+0.72; 
fKET(i)=fKET(i)+0.11; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fACT(i)=fACT(i)+0.2; fACD(i)=fACD(i)+0.85; fHKET(i)=fHKET(i)+0.04; 

%O3 Tracer
i=i+1; %<R328b>;
Rnames{i} = 'OLIP+NOQ2= HO2+ALD+KET+(2/3)NOQ+(1/3)NQ2+ACT+ACD+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NOQ2'; 
fOLIP(i)=fOLIP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.86; fALD(i)=fALD(i)+0.72; 
fKET(i)=fKET(i)+0.11; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fACT(i)=fACT(i)+0.2; fACD(i)=fACD(i)+0.85; fHKET(i)=fHKET(i)+0.04; 

%O3 Tracer
i=i+1; %<R328c>;
Rnames{i} = 'OLIP+NQ3= HO2+ALD+KET+NQ2+ACT+ACD+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NQ3'; 
fOLIP(i)=fOLIP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.86; fALD(i)=fALD(i)+0.72; 
fKET(i)=fKET(i)+0.11; fNQ2(i)=fNQ2(i)+1; fACT(i)=fACT(i)+0.2; fACD(i)=fACD(i)+0.85; fHKET(i)=fHKET(i)+0.04; 

i=i+1; %<R329>;
Rnames{i} = 'BENP+NO3=HO2+GLY+DCB2+NO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NO3'; 
fBENP(i)=fBENP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fGLY(i)=fGLY(i)+1; fDCB2(i)=0.5; fNO2(i)=fNO2(i)+1; fDCB3(i)=0.5; 

%O3 Tracer
i=i+1; %<R329a>;
Rnames{i} = 'BENP+NO2Q=HO2+GLY+DCB2+(2/3)NOQ+(1/3)NO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NO2Q'; 
fBENP(i)=fBENP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fGLY(i)=fGLY(i)+1; fDCB2(i)=0.5; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fDCB3(i)=0.5; 

%O3 Tracer
i=i+1; %<R329b>;
Rnames{i} = 'BENP+NOQ2=HO2+GLY+DCB2+(2/3)NOQ+(1/3)NQ2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NOQ2'; 
fBENP(i)=fBENP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fGLY(i)=fGLY(i)+1; fDCB2(i)=0.5; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fDCB3(i)=0.5; 

%O3 Tracer
i=i+1; %<R329c>;
Rnames{i} = 'BENP+NQ3=HO2+GLY+DCB2+NQ2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NQ3'; 
fBENP(i)=fBENP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fGLY(i)=fGLY(i)+1; fDCB2(i)=0.5; fNQ2(i)=fNQ2(i)+1; fDCB3(i)=0.5; 

i=i+1; %<R330>;
Rnames{i} = 'TLP1+NO3=NO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NO3'; 
fTLP1(i)=fTLP1(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R330a>;
Rnames{i} = 'TLP1+NO2Q=(2/3)NOQ+(1/3)NO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NO2Q'; 
fTLP1(i)=fTLP1(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R330b>;
Rnames{i} = 'TLP1+NOQ2=(2/3)NOQ+(1/3)NQ2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NOQ2'; 
fTLP1(i)=fTLP1(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R330c>;
Rnames{i} = 'TLP1+NQ3=NQ2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NQ3'; 
fTLP1(i)=fTLP1(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R331>;
Rnames{i} = 'TOLP+NO3=DCB2+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NO3'; 
fTOLP(i)=fTOLP(i)-1; fNO3(i)=fNO3(i)-1; fDCB2(i)=fDCB2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R331a>;
Rnames{i} = 'TOLP+NO2Q=DCB2+(2/3)NOQ+(1/3)NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NO2Q'; 
fTOLP(i)=fTOLP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fDCB2(i)=fDCB2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R331b>;
Rnames{i} = 'TOLP+NOQ2=DCB2+(2/3)NOQ+(1/3)NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NOQ2'; 
fTOLP(i)=fTOLP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fDCB2(i)=fDCB2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R331c>;
Rnames{i} = 'TOLP+NQ3=DCB2+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NQ3'; 
fTOLP(i)=fTOLP(i)-1; fNQ3(i)=fNQ3(i)-1; fDCB2(i)=fDCB2(i)+1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1; %<R332>;
Rnames{i} = 'PER1+NO3=DCB1+NO2+MGLY+HO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NO3'; 
fPER1(i)=fPER1(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+0.5; fNO2(i)=fNO2(i)+1; 
fMGLY(i)=fMGLY(i)+0.5; fHO2(i)=fHO2(i)+0.5; fBALD(i)=fBALD(i)+0.5;  %SR 20160406

%O3 Tracer
i=i+1; %<R332a>;
Rnames{i} = 'PER1+NO2Q=DCB1+(2/3)NOQ+(1/3)NO2+MGLY+HO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NO2Q'; 
fPER1(i)=fPER1(i)-1; fNO2Q(i)=fNO2Q(i)-1; fDCB1(i)=fDCB1(i)+0.5; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fMGLY(i)=fMGLY(i)+0.5; fHO2(i)=fHO2(i)+0.5; fBALD(i)=fBALD(i)+0.5;  %SR 20160406

%O3 Tracer
i=i+1; %<R332b>;
Rnames{i} = 'PER1+NOQ2=DCB1+(2/3)NOQ+(1/3)NQ2+MGLY+HO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NOQ2'; 
fPER1(i)=fPER1(i)-1; fNOQ2(i)=fNOQ2(i)-1; fDCB1(i)=fDCB1(i)+0.5; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fMGLY(i)=fMGLY(i)+0.5; fHO2(i)=fHO2(i)+0.5; fBALD(i)=fBALD(i)+0.5;  %SR 20160406

%O3 Tracer
i=i+1; %<R332c>;
Rnames{i} = 'PER1+NQ3=DCB1+NQ2+MGLY+HO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NQ3'; 
fPER1(i)=fPER1(i)-1; fNQ3(i)=fNQ3(i)-1; fDCB1(i)=fDCB1(i)+0.5; fNQ2(i)=fNQ2(i)+1;  
fMGLY(i)=fMGLY(i)+0.5; fHO2(i)=fHO2(i)+0.5; fBALD(i)=fBALD(i)+0.5;  %SR 20160406

i=i+1; %<R333>;
Rnames{i} = 'XYL1+NO3=NO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NO3'; 
fXYL1(i)=fXYL1(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R333a>;
Rnames{i} = 'XYL1+NO2Q=(2/3)NOQ+(1/3)NO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NO2Q'; 
fXYL1(i)=fXYL1(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R333b>;
Rnames{i} = 'XYL1+NOQ2=(2/3)NOQ+(1/3)NQ2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NOQ2'; 
fXYL1(i)=fXYL1(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fBALD(i)=fBALD(i)+1; 

%O3 Tracer
i=i+1; %<R333c>;
Rnames{i} = 'XYL1+NQ3=NQ2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NQ3'; 
fXYL1(i)=fXYL1(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %<R334>;
Rnames{i} = 'XYLP+NO3=DCB3+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NO3'; 
fXYLP(i)=fXYLP(i)-1; fNO3(i)=fNO3(i)-1; fDCB3(i)=fDCB3(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R334a>;
Rnames{i} = 'XYLP+NO2Q=DCB3+(2/3)NOQ+(1/3)NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NO2Q'; 
fXYLP(i)=fXYLP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fDCB3(i)=fDCB3(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R334b>;
Rnames{i} = 'XYLP+NOQ2=DCB3+(2/3)NOQ+(1/3)NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NOQ2'; 
fXYLP(i)=fXYLP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fDCB3(i)=fDCB3(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R334c>;
Rnames{i} = 'XYLP+NQ3=DCB3+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NQ3'; 
fXYLP(i)=fXYLP(i)-1; fNQ3(i)=fNQ3(i)-1; fDCB3(i)=fDCB3(i)+1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R335>;
Rnames{i} = 'PER2+NO3=DCB1+NO2+MGLY+HO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NO3'; 
% fPER2(i)=-1; fNO3(i)=-1; fDCB1(i)=1; fNO2(i)=1; fMGLY(i)=1; fHO2(i)=1; fDCB3(i)=1.05;  
fPER2(i)=fPER2(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+1; fNO2(i)=fNO2(i)+1; 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05;  %SR 20160406

%O3 Tracer
i=i+1; %<R335a>;
Rnames{i} = 'PER2+NO2Q=DCB1+(2/3)NOQ+(1/3)NO2+MGLY+HO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NO2Q'; 
fPER2(i)=fPER2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fDCB1(i)=fDCB1(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05;  %SR 20160406

%O3 Tracer
i=i+1; %<R335b>;
Rnames{i} = 'PER2+NOQ2=DCB1+(2/3)NOQ+(1/3)NQ2+MGLY+HO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NOQ2'; 
fPER2(i)=fPER2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fDCB1(i)=fDCB1(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05;  %SR 20160406

%O3 Tracer
i=i+1; %<R335c>;
Rnames{i} = 'PER2+NQ3=DCB1+NQ2+MGLY+HO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NQ3'; 
fPER2(i)=fPER2(i)-1; fNQ3(i)=fNQ3(i)-1; fDCB1(i)=fDCB1(i)+1; fNQ2(i)=fNQ2(i)+1; 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05;  %SR 20160406

i=i+1; %<R336>;
Rnames{i} = 'XYOP+NO3=HO2+NO2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NO3'; 
fXYOP(i)=fXYOP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

%O3 Tracer
i=i+1; %<R336a>;
Rnames{i} = 'XYOP+NO2Q=HO2+(2/3)NOQ+(1/3)NO2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NO2Q'; 
fXYOP(i)=fXYOP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

%O3 Tracer
i=i+1; %<R336b>;
Rnames{i} = 'XYOP+NOQ2=HO2+(2/3)NOQ+(1/3)NQ2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NOQ2'; 
fXYOP(i)=fXYOP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

%O3 Tracer
i=i+1; %<R336c>;
Rnames{i} = 'XYOP+NQ3=HO2+NQ2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NQ3'; 
fXYOP(i)=fXYOP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1;
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

i=i+1; %<R337>;
Rnames{i} = 'ISOP+NO3=HO2+NO2+HCHO+MACR+MVK+GLY+HKET+ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO3'; 
fISOP(i)=fISOP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.318; fMVK(i)=fMVK(i)+0.5; fGLY(i)=fGLY(i)+0.024; 
fHKET(i)=fHKET(i)+0.033; fALD(i)=fALD(i)+0.031; 

%O3 Tracer
i=i+1; %<R337a>;
Rnames{i} = 'ISOP+NO2Q=HO2+(2/3)NOQ+(1/3)NO2+HCHO+MACR+MVK+GLY+HKET+ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO2Q'; 
fISOP(i)=fISOP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.318; fMVK(i)=fMVK(i)+0.5; fGLY(i)=fGLY(i)+0.024; 
fHKET(i)=fHKET(i)+0.033; fALD(i)=fALD(i)+0.031; 

%O3 Tracer
i=i+1; %<R337b>;
Rnames{i} = 'ISOP+NOQ2=HO2+(2/3)NOQ+(1/3)NQ2+HCHO+MACR+MVK+GLY+HKET+ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NOQ2'; 
fISOP(i)=fISOP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.318; fMVK(i)=fMVK(i)+0.5; fGLY(i)=fGLY(i)+0.024; 
fHKET(i)=fHKET(i)+0.033; fALD(i)=fALD(i)+0.031; 

%O3 Tracer
i=i+1; %<R337c>;
Rnames{i} = 'ISOP+NQ3=HO2+NQ2+HCHO+MACR+MVK+GLY+HKET+ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NQ3'; 
fISOP(i)=fISOP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.318; fMVK(i)=fMVK(i)+0.5; fGLY(i)=fGLY(i)+0.024; 
fHKET(i)=fHKET(i)+0.033; fALD(i)=fALD(i)+0.031; 

i=i+1; %<R338>;
Rnames{i} = 'APIP+NO3=HO2+ALD+NO2+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO3'; 
fAPIP(i)=fAPIP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1; 

%O3 Tracer
i=i+1; %<R338a>; 
Rnames{i} = 'APIP+NO2Q=HO2+ALD+(1/3)*NO2+(2/3)*NOQ+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO2Q'; 
fAPIP(i)=fAPIP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fKET(i)=fKET(i)+1; 

%O3 Tracer
i=i+1; %<R338b>; 
Rnames{i} = 'APIP+NOQ2=HO2+ALD+(1/3)*NQ2+(2/3)*NOQ+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NOQ2'; 
fAPIP(i)=fAPIP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fKET(i)=fKET(i)+1; 

%O3 Tracer
i=i+1; %<R338c>; 
Rnames{i} = 'APIP+NQ3=HO2+ALD+NQ2+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NQ3'; 
fAPIP(i)=fAPIP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNQ2(i)=fNQ2(i)+1; fKET(i)=fKET(i)+1; 

i=i+1; %<R339>;
Rnames{i} = 'LIMP+NO3=HO2+NO2+0.385 OLI+0.385 HCHO+0.615 MACR';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NO3'; 
fLIMP(i)=fLIMP(i)-1; fNO3(i)=fNO3(i)-1;fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fOLI(i)=fOLI(i)+0.385; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.615; 

i=i+1; %<R339a>;
Rnames{i} = 'LIMP+NO2Q=HO2+(2/3)NOQ+(1/3)NO2+0.385 OLI+0.385 HCHO+0.615 MACR';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NO2Q'; 
fLIMP(i)=fLIMP(i)-1; fNO2Q(i)=fNO2Q(i)-1;fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fOLI(i)=fOLI(i)+0.385; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.615; 

i=i+1; %<R339b>;
Rnames{i} = 'LIMP+NOQ2=HO2+(2/3)NOQ+(1/3)NQ2+0.385 OLI+0.385 HCHO+0.615 MACR';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NOQ2'; 
fLIMP(i)=fLIMP(i)-1; fNOQ2(i)=fNOQ2(i)-1;fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fOLI(i)=fOLI(i)+0.385; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.615; 

i=i+1; %<R339c>;
Rnames{i} = 'LIMP+NQ3=HO2+NQ2+0.385 OLI+0.385 HCHO+0.615 MACR';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NQ3'; 
fLIMP(i)=fLIMP(i)-1; fNQ3(i)=fNQ3(i)-1;fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 
fOLI(i)=fOLI(i)+0.385; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.615; 

i=i+1; %<R340>;
Rnames{i} = 'ACO3+NO3=MO2+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO3'; 
fACO3(i)=fACO3(i)-1; fNO3(i)=fNO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R340a>; 
Rnames{i} = 'ACO3+NO2Q=MO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2Q'; 
fACO3(i)=fACO3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R340b>; 
Rnames{i} = 'ACO3+NOQ2=MO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NOQ2'; 
fACO3(i)=fACO3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMO2(i)=fMO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R340c>; 
Rnames{i} = 'ACO3+NQ3=MO2+NQ2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NQ3'; 
fACO3(i)=fACO3(i)-1; fNQ3(i)=fNQ3(i)-1; fMO2(i)=fMO2(i)+1; fNQ2(i)=fNQ2(i)+1;  

i=i+1; %<R341>;
Rnames{i} = 'RCO3+NO3=ETHP+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO3'; 
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R341a>; 
Rnames{i} = 'RCO3+NO2Q=ETHP+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2Q'; 
fRCO3(i)=fRCO3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R341b>; 
Rnames{i} = 'RCO3+NOQ2=ETHP+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NOQ2'; 
fRCO3(i)=fRCO3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fETHP(i)=fETHP(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R341c>;
Rnames{i} = 'RCO3+NQ3=ETHP+NQ2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NQ3'; 
fRCO3(i)=fRCO3(i)-1; fNQ3(i)=fNQ3(i)-1; fETHP(i)=fETHP(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R342>;
Rnames{i} = 'ACTP+NO3=ACO3+NO2+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO3'; 
fACTP(i)=fACTP(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

%O3 tracer
i=i+1; %<R342a>; 
Rnames{i} = 'ACTP+NO2Q=ACO3+(1/3)*NO2+(2/3)*NOQ+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO2Q'; 
fACTP(i)=fACTP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+1; 

%O3 tracer
i=i+1; %<R342b>;
Rnames{i} = 'ACTP+NOQ2=ACO3+(1/3)*NQ2+(2/3)*NOQ+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NOQ2'; 
fACTP(i)=fACTP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+1;

%O3 tracer
i=i+1; %<R342c>; 
Rnames{i} = 'ACTP+NQ3=ACO3+NQ2HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NQ3'; 
fACTP(i)=fACTP(i)-1; fNQ3(i)=fNQ3(i)-1; fACO3(i)=fACO3(i)+1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+1;

i=i+1; %<R343>;
Rnames{i} = 'MEKP+NO3=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO3'; 
fMEKP(i)=fMEKP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 Tracer
i=i+1; %<R343a>; 
Rnames{i} = 'MEKP+NO2Q=0.67 HO2+(1/3)*NO2+(2/3)*NOQ+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO2Q'; 
fMEKP(i)=fMEKP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 Tracer
i=i+1; %<R343b>;
Rnames{i} = 'MEKP+NOQ2=0.67 HO2+(1/3)*NQ2+(2/3)*NOQ+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NOQ2'; 
fMEKP(i)=fMEKP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.67; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

%O3 Tracer
i=i+1; %<R343c>; 
Rnames{i} = 'MEKP+NQ3=0.67 HO2+NQ2+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NQ3'; 
fMEKP(i)=fMEKP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.67; fNQ2(i)=fNQ2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %<R344>;
Rnames{i} = 'KETP+NO3=DCB1+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO3'; 
fKETP(i)=fKETP(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R344a>; 
Rnames{i} = 'KETP+NO2Q=DCB1+HO2+(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO2Q'; 
fKETP(i)=fKETP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R344b>; 
Rnames{i} = 'KETP+NOQ2=DCB1+HO2+(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NOQ2'; 
fKETP(i)=fKETP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R344c>; 
Rnames{i} = 'KETP+NQ3=DCB1+HO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NQ3'; 
fKETP(i)=fKETP(i)-1; fNQ3(i)=fNQ3(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1;  

i=i+1; %<R345>;
Rnames{i} = 'MACP+NO3=HO2+0.33 ACO3+NO2+0.33 CO+HCHO+0.33 HKET+0.667 MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO3'; 
fMACP(i)=fMACP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+0.33; 
fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+0.33; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.33;  
fMGLY(i)=fMGLY(i)+0.667; 

%O3 Tracer
i=i+1; %<R345a>;
Rnames{i} = 'MACP+NO2Q=HO2+0.33 ACO3+(2/3)NOQ+(1/3)NO2+0.33 CO+HCHO+0.33 HKET+0.667 MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO2Q'; 
fMACP(i)=fMACP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+0.33; 
fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fCO(i)=fCO(i)+0.33; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.33;  
fMGLY(i)=fMGLY(i)+0.667;

%O3 Tracer
i=i+1; %<R345b>;
Rnames{i} = 'MACP+NOQ2=HO2+0.33 ACO3+(2/3)NOQ+(1/3)NQ2+0.33 CO+HCHO+0.33 HKET+0.667 MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NOQ2'; 
fMACP(i)=fMACP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+0.33; 
fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fCO(i)=fCO(i)+0.33; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.33;  
fMGLY(i)=fMGLY(i)+0.667;

%O3 Tracer
i=i+1; %<R345c>;
Rnames{i} = 'MACP+NQ3=HO2+0.33 ACO3+NQ2+0.33 CO+HCHO+0.33 HKET+0.667 MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NQ3'; 
fMACP(i)=fMACP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+0.33; 
fNQ2(i)=fNQ2(i)+1; fCO(i)=fCO(i)+0.33; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.33;  
fMGLY(i)=fMGLY(i)+0.667;

i=i+1; %<R346>;
Rnames{i} = 'MCP+NO3 = NO2+HO2+HCHO+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NO3'; 
fMCP(i)=fMCP(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R346a>;
Rnames{i} = 'MCP+NO2Q = (2/3)NOQ+(1/3)NO2+HO2+HCHO+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NO2Q'; 
fMCP(i)=fMCP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+1; 

%O3 Tracer
i=i+1; %<R346b>;
Rnames{i} = 'MCP+NOQ2 = (2/3)NOQ+(1/3)NQ2+HO2+HCHO+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NOQ2'; 
fMCP(i)=fMCP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+1;

%O3 Tracer
i=i+1; %<R346c>;
Rnames{i} = 'MCP+NQ3 = NQ2+HO2+HCHO+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NQ3'; 
fMCP(i)=fMCP(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+1;

i=i+1; %<R347>;
Rnames{i} = 'MVKP+NO3=0.3 HO2+0.7 ACO3+0.7 XO2+NO2+0.3 HCHO+0.7 ALD+MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NO3'; 
fMVKP(i)=fMVKP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+1; 

%O3 Tracer
i=i+1; %<R347a>;
Rnames{i} = 'MVKP+NO2Q=0.3 HO2+0.7 ACO3+0.7 XO2+(2/3)NOQ+(1/3)NO2+0.3 HCHO+0.7 ALD+MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NO2Q'; 
fMVKP(i)=fMVKP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+1; 

%O3 Tracer
i=i+1; %<R347b>;
Rnames{i} = 'MVKP+NOQ2=0.3 HO2+0.7 ACO3+0.7 XO2+(2/3)NOQ+(1/3)NQ2+0.3 HCHO+0.7 ALD+MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NOQ2'; 
fMVKP(i)=fMVKP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+1;

%O3 Tracer
i=i+1; %<R347c>;
Rnames{i} = 'MVKP+NQ3=0.3 HO2+0.7 ACO3+0.7 XO2+NQ2+0.3 HCHO+0.7 ALD+MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NQ3'; 
fMVKP(i)=fMVKP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+1;

i=i+1; %<R348>;
Rnames{i} = 'UALP+NO3=HO2+NO2+0.61 CO+0.03 HCHO+0.27 ALD+0.7 KET+0.18 GLY+0.21 MGLY ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO3'; 
fUALP(i)=fUALP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fCO(i)=fCO(i)+0.61; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27;
fKET(i)=fKET(i)+0.7; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21;

%O3 Tracer
i=i+1; %<R348a>;
Rnames{i} = 'UALP+NO2Q=HO2+(2/3)NOQ+(1/3)NO2+0.61 CO+0.03 HCHO+0.27 ALD+0.7 KET+0.18 GLY+0.21 MGLY ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO2Q'; 
fUALP(i)=fUALP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 
fCO(i)=fCO(i)+0.61; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27;
fKET(i)=fKET(i)+0.7; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21;

%O3 Tracer
i=i+1; %<R348b>;
Rnames{i} = 'UALP+NOQ2=HO2+(2/3)NOQ+(1/3)NQ2+0.61 CO+0.03 HCHO+0.27 ALD+0.7 KET+0.18 GLY+0.21 MGLY ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NOQ2'; 
fUALP(i)=fUALP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 
fCO(i)=fCO(i)+0.61; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27;
fKET(i)=fKET(i)+0.7; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21;

%O3 Tracer
i=i+1; %<R348c>;
Rnames{i} = 'UALP+NQ3=HO2+NQ2+0.61 CO+0.03 HCHO+0.27 ALD+0.7 KET+0.18 GLY+0.21 MGLY ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NQ3'; 
fUALP(i)=fUALP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; 
fCO(i)=fCO(i)+0.61; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27;
fKET(i)=fKET(i)+0.7; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21;

i=i+1; %<R349>;
Rnames{i} = 'BALP+NO3=BAL1+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NO3'; 
fBALP(i)=fBALP(i)-1; fNO3(i)=fNO3(i)-1; fBAL1(i)=fBAL1(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R349a>;
Rnames{i} = 'BALP+NO2Q=BAL1+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NO2Q'; 
fBALP(i)=fBALP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fBAL1(i)=fBAL1(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R349b>;
Rnames{i} = 'BALP+NOQ2=BAL1+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NOQ2'; 
fBALP(i)=fBALP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fBAL1(i)=fBAL1(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R349c>;
Rnames{i} = 'BALP+NQ3=BAL1+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NQ3'; 
fBALP(i)=fBALP(i)-1; fNQ3(i)=fNQ3(i)-1; fBAL1(i)=fBAL1(i)+1; fNQ2(i)=fNQ2(i)+1;

i=i+1; %<R350>;
Rnames{i} = 'BAL1+NO3=BAL2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NO3'; 
fBAL1(i)=fBAL1(i)-1; fNO3(i)=fNO3(i)-1; fBAL2(i)=fBAL2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R350a>;
Rnames{i} = 'BAL1+NO2Q=BAL2+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NO2Q'; 
fBAL1(i)=fBAL1(i)-1; fNO2Q(i)=fNO2Q(i)-1; fBAL2(i)=fBAL2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R350b>;
Rnames{i} = 'BAL1+NOQ2=BAL2+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NOQ2'; 
fBAL1(i)=fBAL1(i)-1; fNOQ2(i)=fNOQ2(i)-1; fBAL2(i)=fBAL2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R350c>;
Rnames{i} = 'BAL1+NQ3=BAL2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NQ3'; 
fBAL1(i)=fBAL1(i)-1; fNQ3(i)=fNQ3(i)-1; fBAL2(i)=fBAL2(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R351>;
Rnames{i} = 'ADDC+NO3=HO2+NO2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NO3'; 
fADDC(i)=fADDC(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

%O3 Tracer
i=i+1; %<R351a>;
Rnames{i} = 'ADDC+NO2Q=HO2+(2/3)NOQ+(1/3)NO2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NO2Q'; 
fADDC(i)=fADDC(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

%O3 Tracer
i=i+1; %<R351b>;
Rnames{i} = 'ADDC+NOQ2=HO2+(2/3)NOQ+(1/3)NQ2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NOQ2'; 
fADDC(i)=fADDC(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

%O3 Tracer
i=i+1; %<R351c>;
Rnames{i} = 'ADDC+NQ3=HO2+NQ2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NQ3'; 
fADDC(i)=fADDC(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

i=i+1; %<R352>;
Rnames{i} = 'MCTP+NO3=MCTO+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NO3'; 
fMCTP(i)=fMCTP(i)-1; fNO3(i)=fNO3(i)-1; fMCTO(i)=fMCTO(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R352a>;
Rnames{i} = 'MCTP+NO2Q=MCTO+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NO2Q'; 
fMCTP(i)=fMCTP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fMCTO(i)=fMCTO(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R352b>;
Rnames{i} = 'MCTP+NOQ2=MCTO+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NOQ2'; 
fMCTP(i)=fMCTP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fMCTO(i)=fMCTO(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R352c>;
Rnames{i} = 'MCTP+NQ3=MCTO+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NQ3'; 
fMCTP(i)=fMCTP(i)-1; fNQ3(i)=fNQ3(i)-1; fMCTO(i)=fMCTO(i)+1; fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R353>;
Rnames{i} = 'ORAP+NO3=HO2+NO2+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO3'; 
fORAP(i)=fORAP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1; %<R353a>; 
Rnames{i} = 'ORAP+NO2Q=HO2+(1/3)*NO2+(2/3)*NOQ+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO2Q'; 
fORAP(i)=fORAP(i)-1; fNO2Q(i)=fNO2Q(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1; %<R353b>; 
Rnames{i} = 'ORAP+NOQ2=HO2+(1/3)*NQ2+(2/3)*NOQ+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NOQ2'; 
fORAP(i)=fORAP(i)-1; fNOQ2(i)=fNOQ2(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fGLY(i)=fGLY(i)+1; 

%O3 Tracer
i=i+1; %<R353c>; 
Rnames{i} = 'ORAP+NQ3=HO2+NQ2+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NQ3'; 
fORAP(i)=fORAP(i)-1; fNQ3(i)=fNQ3(i)-1; fHO2(i)=fHO2(i)+1; fNQ2(i)=fNQ2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<R354>;
Rnames{i} = 'OLNN+NO3=ONIT+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO3'; 
fOLNN(i)=fOLNN(i)-1; fNO3(i)=fNO3(i)-1; fONIT(i)=fONIT(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354a>;
Rnames{i} = 'OLNN+NO2Q=ONIT+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO2Q'; 
fOLNN(i)=fOLNN(i)-1; fNO2Q(i)=fNO2Q(i)-1; fONIT(i)=fONIT(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354b>; 
Rnames{i} = 'OLNN+NOQ2=ONIT+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NOQ2'; 
fOLNN(i)=fOLNN(i)-1; fNOQ2(i)=fNOQ2(i)-1; fONIT(i)=fONIT(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354c>;
Rnames{i} = 'OLNN+NQ3=ONIT+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NQ3'; 
fOLNN(i)=fOLNN(i)-1; fNQ3(i)=fNQ3(i)-1; fONIT(i)=fONIT(i)+1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354d>; 
Rnames{i} = 'OLNNQ+NO3=ONITQ+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NO3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNO3(i)=fNO3(i)-1; fONITQ(i)=fONITQ(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354e>; 
Rnames{i} = 'OLNNQ+NO2Q=ONITQ+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NO2Q'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fONITQ(i)=fONITQ(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354f>;
Rnames{i} = 'OLNNQ+NOQ2=ONITQ+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NOQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fONITQ(i)=fONITQ(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354g>; 
Rnames{i} = 'OLNNQ+NQ3=ONITQ+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'NQ3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fNQ3(i)=fNQ3(i)-1; fONITQ(i)=fONITQ(i)+1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354h>; 
Rnames{i} = 'OLNNQ2+NO3=ONITQ2+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NO3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNO3(i)=fNO3(i)-1; fONITQ2(i)=fONITQ2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R354i>; 
Rnames{i} = 'OLNNQ2+NO2Q=ONITQ2+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NO2Q'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fONITQ2(i)=fONITQ2(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R354j>;
Rnames{i} = 'OLNNQ2+NOQ2=ONITQ2+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NOQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R354k>;
Rnames{i} = 'OLNNQ2+NQ3=ONITQ2+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'NQ3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fONITQ2(i)=fONITQ2(i)+1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R354l>;
Rnames{i} = 'OLNNQ3+NO3=ONITQ3+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NO3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNO3(i)=fNO3(i)-1; fONITQ3(i)=fONITQ3(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R354m>; 
Rnames{i} = 'OLNNQ3+NO2Q=ONITQ3+(1/3)*NO2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NO2Q'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fONITQ3(i)=fONITQ3(i)+1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R354n>; 
Rnames{i} = 'OLNNQ3+NOQ2=ONITQ3+(1/3)*NQ2+(2/3)*NOQ+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NOQ2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fONITQ3(i)=fONITQ3(i)+1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHO2(i)=fHO2(i)+1;

%O3 Tracer
i=i+1; %<R354o>; 
Rnames{i} = 'OLNNQ3+NQ3=ONITQ3+NQ2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'NQ3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fONITQ3(i)=fONITQ3(i)+1; fNQ2(i)=fNQ2(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1; %<R355>;
Rnames{i} = 'OLND+NO3=2 NO2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO3'; 
fOLND(i)=fOLND(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355a>; 
Rnames{i} = 'OLND+NO2Q= NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO2Q'; 
fOLND(i)=fOLND(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(4/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355b>; 
Rnames{i} = 'OLND+NOQ2=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NOQ2'; 
fOLND(i)=fOLND(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO2(i)=fNO2(i)+(1); fNOQ(i)=fNOQ(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355c>; 
Rnames{i} = 'OLND+NQ3=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NQ3'; 
fOLND(i)=fOLND(i)-1; fNQ3(i)=fNQ3(i)-1; fNO2(i)=fNO2(i)+(1); fNOQ(i)=fNOQ(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355d>; 
Rnames{i} = 'OLNDQ+NO3=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NO3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+(4/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355e>; 
Rnames{i} = 'OLNDQ+NO2Q=NO2+NOQ+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NO2Q'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(2/3); fNOQ(i)=fNOQ(i)+(4/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355f>;
Rnames{i} = 'OLNDQ+NOQ2=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NOQ2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355g>; 
Rnames{i} = 'OLNDQ+NQ3=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'NQ3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fNQ3(i)=fNQ3(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355h>; 
Rnames{i} = 'OLNDQ2+NO3=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NO3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355i>; 
Rnames{i} = 'OLNDQ2+NO2Q=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NO2Q'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355j>; 
Rnames{i} = 'OLNDQ2+NOQ2=NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NOQ2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(4/3); fNQ2(i)=fNQ2(i)+(2/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355k>; 
Rnames{i} = 'OLNDQ2+NQ3=NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'NQ3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(4/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355l>; 
Rnames{i} = 'OLNDQ3+NO3=NO2+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NO3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355m>;
Rnames{i} = 'OLNDQ3+NO2Q=NO2+NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NO2Q'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355n>; 
Rnames{i} = 'OLNDQ3+NOQ2=NOQ+NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NOQ2'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(4/3); fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

%O3 Tracer
i=i+1; %<R355o>;
Rnames{i} = 'OLNDQ3+NQ3=NQ2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'NQ3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+2; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

i=i+1; %<R356>;
Rnames{i} = 'ADCN+NO3=OP2+GLY+NO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NO3'; 
fADCN(i)=fADCN(i)-1; fNO3(i)=fNO3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R356a>;
Rnames{i} = 'ADCN+NO2Q=OP2+GLY+NO2+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NO2Q'; 
fADCN(i)=fADCN(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; 
fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356b>;
Rnames{i} = 'ADCN+NOQ2=OP2+GLY+NO2+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NOQ2'; 
fADCN(i)=fADCN(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; 
fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356c>;
Rnames{i} = 'ADCN+NQ3=OP2+GLY+NO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NQ3'; 
fADCN(i)=fADCN(i)-1; fNQ3(i)=fNQ3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; 
fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R356d>;
Rnames{i} = 'ADCNQ+NO3=OP2+GLY+(2/3)NOQ+(1/3)NO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'NO3'; 
fADCNQ(i)=fADCNQ(i)-1; fNO3(i)=fNO3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);  
fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R356e>;
Rnames{i} = 'ADCNQ+NO2Q=OP2+GLY+(2/3)NOQ+(1/3)NO2+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'NO2Q'; 
fADCNQ(i)=fADCNQ(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);  
fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356f>;
Rnames{i} = 'ADCNQ+NOQ2=OP2+GLY+(2/3)NOQ+(1/3)NO2+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'NOQ2'; 
fADCNQ(i)=fADCNQ(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);  
fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356g>;
Rnames{i} = 'ADCNQ+NQ3=OP2+GLY+(2/3)NOQ+(1/3)NO2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ'; Gstr{i,2} = 'NQ3'; 
fADCNQ(i)=fADCNQ(i)-1; fNQ3(i)=fNQ3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3);  
fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R356h>;
Rnames{i} = 'ADCNQ2+NO3=OP2+GLY+(2/3)NOQ+(1/3)NQ2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'NO3'; 
fADCNQ2(i)=fADCNQ2(i)-1; fNO3(i)=fNO3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);  
fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R356i>;
Rnames{i} = 'ADCNQ2+NO2Q=OP2+GLY+(2/3)NOQ+(1/3)NQ2+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'NO2Q'; 
fADCNQ2(i)=fADCNQ2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);  
fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356j>;
Rnames{i} = 'ADCNQ2+NOQ2=OP2+GLY+(2/3)NOQ+(1/3)NQ2+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'NOQ2'; 
fADCNQ2(i)=fADCNQ2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);    
fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356k>;
Rnames{i} = 'ADCNQ2+NQ3=OP2+GLY+(2/3)NOQ+(1/3)NQ2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ2'; Gstr{i,2} = 'NQ3'; 
fADCNQ2(i)=fADCNQ2(i)-1; fNQ3(i)=fNQ3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3);   
fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R356l>;
Rnames{i} = 'ADCNQ3+NO3=OP2+GLY+NQ2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'NO3'; 
fADCNQ3(i)=fADCNQ2(i)-1; fNO3(i)=fNO3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNQ2(i)=fNQ2(i)+1;  
fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R356m>;
Rnames{i} = 'ADCNQ3+NO2Q=OP2+GLY+NQ2+(2/3)NOQ+(1/3)NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'NO2Q'; 
fADCNQ3(i)=fADCNQ3(i)-1; fNO2Q(i)=fNO2Q(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNQ2(i)=fNQ2(i)+1;   
fNOQ(i)=fNOQ(i)+(2/3); fNO2(i)=fNO2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356n>;
Rnames{i} = 'ADCNQ3+NOQ2=OP2+GLY+NQ2+(2/3)NOQ+(1/3)NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'NOQ2'; 
fADCNQ3(i)=fADCNQ3(i)-1; fNOQ2(i)=fNOQ2(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNQ2(i)=fNQ2(i)+1;    
fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); 

%O3 Tracer
i=i+1; %<R356o>;
Rnames{i} = 'ADCNQ3+NQ3=OP2+GLY+NQ2+NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCNQ3'; Gstr{i,2} = 'NQ3'; 
fADCNQ3(i)=fADCNQ3(i)-1; fNQ3(i)=fNQ3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNQ2(i)=fNQ2(i)+1;   
fNQ2(i)=fNQ2(i)+1; 

i=i+1; %<R357>;
Rnames{i} = 'XO2+NO3=NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO3'; 
fXO2(i)=fXO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; 

%O3 Tracer
i=i+1; %<R357a>; 
Rnames{i} = 'XO2+NO2Q=(1/3)*NO2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO2Q'; 
fXO2(i)=fXO2(i)-1; fNO2Q(i)=fNO2Q(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R357b>; 
Rnames{i} = 'XO2+NOQ2=(1/3)*NQ2+(2/3)*NOQ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NOQ2'; 
fXO2(i)=fXO2(i)-1; fNOQ2(i)=fNOQ2(i)-1; fNQ2(i)=fNQ2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); 

%O3 Tracer
i=i+1; %<R357c>; 
Rnames{i} = 'XO2+NQ3=NQ2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NQ3'; 
fXO2(i)=fXO2(i)-1; fNQ3(i)=fNQ3(i)-1; fNQ2(i)=fNQ2(i)+1; 


%% MISCELLANEOUS RO2 CROSS-REACTIONS
i=i+1; %<R358>;
Rnames{i} = 'RCO3+RCO3=2ETHP+2CO2';
k(:,i) = 2.5e-12.*exp(500./T); %Goliff(2013) missing rate k; use k(ACO3+ACO3)
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RCO3'; 
% fRCO3(i)=-2; fETHP(i)=2; fCO2(i)=2;
fRCO3(i)=fRCO3(i)-2; fETHP(i)=fETHP(i)+2; fCO2(i)=fCO2(i)+2; %SR 20160406

%%Organic Nitrate Radical Cross Reactions
i=i+1; %<R359>;
Rnames{i} = 'OLNN+OLNN=ONIT+ONIT+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNN'; 
fOLNN(i)=fOLNN(i)-1; fOLNN(i)=fOLNN(i)-1; fONIT(i)=fONIT(i)+1; fONIT(i)=fONIT(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359a>;
Rnames{i} = 'OLNN+OLNNQ=ONIT+ONITQ+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNNQ'; 
fOLNN(i)=fOLNN(i)-1; fOLNNQ(i)=fOLNNQ(i)-1; fONIT(i)=fONIT(i)+1; fONITQ(i)=fONITQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359b>;
Rnames{i} = 'OLNN+OLNNQ2=ONIT+ONITQ2+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNNQ2'; 
fOLNN(i)=fOLNN(i)-1; fOLNNQ2(i)=fOLNNQ2(i)-1; fONIT(i)=fONIT(i)+1; fONITQ2(i)=fONITQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359c>; 
Rnames{i} = 'OLNN+OLNNQ3=ONIT+ONITQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNNQ3'; 
fOLNN(i)=fOLNN(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fONIT(i)=fONIT(i)+1; fONITQ3(i)=fONITQ3(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359d>; 
Rnames{i} = 'OLNNQ+OLNNQ=ONITQ+ONITQ+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNNQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNNQ(i)=fOLNNQ(i)-1; fONITQ(i)=fONITQ(i)+1; fONITQ(i)=fONITQ(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359e>; 
Rnames{i} = 'OLNNQ+OLNNQ2=ONITQ+ONITQ2+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNNQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNNQ2(i)=fOLNNQ2(i)-1; fONITQ(i)=fONITQ(i)+1; fONITQ2(i)=fONITQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359f>; 
Rnames{i} = 'OLNNQ+OLNNQ3=ONITQ+ONITQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNNQ3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fONITQ(i)=fONITQ(i)+1; fONITQ3(i)=fONITQ3(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359g>; 
Rnames{i} = 'OLNNQ2+OLNNQ2=ONITQ2+ONITQ2+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNNQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNNQ2(i)=fOLNNQ2(i)-1; fONITQ2(i)=fONITQ2(i)+1; fONITQ2(i)=fONITQ2(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359h>; 
Rnames{i} = 'OLNNQ2+OLNNQ3=ONITQ2+ONITQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNNQ3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fONITQ2(i)=fONITQ2(i)+1; fONITQ3(i)=fONITQ3(i)+1; fHO2(i)=fHO2(i)+1; 

%O3 Tracer
i=i+1; %<R359i>; 
Rnames{i} = 'OLNNQ3+OLNNQ3=ONITQ3+ONITQ3+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNNQ3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNNQ3(i)=fOLNNQ3(i)-1; fONITQ3(i)=fONITQ3(i)+1; fONITQ3(i)=fONITQ3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<R360>; 
Rnames{i} = 'OLNN+OLND=0.50 HO2+0.50 NO2+0.202 HCHO+0.640 ALD+0.149 KET+1.50 ONIT ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLND'; 
fOLNN(i)=fOLNN(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONIT(i)=fONIT(i)+1.5; 

%O3 Tracer
i=i+1; %<R360a>; 
Rnames{i} = 'OLNN+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONIT +ONITQ ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNDQ'; 
fOLNN(i)=fOLNN(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONIT(i)=fONIT(i)+1; fONITQ(i)=fONITQ(i)+0.5; 

%O3 Tracer
i=i+1; %<R360b>; 
Rnames{i} = 'OLNN+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONIT +ONITQ2';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNDQ2'; 
fOLNN(i)=fOLNN(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONIT(i)=fONIT(i)+1; fONITQ2(i)=fONITQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<R360c>; 
Rnames{i} = 'OLNN+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+ ONIT +ONITQ3';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNDQ3'; 
fOLNN(i)=fOLNN(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONIT(i)=fONIT(i)+1; fONITQ3(i)=fONITQ3(i)+0.5; 

%O3 Tracer
i=i+1; %<R360d>; 
Rnames{i} = 'OLNNQ+OLND=0.50 HO2+NO2+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ +ONIT';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/2); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ(i)=fONITQ(i)+1; fONIT(i)=fONIT(i)+0.5; 

%O3 Tracer
i=i+1; %<R360e>; 
Rnames{i} = 'OLNNQ+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ(i)=fONITQ(i)+1.5; 

%O3 Tracer
i=i+1; %<R360f>; 
Rnames{i} = 'OLNNQ+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ+ONITQ2';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ2'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); 
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ(i)=fONITQ(i)+1; fONITQ2(i)=fONITQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<R360g>; 
Rnames{i} = 'OLNNQ+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ+ONITQ3';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ'; Gstr{i,2} = 'OLNDQ3'; 
fOLNNQ(i)=fOLNNQ(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ(i)=fONITQ(i)+1; fONITQ3(i)=fONITQ3(i)+0.5; 

%O3 Tracer
i=i+1; %<R360h>;
Rnames{i} = 'OLNNQ2+OLND=0.50 HO2+NO2+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ2+ONIT';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLND'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/2);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ2(i)=fONITQ2(i)+1; fONIT(i)=fONIT(i)+0.5; 

%O3 Tracer
i=i+1; %<R360i>; 
Rnames{i} = 'OLNNQ2+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ2+ONITQ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ2(i)=fONITQ2(i)+1; fONITQ(i)=fONITQ(i)+0.5; 

%O3 Tracer
i=i+1; %<R360j>;
Rnames{i} = 'OLNNQ2+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ2+ONITQ2';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNDQ2'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);  
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ2(i)=fONITQ2(i)+1.5; 

%O3 Tracer
i=i+1; %<R360k>;
Rnames{i} = 'OLNNQ2+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ2+ONITQ3';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ2'; Gstr{i,2} = 'OLNDQ3'; 
fOLNNQ2(i)=fOLNNQ2(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ2(i)=fONITQ2(i)+1; fONITQ3(i)=fONITQ3(i)+0.5; 

%O3 Tracer
i=i+1; %<R360l>;
Rnames{i} = 'OLNNQ3+OLND=0.50 HO2+NO2+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ3+ONIT';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLND'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/2);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ3(i)=fONITQ3(i)+1; fONIT(i)=fONIT(i)+0.5; 

%O3 Tracer
i=i+1; %<R360m>; 
Rnames{i} = 'OLNNQ3+OLNDQ=0.50 HO2+NO2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ3+ONITQ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNDQ'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ3(i)=fONITQ3(i)+1; fONITQ(i)=fONITQ(i)+0.5; 

%O3 Tracer
i=i+1; %<R360n>; 
Rnames{i} = 'OLNNQ3+OLNDQ2=0.50 HO2+NQ2+NOQ+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ3+ONITQ2';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNDQ2'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6);   
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ3(i)=fONITQ3(i)+1; fONITQ2(i)=fONITQ2(i)+0.5; 

%O3 Tracer
i=i+1; %<R360o>; 
Rnames{i} = 'OLNNQ3+OLNDQ3=0.50 HO2+NQ2+0.202 HCHO+0.640 ALD+0.149 KET+ ONITQ3';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNNQ3'; Gstr{i,2} = 'OLNDQ3'; 
fOLNNQ3(i)=fOLNNQ3(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fHO2(i)=fHO2(i)+0.5; fNQ2(i)=fNQ2(i)+(1/2);    
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONITQ3(i)=fONITQ3(i)+1.5; 

i=i+1; %<R361>; 
Rnames{i} = 'OLND+OLND=NO2+0.504 HCHO+1.21 ALD+0.285 KET+ONIT ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLND'; 
fOLND(i)=fOLND(i)-1; fOLND(i)=fOLND(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONIT(i)=fONIT(i)+1;

%O3 Tracer
i=i+1; %<R361a>; 
Rnames{i} = 'OLND+OLNDQ=NO2+NOQ+0.504 HCHO+1.21 ALD+0.285 KET+ONIT+ONITQ ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLNDQ'; 
fOLND(i)=fOLND(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fNO2(i)=fNO2(i)+(4/6); fNOQ(i)=fNOQ(i)+(1/3); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONIT(i)=fONIT(i)+0.5; fONITQ(i)=fONITQ(i)+0.5;

%O3 Tracer
i=i+1; %<R361b>; 
Rnames{i} = 'OLND+OLNDQ2=NO2+NOQ+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONIT+ONITQ2';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLNDQ2'; 
fOLND(i)=fOLND(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fNO2(i)=fNO2(i)+(1/2); fNQ2(i)=fNQ2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONIT(i)=fONIT(i)+0.5; fONITQ2(i)=fONITQ2(i)+0.5;

%O3 Tracer
i=i+1; %<R361c>; 
Rnames{i} = 'OLND+OLNDQ3=NO2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONIT+ONITQ3';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLNDQ3'; 
fOLND(i)=fOLND(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNO2(i)=fNO2(i)+(1/2); fNQ2(i)=fNQ2(i)+(1/2); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONIT(i)=fONIT(i)+0.5; fONITQ3(i)=fONITQ3(i)+0.5;

%O3 Tracer
i=i+1; %<R361d>; 
Rnames{i} = 'OLNDQ+OLNDQ=NO2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONITQ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'OLNDQ'; 
fOLNDQ(i)=fOLNDQ(i)-1; fOLNDQ(i)=fOLNDQ(i)-1; fNO2(i)=fNO2(i)+(1/3); fNOQ(i)=fNOQ(i)+(2/3); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONITQ(i)=fONITQ(i)+1;

%O3 Tracer
i=i+1; %<R361e>; 
Rnames{i} = 'OLNDQ+OLNDQ2=NO2+NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONITQ+ONITQ2';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'OLNDQ2'; 
fOLNDQ(i)=fOLNDQ(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(4/6); fNQ2(i)=fNQ2(i)+(1/6); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONITQ(i)=fONITQ(i)+0.5; fONITQ2(i)=fONITQ2(i)+0.5;

%O3 Tracer
i=i+1; %<R361f>; 
Rnames{i} = 'OLNDQ+OLNDQ3=NO2+NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONITQ+ONITQ3';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ'; Gstr{i,2} = 'OLNDQ3'; 
fOLNDQ(i)=fOLNDQ(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNO2(i)=fNO2(i)+(1/6); fNOQ(i)=fNOQ(i)+(2/6); fNQ2(i)=fNQ2(i)+(1/2); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONITQ(i)=fONITQ(i)+0.5; fONITQ3(i)=fONITQ3(i)+0.5;

%O3 Tracer
i=i+1; %<R361g>;
Rnames{i} = 'OLNDQ2+OLNDQ2=NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONITQ2';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'OLNDQ2'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fOLNDQ2(i)=fOLNDQ2(i)-1; fNOQ(i)=fNOQ(i)+(2/3); fNQ2(i)=fNQ2(i)+(1/3); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONITQ2(i)=fONITQ2(i)+1; 

%O3 Tracer
i=i+1; %<R361h>;
Rnames{i} = 'OLNDQ2+OLNDQ3=NQ2+NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONITQ2+ONITQ3';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ2'; Gstr{i,2} = 'OLNDQ3'; 
fOLNDQ2(i)=fOLNDQ2(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNOQ(i)=fNOQ(i)+(2/6); fNQ2(i)=fNQ2(i)+(4/6); fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONITQ2(i)=fONITQ2(i)+0.5; fONITQ3(i)=fONITQ3(i)+0.5; 

%O3 Tracer
i=i+1; %<R361i>; 
Rnames{i} = 'OLNDQ3+OLNDQ3=NQ2+0.504 HCHO+1.21 ALD+0.285 KET+ONITQ3';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLNDQ3'; Gstr{i,2} = 'OLNDQ3'; 
fOLNDQ3(i)=fOLNDQ3(i)-1; fOLNDQ3(i)=fOLNDQ3(i)-1; fNQ2(i)=fNQ2(i)+1; fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONITQ3(i)=fONITQ3(i)+1; 

i=i+1; %<R362>;
Rnames{i} = 'XO2+XO2=';
k(:,i) = 7.13E-17.*exp(2950./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'XO2'; 
fXO2(i)=fXO2(i)-1; fXO2(i)=fXO2(i)-1; 

i=i+1; %<R363>;
Rnames{i} = 'XO2+RCO3=ETHP +CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'RCO3'; 
fXO2(i)=fXO2(i)-1; fRCO3(i)=fRCO3(i)-1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; 


%%Oxygen Isotope Exchange Reactions%%
%%%<Reaction Rates from Lyons, "Transfer of mass-independent fractionation in ozone to other oxygen-containing radicals in the atmosphere", GRL, 28(17), 3231-3234, 2001.
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

%%HET
%%These reactions are used to simulate heterogeneous reactions
i=i+1; %<HET_01>
Rnames{i} = 'NO2=0.5HNO3+0.5HONO';
k(:,i) = 2.67E-6;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+0.5; fHONO(i)=fHONO(i)+0.5;

i=i+1; %<HET_01a>
Rnames{i} = 'NOQ=0.5HNO2Q+0.5HONQ';
k(:,i) = 2.67E-6;
Gstr{i,1} = 'NOQ'; 
fNOQ(i)=fNOQ(i)-1; fHNO2Q(i)=fHNO2Q(i)+0.5; fHONQ(i)=fHONQ(i)+0.5;

i=i+1; %<HET_01b>
Rnames{i} = 'NQ2=0.5HNOQ2+0.5HQNQ';
k(:,i) = 2.67E-6;
Gstr{i,1} = 'NQ2'; 
fNQ2(i)=fNQ2(i)-1; fHNOQ2(i)=fHNOQ2(i)+0.5; fHQNQ(i)=fHQNQ(i)+0.5;


i=i+1; %<HET_02>
Rnames{i} = 'N2O5=HNO3+HNO3';
k(:,i) = 4E-4;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1;  fHNO3(i)=fHNO3(i)+1; 

%O3 Tracer
i=i+1; %<HET_02a>
Rnames{i} = 'N2O4Q  = (2/5)*HNO2Q + (2/5)*HNO3 + (3/5)*HNO3 + (3/5)*HNO2Q ';
k(:,i) = 4E-4;
Gstr{i,1} = 'N2O4Q'; 
fN2O4Q(i)=fN2O4Q(i)-1; fHNO2Q(i)=fHNO2Q(i)+(2/5); fHNO3(i)=fHNO3(i)+(2/5); fHNO3(i)=fHNO3(i)+(3/5); fHNO2Q(i)=fHNO2Q(i)+(3/5); 

%O3 Tracer
i=i+1; %<HET_02b>
Rnames{i} = 'N2O3Q2  =  0.3*HNO3 + 0.6*HNO2Q + 0.1*HNOQ2 + 0.1HNO3 + 0.6*HNO2Q + 0.3*HNOQ2';
k(:,i) = 4E-4;
Gstr{i,1} = 'N2O3Q2'; 
fN2O3Q2(i)=fN2O3Q2(i)-1; fHNO3(i)=fHNO3(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.6; 
fHNOQ2(i)=fHNOQ2(i)+0.1; fHNO3(i)=fHNO3(i)+0.1; fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3;


%O3 Tracer
i=i+1; %<HET_02c>
Rnames{i} = 'N2O2Q3  = 0.1*HNO3 + 0.6*HNO2Q + 0.3*HNOQ2 + 0.3*HNO2Q + 0.6*HNOQ2 + 0.1*HNQ3';
k(:,i) = 4E-4;
Gstr{i,1} = 'N2O2Q3'; 
fN2O2Q3(i)=fN2O2Q3(i)-1; fHNO3(i)=fHNO3(i)+0.1;  fHNO2Q(i)=fHNO2Q(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.3; fHNO2Q(i)=fHNO2Q(i)+0.3; 
fHNOQ2(i)=fHNOQ2(i)+0.6;  fHNQ3(i)=fHNQ3(i)+0.1;  

%O3 Tracer
i=i+1; %<HET_02d>
Rnames{i} = 'N2OQ4  = 0.4*HNO2Q + 0.6*HNOQ2 + 0.6*HNOQ2 + 0.4*HNQ3';
k(:,i) = 4E-4;
Gstr{i,1} = 'N2OQ4'; 
fN2OQ4(i)=fN2OQ4(i)-1; fHNO2Q(i)=fHNO2Q(i)+0.4; fHNOQ2(i)=fHNOQ2(i)+0.6; fHNOQ2(i)=fHNOQ2(i)+0.6;
fHNQ3(i)=fHNQ3(i)+0.4; 

%O3 Tracer
i=i+1; %<HET_02e>
Rnames{i} = 'N2Q5 = HNQ3 + HNOQ2';
k(:,i) = 4E-4;
Gstr{i,1} = 'N2Q5'; 
fN2Q5(i)=fN2Q5(i)-1; fHNQ3(i)=fHNQ3(i)+1; fHNOQ2(i)=fHNOQ2(i)+1;


%% THAT'S ALL FOLKS!


