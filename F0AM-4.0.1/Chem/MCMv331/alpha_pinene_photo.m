% alpha_pinene.m
% generated from alpha_pinene.fac
% 20210120
% # of species = 313
% # of reactions = 942

SpeciesToAdd = {...
'C7PAN3'; 'C4PAN6'; 'HCOCO'; 'NC72O'; 'HCC7CO'; 'CH3NO3'; 'H1CO23CHO'; 'C106NO3'; 'NC101O2'; 'CH3OH'; ...
'BIACETO2'; 'CO235C6OOH'; 'C109O'; 'APINBOH'; 'C722OOH'; 'O3'; 'APINBOO'; 'PAN'; 'CH3COCH2O'; 'H3C2C4CO3H'; ...
'HCOCH2CO3'; 'C89PAN'; 'C721CO3H'; 'APINBCO'; 'APINAO2'; 'C106O'; 'C4CODIAL'; 'HCOCO3H'; 'C98O'; 'C716OH'; ...
'C721OOH'; 'C235C6CO3H'; 'NC101O'; 'C96O'; 'C614O'; 'C813O2'; 'HSO3'; 'NC71O'; 'HCOCH2O2'; 'APINCO'; ...
'CO23C4CHO'; 'PINALNO3'; 'CH3O'; 'C614O2'; 'C108NO3'; 'C811O'; 'C920CO3'; 'C9PAN2'; 'APINOOB'; 'APINOOA'; ...
'C108OOH'; 'C413COOOH'; 'C716O'; 'C44OOH'; 'NAPINBOOH'; 'HO12CO3C4'; 'APINBO2'; 'C614CO'; 'C514NO3'; 'CHOC3COPAN'; ...
'C621O'; 'OH'; 'C5PAN9'; 'BIACETOH'; 'HONO'; 'APINBNO3'; 'NC102OOH'; 'C717O2'; 'C312COCO3H'; 'C89O'; ...
'GLYOX'; 'C717OOH'; 'APINENE'; 'HYPERACET'; 'CH3O2'; 'C810O2'; 'APINAOOH'; 'HCHO'; 'C721CO3'; 'C86OOH'; ...
'C96NO3'; 'C920CO3H'; 'HOPINONIC'; 'BIACETOOH'; 'PINALOOH'; 'CO23C3CHO'; 'APINANO3'; 'APINBOOH'; 'C514OOH'; 'C516O2'; ...
'C920O2'; 'HCOCO3'; 'H3C25C6O2'; 'C108O'; 'C312COCO3'; 'HCOCH2CHO'; 'HCOCH2CO2H'; 'C109OOH'; 'NO3'; 'N2O5'; ...
'H2O2'; 'C516OOH'; 'C721CHO'; 'C614NO3'; 'C920PAN'; 'C811PAN'; 'C89CO3H'; 'C922O'; 'C810OOH'; 'PINIC'; ...
'CO2H3CO3H'; 'H1C23C4OOH'; 'NAPINAO2'; 'HCOCO2H'; 'C719OOH'; 'NC61CO3'; 'HOCH2CO3'; 'CO235C5CHO'; 'CHOC3COCO3'; 'NC6PAN1'; ...
'C10PAN2'; 'O'; 'C810NO3'; 'H3C2C4CO3'; 'C719NO3'; 'C812O2'; 'HCOCH2CO3H'; 'APINAO'; 'BIACETO'; 'C89OOH'; ...
'PINALO'; 'C89CO2'; 'C89CO3'; 'NC101OOH'; 'C96CO3'; 'C922O2'; 'C44O2'; 'H2'; 'C921OOH'; 'C98O2'; ...
'H1C23C4CHO'; 'NC71CO'; 'CO235C6CO3'; 'C108OH'; 'CO2H3CO3'; 'C717NO3'; 'C107O'; 'CH3OOH'; 'HCOCH2O'; 'C85CO3H'; ...
'APINCNO3'; 'C97O'; 'C106OOH'; 'HOCH2CHO'; 'PINAL'; 'NC61CO3H'; 'HMVKAO2'; 'C813OH'; 'APINCOOH'; 'C86O2'; ...
'C922OOH'; 'CHOCOCH2O2'; 'C511O2'; 'C811OH'; 'C614OH'; 'C813OOH'; 'O1D'; 'H3C25C5CHO'; 'C107OH'; 'ALCOCH2OOH'; ...
'HO2NO2'; 'C109O2'; 'C719O2'; 'C97OH'; 'NC71O2'; 'HOCH2CO2H'; 'NO'; 'C89NO3'; 'NA'; 'C921O2'; ...
'NAPINAO'; 'C98NO3'; 'C614OOH'; 'C98OOH'; 'PHAN'; 'C720O'; 'CHOC3COO'; 'C514OH'; 'C813O'; 'CO23C4CO3H'; ...
'C720OH'; 'CH3COCH3'; 'C811OOH'; 'CH3CO2H'; 'NC102O2'; 'C89CO2H'; 'CO23C4CO3'; 'CO'; 'C33CO'; 'NC102O'; ...
'C717O'; 'CHOC3COO2'; 'NC72OOH'; 'CO2H3CHO'; 'C514O2'; 'C720O2'; 'H3C25C6OOH'; 'NC72O2'; 'C621OOH'; 'MGLYOX'; ...
'C812OH'; 'C97O2'; 'C109OH'; 'C719OH'; 'HMVKAO'; 'NC101CO'; 'C722O'; 'NAPINAOOH'; 'C516O'; 'C107O2'; ...
'HOCH2CO3H'; 'C96OOH'; 'C722O2'; 'C717OH'; 'C811O2'; 'C721O2'; 'PERPINONIC'; 'CO13C4CHO'; 'C812O'; 'C312COPAN'; ...
'CHOC3COOOH'; 'C85O'; 'SA'; 'C811NO3'; 'H1C23C4O'; 'C85O2'; 'APINBO'; 'APINCOH'; 'H3C2C4PAN'; 'C810O'; ...
'NORPINAL'; 'PINONIC'; 'CO235C6O'; 'C921O'; 'C106OH'; 'NC71OOH'; 'CO13C3CO2H'; 'H3C2C4CO2H'; 'PINALOH'; 'H3C25C6PAN'; ...
'CHOCOCH2O'; 'H3C25C6O'; 'HCOCH2OOH'; 'C85CO3'; 'HMVKANO3'; 'C811CO3'; 'C89O2'; 'C621O2'; 'C85OOH'; 'HMVKAOOH'; ...
'C98OH'; 'C108O2'; 'C716O2'; 'C811CO3H'; 'HC23C4CO3H'; 'H1C23C4O2'; 'C720OOH'; 'C720NO3'; 'HO2'; 'NO2'; ...
'C109CO'; 'C96OH'; 'H3C25CCO2H'; 'H3C25C6OH'; 'H3C25C6CO3'; 'C96O2'; 'NAPINBO2'; 'C719O'; 'H1C23C4CO3'; 'C107OOH'; ...
'CO235C6CHO'; 'C920O'; 'C3PAN2'; 'C920OOH'; 'C44O'; 'C812OOH'; 'ACETOL'; 'SO3'; 'SO2'; 'C721PAN'; ...
'CH3CO3'; 'C86O'; 'C89OH'; 'C813NO3'; 'HNO3'; 'PINALO2'; 'C514O'; 'CO235C6O2'; 'H3C25CCO3H'; 'C511O'; ...
'CH3O2NO2'; 'C716OOH'; 'C106O2'; 'C97OOH'; 'NAPINBO'; 'H1C23C4PAN'; 'C721O'; 'C810OH'; 'APINCO2'; 'CH3COCH2O2'; ...
'C511OOH'; 'CH3CO3H'; 'NORPINIC'; };

RO2ToAdd = {...
'NAPINAO2'; 'NAPINBO2'; 'APINAO2'; 'APINBO2'; 'APINCO2'; 'C107O2'; 'C109O2'; 'C96O2'; 'NC101O2'; 'C96CO3'; ...
'C720O2'; 'PINALO2'; 'C108O2'; 'C89CO3'; 'C920CO3'; 'C920O2'; 'C97O2'; 'C85CO3'; 'C85O2'; 'CH3COCH2O2'; ...
'CH3CO3'; 'CH3O2'; 'C719O2'; 'NC102O2'; 'C106O2'; 'C717O2'; 'C811CO3'; 'C89O2'; 'C921O2'; 'C98O2'; ...
'C86O2'; 'CO235C6CO3'; 'CHOC3COCO3'; 'NC71O2'; 'C811O2'; 'CHOC3COO2'; 'H3C25C6CO3'; 'H3C25C6O2'; 'CO235C6O2'; 'C716O2'; ...
'C810O2'; 'C922O2'; 'C614O2'; 'C511O2'; 'C812O2'; 'C721CO3'; 'C721O2'; 'HCOCH2CO3'; 'BIACETO2'; 'HOCH2CO3'; ...
'H3C2C4CO3'; 'HMVKAO2'; 'CO23C4CO3'; 'C312COCO3'; 'CHOCOCH2O2'; 'NC72O2'; 'C514O2'; 'HCOCH2O2'; 'C621O2'; 'C813O2'; ...
'C722O2'; 'CO2H3CO3'; 'NC61CO3'; 'HCOCO3'; 'C516O2'; 'C44O2'; 'H1C23C4CO3'; 'H1C23C4O2'; };

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
Rnames{i} = 'APINENE + NO3 = NAPINAO2';
k(:,i) = 1.2e-12.*exp(490./T).*0.65;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'NO3'; 
fAPINENE(i)=fAPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNAPINAO2(i)=fNAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + NO3 = NAPINBO2';
k(:,i) = 1.2e-12.*exp(490./T).*0.35;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'NO3'; 
fAPINENE(i)=fAPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNAPINBO2(i)=fNAPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + O3 = APINOOA';
k(:,i) = 8.05e-16.*exp(-640./T).*0.6;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fAPINOOA(i)=fAPINOOA(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + O3 = APINOOB';
k(:,i) = 8.05e-16.*exp(-640./T).*0.4;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fAPINOOB(i)=fAPINOOB(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + OH = APINAO2';
k(:,i) = 1.2e-11.*exp(440./T).*0.572;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fAPINAO2(i)=fAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + OH = APINBO2';
k(:,i) = 1.2e-11.*exp(440./T).*0.353;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fAPINBO2(i)=fAPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + OH = APINCO2';
k(:,i) = 1.2e-11.*exp(440./T).*0.075;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fAPINCO2(i)=fAPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + HO2 = NAPINAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'HO2'; 
fNAPINAO2(i)=fNAPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fNAPINAOOH(i)=fNAPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + NO = NAPINAO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'NO'; 
fNAPINAO2(i)=fNAPINAO2(i)-1; fNO(i)=fNO(i)-1; fNAPINAO(i)=fNAPINAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + NO3 = NAPINAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'NO3'; 
fNAPINAO2(i)=fNAPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fNAPINAO(i)=fNAPINAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + RO2 = APINBNO3';
k(:,i) = 6.70e-15.*0.1;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'RO2';
fNAPINAO2(i)=fNAPINAO2(i)-1; fAPINBNO3(i)=fAPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO2 + RO2 = NAPINAO';
k(:,i) = 6.70e-15.*0.9;
Gstr{i,1} = 'NAPINAO2'; Gstr{i,2} = 'RO2';
fNAPINAO2(i)=fNAPINAO2(i)-1; fNAPINAO(i)=fNAPINAO(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + HO2 = NAPINBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'HO2'; 
fNAPINBO2(i)=fNAPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fNAPINBOOH(i)=fNAPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + NO = NAPINBO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'NO'; 
fNAPINBO2(i)=fNAPINBO2(i)-1; fNO(i)=fNO(i)-1; fNAPINBO(i)=fNAPINBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + NO3 = NAPINBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'NO3'; 
fNAPINBO2(i)=fNAPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fNAPINBO(i)=fNAPINBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + RO2 = APINANO3';
k(:,i) = 2.50e-13.*0.1;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'RO2';
fNAPINBO2(i)=fNAPINBO2(i)-1; fAPINANO3(i)=fAPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + RO2 = NAPINBO';
k(:,i) = 2.50e-13.*0.8;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'RO2';
fNAPINBO2(i)=fNAPINBO2(i)-1; fNAPINBO(i)=fNAPINBO(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO2 + RO2 = NC101CO';
k(:,i) = 2.50e-13.*0.1;
Gstr{i,1} = 'NAPINBO2'; Gstr{i,2} = 'RO2';
fNAPINBO2(i)=fNAPINBO2(i)-1; fNC101CO(i)=fNC101CO(i)+1; 

i=i+1;
Rnames{i} = 'APINOOA = C107O2 + OH';
k(:,i) = KDEC.*0.55;
Gstr{i,1} = 'APINOOA'; 
fAPINOOA(i)=fAPINOOA(i)-1; fC107O2(i)=fC107O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINOOA = C109O2 + OH';
k(:,i) = KDEC.*0.45;
Gstr{i,1} = 'APINOOA'; 
fAPINOOA(i)=fAPINOOA(i)-1; fC109O2(i)=fC109O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINOOB = APINBOO';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'APINOOB'; 
fAPINOOB(i)=fAPINOOB(i)-1; fAPINBOO(i)=fAPINBOO(i)+1; 

i=i+1;
Rnames{i} = 'APINOOB = C96O2 + OH + CO';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'APINOOB'; 
fAPINOOB(i)=fAPINOOB(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + HO2 = APINAOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'HO2'; 
fAPINAO2(i)=fAPINAO2(i)-1; fHO2(i)=fHO2(i)-1; fAPINAOOH(i)=fAPINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + NO = APINANO3';
k(:,i) = KRO2NO.*0.230;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'NO'; 
fAPINAO2(i)=fAPINAO2(i)-1; fNO(i)=fNO(i)-1; fAPINANO3(i)=fAPINANO3(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + NO = APINAO + NO2';
k(:,i) = KRO2NO.*0.770;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'NO'; 
fAPINAO2(i)=fAPINAO2(i)-1; fNO(i)=fNO(i)-1; fAPINAO(i)=fAPINAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + NO3 = APINAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'NO3'; 
fAPINAO2(i)=fAPINAO2(i)-1; fNO3(i)=fNO3(i)-1; fAPINAO(i)=fAPINAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + RO2 = APINAO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'RO2';
fAPINAO2(i)=fAPINAO2(i)-1; fAPINAO(i)=fAPINAO(i)+1; 

i=i+1;
Rnames{i} = 'APINAO2 + RO2 = APINBOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'APINAO2'; Gstr{i,2} = 'RO2';
fAPINAO2(i)=fAPINAO2(i)-1; fAPINBOH(i)=fAPINBOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + HO2 = APINBOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'HO2'; 
fAPINBO2(i)=fAPINBO2(i)-1; fHO2(i)=fHO2(i)-1; fAPINBOOH(i)=fAPINBOOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + NO = APINBNO3';
k(:,i) = KRO2NO.*0.230;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'NO'; 
fAPINBO2(i)=fAPINBO2(i)-1; fNO(i)=fNO(i)-1; fAPINBNO3(i)=fAPINBNO3(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + NO = APINBO + NO2';
k(:,i) = KRO2NO.*0.770;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'NO'; 
fAPINBO2(i)=fAPINBO2(i)-1; fNO(i)=fNO(i)-1; fAPINBO(i)=fAPINBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + NO3 = APINBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'NO3'; 
fAPINBO2(i)=fAPINBO2(i)-1; fNO3(i)=fNO3(i)-1; fAPINBO(i)=fAPINBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + RO2 = APINBCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'RO2';
fAPINBO2(i)=fAPINBO2(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + RO2 = APINBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'RO2';
fAPINBO2(i)=fAPINBO2(i)-1; fAPINBO(i)=fAPINBO(i)+1; 

i=i+1;
Rnames{i} = 'APINBO2 + RO2 = APINBOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'APINBO2'; Gstr{i,2} = 'RO2';
fAPINBO2(i)=fAPINBO2(i)-1; fAPINBOH(i)=fAPINBOH(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + HO2 = APINCOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'HO2'; 
fAPINCO2(i)=fAPINCO2(i)-1; fHO2(i)=fHO2(i)-1; fAPINCOOH(i)=fAPINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + NO = APINCNO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'NO'; 
fAPINCO2(i)=fAPINCO2(i)-1; fNO(i)=fNO(i)-1; fAPINCNO3(i)=fAPINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + NO = APINCO + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'NO'; 
fAPINCO2(i)=fAPINCO2(i)-1; fNO(i)=fNO(i)-1; fAPINCO(i)=fAPINCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + NO3 = APINCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'NO3'; 
fAPINCO2(i)=fAPINCO2(i)-1; fNO3(i)=fNO3(i)-1; fAPINCO(i)=fAPINCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + RO2 = APINCO';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'RO2';
fAPINCO2(i)=fAPINCO2(i)-1; fAPINCO(i)=fAPINCO(i)+1; 

i=i+1;
Rnames{i} = 'APINCO2 + RO2 = APINCOH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'APINCO2'; Gstr{i,2} = 'RO2';
fAPINCO2(i)=fAPINCO2(i)-1; fAPINCOH(i)=fAPINCOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAOOH + OH = NAPINAO2';
k(:,i) = 6.87e-12;
Gstr{i,1} = 'NAPINAOOH'; Gstr{i,2} = 'OH'; 
fNAPINAOOH(i)=fNAPINAOOH(i)-1; fOH(i)=fOH(i)-1; fNAPINAO2(i)=fNAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAOOH + hv = NAPINAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NAPINAOOH'; 
fNAPINAOOH(i)=fNAPINAOOH(i)-1; fNAPINAO(i)=fNAPINAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINAO = PINAL + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NAPINAO'; 
fNAPINAO(i)=fNAPINAO(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBNO3 + OH = APINBCO + NO2';
k(:,i) = 3.64e-12;
Gstr{i,1} = 'APINBNO3'; Gstr{i,2} = 'OH'; 
fAPINBNO3(i)=fAPINBNO3(i)-1; fOH(i)=fOH(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH + OH = NAPINBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NAPINBOOH'; Gstr{i,2} = 'OH'; 
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fOH(i)=fOH(i)-1; fNAPINBO2(i)=fNAPINBO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH + OH = NC101CO + OH';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'NAPINBOOH'; Gstr{i,2} = 'OH'; 
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fOH(i)=fOH(i)-1; fNC101CO(i)=fNC101CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBOOH + hv = NAPINBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NAPINBOOH'; 
fNAPINBOOH(i)=fNAPINBOOH(i)-1; fNAPINBO(i)=fNAPINBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO = NC101CO + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'NAPINBO'; 
fNAPINBO(i)=fNAPINBO(i)-1; fNC101CO(i)=fNC101CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NAPINBO = PINAL + NO2';
k(:,i) = 4.00e05;
Gstr{i,1} = 'NAPINBO'; 
fNAPINBO(i)=fNAPINBO(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINANO3 + OH = PINAL + NO2';
k(:,i) = 5.50e-12;
Gstr{i,1} = 'APINANO3'; Gstr{i,2} = 'OH'; 
fAPINANO3(i)=fAPINANO3(i)-1; fOH(i)=fOH(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101CO + OH = NC101O2';
k(:,i) = 5.55e-12;
Gstr{i,1} = 'NC101CO'; Gstr{i,2} = 'OH'; 
fNC101CO(i)=fNC101CO(i)-1; fOH(i)=fOH(i)-1; fNC101O2(i)=fNC101O2(i)+1; 

i=i+1;
Rnames{i} = 'NC101CO + hv = C96CO3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'NC101CO'; 
fNC101CO(i)=fNC101CO(i)-1; fC96CO3(i)=fC96CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + HO2 = C107OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'HO2'; 
fC107O2(i)=fC107O2(i)-1; fHO2(i)=fHO2(i)-1; fC107OOH(i)=fC107OOH(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + NO = C107O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'NO'; 
fC107O2(i)=fC107O2(i)-1; fNO(i)=fNO(i)-1; fC107O(i)=fC107O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + NO3 = C107O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'NO3'; 
fC107O2(i)=fC107O2(i)-1; fNO3(i)=fNO3(i)-1; fC107O(i)=fC107O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + RO2 = C107O';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'RO2';
fC107O2(i)=fC107O2(i)-1; fC107O(i)=fC107O(i)+1; 

i=i+1;
Rnames{i} = 'C107O2 + RO2 = C107OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C107O2'; Gstr{i,2} = 'RO2';
fC107O2(i)=fC107O2(i)-1; fC107OH(i)=fC107OH(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + HO2 = C109OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'HO2'; 
fC109O2(i)=fC109O2(i)-1; fHO2(i)=fHO2(i)-1; fC109OOH(i)=fC109OOH(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + NO = C109O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'NO'; 
fC109O2(i)=fC109O2(i)-1; fNO(i)=fNO(i)-1; fC109O(i)=fC109O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + NO3 = C109O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'NO3'; 
fC109O2(i)=fC109O2(i)-1; fNO3(i)=fNO3(i)-1; fC109O(i)=fC109O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + RO2 = C109CO';
k(:,i) = 2.00e-12.*0.05;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'RO2';
fC109O2(i)=fC109O2(i)-1; fC109CO(i)=fC109CO(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + RO2 = C109O';
k(:,i) = 2.00e-12.*0.90;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'RO2';
fC109O2(i)=fC109O2(i)-1; fC109O(i)=fC109O(i)+1; 

i=i+1;
Rnames{i} = 'C109O2 + RO2 = C109OH';
k(:,i) = 2.00e-12.*0.05;
Gstr{i,1} = 'C109O2'; Gstr{i,2} = 'RO2';
fC109O2(i)=fC109O2(i)-1; fC109OH(i)=fC109OH(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + CO = PINAL';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'CO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fCO(i)=fCO(i)-1; fPINAL(i)=fPINAL(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + NO = PINAL + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'NO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fNO(i)=fNO(i)-1; fPINAL(i)=fPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + NO2 = PINAL + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'NO2'; 
fAPINBOO(i)=fAPINBOO(i)-1; fNO2(i)=fNO2(i)-1; fPINAL(i)=fPINAL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO + SO2 = PINAL + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'APINBOO'; Gstr{i,2} = 'SO2'; 
fAPINBOO(i)=fAPINBOO(i)-1; fSO2(i)=fSO2(i)-1; fPINAL(i)=fPINAL(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO = PINAL + H2O2';
k(:,i) = 1.40e-17.*H2O;
Gstr{i,1} = 'APINBOO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fPINAL(i)=fPINAL(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOO = PINONIC';
k(:,i) = 2.00e-18.*H2O;
Gstr{i,1} = 'APINBOO'; 
fAPINBOO(i)=fAPINBOO(i)-1; fPINONIC(i)=fPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + HO2 = C96OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'HO2'; 
fC96O2(i)=fC96O2(i)-1; fHO2(i)=fHO2(i)-1; fC96OOH(i)=fC96OOH(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + NO = C96NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'NO'; 
fC96O2(i)=fC96O2(i)-1; fNO(i)=fNO(i)-1; fC96NO3(i)=fC96NO3(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + NO = C96O + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'NO'; 
fC96O2(i)=fC96O2(i)-1; fNO(i)=fNO(i)-1; fC96O(i)=fC96O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + NO3 = C96O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'NO3'; 
fC96O2(i)=fC96O2(i)-1; fNO3(i)=fNO3(i)-1; fC96O(i)=fC96O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + RO2 = C96O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'RO2';
fC96O2(i)=fC96O2(i)-1; fC96O(i)=fC96O(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + RO2 = C96OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'RO2';
fC96O2(i)=fC96O2(i)-1; fC96OH(i)=fC96OH(i)+1; 

i=i+1;
Rnames{i} = 'C96O2 + RO2 = NORPINAL';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C96O2'; Gstr{i,2} = 'RO2';
fC96O2(i)=fC96O2(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; 

i=i+1;
Rnames{i} = 'APINAOOH + OH = APINAO2';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'APINAOOH'; Gstr{i,2} = 'OH'; 
fAPINAOOH(i)=fAPINAOOH(i)-1; fOH(i)=fOH(i)-1; fAPINAO2(i)=fAPINAO2(i)+1; 

i=i+1;
Rnames{i} = 'APINAOOH + hv = APINAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'APINAOOH'; 
fAPINAOOH(i)=fAPINAOOH(i)-1; fAPINAO(i)=fAPINAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINAO = PINAL + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'APINAO'; 
fAPINAO(i)=fAPINAO(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOH + OH = APINBCO + HO2';
k(:,i) = 1.49e-11;
Gstr{i,1} = 'APINBOH'; Gstr{i,2} = 'OH'; 
fAPINBOH(i)=fAPINBOH(i)-1; fOH(i)=fOH(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBOOH + OH = APINBCO + OH';
k(:,i) = 3.28e-11;
Gstr{i,1} = 'APINBOOH'; Gstr{i,2} = 'OH'; 
fAPINBOOH(i)=fAPINBOOH(i)-1; fOH(i)=fOH(i)-1; fAPINBCO(i)=fAPINBCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBOOH + hv = APINBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'APINBOOH'; 
fAPINBOOH(i)=fAPINBOOH(i)-1; fAPINBO(i)=fAPINBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINBO = PINAL + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'APINBO'; 
fAPINBO(i)=fAPINBO(i)-1; fPINAL(i)=fPINAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'APINBCO + OH = C96CO3';
k(:,i) = 8.18e-12;
Gstr{i,1} = 'APINBCO'; Gstr{i,2} = 'OH'; 
fAPINBCO(i)=fAPINBCO(i)-1; fOH(i)=fOH(i)-1; fC96CO3(i)=fC96CO3(i)+1; 

i=i+1;
Rnames{i} = 'APINCOOH + OH = APINCO2';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'APINCOOH'; Gstr{i,2} = 'OH'; 
fAPINCOOH(i)=fAPINCOOH(i)-1; fOH(i)=fOH(i)-1; fAPINCO2(i)=fAPINCO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCOOH + hv = APINCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'APINCOOH'; 
fAPINCOOH(i)=fAPINCOOH(i)-1; fAPINCO(i)=fAPINCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'APINCNO3 + OH = CH3COCH3 + HCC7CO + NO2';
k(:,i) = 9.87e-11;
Gstr{i,1} = 'APINCNO3'; Gstr{i,2} = 'OH'; 
fAPINCNO3(i)=fAPINCNO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCC7CO(i)=fHCC7CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCNO3 + hv = APINCO + NO2';
k(:,i) = J55;
Gstr{i,1} = 'APINCNO3'; 
fAPINCNO3(i)=fAPINCNO3(i)-1; fAPINCO(i)=fAPINCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'APINCO = CH3COCH3 + C720O2';
k(:,i) = KDEC;
Gstr{i,1} = 'APINCO'; 
fAPINCO(i)=fAPINCO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC720O2(i)=fC720O2(i)+1; 

i=i+1;
Rnames{i} = 'APINCOH + OH = APINCO';
k(:,i) = 9.91e-11;
Gstr{i,1} = 'APINCOH'; Gstr{i,2} = 'OH'; 
fAPINCOH(i)=fAPINCOH(i)-1; fOH(i)=fOH(i)-1; fAPINCO(i)=fAPINCO(i)+1; 

i=i+1;
Rnames{i} = 'PINAL + NO3 = C96CO3 + HNO3';
k(:,i) = 2.0e-14;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'NO3'; 
fPINAL(i)=fPINAL(i)-1; fNO3(i)=fNO3(i)-1; fC96CO3(i)=fC96CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'PINAL + OH = C96CO3';
k(:,i) = 5.2e-12.*exp(600./T).*0.772;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'OH'; 
fPINAL(i)=fPINAL(i)-1; fOH(i)=fOH(i)-1; fC96CO3(i)=fC96CO3(i)+1; 

i=i+1;
Rnames{i} = 'PINAL + OH = PINALO2';
k(:,i) = 5.2e-12.*exp(600./T).*0.228;
Gstr{i,1} = 'PINAL'; Gstr{i,2} = 'OH'; 
fPINAL(i)=fPINAL(i)-1; fOH(i)=fOH(i)-1; fPINALO2(i)=fPINALO2(i)+1; 

i=i+1;
Rnames{i} = 'PINAL + hv = C96O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'PINAL'; 
fPINAL(i)=fPINAL(i)-1; fC96O2(i)=fC96O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + HO2 = NC101OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'HO2'; 
fNC101O2(i)=fNC101O2(i)-1; fHO2(i)=fHO2(i)-1; fNC101OOH(i)=fNC101OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + NO = NC101O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'NO'; 
fNC101O2(i)=fNC101O2(i)-1; fNO(i)=fNO(i)-1; fNC101O(i)=fNC101O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + NO3 = NC101O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'NO3'; 
fNC101O2(i)=fNC101O2(i)-1; fNO3(i)=fNO3(i)-1; fNC101O(i)=fNC101O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC101O2 + RO2 = NC101O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'NC101O2'; Gstr{i,2} = 'RO2';
fNC101O2(i)=fNC101O2(i)-1; fNC101O(i)=fNC101O(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + HO2 = C96O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'HO2'; 
fC96CO3(i)=fC96CO3(i)-1; fHO2(i)=fHO2(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + HO2 = PERPINONIC';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'HO2'; 
fC96CO3(i)=fC96CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPINONIC(i)=fPERPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + HO2 = PINONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'HO2'; 
fC96CO3(i)=fC96CO3(i)-1; fHO2(i)=fHO2(i)-1; fPINONIC(i)=fPINONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + NO = C96O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'NO'; 
fC96CO3(i)=fC96CO3(i)-1; fNO(i)=fNO(i)-1; fC96O2(i)=fC96O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + NO2 = C10PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'NO2'; 
fC96CO3(i)=fC96CO3(i)-1; fNO2(i)=fNO2(i)-1; fC10PAN2(i)=fC10PAN2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + NO3 = C96O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'NO3'; 
fC96CO3(i)=fC96CO3(i)-1; fNO3(i)=fNO3(i)-1; fC96O2(i)=fC96O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + RO2 = C96O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'RO2';
fC96CO3(i)=fC96CO3(i)-1; fC96O2(i)=fC96O2(i)+1; 

i=i+1;
Rnames{i} = 'C96CO3 + RO2 = PINONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C96CO3'; Gstr{i,2} = 'RO2';
fC96CO3(i)=fC96CO3(i)-1; fPINONIC(i)=fPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C107OOH + OH = C107O2';
k(:,i) = 3.01e-11;
Gstr{i,1} = 'C107OOH'; Gstr{i,2} = 'OH'; 
fC107OOH(i)=fC107OOH(i)-1; fOH(i)=fOH(i)-1; fC107O2(i)=fC107O2(i)+1; 

i=i+1;
Rnames{i} = 'C107OOH + hv = C107O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C107OOH'; 
fC107OOH(i)=fC107OOH(i)-1; fC107O(i)=fC107O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C107OOH + hv = C107O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C107OOH'; 
fC107OOH(i)=fC107OOH(i)-1; fC107O(i)=fC107O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C107O = C108O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C107O'; 
fC107O(i)=fC107O(i)-1; fC108O2(i)=fC108O2(i)+1; 

i=i+1;
Rnames{i} = 'C107OH + OH = C107O';
k(:,i) = 2.66e-11;
Gstr{i,1} = 'C107OH'; Gstr{i,2} = 'OH'; 
fC107OH(i)=fC107OH(i)-1; fOH(i)=fOH(i)-1; fC107O(i)=fC107O(i)+1; 

i=i+1;
Rnames{i} = 'C107OH + hv = C107O + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C107OH'; 
fC107OH(i)=fC107OH(i)-1; fC107O(i)=fC107O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH + OH = C109CO + OH';
k(:,i) = 5.47e-11;
Gstr{i,1} = 'C109OOH'; Gstr{i,2} = 'OH'; 
fC109OOH(i)=fC109OOH(i)-1; fOH(i)=fOH(i)-1; fC109CO(i)=fC109CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH + hv = C109O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C109OOH'; 
fC109OOH(i)=fC109OOH(i)-1; fC109O(i)=fC109O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH + hv = C109O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C109OOH'; 
fC109OOH(i)=fC109OOH(i)-1; fC109O(i)=fC109O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109OOH + hv = C89CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C109OOH'; 
fC109OOH(i)=fC109OOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C109O = C89CO3 + HCHO';
k(:,i) = KDEC.*0.80;
Gstr{i,1} = 'C109O'; 
fC109O(i)=fC109O(i)-1; fC89CO3(i)=fC89CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C109O = C920CO3';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'C109O'; 
fC109O(i)=fC109O(i)-1; fC920CO3(i)=fC920CO3(i)+1; 

i=i+1;
Rnames{i} = 'C109CO + OH = C89CO3 + CO';
k(:,i) = 5.47e-11;
Gstr{i,1} = 'C109CO'; Gstr{i,2} = 'OH'; 
fC109CO(i)=fC109CO(i)-1; fOH(i)=fOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C109CO + hv = C89CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C109CO'; 
fC109CO(i)=fC109CO(i)-1; fC89CO3(i)=fC89CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109CO + hv = C89CO3 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C109CO'; 
fC109CO(i)=fC109CO(i)-1; fC89CO3(i)=fC89CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OH + OH = C109CO + HO2';
k(:,i) = 4.45e-11;
Gstr{i,1} = 'C109OH'; Gstr{i,2} = 'OH'; 
fC109OH(i)=fC109OH(i)-1; fOH(i)=fOH(i)-1; fC109CO(i)=fC109CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OH + hv = C89CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C109OH'; 
fC109OH(i)=fC109OH(i)-1; fC89CO3(i)=fC89CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C109OH + hv = C920O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C109OH'; 
fC109OH(i)=fC109OH(i)-1; fC920O2(i)=fC920O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PINONIC + OH = C96O2';
k(:,i) = 6.65e-12;
Gstr{i,1} = 'PINONIC'; Gstr{i,2} = 'OH'; 
fPINONIC(i)=fPINONIC(i)-1; fOH(i)=fOH(i)-1; fC96O2(i)=fC96O2(i)+1; 

i=i+1;
Rnames{i} = 'PINONIC + hv = C96O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'PINONIC'; 
fPINONIC(i)=fPINONIC(i)-1; fC96O2(i)=fC96O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH + OH = C96O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C96OOH'; Gstr{i,2} = 'OH'; 
fC96OOH(i)=fC96OOH(i)-1; fOH(i)=fOH(i)-1; fC96O2(i)=fC96O2(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH + OH = NORPINAL + OH';
k(:,i) = 1.30e-11;
Gstr{i,1} = 'C96OOH'; Gstr{i,2} = 'OH'; 
fC96OOH(i)=fC96OOH(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH + hv = C96O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C96OOH'; 
fC96OOH(i)=fC96OOH(i)-1; fC96O(i)=fC96O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96OOH + hv = C96O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C96OOH'; 
fC96OOH(i)=fC96OOH(i)-1; fC96O(i)=fC96O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C96NO3 + OH = NORPINAL + NO2';
k(:,i) = 2.88e-12;
Gstr{i,1} = 'C96NO3'; Gstr{i,2} = 'OH'; 
fC96NO3(i)=fC96NO3(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96NO3 + hv = C96O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C96NO3'; 
fC96NO3(i)=fC96NO3(i)-1; fC96O(i)=fC96O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96NO3 + hv = C96O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C96NO3'; 
fC96NO3(i)=fC96NO3(i)-1; fC96O(i)=fC96O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C96O = C97O2';
k(:,i) = 4.20e10.*exp(-3523./T);
Gstr{i,1} = 'C96O'; 
fC96O(i)=fC96O(i)-1; fC97O2(i)=fC97O2(i)+1; 

i=i+1;
Rnames{i} = 'C96OH + OH = NORPINAL + HO2';
k(:,i) = 7.67e-12;
Gstr{i,1} = 'C96OH'; Gstr{i,2} = 'OH'; 
fC96OH(i)=fC96OH(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C96OH + hv = C96O + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C96OH'; 
fC96OH(i)=fC96OH(i)-1; fC96O(i)=fC96O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NORPINAL + NO3 = C85CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'NORPINAL'; Gstr{i,2} = 'NO3'; 
fNORPINAL(i)=fNORPINAL(i)-1; fNO3(i)=fNO3(i)-1; fC85CO3(i)=fC85CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NORPINAL + OH = C85CO3';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'NORPINAL'; Gstr{i,2} = 'OH'; 
fNORPINAL(i)=fNORPINAL(i)-1; fOH(i)=fOH(i)-1; fC85CO3(i)=fC85CO3(i)+1; 

i=i+1;
Rnames{i} = 'NORPINAL + hv = C85O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'NORPINAL'; 
fNORPINAL(i)=fNORPINAL(i)-1; fC85O2(i)=fC85O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'HCC7CO + OH = C719O2';
k(:,i) = 1.19e-10;
Gstr{i,1} = 'HCC7CO'; Gstr{i,2} = 'OH'; 
fHCC7CO(i)=fHCC7CO(i)-1; fOH(i)=fOH(i)-1; fC719O2(i)=fC719O2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + HO2 = C720OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'HO2'; 
fC720O2(i)=fC720O2(i)-1; fHO2(i)=fHO2(i)-1; fC720OOH(i)=fC720OOH(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + NO = C720NO3';
k(:,i) = KRO2NO.*0.278;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'NO'; 
fC720O2(i)=fC720O2(i)-1; fNO(i)=fNO(i)-1; fC720NO3(i)=fC720NO3(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + NO = C720O + NO2';
k(:,i) = KRO2NO.*0.722;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'NO'; 
fC720O2(i)=fC720O2(i)-1; fNO(i)=fNO(i)-1; fC720O(i)=fC720O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + NO3 = C720O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'NO3'; 
fC720O2(i)=fC720O2(i)-1; fNO3(i)=fNO3(i)-1; fC720O(i)=fC720O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + RO2 = C720O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'RO2';
fC720O2(i)=fC720O2(i)-1; fC720O(i)=fC720O(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + RO2 = C720OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'RO2';
fC720O2(i)=fC720O2(i)-1; fC720OH(i)=fC720OH(i)+1; 

i=i+1;
Rnames{i} = 'C720O2 + RO2 = HCC7CO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C720O2'; Gstr{i,2} = 'RO2';
fC720O2(i)=fC720O2(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + HO2 = PINALOOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'HO2'; 
fPINALO2(i)=fPINALO2(i)-1; fHO2(i)=fHO2(i)-1; fPINALOOH(i)=fPINALOOH(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + NO = PINALNO3';
k(:,i) = KRO2NO.*0.050;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'NO'; 
fPINALO2(i)=fPINALO2(i)-1; fNO(i)=fNO(i)-1; fPINALNO3(i)=fPINALNO3(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + NO = PINALO + NO2';
k(:,i) = KRO2NO.*0.950;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'NO'; 
fPINALO2(i)=fPINALO2(i)-1; fNO(i)=fNO(i)-1; fPINALO(i)=fPINALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + NO3 = PINALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'NO3'; 
fPINALO2(i)=fPINALO2(i)-1; fNO3(i)=fNO3(i)-1; fPINALO(i)=fPINALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + RO2 = PINALO';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'RO2';
fPINALO2(i)=fPINALO2(i)-1; fPINALO(i)=fPINALO(i)+1; 

i=i+1;
Rnames{i} = 'PINALO2 + RO2 = PINALOH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'PINALO2'; Gstr{i,2} = 'RO2';
fPINALO2(i)=fPINALO2(i)-1; fPINALOH(i)=fPINALOH(i)+1; 

i=i+1;
Rnames{i} = 'NC101OOH + OH = NC101O2';
k(:,i) = 5.94e-12;
Gstr{i,1} = 'NC101OOH'; Gstr{i,2} = 'OH'; 
fNC101OOH(i)=fNC101OOH(i)-1; fOH(i)=fOH(i)-1; fNC101O2(i)=fNC101O2(i)+1; 

i=i+1;
Rnames{i} = 'NC101OOH + hv = NC101O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC101OOH'; 
fNC101OOH(i)=fNC101OOH(i)-1; fNC101O(i)=fNC101O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC101O = NC102O2';
k(:,i) = KDEC;
Gstr{i,1} = 'NC101O'; 
fNC101O(i)=fNC101O(i)-1; fNC102O2(i)=fNC102O2(i)+1; 

i=i+1;
Rnames{i} = 'PERPINONIC + OH = C96CO3';
k(:,i) = 9.73e-12;
Gstr{i,1} = 'PERPINONIC'; Gstr{i,2} = 'OH'; 
fPERPINONIC(i)=fPERPINONIC(i)-1; fOH(i)=fOH(i)-1; fC96CO3(i)=fC96CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERPINONIC + hv = C96O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPINONIC'; 
fPERPINONIC(i)=fPERPINONIC(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PERPINONIC + hv = C96O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'PERPINONIC'; 
fPERPINONIC(i)=fPERPINONIC(i)-1; fC96O2(i)=fC96O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C10PAN2 + OH = NORPINAL + CO + NO2';
k(:,i) = 3.66e-12;
Gstr{i,1} = 'C10PAN2'; Gstr{i,2} = 'OH'; 
fC10PAN2(i)=fC10PAN2(i)-1; fOH(i)=fOH(i)-1; fNORPINAL(i)=fNORPINAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C10PAN2 = C96CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C10PAN2'; 
fC10PAN2(i)=fC10PAN2(i)-1; fC96CO3(i)=fC96CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + HO2 = C108OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'HO2'; 
fC108O2(i)=fC108O2(i)-1; fHO2(i)=fHO2(i)-1; fC108OOH(i)=fC108OOH(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + NO = C108NO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'NO'; 
fC108O2(i)=fC108O2(i)-1; fNO(i)=fNO(i)-1; fC108NO3(i)=fC108NO3(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + NO = C108O + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'NO'; 
fC108O2(i)=fC108O2(i)-1; fNO(i)=fNO(i)-1; fC108O(i)=fC108O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + NO3 = C108O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'NO3'; 
fC108O2(i)=fC108O2(i)-1; fNO3(i)=fNO3(i)-1; fC108O(i)=fC108O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + RO2 = C108O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'RO2';
fC108O2(i)=fC108O2(i)-1; fC108O(i)=fC108O(i)+1; 

i=i+1;
Rnames{i} = 'C108O2 + RO2 = C108OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C108O2'; Gstr{i,2} = 'RO2';
fC108O2(i)=fC108O2(i)-1; fC108OH(i)=fC108OH(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + HO2 = C89CO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'HO2'; 
fC89CO3(i)=fC89CO3(i)-1; fHO2(i)=fHO2(i)-1; fC89CO2(i)=fC89CO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + HO2 = C89CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'HO2'; 
fC89CO3(i)=fC89CO3(i)-1; fHO2(i)=fHO2(i)-1; fC89CO2H(i)=fC89CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + HO2 = C89CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'HO2'; 
fC89CO3(i)=fC89CO3(i)-1; fHO2(i)=fHO2(i)-1; fC89CO3H(i)=fC89CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + NO = C89CO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'NO'; 
fC89CO3(i)=fC89CO3(i)-1; fNO(i)=fNO(i)-1; fC89CO2(i)=fC89CO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + NO2 = C89PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'NO2'; 
fC89CO3(i)=fC89CO3(i)-1; fNO2(i)=fNO2(i)-1; fC89PAN(i)=fC89PAN(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + NO3 = C89CO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'NO3'; 
fC89CO3(i)=fC89CO3(i)-1; fNO3(i)=fNO3(i)-1; fC89CO2(i)=fC89CO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + RO2 = C89CO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'RO2';
fC89CO3(i)=fC89CO3(i)-1; fC89CO2(i)=fC89CO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3 + RO2 = C89CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C89CO3'; Gstr{i,2} = 'RO2';
fC89CO3(i)=fC89CO3(i)-1; fC89CO2H(i)=fC89CO2H(i)+1; 

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
Rnames{i} = 'C920CO3 + HO2 = C920CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'HO2'; 
fC920CO3(i)=fC920CO3(i)-1; fHO2(i)=fHO2(i)-1; fC920CO3H(i)=fC920CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + HO2 = C920O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'HO2'; 
fC920CO3(i)=fC920CO3(i)-1; fHO2(i)=fHO2(i)-1; fC920O2(i)=fC920O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + HO2 = HOPINONIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'HO2'; 
fC920CO3(i)=fC920CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOPINONIC(i)=fHOPINONIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + NO = C920O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'NO'; 
fC920CO3(i)=fC920CO3(i)-1; fNO(i)=fNO(i)-1; fC920O2(i)=fC920O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + NO2 = C920PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'NO2'; 
fC920CO3(i)=fC920CO3(i)-1; fNO2(i)=fNO2(i)-1; fC920PAN(i)=fC920PAN(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + NO3 = C920O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'NO3'; 
fC920CO3(i)=fC920CO3(i)-1; fNO3(i)=fNO3(i)-1; fC920O2(i)=fC920O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + RO2 = C920O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'RO2';
fC920CO3(i)=fC920CO3(i)-1; fC920O2(i)=fC920O2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3 + RO2 = HOPINONIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C920CO3'; Gstr{i,2} = 'RO2';
fC920CO3(i)=fC920CO3(i)-1; fHOPINONIC(i)=fHOPINONIC(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + HO2 = C920OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'HO2'; 
fC920O2(i)=fC920O2(i)-1; fHO2(i)=fHO2(i)-1; fC920OOH(i)=fC920OOH(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + NO = C920O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'NO'; 
fC920O2(i)=fC920O2(i)-1; fNO(i)=fNO(i)-1; fC920O(i)=fC920O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + NO3 = C920O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'NO3'; 
fC920O2(i)=fC920O2(i)-1; fNO3(i)=fNO3(i)-1; fC920O(i)=fC920O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920O2 + RO2 = C920O';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'C920O2'; Gstr{i,2} = 'RO2';
fC920O2(i)=fC920O2(i)-1; fC920O(i)=fC920O(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + HO2 = C97OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'HO2'; 
fC97O2(i)=fC97O2(i)-1; fHO2(i)=fHO2(i)-1; fC97OOH(i)=fC97OOH(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + NO = C97O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'NO'; 
fC97O2(i)=fC97O2(i)-1; fNO(i)=fNO(i)-1; fC97O(i)=fC97O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + NO3 = C97O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'NO3'; 
fC97O2(i)=fC97O2(i)-1; fNO3(i)=fNO3(i)-1; fC97O(i)=fC97O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + RO2 = C97O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'RO2';
fC97O2(i)=fC97O2(i)-1; fC97O(i)=fC97O(i)+1; 

i=i+1;
Rnames{i} = 'C97O2 + RO2 = C97OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C97O2'; Gstr{i,2} = 'RO2';
fC97O2(i)=fC97O2(i)-1; fC97OH(i)=fC97OH(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + HO2 = C85CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'HO2'; 
fC85CO3(i)=fC85CO3(i)-1; fHO2(i)=fHO2(i)-1; fC85CO3H(i)=fC85CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + HO2 = C85O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'HO2'; 
fC85CO3(i)=fC85CO3(i)-1; fHO2(i)=fHO2(i)-1; fC85O2(i)=fC85O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + NO = C85O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'NO'; 
fC85CO3(i)=fC85CO3(i)-1; fNO(i)=fNO(i)-1; fC85O2(i)=fC85O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + NO2 = C9PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'NO2'; 
fC85CO3(i)=fC85CO3(i)-1; fNO2(i)=fNO2(i)-1; fC9PAN2(i)=fC9PAN2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + NO3 = C85O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'NO3'; 
fC85CO3(i)=fC85CO3(i)-1; fNO3(i)=fNO3(i)-1; fC85O2(i)=fC85O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3 + RO2 = C85O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C85CO3'; Gstr{i,2} = 'RO2';
fC85CO3(i)=fC85CO3(i)-1; fC85O2(i)=fC85O2(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + HO2 = C85OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'HO2'; 
fC85O2(i)=fC85O2(i)-1; fHO2(i)=fHO2(i)-1; fC85OOH(i)=fC85OOH(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + NO = C85O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'NO'; 
fC85O2(i)=fC85O2(i)-1; fNO(i)=fNO(i)-1; fC85O(i)=fC85O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + NO3 = C85O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'NO3'; 
fC85O2(i)=fC85O2(i)-1; fNO3(i)=fNO3(i)-1; fC85O(i)=fC85O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85O2 + RO2 = C85O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C85O2'; Gstr{i,2} = 'RO2';
fC85O2(i)=fC85O2(i)-1; fC85O(i)=fC85O(i)+1; 

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
Rnames{i} = 'C719O2 + HO2 = C719OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'HO2'; 
fC719O2(i)=fC719O2(i)-1; fHO2(i)=fHO2(i)-1; fC719OOH(i)=fC719OOH(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + NO = C719NO3';
k(:,i) = KRO2NO.*0.042;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'NO'; 
fC719O2(i)=fC719O2(i)-1; fNO(i)=fNO(i)-1; fC719NO3(i)=fC719NO3(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + NO = C719O + NO2';
k(:,i) = KRO2NO.*0.958;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'NO'; 
fC719O2(i)=fC719O2(i)-1; fNO(i)=fNO(i)-1; fC719O(i)=fC719O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + NO3 = C719O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'NO3'; 
fC719O2(i)=fC719O2(i)-1; fNO3(i)=fNO3(i)-1; fC719O(i)=fC719O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + RO2 = C719O';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'RO2';
fC719O2(i)=fC719O2(i)-1; fC719O(i)=fC719O(i)+1; 

i=i+1;
Rnames{i} = 'C719O2 + RO2 = C719OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C719O2'; Gstr{i,2} = 'RO2';
fC719O2(i)=fC719O2(i)-1; fC719OH(i)=fC719OH(i)+1; 

i=i+1;
Rnames{i} = 'C720OOH + OH = HCC7CO + OH';
k(:,i) = 1.27e-10;
Gstr{i,1} = 'C720OOH'; Gstr{i,2} = 'OH'; 
fC720OOH(i)=fC720OOH(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C720OOH + hv = C720O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C720OOH'; 
fC720OOH(i)=fC720OOH(i)-1; fC720O(i)=fC720O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C720NO3 + OH = HCC7CO + NO2';
k(:,i) = 9.60e-11;
Gstr{i,1} = 'C720NO3'; Gstr{i,2} = 'OH'; 
fC720NO3(i)=fC720NO3(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720NO3 + hv = C720O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C720NO3'; 
fC720NO3(i)=fC720NO3(i)-1; fC720O(i)=fC720O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C720O = HCC7CO + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'C720O'; 
fC720O(i)=fC720O(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C720OH + OH = HCC7CO + HO2';
k(:,i) = 1.09e-10;
Gstr{i,1} = 'C720OH'; Gstr{i,2} = 'OH'; 
fC720OH(i)=fC720OH(i)-1; fOH(i)=fOH(i)-1; fHCC7CO(i)=fHCC7CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOOH + OH = PINALO2';
k(:,i) = 2.75e-11;
Gstr{i,1} = 'PINALOOH'; Gstr{i,2} = 'OH'; 
fPINALOOH(i)=fPINALOOH(i)-1; fOH(i)=fOH(i)-1; fPINALO2(i)=fPINALO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOOH + hv = PINALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PINALOOH'; 
fPINALOOH(i)=fPINALOOH(i)-1; fPINALO(i)=fPINALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PINALOOH + hv = PINALO + OH';
k(:,i) = J15;
Gstr{i,1} = 'PINALOOH'; 
fPINALOOH(i)=fPINALOOH(i)-1; fPINALO(i)=fPINALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PINALNO3 + OH = CO235C6CHO + CH3COCH3 + NO2';
k(:,i) = 2.25e-11;
Gstr{i,1} = 'PINALNO3'; Gstr{i,2} = 'OH'; 
fPINALNO3(i)=fPINALNO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALNO3 + hv = PINALO + NO2';
k(:,i) = J55;
Gstr{i,1} = 'PINALNO3'; 
fPINALNO3(i)=fPINALNO3(i)-1; fPINALO(i)=fPINALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALNO3 + hv = PINALO + NO2';
k(:,i) = J15;
Gstr{i,1} = 'PINALNO3'; 
fPINALNO3(i)=fPINALNO3(i)-1; fPINALO(i)=fPINALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PINALO = C106O2';
k(:,i) = KDEC;
Gstr{i,1} = 'PINALO'; 
fPINALO(i)=fPINALO(i)-1; fC106O2(i)=fC106O2(i)+1; 

i=i+1;
Rnames{i} = 'PINALOH + OH = PINALO';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'PINALOH'; Gstr{i,2} = 'OH'; 
fPINALOH(i)=fPINALOH(i)-1; fOH(i)=fOH(i)-1; fPINALO(i)=fPINALO(i)+1; 

i=i+1;
Rnames{i} = 'PINALOH + hv = PINALO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'PINALOH'; 
fPINALOH(i)=fPINALOH(i)-1; fPINALO(i)=fPINALO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + HO2 = NC102OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'HO2'; 
fNC102O2(i)=fNC102O2(i)-1; fHO2(i)=fHO2(i)-1; fNC102OOH(i)=fNC102OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + NO = NC102O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'NO'; 
fNC102O2(i)=fNC102O2(i)-1; fNO(i)=fNO(i)-1; fNC102O(i)=fNC102O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + NO3 = NC102O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'NO3'; 
fNC102O2(i)=fNC102O2(i)-1; fNO3(i)=fNO3(i)-1; fNC102O(i)=fNC102O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC102O2 + RO2 = NC102O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'NC102O2'; Gstr{i,2} = 'RO2';
fNC102O2(i)=fNC102O2(i)-1; fNC102O(i)=fNC102O(i)+1; 

i=i+1;
Rnames{i} = 'C108OOH + OH = C108O2';
k(:,i) = 6.28e-11;
Gstr{i,1} = 'C108OOH'; Gstr{i,2} = 'OH'; 
fC108OOH(i)=fC108OOH(i)-1; fOH(i)=fOH(i)-1; fC108O2(i)=fC108O2(i)+1; 

i=i+1;
Rnames{i} = 'C108OOH + hv = C108O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C108OOH'; 
fC108OOH(i)=fC108OOH(i)-1; fC108O(i)=fC108O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C108OOH + hv = C108O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C108OOH'; 
fC108OOH(i)=fC108OOH(i)-1; fC108O(i)=fC108O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C108NO3 + OH = CO235C6CHO + CH3COCH3 + NO2';
k(:,i) = 2.85e-11;
Gstr{i,1} = 'C108NO3'; Gstr{i,2} = 'OH'; 
fC108NO3(i)=fC108NO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108NO3 + hv = C108O + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C108NO3'; 
fC108NO3(i)=fC108NO3(i)-1; fC108O(i)=fC108O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108NO3 + hv = C108O + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C108NO3'; 
fC108NO3(i)=fC108NO3(i)-1; fC108O(i)=fC108O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C108O = C717O2 + CH3COCH3';
k(:,i) = KDEC;
Gstr{i,1} = 'C108O'; 
fC108O(i)=fC108O(i)-1; fC717O2(i)=fC717O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C108OH + OH = C108O';
k(:,i) = 5.93e-11;
Gstr{i,1} = 'C108OH'; Gstr{i,2} = 'OH'; 
fC108OH(i)=fC108OH(i)-1; fOH(i)=fOH(i)-1; fC108O(i)=fC108O(i)+1; 

i=i+1;
Rnames{i} = 'C108OH + hv = C108O + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C108OH'; 
fC108OH(i)=fC108OH(i)-1; fC108O(i)=fC108O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO2 = C811CO3';
k(:,i) = KDEC.*0.80;
Gstr{i,1} = 'C89CO2'; 
fC89CO2(i)=fC89CO2(i)-1; fC811CO3(i)=fC811CO3(i)+1; 

i=i+1;
Rnames{i} = 'C89CO2 = C89O2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'C89CO2'; 
fC89CO2(i)=fC89CO2(i)-1; fC89O2(i)=fC89O2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO2H + OH = C89CO2';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'C89CO2H'; Gstr{i,2} = 'OH'; 
fC89CO2H(i)=fC89CO2H(i)-1; fOH(i)=fOH(i)-1; fC89CO2(i)=fC89CO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO2H + hv = C89CO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C89CO2H'; 
fC89CO2H(i)=fC89CO2H(i)-1; fC89CO2(i)=fC89CO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3H + OH = C89CO3';
k(:,i) = 3.00e-11;
Gstr{i,1} = 'C89CO3H'; Gstr{i,2} = 'OH'; 
fC89CO3H(i)=fC89CO3H(i)-1; fOH(i)=fOH(i)-1; fC89CO3(i)=fC89CO3(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3H + hv = C89CO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C89CO3H'; 
fC89CO3H(i)=fC89CO3H(i)-1; fC89CO2(i)=fC89CO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89CO3H + hv = C89CO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'C89CO3H'; 
fC89CO3H(i)=fC89CO3H(i)-1; fC89CO2(i)=fC89CO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89PAN + OH = CH3COCH3 + CO13C4CHO + CO + NO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'C89PAN'; Gstr{i,2} = 'OH'; 
fC89PAN(i)=fC89PAN(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89PAN = C89CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C89PAN'; 
fC89PAN(i)=fC89PAN(i)-1; fC89CO3(i)=fC89CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3H + OH = C920CO3';
k(:,i) = 9.16e-12;
Gstr{i,1} = 'C920CO3H'; Gstr{i,2} = 'OH'; 
fC920CO3H(i)=fC920CO3H(i)-1; fOH(i)=fOH(i)-1; fC920CO3(i)=fC920CO3(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3H + hv = C920O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C920CO3H'; 
fC920CO3H(i)=fC920CO3H(i)-1; fC920O2(i)=fC920O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920CO3H + hv = C920O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C920CO3H'; 
fC920CO3H(i)=fC920CO3H(i)-1; fC920O2(i)=fC920O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOPINONIC + OH = C920O2';
k(:,i) = 5.70e-12;
Gstr{i,1} = 'HOPINONIC'; Gstr{i,2} = 'OH'; 
fHOPINONIC(i)=fHOPINONIC(i)-1; fOH(i)=fOH(i)-1; fC920O2(i)=fC920O2(i)+1; 

i=i+1;
Rnames{i} = 'HOPINONIC + hv = C920O2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HOPINONIC'; 
fHOPINONIC(i)=fHOPINONIC(i)-1; fC920O2(i)=fC920O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C920PAN + OH = C109OH + CO + NO2';
k(:,i) = 5.56e-12;
Gstr{i,1} = 'C920PAN'; Gstr{i,2} = 'OH'; 
fC920PAN(i)=fC920PAN(i)-1; fOH(i)=fOH(i)-1; fC109OH(i)=fC109OH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920PAN = C920CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C920PAN'; 
fC920PAN(i)=fC920PAN(i)-1; fC920CO3(i)=fC920CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C920OOH + OH = C920O2';
k(:,i) = 2.36e-11;
Gstr{i,1} = 'C920OOH'; Gstr{i,2} = 'OH'; 
fC920OOH(i)=fC920OOH(i)-1; fOH(i)=fOH(i)-1; fC920O2(i)=fC920O2(i)+1; 

i=i+1;
Rnames{i} = 'C920OOH + hv = C920O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C920OOH'; 
fC920OOH(i)=fC920OOH(i)-1; fC920O(i)=fC920O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920OOH + hv = C920O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C920OOH'; 
fC920OOH(i)=fC920OOH(i)-1; fC920O(i)=fC920O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C920O = C921O2';
k(:,i) = 4.20e10.*exp(-3523./T);
Gstr{i,1} = 'C920O'; 
fC920O(i)=fC920O(i)-1; fC921O2(i)=fC921O2(i)+1; 

i=i+1;
Rnames{i} = 'C97OOH + OH = C97O2';
k(:,i) = 1.05e-11;
Gstr{i,1} = 'C97OOH'; Gstr{i,2} = 'OH'; 
fC97OOH(i)=fC97OOH(i)-1; fOH(i)=fOH(i)-1; fC97O2(i)=fC97O2(i)+1; 

i=i+1;
Rnames{i} = 'C97OOH + hv = C97O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C97OOH'; 
fC97OOH(i)=fC97OOH(i)-1; fC97O(i)=fC97O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C97OOH + hv = C97O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C97OOH'; 
fC97OOH(i)=fC97OOH(i)-1; fC97O(i)=fC97O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C97O = C98O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C97O'; 
fC97O(i)=fC97O(i)-1; fC98O2(i)=fC98O2(i)+1; 

i=i+1;
Rnames{i} = 'C97OH + OH = C97O';
k(:,i) = 7.20e-12;
Gstr{i,1} = 'C97OH'; Gstr{i,2} = 'OH'; 
fC97OH(i)=fC97OH(i)-1; fOH(i)=fOH(i)-1; fC97O(i)=fC97O(i)+1; 

i=i+1;
Rnames{i} = 'C97OH + hv = C97O + HO2';
k(:,i) = J22;
Gstr{i,1} = 'C97OH'; 
fC97OH(i)=fC97OH(i)-1; fC97O(i)=fC97O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3H + OH = C85CO3';
k(:,i) = 1.02e-11;
Gstr{i,1} = 'C85CO3H'; Gstr{i,2} = 'OH'; 
fC85CO3H(i)=fC85CO3H(i)-1; fOH(i)=fOH(i)-1; fC85CO3(i)=fC85CO3(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3H + hv = C85O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C85CO3H'; 
fC85CO3H(i)=fC85CO3H(i)-1; fC85O2(i)=fC85O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85CO3H + hv = C85O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'C85CO3H'; 
fC85CO3H(i)=fC85CO3H(i)-1; fC85O2(i)=fC85O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C9PAN2 + OH = C85OOH + CO + NO2';
k(:,i) = 6.60e-12;
Gstr{i,1} = 'C9PAN2'; Gstr{i,2} = 'OH'; 
fC9PAN2(i)=fC9PAN2(i)-1; fOH(i)=fOH(i)-1; fC85OOH(i)=fC85OOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C9PAN2 = C85CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C9PAN2'; 
fC9PAN2(i)=fC9PAN2(i)-1; fC85CO3(i)=fC85CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C85OOH + OH = C85O2';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'C85OOH'; Gstr{i,2} = 'OH'; 
fC85OOH(i)=fC85OOH(i)-1; fOH(i)=fOH(i)-1; fC85O2(i)=fC85O2(i)+1; 

i=i+1;
Rnames{i} = 'C85OOH + hv = C85O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C85OOH'; 
fC85OOH(i)=fC85OOH(i)-1; fC85O(i)=fC85O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85OOH + hv = C85O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C85OOH'; 
fC85OOH(i)=fC85OOH(i)-1; fC85O(i)=fC85O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C85O = C86O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C85O'; 
fC85O(i)=fC85O(i)-1; fC86O2(i)=fC86O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O = CH3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CH3COCH2O'; 
fCH3COCH2O(i)=fCH3COCH2O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

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
Rnames{i} = 'C719OOH + OH = C719O2';
k(:,i) = 7.06e-11;
Gstr{i,1} = 'C719OOH'; Gstr{i,2} = 'OH'; 
fC719OOH(i)=fC719OOH(i)-1; fOH(i)=fOH(i)-1; fC719O2(i)=fC719O2(i)+1; 

i=i+1;
Rnames{i} = 'C719OOH + hv = C719O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C719OOH'; 
fC719OOH(i)=fC719OOH(i)-1; fC719O(i)=fC719O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C719NO3 + OH = C716OH + NO2';
k(:,i) = 1.26e-11;
Gstr{i,1} = 'C719NO3'; Gstr{i,2} = 'OH'; 
fC719NO3(i)=fC719NO3(i)-1; fOH(i)=fOH(i)-1; fC716OH(i)=fC716OH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C719O = C716OH + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C719O'; 
fC719O(i)=fC719O(i)-1; fC716OH(i)=fC716OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C719OH + OH = C719O';
k(:,i) = 6.72e-11;
Gstr{i,1} = 'C719OH'; Gstr{i,2} = 'OH'; 
fC719OH(i)=fC719OH(i)-1; fOH(i)=fOH(i)-1; fC719O(i)=fC719O(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CHO + NO3 = CO235C6CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO235C6CHO'; Gstr{i,2} = 'NO3'; 
fCO235C6CHO(i)=fCO235C6CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CHO + OH = CO235C6CO3';
k(:,i) = 6.70e-11;
Gstr{i,1} = 'CO235C6CHO'; Gstr{i,2} = 'OH'; 
fCO235C6CHO(i)=fCO235C6CHO(i)-1; fOH(i)=fOH(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CHO + hv = CHOC3COCO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO235C6CHO'; 
fCO235C6CHO(i)=fCO235C6CHO(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + HO2 = C106OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'HO2'; 
fC106O2(i)=fC106O2(i)-1; fHO2(i)=fHO2(i)-1; fC106OOH(i)=fC106OOH(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + NO = C106NO3';
k(:,i) = KRO2NO.*0.125;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'NO'; 
fC106O2(i)=fC106O2(i)-1; fNO(i)=fNO(i)-1; fC106NO3(i)=fC106NO3(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + NO = C106O + NO2';
k(:,i) = KRO2NO.*0.875;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'NO'; 
fC106O2(i)=fC106O2(i)-1; fNO(i)=fNO(i)-1; fC106O(i)=fC106O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + NO3 = C106O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'NO3'; 
fC106O2(i)=fC106O2(i)-1; fNO3(i)=fNO3(i)-1; fC106O(i)=fC106O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + RO2 = C106O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'RO2';
fC106O2(i)=fC106O2(i)-1; fC106O(i)=fC106O(i)+1; 

i=i+1;
Rnames{i} = 'C106O2 + RO2 = C106OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C106O2'; Gstr{i,2} = 'RO2';
fC106O2(i)=fC106O2(i)-1; fC106OH(i)=fC106OH(i)+1; 

i=i+1;
Rnames{i} = 'NC102OOH + OH = NC102O2';
k(:,i) = 8.03e-12;
Gstr{i,1} = 'NC102OOH'; Gstr{i,2} = 'OH'; 
fNC102OOH(i)=fNC102OOH(i)-1; fOH(i)=fOH(i)-1; fNC102O2(i)=fNC102O2(i)+1; 

i=i+1;
Rnames{i} = 'NC102OOH + hv = NC102O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC102OOH'; 
fNC102OOH(i)=fNC102OOH(i)-1; fNC102O(i)=fNC102O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC102O = NC71O2 + CH3COCH3';
k(:,i) = KDEC;
Gstr{i,1} = 'NC102O'; 
fNC102O(i)=fNC102O(i)-1; fNC71O2(i)=fNC71O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + HO2 = C717OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'HO2'; 
fC717O2(i)=fC717O2(i)-1; fHO2(i)=fHO2(i)-1; fC717OOH(i)=fC717OOH(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + NO = C717NO3';
k(:,i) = KRO2NO.*0.278;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'NO'; 
fC717O2(i)=fC717O2(i)-1; fNO(i)=fNO(i)-1; fC717NO3(i)=fC717NO3(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + NO = C717O + NO2';
k(:,i) = KRO2NO.*0.722;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'NO'; 
fC717O2(i)=fC717O2(i)-1; fNO(i)=fNO(i)-1; fC717O(i)=fC717O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + NO3 = C717O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'NO3'; 
fC717O2(i)=fC717O2(i)-1; fNO3(i)=fNO3(i)-1; fC717O(i)=fC717O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + RO2 = C717O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'RO2';
fC717O2(i)=fC717O2(i)-1; fC717O(i)=fC717O(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + RO2 = C717OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'RO2';
fC717O2(i)=fC717O2(i)-1; fC717OH(i)=fC717OH(i)+1; 

i=i+1;
Rnames{i} = 'C717O2 + RO2 = CO235C6CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C717O2'; Gstr{i,2} = 'RO2';
fC717O2(i)=fC717O2(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + HO2 = C811CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'HO2'; 
fC811CO3(i)=fC811CO3(i)-1; fHO2(i)=fHO2(i)-1; fC811CO3H(i)=fC811CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + HO2 = C811O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'HO2'; 
fC811CO3(i)=fC811CO3(i)-1; fHO2(i)=fHO2(i)-1; fC811O2(i)=fC811O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + HO2 = PINIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'HO2'; 
fC811CO3(i)=fC811CO3(i)-1; fHO2(i)=fHO2(i)-1; fPINIC(i)=fPINIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + NO = C811O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'NO'; 
fC811CO3(i)=fC811CO3(i)-1; fNO(i)=fNO(i)-1; fC811O2(i)=fC811O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + NO2 = C811PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'NO2'; 
fC811CO3(i)=fC811CO3(i)-1; fNO2(i)=fNO2(i)-1; fC811PAN(i)=fC811PAN(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + NO3 = C811O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'NO3'; 
fC811CO3(i)=fC811CO3(i)-1; fNO3(i)=fNO3(i)-1; fC811O2(i)=fC811O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + RO2 = C811O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'RO2';
fC811CO3(i)=fC811CO3(i)-1; fC811O2(i)=fC811O2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3 + RO2 = PINIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C811CO3'; Gstr{i,2} = 'RO2';
fC811CO3(i)=fC811CO3(i)-1; fPINIC(i)=fPINIC(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + HO2 = C89OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'HO2'; 
fC89O2(i)=fC89O2(i)-1; fHO2(i)=fHO2(i)-1; fC89OOH(i)=fC89OOH(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + NO = C89NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'NO'; 
fC89O2(i)=fC89O2(i)-1; fNO(i)=fNO(i)-1; fC89NO3(i)=fC89NO3(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + NO = C89O + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'NO'; 
fC89O2(i)=fC89O2(i)-1; fNO(i)=fNO(i)-1; fC89O(i)=fC89O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + NO3 = C89O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'NO3'; 
fC89O2(i)=fC89O2(i)-1; fNO3(i)=fNO3(i)-1; fC89O(i)=fC89O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + RO2 = C89O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'RO2';
fC89O2(i)=fC89O2(i)-1; fC89O(i)=fC89O(i)+1; 

i=i+1;
Rnames{i} = 'C89O2 + RO2 = C89OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C89O2'; Gstr{i,2} = 'RO2';
fC89O2(i)=fC89O2(i)-1; fC89OH(i)=fC89OH(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4CHO + NO3 = CHOC3COCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*5.5;
Gstr{i,1} = 'CO13C4CHO'; Gstr{i,2} = 'NO3'; 
fCO13C4CHO(i)=fCO13C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4CHO + OH = CHOC3COCO3';
k(:,i) = 1.33e-10;
Gstr{i,1} = 'CO13C4CHO'; Gstr{i,2} = 'OH'; 
fCO13C4CHO(i)=fCO13C4CHO(i)-1; fOH(i)=fOH(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C4CHO + hv = CHOC3COO2 + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'CO13C4CHO'; 
fCO13C4CHO(i)=fCO13C4CHO(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + HO2 = C921OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'HO2'; 
fC921O2(i)=fC921O2(i)-1; fHO2(i)=fHO2(i)-1; fC921OOH(i)=fC921OOH(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + NO = C921O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'NO'; 
fC921O2(i)=fC921O2(i)-1; fNO(i)=fNO(i)-1; fC921O(i)=fC921O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + NO3 = C921O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'NO3'; 
fC921O2(i)=fC921O2(i)-1; fNO3(i)=fNO3(i)-1; fC921O(i)=fC921O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C921O2 + RO2 = C921O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C921O2'; Gstr{i,2} = 'RO2';
fC921O2(i)=fC921O2(i)-1; fC921O(i)=fC921O(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + HO2 = C98OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'HO2'; 
fC98O2(i)=fC98O2(i)-1; fHO2(i)=fHO2(i)-1; fC98OOH(i)=fC98OOH(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + NO = C98NO3';
k(:,i) = KRO2NO.*0.118;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'NO'; 
fC98O2(i)=fC98O2(i)-1; fNO(i)=fNO(i)-1; fC98NO3(i)=fC98NO3(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + NO = C98O + NO2';
k(:,i) = KRO2NO.*0.882;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'NO'; 
fC98O2(i)=fC98O2(i)-1; fNO(i)=fNO(i)-1; fC98O(i)=fC98O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + NO3 = C98O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'NO3'; 
fC98O2(i)=fC98O2(i)-1; fNO3(i)=fNO3(i)-1; fC98O(i)=fC98O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + RO2 = C98O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'RO2';
fC98O2(i)=fC98O2(i)-1; fC98O(i)=fC98O(i)+1; 

i=i+1;
Rnames{i} = 'C98O2 + RO2 = C98OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C98O2'; Gstr{i,2} = 'RO2';
fC98O2(i)=fC98O2(i)-1; fC98OH(i)=fC98OH(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + HO2 = C86OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'HO2'; 
fC86O2(i)=fC86O2(i)-1; fHO2(i)=fHO2(i)-1; fC86OOH(i)=fC86OOH(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + NO = C86O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'NO'; 
fC86O2(i)=fC86O2(i)-1; fNO(i)=fNO(i)-1; fC86O(i)=fC86O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + NO3 = C86O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'NO3'; 
fC86O2(i)=fC86O2(i)-1; fNO3(i)=fNO3(i)-1; fC86O(i)=fC86O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C86O2 + RO2 = C86O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C86O2'; Gstr{i,2} = 'RO2';
fC86O2(i)=fC86O2(i)-1; fC86O(i)=fC86O(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + NO3 = H3C25C6CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C716OH'; Gstr{i,2} = 'NO3'; 
fC716OH(i)=fC716OH(i)-1; fNO3(i)=fNO3(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + OH = CO235C6CHO + HO2';
k(:,i) = 8.92e-11.*0.232;
Gstr{i,1} = 'C716OH'; Gstr{i,2} = 'OH'; 
fC716OH(i)=fC716OH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + OH = H3C25C6CO3';
k(:,i) = 8.92e-11.*0.768;
Gstr{i,1} = 'C716OH'; Gstr{i,2} = 'OH'; 
fC716OH(i)=fC716OH(i)-1; fOH(i)=fOH(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'C716OH + hv = H3C25C6O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C716OH'; 
fC716OH(i)=fC716OH(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + HO2 = C235C6CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'HO2'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fC235C6CO3H(i)=fC235C6CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + HO2 = CO235C6O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'HO2'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + NO = CO235C6O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'NO'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fNO(i)=fNO(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + NO2 = C7PAN3';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'NO2'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fNO2(i)=fNO2(i)-1; fC7PAN3(i)=fC7PAN3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + NO3 = CO235C6O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'NO3'; 
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6CO3 + RO2 = CO235C6O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO235C6CO3'; Gstr{i,2} = 'RO2';
fCO235C6CO3(i)=fCO235C6CO3(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + HO2 = CHOC3COO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'HO2'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + HO2 = CHOC3COOOH';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'HO2'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOC3COOOH(i)=fCHOC3COOOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + NO = CHOC3COO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'NO'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fNO(i)=fNO(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + NO2 = CHOC3COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'NO2'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fNO2(i)=fNO2(i)-1; fCHOC3COPAN(i)=fCHOC3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + NO3 = CHOC3COO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'NO3'; 
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COCO3 + RO2 = CHOC3COO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CHOC3COCO3'; Gstr{i,2} = 'RO2';
fCHOC3COCO3(i)=fCHOC3COCO3(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; 

i=i+1;
Rnames{i} = 'C106OOH + OH = C106O2';
k(:,i) = 8.01e-11;
Gstr{i,1} = 'C106OOH'; Gstr{i,2} = 'OH'; 
fC106OOH(i)=fC106OOH(i)-1; fOH(i)=fOH(i)-1; fC106O2(i)=fC106O2(i)+1; 

i=i+1;
Rnames{i} = 'C106OOH + hv = C106O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C106OOH'; 
fC106OOH(i)=fC106OOH(i)-1; fC106O(i)=fC106O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C106OOH + hv = C106O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C106OOH'; 
fC106OOH(i)=fC106OOH(i)-1; fC106O(i)=fC106O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C106NO3 + OH = CO235C6CHO + CH3COCH3 + NO2';
k(:,i) = 7.03e-11;
Gstr{i,1} = 'C106NO3'; Gstr{i,2} = 'OH'; 
fC106NO3(i)=fC106NO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106NO3 + hv = C106O + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C106NO3'; 
fC106NO3(i)=fC106NO3(i)-1; fC106O(i)=fC106O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106NO3 + hv = C106O + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C106NO3'; 
fC106NO3(i)=fC106NO3(i)-1; fC106O(i)=fC106O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C106O = C716O2 + CH3COCH3';
k(:,i) = KDEC;
Gstr{i,1} = 'C106O'; 
fC106O(i)=fC106O(i)-1; fC716O2(i)=fC716O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C106OH + OH = C106O';
k(:,i) = 7.66e-11;
Gstr{i,1} = 'C106OH'; Gstr{i,2} = 'OH'; 
fC106OH(i)=fC106OH(i)-1; fOH(i)=fOH(i)-1; fC106O(i)=fC106O(i)+1; 

i=i+1;
Rnames{i} = 'C106OH + hv = C106O + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C106OH'; 
fC106OH(i)=fC106OH(i)-1; fC106O(i)=fC106O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + HO2 = NC71OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'HO2'; 
fNC71O2(i)=fNC71O2(i)-1; fHO2(i)=fHO2(i)-1; fNC71OOH(i)=fNC71OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + NO = NC71O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'NO'; 
fNC71O2(i)=fNC71O2(i)-1; fNO(i)=fNO(i)-1; fNC71O(i)=fNC71O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + NO3 = NC71O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'NO3'; 
fNC71O2(i)=fNC71O2(i)-1; fNO3(i)=fNO3(i)-1; fNC71O(i)=fNC71O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O2 + RO2 = NC71O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NC71O2'; Gstr{i,2} = 'RO2';
fNC71O2(i)=fNC71O2(i)-1; fNC71O(i)=fNC71O(i)+1; 

i=i+1;
Rnames{i} = 'C717OOH + OH = CO235C6CHO + OH';
k(:,i) = 2.00e-10;
Gstr{i,1} = 'C717OOH'; Gstr{i,2} = 'OH'; 
fC717OOH(i)=fC717OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717OOH + hv = C717O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C717OOH'; 
fC717OOH(i)=fC717OOH(i)-1; fC717O(i)=fC717O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717OOH + hv = C717O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C717OOH'; 
fC717OOH(i)=fC717OOH(i)-1; fC717O(i)=fC717O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C717NO3 + OH = CO235C6CHO + NO2';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'C717NO3'; Gstr{i,2} = 'OH'; 
fC717NO3(i)=fC717NO3(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717NO3 + hv = C717O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C717NO3'; 
fC717NO3(i)=fC717NO3(i)-1; fC717O(i)=fC717O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717NO3 + hv = C717O + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C717NO3'; 
fC717NO3(i)=fC717NO3(i)-1; fC717O(i)=fC717O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C717O = CO235C6CHO + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'C717O'; 
fC717O(i)=fC717O(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C717OH + OH = CO235C6CHO + HO2';
k(:,i) = 1.26e-10;
Gstr{i,1} = 'C717OH'; Gstr{i,2} = 'OH'; 
fC717OH(i)=fC717OH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C717OH + hv = C717O + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C717OH'; 
fC717OH(i)=fC717OH(i)-1; fC717O(i)=fC717O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3H + OH = C811CO3';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'C811CO3H'; Gstr{i,2} = 'OH'; 
fC811CO3H(i)=fC811CO3H(i)-1; fOH(i)=fOH(i)-1; fC811CO3(i)=fC811CO3(i)+1; 

i=i+1;
Rnames{i} = 'C811CO3H + hv = C811O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C811CO3H'; 
fC811CO3H(i)=fC811CO3H(i)-1; fC811O2(i)=fC811O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + HO2 = C811OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'HO2'; 
fC811O2(i)=fC811O2(i)-1; fHO2(i)=fHO2(i)-1; fC811OOH(i)=fC811OOH(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + NO = C811NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'NO'; 
fC811O2(i)=fC811O2(i)-1; fNO(i)=fNO(i)-1; fC811NO3(i)=fC811NO3(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + NO = C811O + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'NO'; 
fC811O2(i)=fC811O2(i)-1; fNO(i)=fNO(i)-1; fC811O(i)=fC811O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + NO3 = C811O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'NO3'; 
fC811O2(i)=fC811O2(i)-1; fNO3(i)=fNO3(i)-1; fC811O(i)=fC811O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + RO2 = C721CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'RO2';
fC811O2(i)=fC811O2(i)-1; fC721CHO(i)=fC721CHO(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + RO2 = C811O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'RO2';
fC811O2(i)=fC811O2(i)-1; fC811O(i)=fC811O(i)+1; 

i=i+1;
Rnames{i} = 'C811O2 + RO2 = C811OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'C811O2'; Gstr{i,2} = 'RO2';
fC811O2(i)=fC811O2(i)-1; fC811OH(i)=fC811OH(i)+1; 

i=i+1;
Rnames{i} = 'PINIC + OH = C811O2';
k(:,i) = 7.29e-12;
Gstr{i,1} = 'PINIC'; Gstr{i,2} = 'OH'; 
fPINIC(i)=fPINIC(i)-1; fOH(i)=fOH(i)-1; fC811O2(i)=fC811O2(i)+1; 

i=i+1;
Rnames{i} = 'C811PAN + OH = C721CHO + CO + NO2';
k(:,i) = 6.77e-12;
Gstr{i,1} = 'C811PAN'; Gstr{i,2} = 'OH'; 
fC811PAN(i)=fC811PAN(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811PAN = C811CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C811PAN'; 
fC811PAN(i)=fC811PAN(i)-1; fC811CO3(i)=fC811CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89OOH + OH = C89O2';
k(:,i) = 3.61e-11;
Gstr{i,1} = 'C89OOH'; Gstr{i,2} = 'OH'; 
fC89OOH(i)=fC89OOH(i)-1; fOH(i)=fOH(i)-1; fC89O2(i)=fC89O2(i)+1; 

i=i+1;
Rnames{i} = 'C89OOH + hv = C89O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C89OOH'; 
fC89OOH(i)=fC89OOH(i)-1; fC89O(i)=fC89O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89OOH + hv = C89O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C89OOH'; 
fC89OOH(i)=fC89OOH(i)-1; fC89O(i)=fC89O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C89NO3 + OH = CH3COCH3 + CO13C4CHO + NO2';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'C89NO3'; Gstr{i,2} = 'OH'; 
fC89NO3(i)=fC89NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89NO3 + hv = C89O + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C89NO3'; 
fC89NO3(i)=fC89NO3(i)-1; fC89O(i)=fC89O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89NO3 + hv = C89O + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C89NO3'; 
fC89NO3(i)=fC89NO3(i)-1; fC89O(i)=fC89O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C89O = C810O2';
k(:,i) = 2.70e14.*exp(-6643./T);
Gstr{i,1} = 'C89O'; 
fC89O(i)=fC89O(i)-1; fC810O2(i)=fC810O2(i)+1; 

i=i+1;
Rnames{i} = 'C89OH + OH = C89O';
k(:,i) = 2.86e-11;
Gstr{i,1} = 'C89OH'; Gstr{i,2} = 'OH'; 
fC89OH(i)=fC89OH(i)-1; fOH(i)=fOH(i)-1; fC89O(i)=fC89O(i)+1; 

i=i+1;
Rnames{i} = 'C89OH + hv = C89O + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C89OH'; 
fC89OH(i)=fC89OH(i)-1; fC89O(i)=fC89O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + HO2 = C413COOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'HO2'; 
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fHO2(i)=fHO2(i)-1; fC413COOOH(i)=fC413COOOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + NO = CHOC3COO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'NO'; 
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fNO(i)=fNO(i)-1; fCHOC3COO(i)=fCHOC3COO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + NO3 = CHOC3COO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'NO3'; 
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fNO3(i)=fNO3(i)-1; fCHOC3COO(i)=fCHOC3COO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO2 + RO2 = CHOC3COO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CHOC3COO2'; Gstr{i,2} = 'RO2';
fCHOC3COO2(i)=fCHOC3COO2(i)-1; fCHOC3COO(i)=fCHOC3COO(i)+1; 

i=i+1;
Rnames{i} = 'C921OOH + OH = C921O2';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'C921OOH'; Gstr{i,2} = 'OH'; 
fC921OOH(i)=fC921OOH(i)-1; fOH(i)=fOH(i)-1; fC921O2(i)=fC921O2(i)+1; 

i=i+1;
Rnames{i} = 'C921OOH + hv = C921O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C921OOH'; 
fC921OOH(i)=fC921OOH(i)-1; fC921O(i)=fC921O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C921OOH + hv = C921O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C921OOH'; 
fC921OOH(i)=fC921OOH(i)-1; fC921O(i)=fC921O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C921O = C922O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C921O'; 
fC921O(i)=fC921O(i)-1; fC922O2(i)=fC922O2(i)+1; 

i=i+1;
Rnames{i} = 'C98OOH + OH = C98O2';
k(:,i) = 2.05e-11;
Gstr{i,1} = 'C98OOH'; Gstr{i,2} = 'OH'; 
fC98OOH(i)=fC98OOH(i)-1; fOH(i)=fOH(i)-1; fC98O2(i)=fC98O2(i)+1; 

i=i+1;
Rnames{i} = 'C98OOH + hv = C98O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C98OOH'; 
fC98OOH(i)=fC98OOH(i)-1; fC98O(i)=fC98O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C98OOH + hv = C98O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C98OOH'; 
fC98OOH(i)=fC98OOH(i)-1; fC98O(i)=fC98O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C98NO3 + OH = CH3COCH3 + C614CO + NO2';
k(:,i) = 5.37e-12;
Gstr{i,1} = 'C98NO3'; Gstr{i,2} = 'OH'; 
fC98NO3(i)=fC98NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC614CO(i)=fC614CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98NO3 + hv = C98O + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C98NO3'; 
fC98NO3(i)=fC98NO3(i)-1; fC98O(i)=fC98O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98NO3 + hv = C98O + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C98NO3'; 
fC98NO3(i)=fC98NO3(i)-1; fC98O(i)=fC98O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C98O = C614O2 + CH3COCH3';
k(:,i) = KDEC;
Gstr{i,1} = 'C98O'; 
fC98O(i)=fC98O(i)-1; fC614O2(i)=fC614O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'C98OH + OH = C98O';
k(:,i) = 1.69e-11;
Gstr{i,1} = 'C98OH'; Gstr{i,2} = 'OH'; 
fC98OH(i)=fC98OH(i)-1; fOH(i)=fOH(i)-1; fC98O(i)=fC98O(i)+1; 

i=i+1;
Rnames{i} = 'C98OH + hv = C98O + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C98OH'; 
fC98OH(i)=fC98OH(i)-1; fC98O(i)=fC98O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C86OOH + OH = C86O2';
k(:,i) = 3.45e-11;
Gstr{i,1} = 'C86OOH'; Gstr{i,2} = 'OH'; 
fC86OOH(i)=fC86OOH(i)-1; fOH(i)=fOH(i)-1; fC86O2(i)=fC86O2(i)+1; 

i=i+1;
Rnames{i} = 'C86OOH + hv = C86O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C86OOH'; 
fC86OOH(i)=fC86OOH(i)-1; fC86O(i)=fC86O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C86OOH + hv = C86O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C86OOH'; 
fC86OOH(i)=fC86OOH(i)-1; fC86O(i)=fC86O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C86O = C511O2 + CH3COCH3';
k(:,i) = KDEC;
Gstr{i,1} = 'C86O'; 
fC86O(i)=fC86O(i)-1; fC511O2(i)=fC511O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + HO2 = H3C25C6O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'HO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + HO2 = H3C25CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'HO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C25CCO2H(i)=fH3C25CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + HO2 = H3C25CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'HO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C25CCO3H(i)=fH3C25CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + NO = H3C25C6O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'NO'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fNO(i)=fNO(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + NO2 = H3C25C6PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'NO2'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fNO2(i)=fNO2(i)-1; fH3C25C6PAN(i)=fH3C25C6PAN(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + NO3 = H3C25C6O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'NO3'; 
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fNO3(i)=fNO3(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + RO2 = H3C25C6O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'RO2';
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6CO3 + RO2 = H3C25CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'H3C25C6CO3'; Gstr{i,2} = 'RO2';
fH3C25C6CO3(i)=fH3C25C6CO3(i)-1; fH3C25CCO2H(i)=fH3C25CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + HO2 = H3C25C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'HO2'; 
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fHO2(i)=fHO2(i)-1; fH3C25C6OOH(i)=fH3C25C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + NO = H3C25C6O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'NO'; 
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fNO(i)=fNO(i)-1; fH3C25C6O(i)=fH3C25C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + NO3 = H3C25C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'NO3'; 
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fNO3(i)=fNO3(i)-1; fH3C25C6O(i)=fH3C25C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + RO2 = H3C25C5CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'RO2';
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + RO2 = H3C25C6O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'RO2';
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fH3C25C6O(i)=fH3C25C6O(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O2 + RO2 = H3C25C6OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'H3C25C6O2'; Gstr{i,2} = 'RO2';
fH3C25C6O2(i)=fH3C25C6O2(i)-1; fH3C25C6OH(i)=fH3C25C6OH(i)+1; 

i=i+1;
Rnames{i} = 'C235C6CO3H + OH = CO235C6CO3';
k(:,i) = 4.75e-12;
Gstr{i,1} = 'C235C6CO3H'; Gstr{i,2} = 'OH'; 
fC235C6CO3H(i)=fC235C6CO3H(i)-1; fOH(i)=fOH(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'C235C6CO3H + hv = CO235C6O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C235C6CO3H'; 
fC235C6CO3H(i)=fC235C6CO3H(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C235C6CO3H + hv = CO235C6O2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'C235C6CO3H'; 
fC235C6CO3H(i)=fC235C6CO3H(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + HO2 = CO235C6OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'HO2'; 
fCO235C6O2(i)=fCO235C6O2(i)-1; fHO2(i)=fHO2(i)-1; fCO235C6OOH(i)=fCO235C6OOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + NO = CO235C6O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'NO'; 
fCO235C6O2(i)=fCO235C6O2(i)-1; fNO(i)=fNO(i)-1; fCO235C6O(i)=fCO235C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + NO3 = CO235C6O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'NO3'; 
fCO235C6O2(i)=fCO235C6O2(i)-1; fNO3(i)=fNO3(i)-1; fCO235C6O(i)=fCO235C6O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O2 + RO2 = CO235C6O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CO235C6O2'; Gstr{i,2} = 'RO2';
fCO235C6O2(i)=fCO235C6O2(i)-1; fCO235C6O(i)=fCO235C6O(i)+1; 

i=i+1;
Rnames{i} = 'C7PAN3 + OH = CO235C5CHO + CO + NO2';
k(:,i) = 8.83e-13;
Gstr{i,1} = 'C7PAN3'; Gstr{i,2} = 'OH'; 
fC7PAN3(i)=fC7PAN3(i)-1; fOH(i)=fOH(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C7PAN3 = CO235C6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C7PAN3'; 
fC7PAN3(i)=fC7PAN3(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH + OH = CHOC3COCO3';
k(:,i) = 7.55e-11;
Gstr{i,1} = 'CHOC3COOOH'; Gstr{i,2} = 'OH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fOH(i)=fOH(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH + hv = CHOC3COO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CHOC3COOOH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH + hv = CHOC3COO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CHOC3COOOH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COOOH + hv = CHOC3COO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'CHOC3COOOH'; 
fCHOC3COOOH(i)=fCHOC3COOOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COPAN + OH = C4CODIAL + CO + NO2';
k(:,i) = 7.19e-11;
Gstr{i,1} = 'CHOC3COPAN'; Gstr{i,2} = 'OH'; 
fCHOC3COPAN(i)=fCHOC3COPAN(i)-1; fOH(i)=fOH(i)-1; fC4CODIAL(i)=fC4CODIAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COPAN = CHOC3COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CHOC3COPAN'; 
fCHOC3COPAN(i)=fCHOC3COPAN(i)-1; fCHOC3COCO3(i)=fCHOC3COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + HO2 = C716OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'HO2'; 
fC716O2(i)=fC716O2(i)-1; fHO2(i)=fHO2(i)-1; fC716OOH(i)=fC716OOH(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + NO = C716O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'NO'; 
fC716O2(i)=fC716O2(i)-1; fNO(i)=fNO(i)-1; fC716O(i)=fC716O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + NO3 = C716O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'NO3'; 
fC716O2(i)=fC716O2(i)-1; fNO3(i)=fNO3(i)-1; fC716O(i)=fC716O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + RO2 = C716O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'RO2';
fC716O2(i)=fC716O2(i)-1; fC716O(i)=fC716O(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + RO2 = C716OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'RO2';
fC716O2(i)=fC716O2(i)-1; fC716OH(i)=fC716OH(i)+1; 

i=i+1;
Rnames{i} = 'C716O2 + RO2 = CO235C6CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C716O2'; Gstr{i,2} = 'RO2';
fC716O2(i)=fC716O2(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC71OOH + OH = NC71O2';
k(:,i) = 3.25e-11;
Gstr{i,1} = 'NC71OOH'; Gstr{i,2} = 'OH'; 
fNC71OOH(i)=fNC71OOH(i)-1; fOH(i)=fOH(i)-1; fNC71O2(i)=fNC71O2(i)+1; 

i=i+1;
Rnames{i} = 'NC71OOH + hv = NC71O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC71OOH'; 
fNC71OOH(i)=fNC71OOH(i)-1; fNC71O(i)=fNC71O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC71O = CO235C6CHO + NO2';
k(:,i) = 4.00e04;
Gstr{i,1} = 'NC71O'; 
fNC71O(i)=fNC71O(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC71O = NC71CO + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'NC71O'; 
fNC71O(i)=fNC71O(i)-1; fNC71CO(i)=fNC71CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C811OOH + OH = C721CHO + OH';
k(:,i) = 1.70e-11;
Gstr{i,1} = 'C811OOH'; Gstr{i,2} = 'OH'; 
fC811OOH(i)=fC811OOH(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811OOH + hv = C811O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C811OOH'; 
fC811OOH(i)=fC811OOH(i)-1; fC811O(i)=fC811O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C811NO3 + OH = C721CHO + NO2';
k(:,i) = 3.29e-12;
Gstr{i,1} = 'C811NO3'; Gstr{i,2} = 'OH'; 
fC811NO3(i)=fC811NO3(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811NO3 + hv = C811O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C811NO3'; 
fC811NO3(i)=fC811NO3(i)-1; fC811O(i)=fC811O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C811O = C812O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C811O'; 
fC811O(i)=fC811O(i)-1; fC812O2(i)=fC812O2(i)+1; 

i=i+1;
Rnames{i} = 'C721CHO + NO3 = C721CO3 + HNO3';
k(:,i) = KNO3AL.*8.5;
Gstr{i,1} = 'C721CHO'; Gstr{i,2} = 'NO3'; 
fC721CHO(i)=fC721CHO(i)-1; fNO3(i)=fNO3(i)-1; fC721CO3(i)=fC721CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CHO + OH = C721CO3';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'C721CHO'; Gstr{i,2} = 'OH'; 
fC721CHO(i)=fC721CHO(i)-1; fOH(i)=fOH(i)-1; fC721CO3(i)=fC721CO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CHO + hv = C721O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C721CHO'; 
fC721CHO(i)=fC721CHO(i)-1; fC721O2(i)=fC721O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C811OH + OH = C721CHO + HO2';
k(:,i) = 7.89e-12;
Gstr{i,1} = 'C811OH'; Gstr{i,2} = 'OH'; 
fC811OH(i)=fC811OH(i)-1; fOH(i)=fOH(i)-1; fC721CHO(i)=fC721CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + HO2 = C810OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'HO2'; 
fC810O2(i)=fC810O2(i)-1; fHO2(i)=fHO2(i)-1; fC810OOH(i)=fC810OOH(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + NO = C810NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'NO'; 
fC810O2(i)=fC810O2(i)-1; fNO(i)=fNO(i)-1; fC810NO3(i)=fC810NO3(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + NO = C810O + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'NO'; 
fC810O2(i)=fC810O2(i)-1; fNO(i)=fNO(i)-1; fC810O(i)=fC810O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + NO3 = C810O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'NO3'; 
fC810O2(i)=fC810O2(i)-1; fNO3(i)=fNO3(i)-1; fC810O(i)=fC810O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + RO2 = C810O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'RO2';
fC810O2(i)=fC810O2(i)-1; fC810O(i)=fC810O(i)+1; 

i=i+1;
Rnames{i} = 'C810O2 + RO2 = C810OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C810O2'; Gstr{i,2} = 'RO2';
fC810O2(i)=fC810O2(i)-1; fC810OH(i)=fC810OH(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH + OH = CHOC3COO2';
k(:,i) = 8.33e-11;
Gstr{i,1} = 'C413COOOH'; Gstr{i,2} = 'OH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fOH(i)=fOH(i)-1; fCHOC3COO2(i)=fCHOC3COO2(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH + hv = CHOC3COO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C413COOOH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fCHOC3COO(i)=fCHOC3COO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH + hv = CHOC3COO + OH';
k(:,i) = J22;
Gstr{i,1} = 'C413COOOH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fCHOC3COO(i)=fCHOC3COO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C413COOOH + hv = CHOC3COO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C413COOOH'; 
fC413COOOH(i)=fC413COOOH(i)-1; fCHOC3COO(i)=fCHOC3COO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOC3COO = HCOCH2CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CHOC3COO'; 
fCHOC3COO(i)=fCHOC3COO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + HO2 = C922OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'HO2'; 
fC922O2(i)=fC922O2(i)-1; fHO2(i)=fHO2(i)-1; fC922OOH(i)=fC922OOH(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + NO = C922O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'NO'; 
fC922O2(i)=fC922O2(i)-1; fNO(i)=fNO(i)-1; fC922O(i)=fC922O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + NO3 = C922O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'NO3'; 
fC922O2(i)=fC922O2(i)-1; fNO3(i)=fNO3(i)-1; fC922O(i)=fC922O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C922O2 + RO2 = C922O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C922O2'; Gstr{i,2} = 'RO2';
fC922O2(i)=fC922O2(i)-1; fC922O(i)=fC922O(i)+1; 

i=i+1;
Rnames{i} = 'C614CO + OH = CO235C5CHO + HO2';
k(:,i) = 3.22e-12;
Gstr{i,1} = 'C614CO'; Gstr{i,2} = 'OH'; 
fC614CO(i)=fC614CO(i)-1; fOH(i)=fOH(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C614CO + hv = BIACETO2 + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'C614CO'; 
fC614CO(i)=fC614CO(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + HO2 = C614OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'HO2'; 
fC614O2(i)=fC614O2(i)-1; fHO2(i)=fHO2(i)-1; fC614OOH(i)=fC614OOH(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + NO = C614NO3';
k(:,i) = KRO2NO.*0.098;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'NO'; 
fC614O2(i)=fC614O2(i)-1; fNO(i)=fNO(i)-1; fC614NO3(i)=fC614NO3(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + NO = C614O + NO2';
k(:,i) = KRO2NO.*0.902;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'NO'; 
fC614O2(i)=fC614O2(i)-1; fNO(i)=fNO(i)-1; fC614O(i)=fC614O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + NO3 = C614O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'NO3'; 
fC614O2(i)=fC614O2(i)-1; fNO3(i)=fNO3(i)-1; fC614O(i)=fC614O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + RO2 = C614CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'RO2';
fC614O2(i)=fC614O2(i)-1; fC614CO(i)=fC614CO(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + RO2 = C614O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'RO2';
fC614O2(i)=fC614O2(i)-1; fC614O(i)=fC614O(i)+1; 

i=i+1;
Rnames{i} = 'C614O2 + RO2 = C614OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C614O2'; Gstr{i,2} = 'RO2';
fC614O2(i)=fC614O2(i)-1; fC614OH(i)=fC614OH(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + HO2 = C511OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'HO2'; 
fC511O2(i)=fC511O2(i)-1; fHO2(i)=fHO2(i)-1; fC511OOH(i)=fC511OOH(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + NO = C511O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'NO'; 
fC511O2(i)=fC511O2(i)-1; fNO(i)=fNO(i)-1; fC511O(i)=fC511O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + NO3 = C511O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'NO3'; 
fC511O2(i)=fC511O2(i)-1; fNO3(i)=fNO3(i)-1; fC511O(i)=fC511O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C511O2 + RO2 = C511O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C511O2'; Gstr{i,2} = 'RO2';
fC511O2(i)=fC511O2(i)-1; fC511O(i)=fC511O(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO2H + OH = H3C25C6O2';
k(:,i) = 2.39e-11;
Gstr{i,1} = 'H3C25CCO2H'; Gstr{i,2} = 'OH'; 
fH3C25CCO2H(i)=fH3C25CCO2H(i)-1; fOH(i)=fOH(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO2H + hv = H3C25C6O2 + HO2';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25CCO2H'; 
fH3C25CCO2H(i)=fH3C25CCO2H(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO3H + OH = H3C25C6CO3';
k(:,i) = 2.70e-11;
Gstr{i,1} = 'H3C25CCO3H'; Gstr{i,2} = 'OH'; 
fH3C25CCO3H(i)=fH3C25CCO3H(i)-1; fOH(i)=fOH(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO3H + hv = H3C25C6O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H3C25CCO3H'; 
fH3C25CCO3H(i)=fH3C25CCO3H(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25CCO3H + hv = H3C25C6O2 + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25CCO3H'; 
fH3C25CCO3H(i)=fH3C25CCO3H(i)-1; fH3C25C6O2(i)=fH3C25C6O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6PAN + OH = H3C25C5CHO + CO + NO2';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'H3C25C6PAN'; Gstr{i,2} = 'OH'; 
fH3C25C6PAN(i)=fH3C25C6PAN(i)-1; fOH(i)=fOH(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6PAN = H3C25C6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'H3C25C6PAN'; 
fH3C25C6PAN(i)=fH3C25C6PAN(i)-1; fH3C25C6CO3(i)=fH3C25C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OOH + OH = H3C25C5CHO + OH';
k(:,i) = 3.23e-11;
Gstr{i,1} = 'H3C25C6OOH'; Gstr{i,2} = 'OH'; 
fH3C25C6OOH(i)=fH3C25C6OOH(i)-1; fOH(i)=fOH(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OOH + hv = H3C25C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'H3C25C6OOH'; 
fH3C25C6OOH(i)=fH3C25C6OOH(i)-1; fH3C25C6O(i)=fH3C25C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OOH + hv = H3C25C6O + OH';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25C6OOH'; 
fH3C25C6OOH(i)=fH3C25C6OOH(i)-1; fH3C25C6O(i)=fH3C25C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6O = H3C2C4CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'H3C25C6O'; 
fH3C25C6O(i)=fH3C25C6O(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C5CHO + OH = H3C2C4CO3 + CO';
k(:,i) = 3.55e-11;
Gstr{i,1} = 'H3C25C5CHO'; Gstr{i,2} = 'OH'; 
fH3C25C5CHO(i)=fH3C25C5CHO(i)-1; fOH(i)=fOH(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C5CHO + hv = H3C2C4CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'H3C25C5CHO'; 
fH3C25C5CHO(i)=fH3C25C5CHO(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OH + OH = C614CO + HO2';
k(:,i) = 2.54e-11.*0.890;
Gstr{i,1} = 'H3C25C6OH'; Gstr{i,2} = 'OH'; 
fH3C25C6OH(i)=fH3C25C6OH(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OH + OH = H3C25C5CHO + HO2';
k(:,i) = 2.54e-11.*0.110;
Gstr{i,1} = 'H3C25C6OH'; Gstr{i,2} = 'OH'; 
fH3C25C6OH(i)=fH3C25C6OH(i)-1; fOH(i)=fOH(i)-1; fH3C25C5CHO(i)=fH3C25C5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C25C6OH + hv = HMVKAO2 + HOCH2CO3';
k(:,i) = J22.*2;
Gstr{i,1} = 'H3C25C6OH'; 
fH3C25C6OH(i)=fH3C25C6OH(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6OOH + OH = CO235C6O2';
k(:,i) = 1.01e-11;
Gstr{i,1} = 'CO235C6OOH'; Gstr{i,2} = 'OH'; 
fCO235C6OOH(i)=fCO235C6OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6O2(i)=fCO235C6O2(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6OOH + hv = CO235C6O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO235C6OOH'; 
fCO235C6OOH(i)=fCO235C6OOH(i)-1; fCO235C6O(i)=fCO235C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6OOH + hv = CO235C6O + OH';
k(:,i) = J35;
Gstr{i,1} = 'CO235C6OOH'; 
fCO235C6OOH(i)=fCO235C6OOH(i)-1; fCO235C6O(i)=fCO235C6O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO235C6O = CO23C4CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CO235C6O'; 
fCO235C6O(i)=fCO235C6O(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CO235C5CHO + NO3 = CO23C4CO3 + CO + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO235C5CHO'; Gstr{i,2} = 'NO3'; 
fCO235C5CHO(i)=fCO235C5CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO235C5CHO + OH = CO23C4CO3 + CO';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'CO235C5CHO'; Gstr{i,2} = 'OH'; 
fCO235C5CHO(i)=fCO235C5CHO(i)-1; fOH(i)=fOH(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO235C5CHO + hv = CO23C4CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO235C5CHO'; 
fCO235C5CHO(i)=fCO235C5CHO(i)-1; fCO23C4CO3(i)=fCO23C4CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL + NO3 = C312COCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*4.0;
Gstr{i,1} = 'C4CODIAL'; Gstr{i,2} = 'NO3'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fNO3(i)=fNO3(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL + OH = C312COCO3';
k(:,i) = 3.39e-11;
Gstr{i,1} = 'C4CODIAL'; Gstr{i,2} = 'OH'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fOH(i)=fOH(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL + hv = CHOCOCH2O2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C4CODIAL'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4CODIAL + hv = HCOCH2CO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'C4CODIAL'; 
fC4CODIAL(i)=fC4CODIAL(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C716OOH + OH = CO235C6CHO + OH';
k(:,i) = 1.20e-10;
Gstr{i,1} = 'C716OOH'; Gstr{i,2} = 'OH'; 
fC716OOH(i)=fC716OOH(i)-1; fOH(i)=fOH(i)-1; fCO235C6CHO(i)=fCO235C6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C716OOH + hv = C716O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C716OOH'; 
fC716OOH(i)=fC716OOH(i)-1; fC716O(i)=fC716O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C716OOH + hv = C716O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C716OOH'; 
fC716OOH(i)=fC716OOH(i)-1; fC716O(i)=fC716O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C716O = CO13C4CHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C716O'; 
fC716O(i)=fC716O(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC71CO + OH = NC72O2';
k(:,i) = 1.25e-12;
Gstr{i,1} = 'NC71CO'; Gstr{i,2} = 'OH'; 
fNC71CO(i)=fNC71CO(i)-1; fOH(i)=fOH(i)-1; fNC72O2(i)=fNC72O2(i)+1; 

i=i+1;
Rnames{i} = 'NC71CO + hv = CO235C6CO3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'NC71CO'; 
fNC71CO(i)=fNC71CO(i)-1; fCO235C6CO3(i)=fCO235C6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + HO2 = C812OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'HO2'; 
fC812O2(i)=fC812O2(i)-1; fHO2(i)=fHO2(i)-1; fC812OOH(i)=fC812OOH(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + NO = C812O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'NO'; 
fC812O2(i)=fC812O2(i)-1; fNO(i)=fNO(i)-1; fC812O(i)=fC812O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + NO3 = C812O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'NO3'; 
fC812O2(i)=fC812O2(i)-1; fNO3(i)=fNO3(i)-1; fC812O(i)=fC812O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + RO2 = C812O';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'RO2';
fC812O2(i)=fC812O2(i)-1; fC812O(i)=fC812O(i)+1; 

i=i+1;
Rnames{i} = 'C812O2 + RO2 = C812OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C812O2'; Gstr{i,2} = 'RO2';
fC812O2(i)=fC812O2(i)-1; fC812OH(i)=fC812OH(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + HO2 = C721CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'HO2'; 
fC721CO3(i)=fC721CO3(i)-1; fHO2(i)=fHO2(i)-1; fC721CO3H(i)=fC721CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + HO2 = C721O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'HO2'; 
fC721CO3(i)=fC721CO3(i)-1; fHO2(i)=fHO2(i)-1; fC721O2(i)=fC721O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + HO2 = NORPINIC + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'HO2'; 
fC721CO3(i)=fC721CO3(i)-1; fHO2(i)=fHO2(i)-1; fNORPINIC(i)=fNORPINIC(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + NO = C721O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'NO'; 
fC721CO3(i)=fC721CO3(i)-1; fNO(i)=fNO(i)-1; fC721O2(i)=fC721O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + NO2 = C721PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'NO2'; 
fC721CO3(i)=fC721CO3(i)-1; fNO2(i)=fNO2(i)-1; fC721PAN(i)=fC721PAN(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + NO3 = C721O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'NO3'; 
fC721CO3(i)=fC721CO3(i)-1; fNO3(i)=fNO3(i)-1; fC721O2(i)=fC721O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + RO2 = C721O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'RO2';
fC721CO3(i)=fC721CO3(i)-1; fC721O2(i)=fC721O2(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3 + RO2 = NORPINIC';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C721CO3'; Gstr{i,2} = 'RO2';
fC721CO3(i)=fC721CO3(i)-1; fNORPINIC(i)=fNORPINIC(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + HO2 = C721OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'HO2'; 
fC721O2(i)=fC721O2(i)-1; fHO2(i)=fHO2(i)-1; fC721OOH(i)=fC721OOH(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + NO = C721O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'NO'; 
fC721O2(i)=fC721O2(i)-1; fNO(i)=fNO(i)-1; fC721O(i)=fC721O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + NO3 = C721O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'NO3'; 
fC721O2(i)=fC721O2(i)-1; fNO3(i)=fNO3(i)-1; fC721O(i)=fC721O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721O2 + RO2 = C721O';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'C721O2'; Gstr{i,2} = 'RO2';
fC721O2(i)=fC721O2(i)-1; fC721O(i)=fC721O(i)+1; 

i=i+1;
Rnames{i} = 'C810OOH + OH = C810O2';
k(:,i) = 8.35e-11;
Gstr{i,1} = 'C810OOH'; Gstr{i,2} = 'OH'; 
fC810OOH(i)=fC810OOH(i)-1; fOH(i)=fOH(i)-1; fC810O2(i)=fC810O2(i)+1; 

i=i+1;
Rnames{i} = 'C810OOH + hv = C810O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C810OOH'; 
fC810OOH(i)=fC810OOH(i)-1; fC810O(i)=fC810O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C810OOH + hv = C810O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C810OOH'; 
fC810OOH(i)=fC810OOH(i)-1; fC810O(i)=fC810O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C810NO3 + OH = CH3COCH3 + CO13C4CHO + NO2';
k(:,i) = 4.96e-11;
Gstr{i,1} = 'C810NO3'; Gstr{i,2} = 'OH'; 
fC810NO3(i)=fC810NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810NO3 + hv = C810O + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C810NO3'; 
fC810NO3(i)=fC810NO3(i)-1; fC810O(i)=fC810O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810NO3 + hv = C810O + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C810NO3'; 
fC810NO3(i)=fC810NO3(i)-1; fC810O(i)=fC810O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C810O = CH3COCH3 + C514O2';
k(:,i) = 2.70e14.*exp(-6643./T);
Gstr{i,1} = 'C810O'; 
fC810O(i)=fC810O(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC514O2(i)=fC514O2(i)+1; 

i=i+1;
Rnames{i} = 'C810OH + OH = C810O';
k(:,i) = 8.00e-11;
Gstr{i,1} = 'C810OH'; Gstr{i,2} = 'OH'; 
fC810OH(i)=fC810OH(i)-1; fOH(i)=fOH(i)-1; fC810O(i)=fC810O(i)+1; 

i=i+1;
Rnames{i} = 'C810OH + hv = C810O + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C810OH'; 
fC810OH(i)=fC810OH(i)-1; fC810O(i)=fC810O(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C922OOH + OH = C922O2';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'C922OOH'; Gstr{i,2} = 'OH'; 
fC922OOH(i)=fC922OOH(i)-1; fOH(i)=fOH(i)-1; fC922O2(i)=fC922O2(i)+1; 

i=i+1;
Rnames{i} = 'C922OOH + hv = C922O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C922OOH'; 
fC922OOH(i)=fC922OOH(i)-1; fC922O(i)=fC922O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C922OOH + hv = C922O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C922OOH'; 
fC922OOH(i)=fC922OOH(i)-1; fC922O(i)=fC922O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C922O = CH3COCH3 + C621O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C922O'; 
fC922O(i)=fC922O(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC621O2(i)=fC621O2(i)+1; 

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
Rnames{i} = 'C614OOH + OH = C614CO + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'C614OOH'; Gstr{i,2} = 'OH'; 
fC614OOH(i)=fC614OOH(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C614OOH + hv = C614O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C614OOH'; 
fC614OOH(i)=fC614OOH(i)-1; fC614O(i)=fC614O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C614OOH + hv = C614O + OH';
k(:,i) = J35;
Gstr{i,1} = 'C614OOH'; 
fC614OOH(i)=fC614OOH(i)-1; fC614O(i)=fC614O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C614NO3 + OH = C614CO + NO2';
k(:,i) = 71.11e-12;
Gstr{i,1} = 'C614NO3'; Gstr{i,2} = 'OH'; 
fC614NO3(i)=fC614NO3(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614NO3 + hv = C614O + NO2';
k(:,i) = J35;
Gstr{i,1} = 'C614NO3'; 
fC614NO3(i)=fC614NO3(i)-1; fC614O(i)=fC614O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C614O = CO23C4CHO + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C614O'; 
fC614O(i)=fC614O(i)-1; fCO23C4CHO(i)=fCO23C4CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C614OH + OH = C614CO + HO2';
k(:,i) = 3.78e-11;
Gstr{i,1} = 'C614OH'; Gstr{i,2} = 'OH'; 
fC614OH(i)=fC614OH(i)-1; fOH(i)=fOH(i)-1; fC614CO(i)=fC614CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C614OH + hv = C614O + HO2';
k(:,i) = J35;
Gstr{i,1} = 'C614OH'; 
fC614OH(i)=fC614OH(i)-1; fC614O(i)=fC614O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C511OOH + OH = C511O2';
k(:,i) = 7.49e-11;
Gstr{i,1} = 'C511OOH'; Gstr{i,2} = 'OH'; 
fC511OOH(i)=fC511OOH(i)-1; fOH(i)=fOH(i)-1; fC511O2(i)=fC511O2(i)+1; 

i=i+1;
Rnames{i} = 'C511OOH + hv = C511O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C511OOH'; 
fC511OOH(i)=fC511OOH(i)-1; fC511O(i)=fC511O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C511OOH + hv = C511O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C511OOH'; 
fC511OOH(i)=fC511OOH(i)-1; fC511O(i)=fC511O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C511O = CH3CO3 + HCOCH2CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'C511O'; 
fC511O(i)=fC511O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + HO2 = H3C2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'HO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C2C4CO2H(i)=fH3C2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + HO2 = H3C2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'HO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fH3C2C4CO3H(i)=fH3C2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + HO2 = HMVKAO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'HO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + NO = HMVKAO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'NO'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fNO(i)=fNO(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + NO2 = H3C2C4PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'NO2'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fH3C2C4PAN(i)=fH3C2C4PAN(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + NO3 = HMVKAO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'NO3'; 
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + RO2 = H3C2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'RO2';
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fH3C2C4CO2H(i)=fH3C2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3 + RO2 = HMVKAO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'H3C2C4CO3'; Gstr{i,2} = 'RO2';
fH3C2C4CO3(i)=fH3C2C4CO3(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + HO2 = HMVKAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'HO2'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO = HMVKANO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO = HMVKAO + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO(i)=fNO(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO3 = HMVKAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO3'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + RO2 = CO2H3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + RO2 = HMVKAO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + RO2 = HO12CO3C4';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; 

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
Rnames{i} = 'C312COCO3 + HO2 = C312COCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'HO2'; 
fC312COCO3(i)=fC312COCO3(i)-1; fHO2(i)=fHO2(i)-1; fC312COCO3H(i)=fC312COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + HO2 = CHOCOCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'HO2'; 
fC312COCO3(i)=fC312COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + NO = CHOCOCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'NO'; 
fC312COCO3(i)=fC312COCO3(i)-1; fNO(i)=fNO(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + NO2 = C312COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'NO2'; 
fC312COCO3(i)=fC312COCO3(i)-1; fNO2(i)=fNO2(i)-1; fC312COPAN(i)=fC312COPAN(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + NO3 = CHOCOCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'NO3'; 
fC312COCO3(i)=fC312COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3 + RO2 = CHOCOCH2O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C312COCO3'; Gstr{i,2} = 'RO2';
fC312COCO3(i)=fC312COCO3(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + HO2 = ALCOCH2OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'HO2'; 
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fALCOCH2OOH(i)=fALCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + NO = CHOCOCH2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'NO'; 
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fNO(i)=fNO(i)-1; fCHOCOCH2O(i)=fCHOCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + NO3 = CHOCOCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'NO3'; 
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCHOCOCH2O(i)=fCHOCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O2 + RO2 = CHOCOCH2O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'CHOCOCH2O2'; Gstr{i,2} = 'RO2';
fCHOCOCH2O2(i)=fCHOCOCH2O2(i)-1; fCHOCOCH2O(i)=fCHOCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 + HO2 = NC72OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'HO2'; 
fNC72O2(i)=fNC72O2(i)-1; fHO2(i)=fHO2(i)-1; fNC72OOH(i)=fNC72OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 + NO = NC72O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'NO'; 
fNC72O2(i)=fNC72O2(i)-1; fNO(i)=fNO(i)-1; fNC72O(i)=fNC72O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 + NO3 = NC72O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'NO3'; 
fNC72O2(i)=fNC72O2(i)-1; fNO3(i)=fNO3(i)-1; fNC72O(i)=fNC72O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC72O2 + RO2 = NC72O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NC72O2'; Gstr{i,2} = 'RO2';
fNC72O2(i)=fNC72O2(i)-1; fNC72O(i)=fNC72O(i)+1; 

i=i+1;
Rnames{i} = 'C812OOH + OH = C812O2';
k(:,i) = 1.09e-11;
Gstr{i,1} = 'C812OOH'; Gstr{i,2} = 'OH'; 
fC812OOH(i)=fC812OOH(i)-1; fOH(i)=fOH(i)-1; fC812O2(i)=fC812O2(i)+1; 

i=i+1;
Rnames{i} = 'C812OOH + hv = C812O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C812OOH'; 
fC812OOH(i)=fC812OOH(i)-1; fC812O(i)=fC812O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C812O = C813O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C812O'; 
fC812O(i)=fC812O(i)-1; fC813O2(i)=fC813O2(i)+1; 

i=i+1;
Rnames{i} = 'C812OH + OH = C812O';
k(:,i) = 7.42e-12;
Gstr{i,1} = 'C812OH'; Gstr{i,2} = 'OH'; 
fC812OH(i)=fC812OH(i)-1; fOH(i)=fOH(i)-1; fC812O(i)=fC812O(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3H + OH = C721CO3';
k(:,i) = 9.65e-12;
Gstr{i,1} = 'C721CO3H'; Gstr{i,2} = 'OH'; 
fC721CO3H(i)=fC721CO3H(i)-1; fOH(i)=fOH(i)-1; fC721CO3(i)=fC721CO3(i)+1; 

i=i+1;
Rnames{i} = 'C721CO3H + hv = C721O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C721CO3H'; 
fC721CO3H(i)=fC721CO3H(i)-1; fC721O2(i)=fC721O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NORPINIC + OH = C721O2';
k(:,i) = 6.57e-12;
Gstr{i,1} = 'NORPINIC'; Gstr{i,2} = 'OH'; 
fNORPINIC(i)=fNORPINIC(i)-1; fOH(i)=fOH(i)-1; fC721O2(i)=fC721O2(i)+1; 

i=i+1;
Rnames{i} = 'C721PAN + OH = C721OOH + CO + NO2';
k(:,i) = 2.96e-12;
Gstr{i,1} = 'C721PAN'; Gstr{i,2} = 'OH'; 
fC721PAN(i)=fC721PAN(i)-1; fOH(i)=fOH(i)-1; fC721OOH(i)=fC721OOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721PAN = C721CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C721PAN'; 
fC721PAN(i)=fC721PAN(i)-1; fC721CO3(i)=fC721CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C721OOH + OH = C721O2';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C721OOH'; Gstr{i,2} = 'OH'; 
fC721OOH(i)=fC721OOH(i)-1; fOH(i)=fOH(i)-1; fC721O2(i)=fC721O2(i)+1; 

i=i+1;
Rnames{i} = 'C721OOH + hv = C721O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C721OOH'; 
fC721OOH(i)=fC721OOH(i)-1; fC721O(i)=fC721O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C721O = C722O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C721O'; 
fC721O(i)=fC721O(i)-1; fC722O2(i)=fC722O2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + HO2 = C514OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'HO2'; 
fC514O2(i)=fC514O2(i)-1; fHO2(i)=fHO2(i)-1; fC514OOH(i)=fC514OOH(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + NO = C514NO3';
k(:,i) = KRO2NO.*0.129;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'NO'; 
fC514O2(i)=fC514O2(i)-1; fNO(i)=fNO(i)-1; fC514NO3(i)=fC514NO3(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + NO = C514O + NO2';
k(:,i) = KRO2NO.*0.871;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'NO'; 
fC514O2(i)=fC514O2(i)-1; fNO(i)=fNO(i)-1; fC514O(i)=fC514O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + NO3 = C514O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'NO3'; 
fC514O2(i)=fC514O2(i)-1; fNO3(i)=fNO3(i)-1; fC514O(i)=fC514O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + RO2 = C514O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'RO2';
fC514O2(i)=fC514O2(i)-1; fC514O(i)=fC514O(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + RO2 = C514OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'RO2';
fC514O2(i)=fC514O2(i)-1; fC514OH(i)=fC514OH(i)+1; 

i=i+1;
Rnames{i} = 'C514O2 + RO2 = CO13C4CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'C514O2'; Gstr{i,2} = 'RO2';
fC514O2(i)=fC514O2(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; 

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
Rnames{i} = 'C621O2 + HO2 = C621OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'HO2'; 
fC621O2(i)=fC621O2(i)-1; fHO2(i)=fHO2(i)-1; fC621OOH(i)=fC621OOH(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 + NO = C621O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'NO'; 
fC621O2(i)=fC621O2(i)-1; fNO(i)=fNO(i)-1; fC621O(i)=fC621O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 + NO3 = C621O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'NO3'; 
fC621O2(i)=fC621O2(i)-1; fNO3(i)=fNO3(i)-1; fC621O(i)=fC621O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C621O2 + RO2 = C621O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C621O2'; Gstr{i,2} = 'RO2';
fC621O2(i)=fC621O2(i)-1; fC621O(i)=fC621O(i)+1; 

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
Rnames{i} = 'HCOCH2CHO + hv = HCOCH2O2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'HCOCH2CHO'; 
fHCOCH2CHO(i)=fHCOCH2CHO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HCOCH2CHO = HCOCH2CO3 + HNO3';
k(:,i) = 2.*KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HCOCH2CHO'; 
fNO3(i)=fNO3(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCH2CHO = HCOCH2CO3';
k(:,i) = 4.29e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCH2CHO'; 
fOH(i)=fOH(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO2H + OH = HMVKAO2';
k(:,i) = 2.34e-11;
Gstr{i,1} = 'H3C2C4CO2H'; Gstr{i,2} = 'OH'; 
fH3C2C4CO2H(i)=fH3C2C4CO2H(i)-1; fOH(i)=fOH(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO2H + hv = HMVKAO2 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'H3C2C4CO2H'; 
fH3C2C4CO2H(i)=fH3C2C4CO2H(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3H + OH = H3C2C4CO3';
k(:,i) = 2.65e-11;
Gstr{i,1} = 'H3C2C4CO3H'; Gstr{i,2} = 'OH'; 
fH3C2C4CO3H(i)=fH3C2C4CO3H(i)-1; fOH(i)=fOH(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3H + hv = HMVKAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H3C2C4CO3H'; 
fH3C2C4CO3H(i)=fH3C2C4CO3H(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4CO3H + hv = HMVKAO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'H3C2C4CO3H'; 
fH3C2C4CO3H(i)=fH3C2C4CO3H(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4PAN + OH = CO2H3CHO + CO + NO2';
k(:,i) = 7.60e-12;
Gstr{i,1} = 'H3C2C4PAN'; Gstr{i,2} = 'OH'; 
fH3C2C4PAN(i)=fH3C2C4PAN(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H3C2C4PAN = H3C2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'H3C2C4PAN'; 
fH3C2C4PAN(i)=fH3C2C4PAN(i)-1; fH3C2C4CO3(i)=fH3C2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAOOH + hv = HMVKAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMVKAOOH'; 
fHMVKAOOH(i)=fHMVKAOOH(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKAOOH = CO2H3CHO + OH';
k(:,i) = 5.77e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKAOOH'; 
fOH(i)=fOH(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKANO3 + hv = HMVKAO + NO2';
k(:,i) = J56.*0.91;
Gstr{i,1} = 'HMVKANO3'; 
fHMVKANO3(i)=fHMVKANO3(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKANO3 = CO2H3CHO + NO2';
k(:,i) = 2.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKANO3'; 
fOH(i)=fOH(i)-1; fHMVKANO3(i)=fHMVKANO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO = MGLYOX + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HMVKAO'; 
fHMVKAO(i)=fHMVKAO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'HO12CO3C4 + hv = CH3CO3 + HOCH2CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HO12CO3C4'; 
fHO12CO3C4(i)=fHO12CO3C4(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO12CO3C4 = BIACETOH + HO2';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO12CO3C4'; 
fOH(i)=fOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C312COCO3H + OH = C312COCO3';
k(:,i) = 1.63e-11;
Gstr{i,1} = 'C312COCO3H'; Gstr{i,2} = 'OH'; 
fC312COCO3H(i)=fC312COCO3H(i)-1; fOH(i)=fOH(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3H + hv = CHOCOCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C312COCO3H'; 
fC312COCO3H(i)=fC312COCO3H(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C312COCO3H + hv = CHOCOCH2O2 + OH';
k(:,i) = J34;
Gstr{i,1} = 'C312COCO3H'; 
fC312COCO3H(i)=fC312COCO3H(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C312COPAN + OH = C33CO + CO + NO2';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C312COPAN'; Gstr{i,2} = 'OH'; 
fC312COPAN(i)=fC312COPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C312COPAN = C312COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C312COPAN'; 
fC312COPAN(i)=fC312COPAN(i)-1; fC312COCO3(i)=fC312COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ALCOCH2OOH + OH = CHOCOCH2O2';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'ALCOCH2OOH'; Gstr{i,2} = 'OH'; 
fALCOCH2OOH(i)=fALCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fCHOCOCH2O2(i)=fCHOCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'ALCOCH2OOH + hv = CHOCOCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'ALCOCH2OOH'; 
fALCOCH2OOH(i)=fALCOCH2OOH(i)-1; fCHOCOCH2O(i)=fCHOCOCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ALCOCH2OOH + hv = CHOCOCH2O + OH';
k(:,i) = J34;
Gstr{i,1} = 'ALCOCH2OOH'; 
fALCOCH2OOH(i)=fALCOCH2OOH(i)-1; fCHOCOCH2O(i)=fCHOCOCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOCH2O = HCHO + HCOCO';
k(:,i) = KDEC;
Gstr{i,1} = 'CHOCOCH2O'; 
fCHOCOCH2O(i)=fCHOCOCH2O(i)-1; fHCHO(i)=fHCHO(i)+1; fHCOCO(i)=fHCOCO(i)+1; 

i=i+1;
Rnames{i} = 'NC72OOH + OH = NC72O2';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'NC72OOH'; Gstr{i,2} = 'OH'; 
fNC72OOH(i)=fNC72OOH(i)-1; fOH(i)=fOH(i)-1; fNC72O2(i)=fNC72O2(i)+1; 

i=i+1;
Rnames{i} = 'NC72OOH + hv = NC72O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC72OOH'; 
fNC72OOH(i)=fNC72OOH(i)-1; fNC72O(i)=fNC72O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC72O = NC61CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'NC72O'; 
fNC72O(i)=fNC72O(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + HO2 = C813OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'HO2'; 
fC813O2(i)=fC813O2(i)-1; fHO2(i)=fHO2(i)-1; fC813OOH(i)=fC813OOH(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + NO = C813NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'NO'; 
fC813O2(i)=fC813O2(i)-1; fNO(i)=fNO(i)-1; fC813NO3(i)=fC813NO3(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + NO = C813O + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'NO'; 
fC813O2(i)=fC813O2(i)-1; fNO(i)=fNO(i)-1; fC813O(i)=fC813O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + NO3 = C813O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'NO3'; 
fC813O2(i)=fC813O2(i)-1; fNO3(i)=fNO3(i)-1; fC813O(i)=fC813O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + RO2 = C813O';
k(:,i) = 6.70e-15.*0.7;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'RO2';
fC813O2(i)=fC813O2(i)-1; fC813O(i)=fC813O(i)+1; 

i=i+1;
Rnames{i} = 'C813O2 + RO2 = C813OH';
k(:,i) = 6.70e-15.*0.3;
Gstr{i,1} = 'C813O2'; Gstr{i,2} = 'RO2';
fC813O2(i)=fC813O2(i)-1; fC813OH(i)=fC813OH(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + HO2 = C722OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'HO2'; 
fC722O2(i)=fC722O2(i)-1; fHO2(i)=fHO2(i)-1; fC722OOH(i)=fC722OOH(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + NO = C722O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'NO'; 
fC722O2(i)=fC722O2(i)-1; fNO(i)=fNO(i)-1; fC722O(i)=fC722O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + NO3 = C722O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'NO3'; 
fC722O2(i)=fC722O2(i)-1; fNO3(i)=fNO3(i)-1; fC722O(i)=fC722O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C722O2 + RO2 = C722O';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'C722O2'; Gstr{i,2} = 'RO2';
fC722O2(i)=fC722O2(i)-1; fC722O(i)=fC722O(i)+1; 

i=i+1;
Rnames{i} = 'C514OOH + OH = CO13C4CHO + OH';
k(:,i) = 1.10e-10;
Gstr{i,1} = 'C514OOH'; Gstr{i,2} = 'OH'; 
fC514OOH(i)=fC514OOH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C514OOH + hv = C514O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C514OOH'; 
fC514OOH(i)=fC514OOH(i)-1; fC514O(i)=fC514O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C514OOH + hv = C514O + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C514OOH'; 
fC514OOH(i)=fC514OOH(i)-1; fC514O(i)=fC514O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C514NO3 + OH = CO13C4CHO + NO2';
k(:,i) = 4.33e-11;
Gstr{i,1} = 'C514NO3'; Gstr{i,2} = 'OH'; 
fC514NO3(i)=fC514NO3(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514NO3 + hv = C514O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C514NO3'; 
fC514NO3(i)=fC514NO3(i)-1; fC514O(i)=fC514O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514NO3 + hv = C514O + NO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C514NO3'; 
fC514NO3(i)=fC514NO3(i)-1; fC514O(i)=fC514O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C514O = CO13C4CHO + HO2';
k(:,i) = 1.80e-14.*exp(-260./T).*.21.*M;
Gstr{i,1} = 'C514O'; 
fC514O(i)=fC514O(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514OH + OH = CO13C4CHO + HO2';
k(:,i) = 6.99e-11;
Gstr{i,1} = 'C514OH'; Gstr{i,2} = 'OH'; 
fC514OH(i)=fC514OH(i)-1; fOH(i)=fOH(i)-1; fCO13C4CHO(i)=fCO13C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C514OH + hv = C514O + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C514OH'; 
fC514OH(i)=fC514OH(i)-1; fC514O(i)=fC514O(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C621OOH + OH = C621O2';
k(:,i) = 1.00e-10;
Gstr{i,1} = 'C621OOH'; Gstr{i,2} = 'OH'; 
fC621OOH(i)=fC621OOH(i)-1; fOH(i)=fOH(i)-1; fC621O2(i)=fC621O2(i)+1; 

i=i+1;
Rnames{i} = 'C621OOH + hv = C621O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C621OOH'; 
fC621OOH(i)=fC621OOH(i)-1; fC621O(i)=fC621O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C621OOH + hv = C621O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C621OOH'; 
fC621OOH(i)=fC621OOH(i)-1; fC621O(i)=fC621O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C621O = HCHO + H1C23C4CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C621O'; 
fC621O(i)=fC621O(i)-1; fHCHO(i)=fHCHO(i)+1; fH1C23C4CHO(i)=fH1C23C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'NC61CO3 + HO2 = CO235C5CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'HO2'; 
fNC61CO3(i)=fNC61CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + HO2 = NC61CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'HO2'; 
fNC61CO3(i)=fNC61CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC61CO3H(i)=fNC61CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + NO = CO235C5CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'NO'; 
fNC61CO3(i)=fNC61CO3(i)-1; fNO(i)=fNO(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + NO2 = NC6PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'NO2'; 
fNC61CO3(i)=fNC61CO3(i)-1; fNO2(i)=fNO2(i)-1; fNC6PAN1(i)=fNC6PAN1(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + NO3 = CO235C5CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'NO3'; 
fNC61CO3(i)=fNC61CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3 + RO2 = CO235C5CHO + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'NC61CO3'; Gstr{i,2} = 'RO2';
fNC61CO3(i)=fNC61CO3(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813OOH + OH = C813O2';
k(:,i) = 1.86e-11;
Gstr{i,1} = 'C813OOH'; Gstr{i,2} = 'OH'; 
fC813OOH(i)=fC813OOH(i)-1; fOH(i)=fOH(i)-1; fC813O2(i)=fC813O2(i)+1; 

i=i+1;
Rnames{i} = 'C813OOH + hv = C813O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C813OOH'; 
fC813OOH(i)=fC813OOH(i)-1; fC813O(i)=fC813O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C813OOH + hv = C813O + OH';
k(:,i) = J34;
Gstr{i,1} = 'C813OOH'; 
fC813OOH(i)=fC813OOH(i)-1; fC813O(i)=fC813O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C813NO3 + OH = CH3COCH3 + CO13C3CO2H + HCHO + NO2';
k(:,i) = 7.82e-12;
Gstr{i,1} = 'C813NO3'; Gstr{i,2} = 'OH'; 
fC813NO3(i)=fC813NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813NO3 + hv = C813O + NO2';
k(:,i) = J55;
Gstr{i,1} = 'C813NO3'; 
fC813NO3(i)=fC813NO3(i)-1; fC813O(i)=fC813O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813NO3 + hv = C813O + NO2';
k(:,i) = J34;
Gstr{i,1} = 'C813NO3'; 
fC813NO3(i)=fC813NO3(i)-1; fC813O(i)=fC813O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C813O = CH3COCH3 + C516O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C813O'; 
fC813O(i)=fC813O(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC516O2(i)=fC516O2(i)+1; 

i=i+1;
Rnames{i} = 'C813OH + OH = C813O';
k(:,i) = 1.75e-11;
Gstr{i,1} = 'C813OH'; Gstr{i,2} = 'OH'; 
fC813OH(i)=fC813OH(i)-1; fOH(i)=fOH(i)-1; fC813O(i)=fC813O(i)+1; 

i=i+1;
Rnames{i} = 'C813OH + hv = C813O + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C813OH'; 
fC813OH(i)=fC813OH(i)-1; fC813O(i)=fC813O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C722OOH + OH = C722O2';
k(:,i) = 3.31e-11;
Gstr{i,1} = 'C722OOH'; Gstr{i,2} = 'OH'; 
fC722OOH(i)=fC722OOH(i)-1; fOH(i)=fOH(i)-1; fC722O2(i)=fC722O2(i)+1; 

i=i+1;
Rnames{i} = 'C722OOH + hv = C722O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C722OOH'; 
fC722OOH(i)=fC722OOH(i)-1; fC722O(i)=fC722O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C722O = CH3COCH3 + C44O2';
k(:,i) = KDEC;
Gstr{i,1} = 'C722O'; 
fC722O(i)=fC722O(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fC44O2(i)=fC44O2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO + NO3 = H1C23C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'H1C23C4CHO'; Gstr{i,2} = 'NO3'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO + OH = H1C23C4CO3';
k(:,i) = 2.37e-11;
Gstr{i,1} = 'H1C23C4CHO'; Gstr{i,2} = 'OH'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fOH(i)=fOH(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO + hv = H1C23C4O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'H1C23C4CHO'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CHO + hv = HCOCH2CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'H1C23C4CHO'; 
fH1C23C4CHO(i)=fH1C23C4CHO(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

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
Rnames{i} = 'NC61CO3H + OH = NC61CO3';
k(:,i) = 1.68e-11;
Gstr{i,1} = 'NC61CO3H'; Gstr{i,2} = 'OH'; 
fNC61CO3H(i)=fNC61CO3H(i)-1; fOH(i)=fOH(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC61CO3H + hv = CO235C5CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC61CO3H'; 
fNC61CO3H(i)=fNC61CO3H(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC6PAN1 + OH = CO235C5CHO + CO + NO2 + NO2';
k(:,i) = 1.32e-11;
Gstr{i,1} = 'NC6PAN1'; Gstr{i,2} = 'OH'; 
fNC6PAN1(i)=fNC6PAN1(i)-1; fOH(i)=fOH(i)-1; fCO235C5CHO(i)=fCO235C5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC6PAN1 = NC61CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NC6PAN1'; 
fNC6PAN1(i)=fNC6PAN1(i)-1; fNC61CO3(i)=fNC61CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO13C3CO2H + OH = HCOCH2CO3';
k(:,i) = 6.69e-11;
Gstr{i,1} = 'CO13C3CO2H'; Gstr{i,2} = 'OH'; 
fCO13C3CO2H(i)=fCO13C3CO2H(i)-1; fOH(i)=fOH(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO13C3CO2H + hv = HCOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO13C3CO2H'; 
fCO13C3CO2H(i)=fCO13C3CO2H(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO13C3CO2H + hv = HCOCH2CO3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO13C3CO2H'; 
fCO13C3CO2H(i)=fCO13C3CO2H(i)-1; fHCOCH2CO3(i)=fHCOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C516O2 + HO2 = C516OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C516O2'; Gstr{i,2} = 'HO2'; 
fC516O2(i)=fC516O2(i)-1; fHO2(i)=fHO2(i)-1; fC516OOH(i)=fC516OOH(i)+1; 

i=i+1;
Rnames{i} = 'C516O2 + NO = C516O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C516O2'; Gstr{i,2} = 'NO'; 
fC516O2(i)=fC516O2(i)-1; fNO(i)=fNO(i)-1; fC516O(i)=fC516O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C516O2 + NO3 = C516O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C516O2'; Gstr{i,2} = 'NO3'; 
fC516O2(i)=fC516O2(i)-1; fNO3(i)=fNO3(i)-1; fC516O(i)=fC516O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C516O2 + RO2 = C516O';
k(:,i) = 8.8e-13;
Gstr{i,1} = 'C516O2'; Gstr{i,2} = 'RO2';
fC516O2(i)=fC516O2(i)-1; fC516O(i)=fC516O(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + HO2 = C44OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'HO2'; 
fC44O2(i)=fC44O2(i)-1; fHO2(i)=fHO2(i)-1; fC44OOH(i)=fC44OOH(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + NO = C44O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'NO'; 
fC44O2(i)=fC44O2(i)-1; fNO(i)=fNO(i)-1; fC44O(i)=fC44O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + NO3 = C44O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'NO3'; 
fC44O2(i)=fC44O2(i)-1; fNO3(i)=fNO3(i)-1; fC44O(i)=fC44O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C44O2 + RO2 = C44O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C44O2'; Gstr{i,2} = 'RO2';
fC44O2(i)=fC44O2(i)-1; fC44O(i)=fC44O(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + HO2 = H1C23C4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'HO2'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + HO2 = HC23C4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'HO2'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHC23C4CO3H(i)=fHC23C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + NO = H1C23C4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'NO'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fNO(i)=fNO(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + NO2 = H1C23C4PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'NO2'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fH1C23C4PAN(i)=fH1C23C4PAN(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + NO3 = H1C23C4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'NO3'; 
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4CO3 + RO2 = H1C23C4O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'H1C23C4CO3'; Gstr{i,2} = 'RO2';
fH1C23C4CO3(i)=fH1C23C4CO3(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + HO2 = H1C23C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'HO2'; 
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fHO2(i)=fHO2(i)-1; fH1C23C4OOH(i)=fH1C23C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + NO = H1C23C4O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'NO'; 
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fNO(i)=fNO(i)-1; fH1C23C4O(i)=fH1C23C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + NO3 = H1C23C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'NO3'; 
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fNO3(i)=fNO3(i)-1; fH1C23C4O(i)=fH1C23C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O2 + RO2 = H1C23C4O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'H1C23C4O2'; Gstr{i,2} = 'RO2';
fH1C23C4O2(i)=fH1C23C4O2(i)-1; fH1C23C4O(i)=fH1C23C4O(i)+1; 

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
Rnames{i} = 'C516OOH + hv = C516O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C516OOH'; 
fC516OOH(i)=fC516OOH(i)-1; fC516O(i)=fC516O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C516OOH + hv = C516O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C516OOH'; 
fC516OOH(i)=fC516OOH(i)-1; fC516O(i)=fC516O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C516OOH = C516O2 + OH';
k(:,i) = 3.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C516OOH'; 
fOH(i)=fOH(i)-1; fC516OOH(i)=fC516OOH(i)-1; fC516O2(i)=fC516O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C516O = CO13C3CO2H + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C516O'; 
fC516O(i)=fC516O(i)-1; fCO13C3CO2H(i)=fCO13C3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C44OOH + OH = C44O2';
k(:,i) = 7.46e-11;
Gstr{i,1} = 'C44OOH'; Gstr{i,2} = 'OH'; 
fC44OOH(i)=fC44OOH(i)-1; fOH(i)=fOH(i)-1; fC44O2(i)=fC44O2(i)+1; 

i=i+1;
Rnames{i} = 'C44OOH + hv = C44O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C44OOH'; 
fC44OOH(i)=fC44OOH(i)-1; fC44O(i)=fC44O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C44O = HCOCH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C44O'; 
fC44O(i)=fC44O(i)-1; fHCOCH2CHO(i)=fHCOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC23C4CO3H + OH = H1C23C4CO3';
k(:,i) = 6.55e-12;
Gstr{i,1} = 'HC23C4CO3H'; Gstr{i,2} = 'OH'; 
fHC23C4CO3H(i)=fHC23C4CO3H(i)-1; fOH(i)=fOH(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HC23C4CO3H + hv = H1C23C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC23C4CO3H'; 
fHC23C4CO3H(i)=fHC23C4CO3H(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC23C4CO3H + hv = H1C23C4O2 + OH';
k(:,i) = J35;
Gstr{i,1} = 'HC23C4CO3H'; 
fHC23C4CO3H(i)=fHC23C4CO3H(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4PAN + OH = H1CO23CHO + CO + NO2';
k(:,i) = 2.92e-12;
Gstr{i,1} = 'H1C23C4PAN'; Gstr{i,2} = 'OH'; 
fH1C23C4PAN(i)=fH1C23C4PAN(i)-1; fOH(i)=fOH(i)-1; fH1CO23CHO(i)=fH1CO23CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4PAN = H1C23C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'H1C23C4PAN'; 
fH1C23C4PAN(i)=fH1C23C4PAN(i)-1; fH1C23C4CO3(i)=fH1C23C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4OOH + OH = H1C23C4O2';
k(:,i) = 9.61e-12;
Gstr{i,1} = 'H1C23C4OOH'; Gstr{i,2} = 'OH'; 
fH1C23C4OOH(i)=fH1C23C4OOH(i)-1; fOH(i)=fOH(i)-1; fH1C23C4O2(i)=fH1C23C4O2(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4OOH + hv = H1C23C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'H1C23C4OOH'; 
fH1C23C4OOH(i)=fH1C23C4OOH(i)-1; fH1C23C4O(i)=fH1C23C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4OOH + hv = H1C23C4O + OH';
k(:,i) = J35;
Gstr{i,1} = 'H1C23C4OOH'; 
fH1C23C4OOH(i)=fH1C23C4OOH(i)-1; fH1C23C4O(i)=fH1C23C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H1C23C4O = HCHO + CO + HOCH2CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'H1C23C4O'; 
fH1C23C4O(i)=fH1C23C4O(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + OH = CO + CO + HOCH2CO3';
k(:,i) = 1.44e-11;
Gstr{i,1} = 'H1CO23CHO'; Gstr{i,2} = 'OH'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + hv = CO + CO + HOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'H1CO23CHO'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + hv = CO + CO + HOCH2CO3 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'H1CO23CHO'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

%Walters21.04.29
i=i+1;
Rnames{i} = 'APINANO3 = APINAO + NO2';
k(:,i) = 0.0007;
Gstr{i,1} = 'APINANO3';  
fAPINANO3(i)=fAPINANO3(i)-1; fAPINAO(i)=fAPINAO(i)+1; fNO2(i)=fNO2(i)+1

%Walters21.04.29
i=i+1;
Rnames{i} = 'APINBNO3 = APINBO + NO2';
k(:,i) = 0.0007;
Gstr{i,1} = 'APINBNO3';  
fAPINBNO3(i)=fAPINBNO3(i)-1; fAPINBO(i)=fAPINBO(i)+1; fNO2(i)=fNO2(i)+1

%Walters21.04.29
i=i+1;
Rnames{i} = 'APINCNO3 = APINCO + NO2';
k(:,i) = 0.0007;
Gstr{i,1} = 'APINCNO3';  
fAPINCNO3(i)=fAPINCNO3(i)-1; fAPINCO(i)=fAPINCO(i)+1; fNO2(i)=fNO2(i)+1

%END OF REACTION LIST


