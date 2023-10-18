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

SpeciesToAdd = {...
'ACD'; 'ACO3'; 'ACT'; 'ACTP'; 'ALD'; 'API'; 'APIP'; 'CO'; 'CO2'; 'DCB1'; 'EOH'; 'ETHP'; ...
'GLY'; 'H2'; 'H2O2'; 'HC3P'; 'HCHO'; 'HKET'; 'HNO3'; 'HO2'; 'HO2NO2'; 'HONO'; 'KET'; 'KETP'; 'MEK'; ...
'MEKP'; 'MGLY'; 'MO2'; 'MOH'; 'N2O5'; 'NO'; 'NO2'; 'NO3'; 'O1D'; 'O3'; 'O3P'; 'OH'; 'OLND'; ...
'OLNN'; 'ONIT'; 'OP1'; 'OP2'; 'ORA1'; 'ORA2'; 'ORAP'; 'PAA'; 'PAN'; 'PPN'; 'RCO3'; 'ROH'; 'XO2'; ...
'MONITSC'; 'MONITUC'; 'MONITSN'; 'MONITUN'; 'HONITC'; 'UALD'; 'UALP'; 'MONITSCTert'; 'MONITSCNonTert'; 'MONITUCTert'; ...
'MONITSNTert'; 'MONITSNNonTert'; 'MONITSNTert'; 'MONITSNNonTert'; 'MONITUNTert'; 'HONITCTert'; 'HONITCNonTert' ...
};

AddSpecies
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

i=i+1; %<RACM2_015>;
Rnames{i} = 'UALD=1.22HO2+.784ACO3+1.22CO+0.35HCHO+.434ALD+.216KET';
k(:,i) = JUALD;
Gstr{i,1} = 'UALD'; 
fUALD(i)=fUALD(i)-1; fHO2(i)=fHO2(i)+1.22; fACO3(i)=fACO3(i)+0.784; fCO(i)=fCO(i)+1.22; 
fHCHO(i)=fHCHO(i)+0.35; fALD(i)=fALD(i)+0.434; fKET(i)=fKET(i)+0.216;

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

i=i+1; %<RACM2_018>;
Rnames{i} = 'HKET=HO2+ACO3+HCHO ';
k(:,i) = JHKET;
Gstr{i,1} = 'HKET'; 
fHKET(i)=fHKET(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fHCHO(i)=1; 

i=i+1; %<RACM2_021>; <BAPI_017>
Rnames{i} = 'GLY=H2+CO+CO';
k(:,i) = JGLY1;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %<RACM2_022>; <BAPI_018>
Rnames{i} = 'GLY=HCHO+CO+CO'; %mmarvin 20151020
k(:,i) = JGLY2;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %<RACM2_023>; <BAPI_019>
Rnames{i} = 'GLY=HO2+HO2+CO+CO';
k(:,i) = JGLY3;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+2; 

i=i+1; %<RACM2_024>; <BAPI_020>
Rnames{i} = 'MGLY=HO2+ACO3+CO';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_025>; <BAPI_021>
Rnames{i} = 'DCB1=2XO2+1.5HO2+0.5GLY+0.5MGLY+CO+0.5ACO3';
k(:,i) = JDCB1;
Gstr{i,1} = 'DCB1'; 
fDCB1(i)=fDCB1(i)-1; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+1.5; fGLY(i)=fGLY(i)+0.5; 
fMGLY(i)=fMGLY(i)+0.5; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+0.5;

i=i+1; %<RACM2_028>; <BAPI_022>
Rnames{i} = 'OP1=OH+HO2+HCHO';
k(:,i) = JOP1;
Gstr{i,1} = 'OP1'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_029>; <BAPI_023>
Rnames{i} = 'OP2=OH+HO2+ALD';
k(:,i) = JOP2;
Gstr{i,1} = 'OP2'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; 

%mmarvin 20151020
i=i+1; %<RACM2_030>; <BAPI_024>
Rnames{i} = 'PAA=OH+MO2';
k(:,i) = JPAA;
Gstr{i,1} = 'PAA'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1;  

i=i+1; %<RACM2_031>; <BAPI_025>
Rnames{i} = 'ONIT=HO2+0.2ALD+NO2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONIT'; 
fONIT(i)=fONIT(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+0.8; 

%mmarvin 20151020
i=i+1; %<RACM2_032>; <BAPI_026>
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1;

%mmarvin 20151020
i=i+1; %<RACM2_033>; <BAPI_027>
Rnames{i} = 'PAN=MO2+NO3+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMO2(i)=fMO2(i)+1; fNO3(i)=fNO3(i)+1; fCO2(i)=fCO2(i)+1;


%% Inorganic Reactions
i=i+1; %<RACM2_034>; <BAPI_028>
Rnames{i} = 'O3+OH=HO2+O2';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1; %<RACM2_035>; <BAPI_029>
Rnames{i} = 'O3+HO2=OH+O2+O2';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

i=i+1; %<RACM2_036>; <BAPI_030>
Rnames{i} = 'O3+NO=NO2 +O2';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %<RACM2_037>; <BAPI_031>
Rnames{i} = 'NO2+O3=NO3 +O2';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %<RACM2_038>; <BAPI_032>
Rnames{i} = 'O3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %<RACM2_039>; <BAPI_033>
Rnames{i} = 'O3P+O3=O2+O2';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1;

i=i+1; %<RACM2_040>; <BAPI_034>
Rnames{i} = 'O1D+O2=O3P+O2';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %<RACM2_041>; <BAPI_035>
Rnames{i} = 'O1D+N2=O3P+N2';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %<RACM2_042>; <BAPI_036>
Rnames{i} = 'O1D+H2O=OH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+2; 

i=i+1; %<RACM2_043>; <BAPI_037>
Rnames{i} = 'OH+H2=HO2+H2O';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<RACM2_044>; <BAPI_038>
Rnames{i} = 'OH+HO2=H2O+O2';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;

i=i+1; %<RACM2_045>; <BAPI_039>
Rnames{i} = 'HO2+HO2=H2O2+O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

i=i+1; %<RACM2_046>; <BAPI_040>
Rnames{i} = 'HO2+HO2+H2O=H2O2+H2O+O2'; %mmarvin 20151020
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

i=i+1; %<RACM2_047>; <BAPI_041>
Rnames{i} = 'H2O2+OH=HO2+H2O';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1; %<RACM2_048>; <BAPI_042>
Rnames{i} = 'NO+O3P=NO2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3P'; 
fNO(i)=fNO(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_049>; <BAPI_043>
Rnames{i} = 'NO+OH=HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1; %<RACM2_050>; <BAPI_044>
Rnames{i} = 'HO2+NO=OH+NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_051>; <BAPI_045>
Rnames{i} = 'HO2+NO=HNO3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<RACM2_052>; <BAPI_046>
Rnames{i} = 'NO+NO=NO2+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-2; fNO2(i)=fNO2(i)+2; 

i=i+1; %<RACM2_053>; <BAPI_047>
Rnames{i} = 'HONO+OH=NO2+H2O';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_054>; <BAPI_048>
Rnames{i} = 'O3P+NO2=NO+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

i=i+1; %<RACM2_055>; <BAPI_049>
Rnames{i} = 'O3P+NO2=NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<RACM2_056>; <BAPI_050>
Rnames{i} = 'OH+NO2=HNO3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<RACM2_057>; <BAPI_051>
Rnames{i} = 'OH+HNO3=NO3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %<RACM2_058>; <BAPI_052>
Rnames{i} = 'OH+NO3=HO2+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_059>; <BAPI_053>
Rnames{i} = 'HO2+NO3=0.7OH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

i=i+1; %<RACM2_060>; <BAPI_054>
Rnames{i} = 'NO+NO3=NO2+NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
% fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=2; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; %SR 20160406

i=i+1; %<RACM2_061>; <BAPI_055>
Rnames{i} = 'NO2+NO3=NO+NO2+O2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %<RACM2_062>; <BAPI_056>
Rnames{i} = 'NO3+NO3=NO2+NO2+O2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
% fNO3(i)=fNO3(i)-2; fNO2(i)=2;
fNO3(i)=fNO3(i)-2; fNO2(i)=fNO2(i)+2; %SR 20160406

i=i+1; %<RACM2_063>; <BAPI_057>
Rnames{i} = 'NO2+NO3=N2O5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1; %<RACM2_064>; <BAPI_058>
Rnames{i} = 'N2O5= NO2+NO3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<RACM2_065>; <BAPI_059>
Rnames{i} = 'N2O5+H2O=HNO3+HNO3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O5'; 
% fN2O5(i)=fN2O5(i)-1; fHNO3(i)=2; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; %SR 20160406

i=i+1; %<RACM2_066>; <BAPI_060>
Rnames{i} = 'HO2+NO2=HO2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1; %<RACM2_067>; <BAPI_061>
Rnames{i} = 'HO2NO2=HO2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_068>; <BAPI_062>
Rnames{i} = 'OH+HO2NO2=NO2+H2O+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %<RACM2_070>; <BAPI_063>
Rnames{i} = 'OH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 


%%Biogenic Hydrocarbons + HO
i=i+1; %<RACM2_087>; <BAPI_064>
Rnames{i} = 'API+OH=APIP';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'OH'; 
fAPI(i)=fAPI(i)-1; fOH(i)=fOH(i)-1; fAPIP(i)=fAPIP(i)+1; 


%% Aldehydes+OH
i=i+1; %<RACM2_089; <BAPI_065>
Rnames{i} = 'OH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_090; <BAPI_066>
Rnames{i} = 'OH+ACD=ACO3+H2O';
k(:,i) = 4.38E-12.*exp(366./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACD'; 
fOH(i)=fOH(i)-1; fACD(i)=fACD(i)-1; fACO3(i)=fACO3(i)+1;

i=i+1; %<RACM2_091; <BAPI_067>
Rnames{i} = 'OH+ALD=RCO3+H2O';
k(:,i) = 5.10E-12.*exp(405./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALD'; 
fOH(i)=fOH(i)-1; fALD(i)=fALD(i)-1; fRCO3(i)=fRCO3(i)+1;


%%Ketones + HO
i=i+1; %<RACM2_092; <BAPI_068>
Rnames{i} = 'ACT+OH=ACTP+H2O';
k(:,i) = 1.39E-13+3.72E-11.*exp(-2044./T);
Gstr{i,1} = 'ACT'; Gstr{i,2} = 'OH'; 
fACT(i)=fACT(i)-1; fOH(i)=fOH(i)-1; fACTP(i)=fACTP(i)+1; 

i=i+1; %<RACM2_093; <BAPI_069>
Rnames{i} = 'OH+MEK=MEKP+H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MEK'; 
fOH(i)=fOH(i)-1; fMEK(i)=fMEK(i)-1; fMEKP(i)=fMEKP(i)+1; 

i=i+1; %<RACM2_094; <BAPI_070>
Rnames{i} = 'OH+KET=KETP+H2O';
k(:,i) = 2.80E-12.*exp(10./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'KET'; 
fOH(i)=fOH(i)-1; fKET(i)=fKET(i)-1; fKETP(i)=fKETP(i)+1; 

i=i+1; %<RACM2_094>
Rnames{i} = 'HKET+OH=HO2+MGLY+H2O';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'HKET'; Gstr{i,2} = 'OH'; 
fHKET(i)=fHKET(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 


%%Dicarbonyls + HO
i=i+1; %<RACM2_099; <BAPI_071>
Rnames{i} = 'GLY+OH=HO2+CO+CO+H2O';
k(:,i) = 1.10E-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'OH'; 
fGLY(i)=fGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_100; <BAPI_072>
Rnames{i} = 'MGLY+OH=ACO3+CO+H2O';
k(:,i) = 9.26E-13.*exp(830./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH'; 
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_101>; <BAPI_073>
Rnames{i} = 'DCB1+OH = HO2+CO+ALD+KET+GLY+MGLY';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'OH'; 
fDCB1(i)=fDCB1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fALD(i)=fALD(i)+0.40; fKET(i)=fKET(i)+0.78; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; 


%%Alcohols and Glycols + HO
i=i+1; %<RACM2_109>; <BAPI_074>
Rnames{i} = 'OH+MOH=HO2+HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MOH'; 
fOH(i)=fOH(i)-1; fMOH(i)=fMOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_110>; <BAPI_075>
Rnames{i} = 'OH+EOH=HO2+ACD';
% k(:,i) = 3.00e-12.*exp(20./T);
k(:,i) = 3.00e-12.*exp(-20./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'EOH'; 
fOH(i)=fOH(i)-1; fEOH(i)=fEOH(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; 

i=i+1; %<RACM2_111>; <BAPI_076>
Rnames{i} = 'OH+ROH=HO2+0.719 ALD+0.184 ACD';
% k(:,i) = 2.60E-12.*exp(200./T).*0.719;
k(:,i) = 2.60E-12.*exp(-200./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ROH'; 
fOH(i)=fOH(i)-1; fROH(i)=fROH(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.719; 
fACD(i)=fACD(i)+0.184;


%%Organic Peroxides + HO
i=i+1; %<RACM2_113>; <BAPI_077>
Rnames{i} = 'OP1+OH=0.35 OH+0.65 MO2+0.35 HCHO ';
k(:,i) = 2.90E-12.*exp(190./T);
Gstr{i,1} = 'OP1'; Gstr{i,2} = 'OH'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fMO2(i)=fMO2(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35;

i=i+1; %<RACM2_114>; <BAPI_078>
Rnames{i} = 'OP2+OH=0.49 HO+0.44 HC3P+0.07 XO2+0.08 ALD+0.41 KET';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'OP2'; Gstr{i,2} = 'OH'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.49; fHC3P(i)=fHC3P(i)+0.44; 
fXO2(i)=fXO2(i)+0.07; fALD(i)=fALD(i)+0.08; fKET(i)=fKET(i)+0.41;


%%Organic Acids + HO
i=i+1; %<RACM2_117>; <BAPI_079>
Rnames{i} = 'ORA1+OH=HO2+CO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'ORA1'; Gstr{i,2} = 'OH'; 
fORA1(i)=fORA1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<RACM2_118>; <BAPI_080>
Rnames{i} = 'ORA2+OH=0.64 MO2+0.36 ORAP+0.64 CO2';
k(:,i) = 2.20E-14.*exp(1012./T);
Gstr{i,1} = 'ORA2'; Gstr{i,2} = 'OH'; 
fORA2(i)=fORA2(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+0.64; fORAP(i)=fORAP(i)+0.36;
fCO2(i)=fCO2(i)+0.64; 

i=i+1; %<RACM2_119>; <BAPI_081>
Rnames{i} = 'PAA+OH=0.35 HO+0.65 ACO3+0.35 XO2+0.35 HCHO';
k(:,i) = 2.93E-12.*exp(190./T);
Gstr{i,1} = 'PAA'; Gstr{i,2} = 'OH'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fACO3(i)=fACO3(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35; fXO2(i)=fXO2(i)+0.35; 


%%Organic Nitrogen Containing Compounds + HO
i=i+1; %<RACM2_120>; <BAPI_082>
Rnames{i} = 'PAN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_121>; <BAPI_083>
Rnames{i} = 'PPN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'OH'; 
fPPN(i)=fPPN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_123>; <BAPI_084>
Rnames{i} = 'ONIT+OH=HC3P+NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONIT'; Gstr{i,2} = 'OH'; 
fONIT(i)=fONIT(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNO2(i)=fNO2(i)+1; 


%% Alkenes+O3
i=i+1; %<RACM2_131; <BAPI_085>; wwalters Rate Update
Rnames{i} = 'API+O3= OH+HO2+ETHP+KETP+CO+H2O2+ALD+KET';
k(:,i) = 8.05E-16.*exp(-640./T) ;
Gstr{i,1} = 'API'; Gstr{i,2} = 'O3'; 
fAPI(i)=fAPI(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.85; fHO2(i)=fHO2(i)+0.10; 
fETHP(i)=fETHP(i)+0.20; fKETP(i)=fKETP(i)+0.42; fCO(i)=fCO(i)+0.14; fH2O2(i)=fH2O2(i)+0.02; 
fALD(i)=fALD(i)+0.65; fKET(i)=fKET(i)+0.53; 

i=i+1; %<RACM2_135>
Rnames{i} = 'UALD+O3= OH+HO2+MO2+ACO3+XO2+CO+HCHO+ACD+KET+GLY+MGLY+ORA1';
k(:,i) = 1.66E-18;
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'O3'; 
fUALD(i)=fUALD(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.1; fHO2(i)=fHO2(i)+0.072; 
fMO2(i)=fMO2(i)+0.008; fACO3(i)=fACO3(i)+0.002; fXO2(i)=fXO2(i)+0.10; fCO(i)=fCO(i)+0.243; 
fHCHO(i)=fHCHO(i)+0.080; fACD(i)=fACD(i)+0.420; fKET(i)=fKET(i)+0.028; fGLY(i)=fGLY(i)+0.491; 
fMGLY(i)=fMGLY(i)+0.003; fORA1(i)=fORA1(i)+0.044; 

i=i+1; %<RACM2_136>; <BAPI_086>
Rnames{i} = 'DCB1+O3= OH+HO2+RCO3+XO2+CO+HCHO+GLY+MGLY+OP2+CO2';
k(:,i) = 2.00E-16;
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'O3'; 
fDCB1(i)=fDCB1(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.05; fHO2(i)=fHO2(i)+1.0; 
fRCO3(i)=fRCO3(i)+0.60; fXO2(i)=fXO2(i)+0.60; fCO(i)=fCO(i)+1.50; fHCHO(i)=fHCHO(i)+0.05; 
fGLY(i)=fGLY(i)+0.05; fMGLY(i)=fMGLY(i)+0.08; fOP2(i)=fOP2(i)+0.65; fCO2(i)=fCO2(i)+0.50; 


%% Stable Organics+NO3
i=i+1; %<RACM2_146>; <BAPI_087>
Rnames{i} = 'API+NO3=0.10 OLNN+0.90 OLND';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO3'; 
fAPI(i)=fAPI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.1;  fOLND(i)=fOLND(i)+0.9; 

i=i+1; %<RACM2_148>; <BAPI_088>
Rnames{i} = 'HCHO+NO3=HO2+HNO3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_149>; <BAPI_089>
Rnames{i} = 'ACD+NO3=ACO3+HNO3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NO3'; 
fACD(i)=fACD(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<RACM2_150>; <BAPI_090>
Rnames{i} = 'ALD+NO3=RCO3+HNO3';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NO3'; 
fALD(i)=fALD(i)-1; fNO3(i)=fNO3(i)-1; fRCO3(i)=fRCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<RACM2_152>;
Rnames{i} = 'UALD+NO3= HO2+XO2+0.668 CO+0.332 HCHO+0.332 ALD+ONIT ';
k(:,i) = 5.02E-13.*exp(-1076./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'NO3'; 
fUALD(i)=fUALD(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 
fCO(i)=fCO(i)+0.668; fHCHO(i)=fHCHO(i)+0.332; fALD(i)=fALD(i)+0.332; 
fONIT(i)=fONIT(i)+1;

i=i+1; %<RACM2_153>; <BAPI_091>
Rnames{i} = 'GLY+NO3=HNO3+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3'; 
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<RACM2_154>; <BAPI_092>
Rnames{i} = 'MGLY+NO3=HNO3+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3'; 
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 


%% Peroxyacetynitrate Formation and Decomposition
i=i+1; %<RACM2_166>; <BAPI_093>
Rnames{i} = 'ACO3+NO2=PAN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2'; 
fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1; %<RACM2_167>; <BAPI_094>
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_168>; <BAPI_095>
Rnames{i} = 'RCO3+NO2=PPN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2'; 
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1; %<RACM2_169>; <BAPI_096>
Rnames{i} = 'PPN=RCO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 


%% Organic Peroxy Radicals + NO
i=i+1; %<RACM2_172>; <BAPI_097>
Rnames{i} = 'MO2+NO=HCHO+HO2+NO2';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO'; 
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_173>; <BAPI_098>
Rnames{i} = 'ETHP+NO=HO2+ACD+NO2';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO'; 
fETHP(i)=fETHP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_174>; <BAPI_099>; wwalters ONIT Expansion
Rnames{i} = 'HC3P+NO=HO2+MO2+ETHP+XO2+NO2+ACD+ALD+ACT+MEK+ONIT+MONITSCTert+MONITSCNonTert';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO'; 
fHC3P(i)=fHC3P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.66; fMO2(i)=fMO2(i)+0.131; 
fETHP(i)=fETHP(i)+0.048; fXO2(i)=fXO2(i)+0.089; fNO2(i)=fNO2(i)+0.935; fACD(i)=fACD(i)+0.504; 
fALD(i)=fALD(i)+0.132; fACT(i)=fACT(i)+0.165; fMEK(i)=fMEK(i)+0.042; fONIT(i)=fONIT(i)+0.063; %mmarvin 20151020
fMONITSCTert(i)=fMONITSCTert(i)+0.01; fMONITSCNonTert(i)=fMONITSCNonTert(i)+0.01;


i=i+1; %<RACM2_189>; <BAPI_100>; wwalters MONIT Expansion
Rnames{i} = 'APIP+NO= HO2+NO2+HCHO+ALD+ACT+KET+ORA1+MONITSCTert+MONITSCNonTert+MONITUCTert';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO'; 
fAPIP(i)=fAPIP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.82; fNO2(i)=fNO2(i)+0.82; 
fHCHO(i)=fHCHO(i)+0.23; fALD(i)=fALD(i)+0.43; fACT(i)=fACT(i)+0.11; fKET(i)=fKET(i)+0.44; 
fORA1(i)=fORA1(i)+0.07; fMONITSCTert(i)=fMONITSCTert(i)+0.06;  fMONITSCNonTert(i)=fMONITSCNonTert(i)+0.06; fMONITUCTert(i)=fMONITUCTert(i)+0.06;

i=i+1; %<RACM2_191>; <BAPI_101>
Rnames{i} = 'ACO3+NO=MO2+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO'; 
fACO3(i)=fACO3(i)-1; fNO(i)=fNO(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_192>; <BAPI_102>
Rnames{i} = 'RCO3+NO=ETHP+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO'; 
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_193>; <BAPI_103>
Rnames{i} = 'ACTP+NO=ACO3+NO2+HCHO';
k(:,i) = 2.90E-12.*exp(300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO'; 
fACTP(i)=fACTP(i)-1; fNO(i)=fNO(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_194>; <BAPI_104>
Rnames{i} = 'MEKP+NO=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO'; 
fMEKP(i)=fMEKP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %<RACM2_195>; <BAPI_105>; wwalters ONIT Expansion
Rnames{i} = 'KETP+NO= HO2+ACO3+XO2+NO2+MGLY+ALD+MONITUCTert';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO'; 
fKETP(i)=fKETP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.77; fACO3(i)=fACO3(i)+0.23; 
fXO2(i)=fXO2(i)+0.16; fNO2(i)=fNO2(i)+0.983; fMGLY(i)=fMGLY(i)+0.54; fALD(i)=fALD(i)+0.46;
fMONITUCTert(i)=fMONITUCTert(i)+0.017; 

i=i+1; %<RACM2_199>;
Rnames{i} = 'UALP+NO= HO2+CO+NO2+HCHO+ALD+KET+GLY+MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO'; 
fUALP(i)=fUALP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.61; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21; 

i=i+1;  %<RACM2_204>; <BAPI_106>
Rnames{i} = 'ORAP+NO=HO2+NO2+GLY';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO'; 
fORAP(i)=fORAP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1;  %<RACM2_205>; <BAPI_107>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+NO=MONITSNTert+MONITSNNonTert+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO'; 
fOLNN(i)=fOLNN(i)-1; fNO(i)=fNO(i)-1; fMONITSNTert(i)=fMONITSNTert(i)+0.5; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.5; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;  %<RACM2_206>; <BAPI_108>
Rnames{i} = 'OLND+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO'; 
fOLND(i)=fOLND(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

i=i+1;  %<RACM2_208>; <BAPI_109>
Rnames{i} = 'XO2+NO=NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO'; 
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 


%% Organic Peroxy Radicals + HO2
i=i+1; %<RACM2_212>; <BAPI_110>
Rnames{i} = 'MO2+HO2=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2'; 
fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)-1; fOP1(i)=fOP1(i)+1; 

i=i+1;  %<RACM2_213>; <BAPI_111>
Rnames{i} = 'ETHP+HO2=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HO2'; 
fETHP(i)=fETHP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %<RACM2_214>; <BAPI_112>
Rnames{i} = 'HC3P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HO2'; 
fHC3P(i)=fHC3P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_229>; <BAPI_113>; wwalters Rate Update IUPAC
Rnames{i} = 'APIP+HO2=OP2';
k(:,i) = 2.650E-13*exp(1300./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HO2'; 
fAPIP(i)=fAPIP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_231>; <BAPI_114>
Rnames{i} = 'ACO3+HO2=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %<RACM2_232>; <BAPI_115>
Rnames{i} = 'RCO3+HO2=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2'; 
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %<RACM2_233>; <BAPI_116>
Rnames{i} = 'ACTP+HO2= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HO2'; 
fACTP(i)=fACTP(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

i=i+1; %<RACM2_234>; <BAPI_117>
Rnames{i} = 'MEKP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HO2'; 
fMEKP(i)=fMEKP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_235>; <BAPI_118>
Rnames{i} = 'KETP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HO2'; 
fKETP(i)=fKETP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_239>;
Rnames{i} = 'UALP+HO2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'HO2'; 
fUALP(i)=fUALP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %<RACM2_243>; <BAPI_119>
Rnames{i} = 'ORAP+HO2=ONIT'; %mmarvin 20151020
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HO2'; 
fORAP(i)=fORAP(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

i=i+1; %<RACM2_244>; <BAPI_120>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+HO2=0.35MONITSNTert + 0.35MONITSNNonTert+0.3MONITUNTert';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HO2'; 
fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)-1; fMONITSNTert(i)=fMONITSNTert(i)+0.35; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.35;  fMONITUNTert(i)=fMONITUNTert(i)+0.3;

i=i+1; %<RACM2_245>; <BAPI_121>; wwalters ONIT Expansion
Rnames{i} = 'OLND+HO2=0.35MONITSNTert+0.35MONITSNNonTert +0.3MONITUNTert';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HO2'; 
fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)-1; fMONITSNTert(i)=fMONITSNTert(i)+0.35; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.35; fMONITUNTert(i)=fMONITUNTert(i)+0.3;

i=i+1; %<RACM2_247>; <BAPI_122>
Rnames{i} = 'XO2+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2'; 
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 


%% Organic Peroxy Radicals + Methyl Peroxyl Radical
i=i+1; %<RACM2_248>; <BAPI_123>
Rnames{i} = 'MO2+MO2=0.74 HO2+1.37 HCHO+0.63  MOH';
k(:,i) = 9.50E-14.*exp(390./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2'; 
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.74; fHCHO(i)=fHCHO(i)+1.37;
fMOH(i)=fMOH(i)+0.63;

i=i+1; %<RACM2_249>; <BAPI_124>
Rnames{i} = 'ETHP+MO2=HO2+0.75 HCHO+0.75 ACD+0.25 MOH+0.25 EOH';
k(:,i) = 1.18E-13.*exp(158./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'MO2'; 
fETHP(i)=fETHP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fACD(i)=fACD(i)+0.75; fMOH(i)=fMOH(i)+0.25; fEOH(i)=fEOH(i)+0.25;

i=i+1; %<RACM2_250>; <BAPI_125>
Rnames{i} = 'HC3P+MO2= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+MOH+ROH';
k(:,i) = 9.46E-14.*exp(431./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'MO2'; 
fHC3P(i)=fHC3P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.894; fMO2(i)=fMO2(i)+0.08; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.827; fALD(i)=fALD(i)+0.198; 
fKET(i)=fKET(i)+0.497; fGLY(i)=fGLY(i)+0.050; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1; %<RACM2_265>; <BAPI_126>
Rnames{i} = 'APIP+MO2=HO2+0.75 HCHO+0.75 ALD+0.75 KET+0.25 MOH+0.25 ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'MO2'; 
fAPIP(i)=fAPIP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fALD(i)=fALD(i)+0.75; fKET(i)=fKET(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25;

i=i+1; %<RACM2_267>; <BAPI_127>
Rnames{i} = 'ACO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1; %SR 20160406

i=i+1; %<RACM2_268>; <BAPI_128>
Rnames{i} = 'RCO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1;

i=i+1; %<RACM2_269>; <BAPI_129>
Rnames{i} = 'ACTP+MO2=0.5 HO2+0.5 ACO3+1.5 HCHO+0.25 MOH+0.25 ROH+0.125 ORA2';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'MO2'; 
fACTP(i)=fACTP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.5; fACO3(i)=fACO3(i)+0.5;
fHCHO(i)=fHCHO(i)+1.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fORA2(i)=fORA2(i)+0.125;

i=i+1; %<RACM2_270>; <BAPI_130>
Rnames{i} = 'MEKP+MO2=0.834 HO2+HCHO+0.334 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'MO2'; 
fMEKP(i)=fMEKP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.834; fHCHO(i)=fHCHO(i)+1;
fDCB1(i)=fDCB1(i)+0.334; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<RACM2_271>; <BAPI_131>
Rnames{i} = 'KETP+MO2=HO2+0.75 HCHO+0.50 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'MO2'; 
fKETP(i)=fKETP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fDCB1(i)=fDCB1(i)+0.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %<RACM2_275>;
Rnames{i} = 'UALP+MO2= HO2+CO+HCHO+ALD+KET+MGLY+GLY+MOH+ROH';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'MO2'; 
fUALP(i)=fUALP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.305; 
fHCHO(i)=fHCHO(i)+0.773; fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.525; fMGLY(i)=fMGLY(i)+0.105; 
fGLY(i)=fGLY(i)+0.135; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; %mmarvin 20151020 

i=i+1; %<RACM2_280>; <BAPI_132>
Rnames{i} = 'ORAP+MO2=HO2+HCHO+GLY';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'MO2'; 
fORAP(i)=fORAP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<RACM2_281>; <BAPI_133>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+MO2=HCHO+HO2+HO2+0.35MONITSNTert+0.35MONITSNNonTert+0.3MONITUNTert';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MO2'; 
fOLNN(i)=fOLNN(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 
fMONITSNTert(i)=fMONITSNTert(i)+0.35; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.35; fMONITUNTert(i)=fMONITUNTert(i)+0.3; 

i=i+1; %<RACM2_282>; <BAPI_134>; wwalters ONIT Expansion
Rnames{i} = 'OLND+MO2= HO2+NO2+HCHO+ALD+KET+MOH+ROH+0.175MONITSNTert+0.175MONITSNNonTert+ 0.15MONITUNTert';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+0.50; 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fMONITSNTert(i)=fMONITSNTert(i)+0.175; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.175; fMONITUNTert(i)=fMONITUNTert(i)+0.15; 

i=i+1; %<RACM2_284>; <BAPI_135>
Rnames{i} = 'XO2+MO2=HCHO+HO2';
k(:,i) = 5.99E-15.*exp(1510./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'MO2'; 
fXO2(i)=fXO2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 


%% Organic Peroxy Radicals + ACETYL PEROXY RADICAL
i=i+1; %<RACM2_285>; <BAPI_136>
Rnames{i} = 'ETHP+ACO3=0.500 HO2+0.5 MO2+ACD+0.5 ORA2';
k(:,i) = 1.03E-12.*exp(211./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'ACO3'; 
fETHP(i)=fETHP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;  
fACD(i)=fACD(i)+1; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<RACM2_286>; <BAPI_137>
Rnames{i} = 'HC3P+ACO3= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+ORA2';
k(:,i) = 6.90E-13.*exp(460./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'ACO3'; 
fHC3P(i)=fHC3P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.394; fMO2(i)=fMO2(i)+0.580; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.130; fALD(i)=fALD(i)+0.273; 
fKET(i)=fKET(i)+0.662; fGLY(i)=fGLY(i)+0.067; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %<RACM2_301>; <BAPI_138>
Rnames{i} = 'APIP+ACO3=0.5 HO2+0.5 MO2+ALD+KET+ORA2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'ACO3'; 
fAPIP(i)=fAPIP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fALD(i)=fALD(i)+1; fKET(i)=fKET(i)+1; fORA2(i)=fORA2(i)+1; 

i=i+1; %<RACM2_303>; <BAPI_139>
Rnames{i} = 'ACO3+ACO3=MO2+MO2+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'ACO3'; 
fACO3(i)=fACO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fMO2(i)=fMO2(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<RACM2_304>; <BAPI_140>
Rnames{i} = 'RCO3+ACO3=MO2+ETHP+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'ACO3'; 
fRCO3(i)=fRCO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %<RACM2_305>; <BAPI_141>
Rnames{i} = 'ACTP+ACO3=0.50 MO2+0.50 ACO3+HCHO+0.75 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'ACO3'; 
fACTP(i)=fACTP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.5; fACO3(i)=fACO3(i)+0.5; 
fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.75;

i=i+1; %<RACM2_306>; <BAPI_142>
Rnames{i} = 'MEKP+ACO3=0.33 HO2+0.50 MO2+0.33 HCHO+0.334 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'ACO3'; 
fMEKP(i)=fMEKP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.33; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.334; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<RACM2_307>; <BAPI_143>
Rnames{i} = 'KETP+ACO3=0.50 HO2+0.50 MO2+0.50 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'ACO3'; 
fKETP(i)=fKETP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fDCB1(i)=fDCB1(i)+0.5; fORA2(i)=fORA2(i)+0.5;

i=i+1; %<RACM2_311>;
Rnames{i} = 'UALP+ACO3= HO2+MO2+CO+HCHO+ALD+KET+GLY+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'ACO3'; 
fUALP(i)=fUALP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; 
fCO(i)=fCO(i)+0.50; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; 
fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.105; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %<RACM2_316>; <BAPI_144>
Rnames{i} = 'ORAP+ACO3=MO2+GLY';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'ACO3'; 
fORAP(i)=fORAP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<RACM2_317>; <BAPI_145>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+ACO3=0.35MONITSNTert+0.35MONITSNNonTert+0.3MONITUNTert+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'ACO3'; 
fOLNN(i)=fOLNN(i)-1; fACO3(i)=fACO3(i)-1; fMONITSNTert(i)=fMONITSNTert(i)+0.35; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.35; fMONITUNTert(i)=fMONITUNTert(i)+0.3; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1; %<RACM2_318>; <BAPI_146>
Rnames{i} = 'OLND+ACO3= MO2+NO2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'ACO3'; 
fOLND(i)=fOLND(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %<RACM2_320>; <BAPI_147>
Rnames{i} = 'XO2+ACO3=MO2';
k(:,i) = 3.40E-14.*exp(1560./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'ACO3'; 
fXO2(i)=fXO2(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; 


%% Organic Peroxy Radicals+NO3
i=i+1; %<RACM2_321>; <BAPI_148>
Rnames{i} = 'MO2+NO3=HCHO+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO3'; 
fMO2(i)=fMO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_322>; <BAPI_149>
Rnames{i} = 'ETHP+NO3=ACD+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO3'; 
fETHP(i)=fETHP(i)-1; fNO3(i)=fNO3(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_323>; <BAPI_150>
Rnames{i} = 'HC3P+NO3=HO2+MO2+XO2+ETHP+NO2+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO3'; 
fHC3P(i)=fHC3P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNO2(i)=fNO2(i)+1; fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

i=i+1; %<RACM2_338>; <BAPI_151>
Rnames{i} = 'APIP+NO3=HO2+ALD+NO2+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO3'; 
fAPIP(i)=fAPIP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1; 

i=i+1; %<RACM2_340>; <BAPI_152>
Rnames{i} = 'ACO3+NO3=MO2+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO3'; 
fACO3(i)=fACO3(i)-1; fNO3(i)=fNO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_341>; <BAPI_153>
Rnames{i} = 'RCO3+NO3=ETHP+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO3'; 
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_342>; <BAPI_154>
Rnames{i} = 'ACTP+NO3=ACO3+NO2+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO3'; 
fACTP(i)=fACTP(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %<RACM2_343>; <BAPI_155>
Rnames{i} = 'MEKP+NO3=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO3'; 
fMEKP(i)=fMEKP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %<RACM2_344>; <BAPI_156>
Rnames{i} = 'KETP+NO3=DCB1+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO3'; 
fKETP(i)=fKETP(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<RACM2_348>;
Rnames{i} = 'UALP+NO3=HO2+NO2+0.61 CO+0.03 HCHO+0.27 ALD+0.7 KET+0.18 GLY+0.21 MGLY ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO3'; 
fUALP(i)=fUALP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fCO(i)=fCO(i)+0.61; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27;
fKET(i)=fKET(i)+0.7; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21;

i=i+1; %<RACM2_353>; <BAPI_157>
Rnames{i} = 'ORAP+NO3=HO2+NO2+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO3'; 
fORAP(i)=fORAP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %<RACM2_354>; <BAPI_158>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+NO3=0.35MONITSNTert+0.35MONITSNNonTert+0.3MONITUNTert+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO3'; 
fOLNN(i)=fOLNN(i)-1; fNO3(i)=fNO3(i)-1; fMONITSNTert(i)=fMONITSNTert(i)+0.35; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.35; fMONITUNTert(i)=fMONITUNTert(i)+0.3; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<RACM2_355>; <BAPI_159>
Rnames{i} = 'OLND+NO3=2 NO2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO3'; 
fOLND(i)=fOLND(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

i=i+1; %<RACM2_357>; <BAPI_160>
Rnames{i} = 'XO2+NO3=NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO3'; 
fXO2(i)=fXO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; 


%% Self Reaction of RCO3 Radical
i=i+1; %<R358>; <BAPI_161>
Rnames{i} = 'RCO3+RCO3=2ETHP+2CO2';
k(:,i) = 2.5e-12.*exp(500./T); %Goliff(2013) missing rate k; use k(ACO3+ACO3)
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RCO3'; 
% fRCO3(i)=-2; fETHP(i)=2; fCO2(i)=2;
fRCO3(i)=fRCO3(i)-2; fETHP(i)=fETHP(i)+2; fCO2(i)=fCO2(i)+2; %SR 20160406

%%Organic Nitrate Radical Cross Reactions
i=i+1; %<RACM2_359>; <BAPI_162>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+OLNN=0.7MONITSNTert+0.7MONITSNNonTert+0.6MONITUNTert+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNN'; 
fOLNN(i)=fOLNN(i)-1; fOLNN(i)=fOLNN(i)-1; fMONITSNTert(i)=fMONITSNTert(i)+0.7; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.7; fMONITUNTert(i)=fMONITUNTert(i)+0.6; fHO2(i)=fHO2(i)+1; 

i=i+1; %<RACM2_360>; <BAPI_163>; wwalters ONIT Expansion
Rnames{i} = 'OLNN+OLND=0.50 HO2+0.50 NO2+0.202 HCHO+0.640 ALD+0.149 KET+0.525MONITSNTert+0.525MONITSNNonTert+0.45MONITUNTert ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLND'; 
fOLNN(i)=fOLNN(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fMONITSNTert(i)=fMONITSNTert(i)+0.525; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.525; fMONITUNTert(i)=fMONITUNTert(i)+0.45; 

i=i+1; %<RACM2_361>; <BAPI_164>; wwalters ONIT Expansion
Rnames{i} = 'OLND+OLND=NO2+0.504 HCHO+1.21 ALD+0.285 KET+0.35MONITSNTert+0.35MONITSNNonTert+0.3MONITUNTert';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLND'; 
fOLND(i)=fOLND(i)-1; fOLND(i)=fOLND(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fMONITSNTert(i)=fMONITSNTert(i)+0.35; fMONITSNNonTert(i)=fMONITSNNonTert(i)+0.35; fMONITUNTert(i)=fMONITUNTert(i)+0.3;

%%Operator Radical + Operator Radical
i=i+1; %<RACM2_362>; <BAPI_165>
Rnames{i} = 'XO2+XO2=';
k(:,i) = 7.13E-17.*exp(2950./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'XO2'; 
fXO2(i)=fXO2(i)-1; fXO2(i)=fXO2(i)-1; 


%Operator Radical + RCO3 Radical
i=i+1; %<RACM2_363>; <BAPI_166>
Rnames{i} = 'XO2+RCO3=ETHP +CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'RCO3'; 
fXO2(i)=fXO2(i)-1; fRCO3(i)=fRCO3(i)-1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; 


%%PPN Photolysis
%mmarvin 20151020
i=i+1; %<PPN_Photolysis_01>; <BAPI_167>
Rnames{i} = 'PPN=RCO3+NO2';
k(:,i) = JPPN1;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1;

%mmarvin 20151020
i=i+1; %<PPN_Photolysis_02>; <BAPI_168>
Rnames{i} = 'PPN=MO2+NO3+CO2';
k(:,i) = JPPN2;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fMO2(i)=fMO2(i)+1; fNO3(i)=fNO3(i)+1; fCO2(i)=fCO2(i)+1;

%%ONIT Expansion wwalters
i=i+1; %<BAPI_169>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSCTert+OH=HONITCTert';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSCTert';  Gstr{i,2} = 'OH'; 
fMONITSCTert(i)=fMONITSCTert(i)-1; fOH(i)=fOH(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_169>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSCNonTert+OH=HONITCNonTert';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSCNonTert';  Gstr{i,2} = 'OH'; 
fMONITSCNonTert(i)=fMONITSCNonTert(i)-1; fOH(i)=fOH(i)-1; fHONITCNonTert(i)=fHONITCNonTert(i)+1;

i=i+1; %<BAPI_170>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSNTert+OH=HONITCTert';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSN';  Gstr{i,2} = 'OH'; 
fMONITSNTert(i)=fMONITSNTert(i)-1; fOH(i)=fOH(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_170>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSNNonTert+OH=HONITCNonTert';
k(:,i) = 4.8E-12;
Gstr{i,1} = 'MONITSNNonTert';  Gstr{i,2} = 'OH'; 
fMONITSNNonTert(i)=fMONITSNNonTert(i)-1; fOH(i)=fOH(i)-1; fHONITCNonTert(i)=fHONITCNonTert(i)+1;

i=i+1; %<BAPI_171>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUCTert+OH=HONITCTert';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUCTert';  Gstr{i,2} = 'OH'; 
fMONITUCTert(i)=fMONITUCTert(i)-1; fOH(i)=fOH(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_172>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUNTert+OH=HONITCTert';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITUNTert';  Gstr{i,2} = 'OH'; 
fMONITUNTert(i)=fMONITUNTert(i)-1; fOH(i)=fOH(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_173>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUCTert+O3=HONITCTert';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUCTert';  Gstr{i,2} = 'O3'; 
fMONITUCTert(i)=fMONITUCTert(i)-1; fO3(i)=fO3(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_174>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUNTert+O3=HONITCTert';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITUNTert';  Gstr{i,2} = 'O3'; 
fMONITUNTert(i)=fMONITUNTert(i)-1; fO3(i)=fO3(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_175>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUCTert+NO3=HONITCTert';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUCTert';  Gstr{i,2} = 'NO3'; 
fMONITUCTert(i)=fMONITUCTert(i)-1; fNO3(i)=fNO3(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_176>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITUNTert+NO3=HONITCTert';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITUNTert';  Gstr{i,2} = 'NO3'; 
fMONITUNTert(i)=fMONITUNTert(i)-1; fNO3(i)=fNO3(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_177>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSCTert+NO3=HONITCTert';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSCTert';  Gstr{i,2} = 'NO3'; 
fMONITSCTert(i)=fMONITSCTert(i)-1; fNO3(i)=fNO3(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_177>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSCNonTert+NO3=HONITCNonTert';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSCNonTert';  Gstr{i,2} = 'NO3'; 
fMONITSCNonTert(i)=fMONITSCNonTert(i)-1; fNO3(i)=fNO3(i)-1; fHONITCNonTert(i)=fHONITCNonTert(i)+1;

i=i+1; %<BAPI_178>; (rate from Fisher et al., 2015)
Rnames{i} = 'MONITSNTert+NO3=HONITCTert';
k(:,i) = 3.15E-13*exp(-448/T);
Gstr{i,1} = 'MONITSNTert';  Gstr{i,2} = 'NO3'; 
fMONITSNTert(i)=fMONITSNTert(i)-1; fNO3(i)=fNO3(i)-1; fHONITCTert(i)=fHONITCTert(i)+1;

i=i+1; %<BAPI_179>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITCTert+OH=NO3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITCTert';  Gstr{i,2} = 'OH'; 
fHONITCTert(i)=fHONITCTert(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; fHKET(i)=fHKET(i)+1;

i=i+1; %<BAPI_179>; (rate from Fisher et al., 2015)
Rnames{i} = 'HONITCNonTert+OH=NO3+HKET';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONITCNonTert';  Gstr{i,2} = 'OH'; 
fHONITCNonTert(i)=fHONITCNonTert(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; fHKET(i)=fHKET(i)+1;

i=i+1; %<BAPI_180>; photolysis MCM-tert-butyl nitrate x-section/3; JOH3
Rnames{i} = 'MONITSCTert=NO2+KET';
k(:,i) = JMONIT;
Gstr{i,1} = 'MONITSCTert'; 
fMONITSCTert(i)=fMONITSCTert(i)-1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1;

i=i+1; %<BAPI_180>; photolysis MCM-tert-butyl nitrate x-section/3; JOH3
Rnames{i} = 'MONITSCNonTert=NO2+KET';
k(:,i) = JMONIT;
Gstr{i,1} = 'MONITSCNonTert'; 
fMONITSCNonTert(i)=fMONITSCNonTert(i)-1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1;

i=i+1; %<BAPI_181>;
Rnames{i} = 'MONITSNTert=NO2+KET';
k(:,i) = JMONIT;
Gstr{i,1} = 'MONITSNTert'; 
fMONITSNTert(i)=fMONITSNTert(i)-1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1;

i=i+1; %<BAPI_181>;
Rnames{i} = 'MONITSNNonTert=NO2+KET';
k(:,i) = JMONIT;
Gstr{i,1} = 'MONITSNNonTert'; 
fMONITSNNonTert(i)=fMONITSNNonTert(i)-1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1;

i=i+1; %<BAPI_182>;
Rnames{i} = 'MONITUCTert=NO2+UALD';
k(:,i) = JMONIT;
Gstr{i,1} = 'MONITUCTert'; 
fMONITUCTert(i)=fMONITUCTert(i)-1; fNO2(i)=fNO2(i)+1; fUALD(i)=fUALD(i)+1;

i=i+1; %<BAPI_183>;
Rnames{i} = 'MONITUNTert=NO2+UALD';
k(:,i) = JMONIT;
Gstr{i,1} = 'MONITUNTert'; 
fMONITUNTert(i)=fMONITUNTert(i)-1; fNO2(i)=fNO2(i)+1; fUALD(i)=fUALD(i)+1;

i=i+1; %<BAPI_184>
Rnames{i} = 'HONITCTert=NO2+HKET';
k(:,i) = JMONIT;
Gstr{i,1} = 'HONITCTert'; 
fHONITCTert(i)=fHONITCTert(i)-1; fNO2(i)=fNO2(i)+1; fHKET(i)=fHKET(i)+1;

i=i+1; %<BAPI_184>
Rnames{i} = 'HONITCNonTert=NO2+HKET';
k(:,i) = JMONIT;
Gstr{i,1} = 'HONITCNonTert'; 
fHONITCNonTert(i)=fHONITCNonTert(i)-1; fNO2(i)=fNO2(i)+1; fHKET(i)=fHKET(i)+1;

%% THAT'S ALL FOLKS!


