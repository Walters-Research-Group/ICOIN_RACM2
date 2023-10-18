% RACM2_API_Expansion_Base_Final.m
% # of species = 50
% # of reactions = 204
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

SpeciesToAdd = {...
'API'; 'NO'; 'NO2'; 'O3'; 'HONO'; 'PAN'; 'PPN'; 'HNO3'; 'MONITS'; 'MONITSh'; ...
'MONITU'; 'MONITUh'; 'HONIT'; 'HONITh'; ...
'ACD'; 'ACO3'; 'ACT'; 'ACTP'; 'ALD'; 'APIP'; 'CO'; 'CO2'; 'DCB1'; 'EOH'; 'ETHP'; ...
'GLY'; 'H2'; 'H2O2'; 'HC3P'; 'HCHO'; 'HKET';  'HO2'; 'HO2NO2';  'KET'; 'KETP'; 'MEK'; ...
'MEKP'; 'MGLY'; 'MO2'; 'MOH'; 'N2O5';  'NO3'; 'O1D';  'O3P'; 'OH'; 'OLND'; ...
'OLNN'; 'ONIT'; 'OP1'; 'OP2'; 'ORA1'; 'ORA2'; 'ORAP'; 'PAA';  'RCO3'; 'ROH'; 'XO2'; ...
'wNO'; 'wO3'; 'wHNO3'; ...
'A'; ...
};

AddSpecies

%% Flow tube
i=i+1; %<BAPI_FT>
Rnames{i} = 'A=N2O5';
k(:,i) = 0.000145;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fN2O5(i)=fN2O5(i)+1;


%% Photolysis
i=i+1; %<RACM2_001>; <BAPI_001>
Rnames{i} = 'O3=O3P+O2';
k(:,i) = JO3P;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %<RACM_002>; <BAPI_002>
Rnames{i} = 'O3=O1D+O2';
k(:,i) = JO1D;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1;

i=i+1; %<RACM2_003>; <BAPI_003>
Rnames{i} = 'H2O2=OH+OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+2; 

i=i+1; %<RACM2_004>; <BAPI_004>
Rnames{i} = 'NO2=O3P+NO';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fO3P(i)=fO3P(i)+1; fNO(i)=fNO(i)+1; 

i=i+1; %<RACM2_005>; <BAPI_005>
Rnames{i} = 'NO3=O2+NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1;fNO(i)=fNO(i)+1; 

i=i+1; %<RACM2_006>; <BAPI_006>
Rnames{i} = 'NO3=O3P+NO2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_007>; <BAPI_007>
Rnames{i} = 'HONO=OH+NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1; %<RACM2_008>; <BAPI_008>
Rnames{i} = 'HNO3=OH+NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_009>; <BAPI_009>
Rnames{i} = 'HO2NO2 = 0.2OH+0.2NO3+0.8HO2+0.8NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fOH(i)=fOH(i)+0.2; fNO3(i)=fNO3(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNO2(i)=fNO2(i)+0.8; 

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

%mmarvin 20151020
i=i+1; %<RACM2_032>; <BAPI_027>
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1;

%mmarvin 20151020
i=i+1; %<RACM2_033>; <BAPI_028>
Rnames{i} = 'PAN=MO2+NO3+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMO2(i)=fMO2(i)+1; fNO3(i)=fNO3(i)+1; fCO2(i)=fCO2(i)+1;


%% Inorganic Reactions
i=i+1; %<RACM2_034>; <BAPI_029>
Rnames{i} = 'O3+OH=HO2+O2';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;


i=i+1; %<RACM2_035>; <BAPI_030>
Rnames{i} = 'O3+HO2=OH+O2+O2';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

i=i+1; %<RACM2_036>; <BAPI_031>
Rnames{i} = 'O3+NO=NO2 +O2';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %<RACM2_037>; <BAPI_032>
Rnames{i} = 'NO2+O3=NO3 +O2';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %<RACM2_038>; <BAPI_033>
Rnames{i} = 'O3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %<RACM2_039>; <BAPI_034>
Rnames{i} = 'O3P+O3=O2+O2';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1;

i=i+1; %<RACM2_040>; <BAPI_035>
Rnames{i} = 'O1D+O2=O3P+O2';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %<RACM2_041>; <BAPI_036>
Rnames{i} = 'O1D+N2=O3P+N2';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %<RACM2_042>; <BAPI_037>
Rnames{i} = 'O1D+H2O=OH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+2; 

i=i+1; %<RACM2_043>; <BAPI_038>
Rnames{i} = 'OH+H2=HO2+H2O';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<RACM2_044>; <BAPI_039>
Rnames{i} = 'OH+HO2=H2O+O2';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;



i=i+1; %<RACM2_045>; <BAPI_040>
Rnames{i} = 'HO2+HO2=H2O2+O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

i=i+1; %<RACM2_046>; <BAPI_041>
Rnames{i} = 'HO2+HO2+H2O=H2O2+H2O+O2'; %mmarvin 20151020
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;


i=i+1; %<RACM2_047>; <BAPI_042>
Rnames{i} = 'H2O2+OH=HO2+H2O';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;


i=i+1; %<RACM2_048>; <BAPI_043>
Rnames{i} = 'NO+O3P=NO2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3P'; 
fNO(i)=fNO(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_049>; <BAPI_044>
Rnames{i} = 'NO+OH=HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1;




i=i+1; %<RACM2_050>; <BAPI_045>
Rnames{i} = 'HO2+NO=OH+NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_051>; <BAPI_046>
Rnames{i} = 'HO2+NO=HNO3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<RACM2_052>; <BAPI_047>
Rnames{i} = 'NO+NO=NO2+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-2; fNO2(i)=fNO2(i)+2; 

i=i+1; %<RACM2_053>; <BAPI_048>
Rnames{i} = 'HONO+OH=NO2+H2O';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1;


i=i+1; %<RACM2_054>; <BAPI_049>
Rnames{i} = 'O3P+NO2=NO+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

i=i+1; %<RACM2_055>; <BAPI_050>
Rnames{i} = 'O3P+NO2=NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<RACM2_056>; <BAPI_051>
Rnames{i} = 'OH+NO2=HNO3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<RACM2_057>; <BAPI_052>
Rnames{i} = 'OH+HNO3=NO3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %<RACM2_058>; <BAPI_053>
Rnames{i} = 'OH+NO3=HO2+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;



i=i+1; %<RACM2_059>; <BAPI_054>
Rnames{i} = 'HO2+NO3=0.7OH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

i=i+1; %<RACM2_060>; <BAPI_055>
Rnames{i} = 'NO+NO3=NO2+NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
% fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=2; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; %SR 20160406


i=i+1; %<RACM2_061>; <BAPI_056>
Rnames{i} = 'NO2+NO3=NO+NO2+O2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %<RACM2_062>; <BAPI_057>
Rnames{i} = 'NO3+NO3=NO2+NO2+O2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
% fNO3(i)=fNO3(i)-2; fNO2(i)=2;
fNO3(i)=fNO3(i)-2; fNO2(i)=fNO2(i)+2; %SR 20160406

i=i+1; %<RACM2_063>; <BAPI_058>
Rnames{i} = 'NO2+NO3=N2O5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1; %<RACM2_064>; <BAPI_059>
Rnames{i} = 'N2O5= NO2+NO3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<RACM2_065>; <BAPI_060>
Rnames{i} = 'N2O5+H2O=HNO3+HNO3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O5'; 
% fN2O5(i)=fN2O5(i)-1; fHNO3(i)=2; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; %SR 20160406

i=i+1; %<RACM2_066>; <BAPI_061>
Rnames{i} = 'HO2+NO2=HO2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1; %<RACM2_067>; <BAPI_062>
Rnames{i} = 'HO2NO2=HO2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_068>; <BAPI_063>
Rnames{i} = 'OH+HO2NO2=NO2+H2O+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %<RACM2_070>; <BAPI_064>
Rnames{i} = 'OH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1;











%% THAT'S ALL FOLKS!




