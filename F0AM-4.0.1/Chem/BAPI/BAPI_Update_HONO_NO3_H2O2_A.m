% BAPI.m

SpeciesToAdd = {...
'N2O5'; 'H2O2'; 'NO'; 'H2'; 'HONO'; 'OH'; 'O'; 'HNO3'; ...
'O1D'; 'HO2'; 'HO2NO2'; 'CO'; 'O3'; 'NO2'; 'NO3'; ...
'API'; 'APINO2a'; 'APINO2b'; 'APINO2c'; 'APINO2d'; 'APINNO2a'; 'APINNO2b'; 'PINAL'; ...
'APINP'; 'cAPINITa'; 'cAPINITb'; 'cAPINITc'; 'nAPINITa'; 'nAPINITb'; 'nAPINITc'; ...
'DIMER'; 'pNO3'; 'pAPINITa'; 'pAPINITb'; 'pAPINITc'; 'RCO3'; 'PAN'; 'HCHO';...  
'wO3'; 'wNO'; 'wNO2'; 'wHNO3'; 'wpNO3'; 'wpAPINITa'; 'wpAPINITb'; 'wpAPINITc'; 'A';.... 
};



AddSpecies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Flow Tube%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i=i+1; %R00X
Rnames{i} = 'A=N2O5';
k(:,i) = 0.0001;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fN2O5(i)=fN2O5(i)+1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Inorganic Reactions%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i=i+1; %<BAPI_001>
Rnames{i} = 'O = O3';
k(:,i) = 5.6e-34.*.78.*M.*(T./300).^-2.6.*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %<BAPI_002>
Rnames{i} = 'O = O3';
k(:,i) = 6.0e-34.*.21.*M.*(T./300).^-2.6.*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %<BAPI_003>
Rnames{i} = 'O + O3 =';
k(:,i) = 8.0e-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1; 

i=i+1; %<BAPI_004>
Rnames{i} = 'O + NO = NO2';
k(:,i) = KMT01;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO'; 
fO(i)=fO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_005>
Rnames{i} = 'O + NO2 = NO';
k(:,i) = 5.5e-12.*exp(188./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2'; 
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; 

i=i+1; %<BAPI_006>
Rnames{i} = 'O + NO2 = NO3';
k(:,i) = KMT02;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2'; 
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<BAPI_007>
Rnames{i} = 'O1D = O';
k(:,i) = 3.2e-11.*exp(67./T).*.21.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1; %<BAPI_008>
Rnames{i} = 'O1D = O';
k(:,i) = 2.0e-11.*exp(130./T).*.78.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1; %<BAPI_009>
Rnames{i} = 'NO + O3 = NO2';
k(:,i) = 1.4e-12.*exp(-1310./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3'; 
fNO(i)=fNO(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_010>
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.4e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<BAPI_011>
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_012>
Rnames{i} = 'NO + NO3 = NO2 + NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_013>
Rnames{i} = 'NO2 + NO3 = NO + NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_014>
Rnames{i} = 'NO2 + NO3 = N2O5';
k(:,i) = KMT03;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1; %<BAPI_015>
Rnames{i} = 'O1D = OH + OH';
k(:,i) = 2.14e-10.*H2O;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %<BAPI_016>
Rnames{i} = 'OH + O3 = HO2';
k(:,i) = 1.70e-12.*exp(-940./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3'; 
fOH(i)=fOH(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<BAPI_017>
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<BAPI_018>
Rnames{i} = 'OH + CO = HO2';
k(:,i) = KMT05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<BAPI_019>
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2'; 
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %<BAPI_020>
Rnames{i} = 'HO2 + O3 = OH';
k(:,i) = 2.03e-16.*(T./300).^4.57.*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3'; 
fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1; %<BAPI_021>
Rnames{i} = 'OH + HO2 =';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1; %<BAPI_022>
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.20e-13.*KMT06.*exp(600./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1; %<BAPI_023>
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 1.90e-33.*M.*KMT06.*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1; %<BAPI_024>
Rnames{i} = 'OH + NO = HONO';
k(:,i) = KMT07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO'; 
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1; %<BAPI_025>
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = KMT08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<BAPI_026>
Rnames{i} = 'OH + NO3 = HO2 + NO2';
k(:,i) = 2.0e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_027>
Rnames{i} = 'HO2 + NO = OH + NO2';
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_028>
Rnames{i} = 'HO2 + NO2 = HO2NO2';
k(:,i) = KMT09;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1; %<BAPI_029>
Rnames{i} = 'OH + HO2NO2 = NO2';
k(:,i) = 3.2e-13.*exp(690./T).*1.0;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_030>
Rnames{i} = 'HO2 + NO3 = OH + NO2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_031>
Rnames{i} = 'OH + HONO = NO2';
k(:,i) = 2.5e-12.*exp(260./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO'; 
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_032>
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = KMT11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<BAPI_033>
Rnames{i} = 'O3 + hv = O1D';
k(:,i) = J1;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1; %<BAPI_034>
Rnames{i} = 'O3 + hv = O';
k(:,i) = J2;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO(i)=fO(i)+1; 

i=i+1; %<BAPI_035>
Rnames{i} = 'H2O2 + hv = OH + OH';
k(:,i) = J3;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %<BAPI_036>
Rnames{i} = 'NO2 + hv = NO + O';
k(:,i) = J4;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1; %<BAPI_037>
Rnames{i} = 'NO3 + hv = NO';
k(:,i) = J5;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1; %<BAPI_038>
Rnames{i} = 'NO3 + hv = NO2 + O';
k(:,i) = J6;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1; 

i=i+1; %<BAPI_039>
Rnames{i} = 'HONO + hv = OH + NO';
k(:,i) = J7;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1; %<BAPI_040>
Rnames{i} = 'HNO3 + hv = OH + NO2';
k(:,i) = J8;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_041>
Rnames{i} = 'N2O5 = NO2 + NO3';
k(:,i) = KMT04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1; %<BAPI_042>
Rnames{i} = 'HO2NO2 = HO2 + NO2';
k(:,i) = KMT10;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%A-PINENE Lumped %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i=i+1; %<BAPI_043>
Rnames{i} = 'API + OH = 0.65 APINO2a + 0.35 APINO2b';
k(:,i) = 1.34E-11*exp(410/T);
Gstr{i,1} = 'API';  Gstr{i,2} = 'OH'; 
fAPI(i)=fAPI(i)-1; fOH(i)=fOH(i)-1; fAPINO2a(i)=fAPINO2a(i)+0.65; fAPINO2b(i)=fAPINO2b(i)+0.35;

i=i+1; %<BAPI_044>
Rnames{i} = 'API + O3 = 0.16 PINAL + 0.16H2O2 + 0.8 OH + 1 APINO2c + 0 APINO2d';
k(:,i) = 0.48E-15*exp(-550/T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'O3'; 
fAPI(i)=fAPI(i)-1; fO3(i)=fO3(i)-1; fPINAL(i)=fPINAL(i)+0.16; fH2O2(i)=fH2O2(i)+0.16; fOH(i)=fOH(i)+0.8; 
fAPINO2c(i)=fAPINO2c(i)+1; 

i=i+1; %<BAPI_045>
Rnames{i} = 'API + NO3 = 0.65 APINNO2a + 0.35 APINNO2b';
k(:,i) = 1.2E-12*exp(490/T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO3'; 
fAPI(i)=fAPI(i)-1; fNO3(i)=fNO3(i)-1; fAPINNO2a(i)=fAPINNO2a(i)+0.65; fAPINNO2b(i)=fAPINNO2b(i)+0.35; 

i=i+1; %<BAPI_046>
Rnames{i} = 'APINO2a + HO2 = 0.5 PINAL + 0.5APINP + 0.5 HO2 + 0.5 OH';
k(:,i) =  2.66E-13*exp(1300/T);
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'HO2'; 
fAPINO2a(i)=fAPINO2a(i)-1; fHO2(i)=fHO2(i)-1; fPINAL(i)=fPINAL(i)+0.5; fAPINP(i)=fAPINP(i)+0.5; 
fHO2(i)=fHO2(i)+0.5; fOH(i)=fOH(i)+0.5; 

i=i+1; %<BAPI_047>
Rnames{i} = 'APINO2b + HO2 = 0.5 PINAL + 0.5APINP + 0.5 HO2 + 0.5 OH';
k(:,i) =  2.66E-13*exp(1300/T);
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'HO2'; 
fAPINO2b(i)=fAPINO2b(i)-1; fHO2(i)=fHO2(i)-1; fPINAL(i)=fPINAL(i)+0.5; fAPINP(i)=fAPINP(i)+0.5; 
fHO2(i)=fHO2(i)+0.5; fOH(i)=fOH(i)+0.5; 

i=i+1; %<BAPI_048>
Rnames{i} = 'APINO2c + HO2 = APINP';
k(:,i) =  2.66E-13*exp(1300/T);
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'HO2'; 
fAPINO2c(i)=fAPINO2c(i)-1; fHO2(i)=fHO2(i)-1; fAPINP(i)=fAPINP(i)+1; 

i=i+1; %<BAPI_049>
Rnames{i} = 'APINO2d + HO2 = APINP';
k(:,i) =  2.66E-13*exp(1300/T);
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'HO2'; 
fAPINO2d(i)=fAPINO2d(i)-1; fHO2(i)=fHO2(i)-1; fAPINP(i)=fAPINP(i)+1; 

i=i+1; %<BAPI_050>
Rnames{i} = 'APINO2a + NO = 0.03 cAPINITa + 0.025nAPINITa + 0.05PINAL + 0.945 HO2 + 0.945 NO2 + 0.11 HCHO + 0.57 APINP';
k(:,i) =  2.55E-12*exp(380/T)*.01;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'NO'; 
fAPINO2a(i)=fAPINO2a(i)-1; fNO(i)=fNO(i)-1; fcAPINITa(i)=fcAPINITa(i)+0.03; fnAPINITa(i)=fnAPINITa(i)+0.025; 
fPINAL(i)=fPINAL(i)+0.05; fHO2(i)=fHO2(i)+0.945;  fNO2(i)=fNO2(i)+0.945; fHCHO(i)=fHCHO(i)+0.11; fAPINP(i)=fAPINP(i)+0.57;

i=i+1; %<BAPI_051>
Rnames{i} = 'APINO2b + NO = 0.03 cAPINITb + 0.025 nAPINITb + 0.05PINAL + 0.945 HO2 + 0.945 NO2 + 0.11 HCHO + 0.57 APINP';
k(:,i) =  2.55E-12*exp(380/T)*.01;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'NO'; 
fAPINO2b(i)=fAPINO2b(i)-1; fNO(i)=fNO(i)-1; fcAPINITb(i)=fcAPINITb(i)+0.03; fnAPINITb(i)=fnAPINITb(i)+0.025; 
fPINAL(i)=fPINAL(i)+0.05; fHO2(i)=fHO2(i)+0.945;  fNO2(i)=fNO2(i)+0.945; fHCHO(i)=fHCHO(i)+0.11; fAPINP(i)=fAPINP(i)+0.57;

i=i+1; %<BAPI_052>
Rnames{i} = 'APINO2c + NO = APINP + NO2 + HO2';
k(:,i) =  2.55E-12*exp(380/T)*.01;
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'NO'; 
fAPINO2c(i)=fAPINO2c(i)-1; fNO(i)=fNO(i)-1; fAPINP(i)=fAPINP(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1; %<BAPI_053>
Rnames{i} = 'APINO2d + NO = APINP + 0.97NO2 + 0.015cAPINITc + 0.015nAPINITc + 0.97 HO2';
k(:,i) =  2.55E-12*exp(380/T)*.01;
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'NO'; 
fAPINO2d(i)=fAPINO2d(i)-1; fNO(i)=fNO(i)-1; fAPINP(i)=fAPINP(i)+1; fNO2(i)=fNO2(i)+0.97;
fcAPINITc(i)=fcAPINITc(i)+0.015; fnAPINITc(i)=fnAPINITc(i)+0.015; fHO2(i)=fHO2(i)+0.97;

i=i+1; %<BAPI_053>
Rnames{i} = 'APINO2d + NO = APINP + 0.93NO2 + 0.035cAPINITc + 0.035nAPINITc';
k(:,i) =  2.55E-12*exp(380/T);
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'NO'; 
fAPINO2d(i)=fAPINO2d(i)-1; fNO(i)=fNO(i)-1; fAPINP(i)=fAPINP(i)+1; fNO2(i)=fNO2(i)+0.93;
fcAPINITc(i)=fcAPINITc(i)+0.035; fnAPINITc(i)=fnAPINITc(i)+0.035;

i=i+1; %<BAPI_054>
Rnames{i} = 'APINO2a + NO3 =  0.05 cAPINITa +0.05 nAPINITa+ 0.9 PINAL + 0.9HO2 + 0.9NO2';
k(:,i) =   2.3E-12  ;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'NO3'; 
fAPINO2a(i)=fAPINO2a(i)-1; fNO3(i)=fNO3(i)-1; fcAPINITa(i)=fcAPINITa(i)+0.05;  fnAPINITa(i)=fnAPINITa(i)+0.05;
fPINAL(i)=fPINAL(i)+0.9; fHO2(i)=fHO2(i)+0.9; fNO2(i)=fNO2(i)+0.9;  

i=i+1; %<BAPI_055>
Rnames{i} = 'APINO2b + NO3 =  0.05 cAPINITb +0.05 nAPINITb+ 0.9 PINAL + 0.9HO2 + 0.9NO2';
k(:,i) =   2.3E-12  ;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'NO3'; 
fAPINO2b(i)=fAPINO2b(i)-1; fNO3(i)=fNO3(i)-1; fcAPINITb(i)=fcAPINITb(i)+0.05;  fnAPINITb(i)=fnAPINITb(i)+0.05;
fPINAL(i)=fPINAL(i)+0.9; fHO2(i)=fHO2(i)+0.9; fNO2(i)=fNO2(i)+0.9;  

i=i+1; %<BAPI_056>
Rnames{i} = 'APINO2c + NO3 =  APINP + NO2';
k(:,i) =   2.3E-12;
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'NO3'; 
fAPINO2c(i)=fAPINO2c(i)-1; fNO3(i)=fNO3(i)-1; fAPINP(i)=fAPINP(i)+1;  fNO2(i)=fNO2(i)+1;

i=i+1; %<BAPI_057>
Rnames{i} = 'APINO2d + NO3 =  APINP + NO2';
k(:,i) =   2.3E-12;
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'NO3'; 
fAPINO2d(i)=fAPINO2d(i)-1; fNO3(i)=fNO3(i)-1; fAPINP(i)=fAPINP(i)+1;  fNO2(i)=fNO2(i)+1;


i=i+1; %<BAPI_058>
Rnames{i} = 'APINO2a + APINNO2a ==> 0.16 DIMER + 1.68 PINAL + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'APINNO2a'; 
fAPINO2a(i)=fAPINO2a(i)-1; fAPINNO2a(i)=fAPINNO2a(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+1.68;
fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_059>
Rnames{i} = 'APINO2b + APINNO2a ==> 0.16 DIMER + 1.68 PINAL + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'APINNO2a'; 
fAPINO2b(i)=fAPINO2b(i)-1; fAPINNO2a(i)=fAPINNO2a(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+1.68;
fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_060>
Rnames{i} = 'APINO2c + APINNO2a ==> 0.16 DIMER + 0.84 PINAL + 0.84 APINP + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'APINNO2a'; 
fAPINO2c(i)=fAPINO2c(i)-1; fAPINNO2a(i)=fAPINNO2a(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+0.84;
fAPINP(i)=fAPINP(i)+0.84; fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_061>
Rnames{i} = 'APINO2d + APINNO2a ==> 0.16 DIMER + 0.84 PINAL + 0.84 APINP + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'APINNO2a'; 
fAPINO2d(i)=fAPINO2d(i)-1; fAPINNO2a(i)=fAPINNO2a(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+0.84;
fAPINP(i)=fAPINP(i)+0.84; fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_062>
Rnames{i} = 'APINO2a + APINNO2b ==> 0.16 DIMER + 1.68 PINAL + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'APINNO2b'; 
fAPINO2a(i)=fAPINO2a(i)-1; fAPINNO2b(i)=fAPINNO2b(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+1.68;
fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_063>
Rnames{i} = 'APINO2b + APINNO2b ==> 0.16 DIMER + 1.68 PINAL + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'APINNO2b'; 
fAPINO2b(i)=fAPINO2b(i)-1; fAPINNO2b(i)=fAPINNO2b(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+1.68;
fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_064>
Rnames{i} = 'APINO2c + APINNO2b ==> 0.16 DIMER + 0.84 PINAL + 0.84 APINP + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'APINNO2b'; 
fAPINO2c(i)=fAPINO2c(i)-1; fAPINNO2b(i)=fAPINNO2b(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+0.84;
fAPINP(i)=fAPINP(i)+0.84; fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_065>
Rnames{i} = 'APINO2d + APINNO2b ==> 0.16 DIMER + 0.84 PINAL + 0.84 APINP + 0.842 NO2 + 0.84 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'APINNO2b'; 
fAPINO2d(i)=fAPINO2d(i)-1; fAPINNO2b(i)=fAPINNO2b(i)-1; fDIMER(i)=fDIMER(i)+0.16;  fPINAL(i)=fPINAL(i)+0.84;
fAPINP(i)=fAPINP(i)+0.84; fNO2(i)=fNO2(i)+0.842; fHO2(i)=fHO2(i)+0.842;

i=i+1; %<BAPI_066>
Rnames{i} = 'APINO2a + APINO2a ==> 2 PINAL + 2 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'APINO2a'; 
fAPINO2a(i)=fAPINO2a(i)-1; fAPINO2a(i)=fAPINO2a(i)-1; fPINAL(i)=fPINAL(i)+2; fHO2(i)=fHO2(i)+2;

i=i+1; %<BAPI_067>
Rnames{i} = 'APINO2a + APINO2b ==> 2 PINAL + 2 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'APINO2b'; 
fAPINO2a(i)=fAPINO2a(i)-1; fAPINO2b(i)=fAPINO2b(i)-1; fPINAL(i)=fPINAL(i)+2; fHO2(i)=fHO2(i)+2;

i=i+1; %<BAPI_068>
Rnames{i} = 'APINO2a + APINO2c ==> PINAL + HO2 + APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'APINO2c'; 
fAPINO2a(i)=fAPINO2a(i)-1; fAPINO2c(i)=fAPINO2c(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fAPINP(i)=fAPINP(i)+1;

i=i+1; %<BAPI_069>
Rnames{i} = 'APINO2a + APINO2d ==> PINAL + HO2 + APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2a'; Gstr{i,2} = 'APINO2d'; 
fAPINO2a(i)=fAPINO2a(i)-1; fAPINO2d(i)=fAPINO2d(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fAPINP(i)=fAPINP(i)+1;

i=i+1; %<BAPI_070>
Rnames{i} = 'APINO2b + APINO2b ==> 2 PINAL + 2 HO2';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'APINO2b'; 
fAPINO2b(i)=fAPINO2b(i)-1; fAPINO2b(i)=fAPINO2b(i)-1; fPINAL(i)=fPINAL(i)+2; fHO2(i)=fHO2(i)+2;

i=i+1; %<BAPI_071>
Rnames{i} = 'APINO2b + APINO2c ==> PINAL + HO2 + APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'APINO2c'; 
fAPINO2b(i)=fAPINO2b(i)-1; fAPINO2c(i)=fAPINO2c(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fAPINP(i)=fAPINP(i)+1;

i=i+1; %<BAPI_072>
Rnames{i} = 'APINO2b + APINO2d ==> PINAL + HO2 + APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2b'; Gstr{i,2} = 'APINO2d'; 
fAPINO2b(i)=fAPINO2b(i)-1; fAPINO2d(i)=fAPINO2d(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; fAPINP(i)=fAPINP(i)+1;

i=i+1; %<BAPI_073>
Rnames{i} = 'APINO2c + APINO2c = 2 APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'APINO2c'; 
fAPINO2c(i)=fAPINO2c(i)-1; fAPINO2c(i)=fAPINO2c(i)-1; fAPINP(i)=fAPINP(i)+2;

i=i+1; %<BAPI_074>
Rnames{i} = 'APINO2c + APINO2d = 2 APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2c'; Gstr{i,2} = 'APINO2d'; 
fAPINO2c(i)=fAPINO2c(i)-1; fAPINO2d(i)=fAPINO2d(i)-1; fAPINP(i)=fAPINP(i)+2;

i=i+1; %<BAPI_075>
Rnames{i} = 'APINO2d + APINO2d = 2 APINP';
k(:,i) =    1E-14;
Gstr{i,1} = 'APINO2d'; Gstr{i,2} = 'APINO2d'; 
fAPINO2d(i)=fAPINO2d(i)-1; fAPINO2d(i)=fAPINO2d(i)-1; fAPINP(i)=fAPINP(i)+2;

i=i+1; %<BAPI_076>
Rnames{i} = 'APINNO2a + HO2 = 0.185 cAPINITa +0.185 nAPINITa+ 0.63 PINAL + 0.63 HO2 + 0.63 OH';
k(:,i) =    2.66E-13*exp(1300/T);
Gstr{i,1} = 'APINNO2a'; Gstr{i,2} = 'HO2'; 
fAPINNO2a(i)=fAPINNO2a(i)-1; fHO2(i)=fHO2(i)-1; fcAPINITa(i)=fcAPINITa(i)+0.185; fnAPINITa(i)=fnAPINITa(i)+0.185;
fPINAL(i)=fPINAL(i)+0.63; fHO2(i)=fHO2(i)+0.63; fOH(i)=fOH(i)+0.63;

i=i+1; %<BAPI_077>
Rnames{i} = 'APINNO2b + HO2 = 0.5cAPINITb +0.5 nAPINITb';
k(:,i) =    2.66E-13*exp(1300/T);
Gstr{i,1} = 'APINNO2b'; Gstr{i,2} = 'HO2'; 
fAPINNO2b(i)=fAPINNO2b(i)-1; fHO2(i)=fHO2(i)-1; fcAPINITb(i)=fcAPINITb(i)+0.5; fnAPINITb(i)=fnAPINITb(i)+0.5;

i=i+1; %<BAPI_078>
Rnames{i} = 'APINNO2a + NO = 0.15 cAPINITa + 0.15 nAPINITa+ 0.7 PINAL + 1.7 NO2';
k(:,i) =    2.55E-12*exp(380/T);
Gstr{i,1} = 'APINNO2a'; Gstr{i,2} = 'NO'; 
fAPINNO2a(i)=fAPINNO2a(i)-1; fNO(i)=fNO(i)-1; fcAPINITa(i)=fcAPINITa(i)+0.15; fnAPINITa(i)=fnAPINITa(i)+0.15;
fPINAL(i)=fPINAL(i)+0.7; fNO2(i)=fNO2(i)+1.4; fHO2(i)=fHO2(i)+1.4;

i=i+1; %<BAPI_079>
Rnames{i} = 'APINNO2b + NO = 0.15 cAPINITb + 0.15 nAPINITb+ 0.7 PINAL + 1.7 NO2';
k(:,i) =    2.55E-12*exp(380/T);
Gstr{i,1} = 'APINNO2b'; Gstr{i,2} = 'NO'; 
fAPINNO2b(i)=fAPINNO2b(i)-1; fNO(i)=fNO(i)-1; fcAPINITb(i)=fcAPINITb(i)+0.15; fnAPINITb(i)=fnAPINITb(i)+0.15;
fPINAL(i)=fPINAL(i)+0.7; fNO2(i)=fNO2(i)+1.4; fHO2(i)=fHO2(i)+1.4;

i=i+1; %<BAPI_080>
Rnames{i} = 'APINNO2a + NO3 = 0.033 cAPINITa +0.033 nAPINITa+ 0.311 PINAL + 0.689 APINP + 1.934 NO2';
k(:,i) =    2.3E-12;
Gstr{i,1} = 'APINNO2a'; Gstr{i,2} = 'NO3'; 
fAPINNO2a(i)=fAPINNO2a(i)-1; fNO3(i)=fNO3(i)-1; fcAPINITa(i)=fcAPINITa(i)+0.033; fnAPINITa(i)=fnAPINITa(i)+0.033;
fPINAL(i)=fPINAL(i)+0.311; fAPINP(i)=fAPINP(i)+0.689; fNO2(i)=fNO2(i)+1.934;

i=i+1; %<BAPI_081>
Rnames{i} = 'APINNO2b + NO3 = 0.033 cAPINITb +0.033 nAPINITb+ 0.311 PINAL + 0.689 APINP + 1.934 NO2';
k(:,i) =    2.3E-12;
Gstr{i,1} = 'APINNO2b'; Gstr{i,2} = 'NO3'; 
fAPINNO2b(i)=fAPINNO2b(i)-1; fNO3(i)=fNO3(i)-1; fcAPINITb(i)=fcAPINITb(i)+0.033; fnAPINITb(i)=fnAPINITb(i)+0.033;
fPINAL(i)=fPINAL(i)+0.311; fAPINP(i)=fAPINP(i)+0.689; fNO2(i)=fNO2(i)+1.934;

i=i+1; %<BAPI_082>
Rnames{i} = 'APINNO2a + APINNO2a = 0.2 PINAL + 1.8 APINP + 2 NO2';
k(:,i) =   1E-14;
Gstr{i,1} = 'APINNO2a'; Gstr{i,2} = 'APINNO2a'; 
fAPINNO2a(i)=fAPINNO2a(i)-1; fAPINNO2a(i)=fAPINNO2a(i)-1; fAPINP(i)=fAPINP(i)+1.8; fPINAL(i)=fPINAL(i)+0.2; fNO2(i)=fNO2(i)+2;

i=i+1; %<BAPI_083>
Rnames{i} = 'APINNO2a + APINNO2b = 0.5 cAPINITb + 1.35 APINP + 0.15 PINAL + 1.425 NO2';
k(:,i) =   1E-14;
Gstr{i,1} = 'APINNO2a'; Gstr{i,2} = 'APINNO2b'; 
fAPINNO2a(i)=fAPINNO2a(i)-1; fAPINNO2b(i)=fAPINNO2b(i)-1;   fcAPINITb(i)=fcAPINITb(i)+0.5; 
fAPINP(i)=fAPINP(i)+1.35; fPINAL(i)=fPINAL(i)+0.15; fNO2(i)=fNO2(i)+1.5;

i=i+1; %<BAPI_084>
Rnames{i} = 'APINNO2b + APINNO2b = 1 cAPINITb + 0.9 APINP + 0.1 PINAL + 1 NO2';
k(:,i) =   1E-14;
Gstr{i,1} = 'APINNO2b'; Gstr{i,2} = 'APINNO2b'; 
fAPINNO2b(i)=fAPINNO2b(i)-1; fAPINNO2b(i)=fAPINNO2b(i)-1;   fcAPINITb(i)=fcAPINITb(i)+1; 
fAPINP(i)=fAPINP(i)+0.9; fPINAL(i)=fPINAL(i)+0.1; fNO2(i)=fNO2(i)+1;

i=i+1; %<BAPI_085>
Rnames{i} = 'PINAL + OH  =  0.772 RCO3 + 0.228APINP';
k(:,i) =  5.2E-12*exp(600/T);
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'OH'; 
fPINAL(i)=fPINAL(i)-1; fOH(i)=fOH(i)-1;   fRCO3(i)=fRCO3(i)+0.772; 
fAPINP(i)=fAPINP(i)+0.228;

i=i+1; %<BAPI_086>
Rnames{i} = 'PINAL + NO3  =  HNO3 + RCO3';
k(:,i) =  2E-14;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'NO3'; 
fPINAL(i)=fPINAL(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1;  fRCO3(i)=fRCO3(i)+1; 

i=i+1; %<BAPI_087>
Rnames{i} = 'PINAL =  APINP + RCO3';
k(:,i) =  J15;
Gstr{i,1} = 'PINAL';  
fPINAL(i)=fPINAL(i)-1; fAPINP(i)=fAPINP(i)+1;  fRCO3(i)=fRCO3(i)+1; 

i=i+1; %<BAPI_088>
Rnames{i} = 'RCO3 + HO2 = APINP + 0.44OH + 0.15O3';
k(:,i) =  KAPHO2;
Gstr{i,1} = 'RCO3'; Gstr{i,1} = 'HO2';  
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1;  fAPINP(i)=fAPINP(i)+1; fOH(i)=fOH(i)+0.44; fO3(i)=fO3(i)+0.15; 

i=i+1; %<BAPI_089>
Rnames{i} = 'RCO3 + NO = APINP + NO2';
k(:,i) =  KAPNO;
Gstr{i,1} = 'RCO3'; Gstr{i,1} = 'NO';  
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1;  fAPINP(i)=fAPINP(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_090>
Rnames{i} = 'RCO3 + NO2 = PAN';
k(:,i) =  KFPAN;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2';  
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1;  fPAN(i)=fPAN(i)+1;

i=i+1; %<BAPI_091>
Rnames{i} = 'RCO3 + NO3 = APINP + NO2';
k(:,i) =  KRO2NO3*1.74;
Gstr{i,1} = 'RCO3'; Gstr{i,1} = 'NO3';  
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1;  fAPINP(i)=fAPINP(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %<BAPI_091>
Rnames{i} = 'RCO3 + RCO3 = APINP';
k(:,i) =  1E-11;
Gstr{i,1} = 'RCO3'; Gstr{i,1} = 'NO3';  
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1;  fAPINP(i)=fAPINP(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %<BAPI_092>
Rnames{i} = 'PAN = RCO3 + NO2';
k(:,i) =  KBPAN;
Gstr{i,1} = 'PAN';  
fPAN(i)=fPAN(i)-1; fRCO3(i)=fRCO3(i)+1;  fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_093>
Rnames{i} = 'PAN + OH = APINP + NO2';
k(:,i) =  3.66e-12;
Gstr{i,1} = 'PAN';  Gstr{i,2} = 'OH';  
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fAPINP(i)=fAPINP(i)+1;  fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_094>
Rnames{i} = 'PAN + hv = RCO3 + NO2';
k(:,i) =  J14;
Gstr{i,1} = 'PAN';   
fPAN(i)=fPAN(i)-1; fRCO3(i)=fRCO3(i)+1;  fNO2(i)=fNO2(i)+1; 

i=i+1; %<BAPI_095>
Rnames{i} = 'PAN + hv = APINP + NO3';
k(:,i) =  J15;
Gstr{i,1} = 'PAN';    
fPAN(i)=fPAN(i)-1; fAPINP(i)=fAPINP(i)+1;  fNO3(i)=fNO3(i)+1; 


i=i+1; %<BAPI_096>
Rnames{i} = 'cAPINITa + OH ==> NO2 + APINP';
k(:,i) =  2.22E-12;
Gstr{i,1} = 'cAPINITa';  Gstr{i,2} = 'OH';  
fcAPINITa(i)=fcAPINITa(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_097>
Rnames{i} = 'cAPINITa + hv ==> HO2 + NO2 + APINP';
k(:,i) =  J54;
Gstr{i,1} = 'cAPINITa';    
fcAPINITa(i)=fcAPINITa(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_098>
Rnames{i} = 'nAPINITa + OH ==> NO2 + APINP';
k(:,i) =  2.22E-12;
Gstr{i,1} = 'nAPINITa';  Gstr{i,2} = 'OH';  
fnAPINITa(i)=fnAPINITa(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_099>
Rnames{i} = 'nAPINITa + hv ==> HO2 + NO2 + APINP';
k(:,i) =  J54;
Gstr{i,1} = 'nAPINITa';    
fnAPINITa(i)=fnAPINITa(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_100>
Rnames{i} = 'cAPINITb + OH ==> NO2 + APINP';
k(:,i) =  2.22E-12;
Gstr{i,1} = 'cAPINITb';  Gstr{i,2} = 'OH';  
fcAPINITb(i)=fcAPINITb(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_101>
Rnames{i} = 'cAPINITb + hv ==> HO2 + NO2 + APINP';
k(:,i) =  J54;
Gstr{i,1} = 'cAPINITb';    
fcAPINITb(i)=fcAPINITb(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_102>
Rnames{i} = 'nAPINITb + OH ==> NO2 + APINP';
k(:,i) =  2.22E-12;
Gstr{i,1} = 'nAPINITb';  Gstr{i,2} = 'OH';  
fnAPINITb(i)=fnAPINITb(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_103>
Rnames{i} = 'nAPINITb + hv ==> HO2 + NO2 + APINP';
k(:,i) =  J54;
Gstr{i,1} = 'nAPINITb';    
fnAPINITb(i)=fnAPINITb(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_104>
Rnames{i} = 'cAPINITc + OH ==> NO2 + APINP';
k(:,i) =  2.22E-12;
Gstr{i,1} = 'cAPINITc';  Gstr{i,2} = 'OH';  
fcAPINITc(i)=fcAPINITc(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_105>
Rnames{i} = 'cAPINITc + hv ==> HO2 + NO2 + APINP';
k(:,i) =  J54;
Gstr{i,1} = 'cAPINITc';    
fcAPINITc(i)=fcAPINITc(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_106>
Rnames{i} = 'nAPINITc + OH ==> NO2 + APINP';
k(:,i) =  2.22E-12;
Gstr{i,1} = 'nAPINITc';  Gstr{i,2} = 'OH';  
fnAPINITc(i)=fnAPINITc(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  

i=i+1; %<BAPI_107>
Rnames{i} = 'nAPINITc + hv ==> HO2 + NO2 + APINP';
k(:,i) =  J54;
Gstr{i,1} = 'nAPINITc';    
fnAPINITc(i)=fnAPINITc(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fAPINP(i)=fAPINP(i)+1;  



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%Heterogenous Rxns %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i=i+1; %<BAPI_108>
Rnames{i} = 'NO2=1HONO';
k(:,i) = 4.04E-6*10;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fHONO(i)=fHONO(i)+1;

i=i+1;  %<BAPI_109>
Rnames{i} = 'NO3=HNO3';
k(:,i) = 1.74E-2*.25;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %<BAPI_110>
Rnames{i} = 'N2O5=2HNO3';
k(:,i) = 3.96E-4*.25;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; 


i=i+1; %<BAPI_111>
Rnames{i} = 'HNO3=pNO3';
k(:,i) = 1E-6;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fpNO3(i)=fpNO3(i)+1;

i=i+1; %<BAPI_112>
Rnames{i} = 'cAPINITa=pAPINITa';
k(:,i) = 0.018682;
Gstr{i,1} = 'cAPINITa'; 
fcAPINITa(i)=fcAPINITa(i)-1; fpAPINITa(i)=fpAPINITa(i)+1;

i=i+1; %<BAPI_113>
Rnames{i} = 'cAPINITb=pAPINITb';
k(:,i) = 0.018682;
Gstr{i,1} = 'cAPINITb'; 
fcAPINITb(i)=fcAPINITb(i)-1; fpAPINITb(i)=fpAPINITb(i)+1;

i=i+1; %<BAPI_114>
Rnames{i} = 'cAPINITc=pAPINITc';
k(:,i) = 0.018682;
Gstr{i,1} = 'cAPINITc'; 
fcAPINITc(i)=fcAPINITc(i)-1; fpAPINITc(i)=fpAPINITc(i)+1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%HCHO CHem %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i=i+1; %<BAPI_115>
Rnames{i} = 'HCHO=H2+CO';
k(:,i) = J12;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<BAPI_116>
Rnames{i} = 'HCHO=HO2+HO2+CO';
k(:,i)    = J11;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+1; 

i=i+1; %<BAPI_117>
Rnames{i} = 'OH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %<BAPI_118>
Rnames{i} = 'HCHO+NO3=HO2+HNO3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R358
Rnames{i} = 'RCO3+RCO3=2APINP';
k(:,i) = 2.5e-12.*exp(500./T); %Goliff(2013) missing rate k; use k(ACO3+ACO3)
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RCO3'; 
% fRCO3(i)=-2; fAPINP(i)=2
fRCO3(i)=fRCO3(i)-2; fAPINP(i)=fAPINP(i)+2;





%END OF REACTION LIST


