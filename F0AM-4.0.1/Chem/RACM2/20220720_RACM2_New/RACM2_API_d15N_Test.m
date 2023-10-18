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
% 20220720 WW   Replicate for d15N as Z

SpeciesToAdd = {...
'ACD'; 'ACO3'; 'ACT'; 'ACTP'; 'ALD'; 'API'; 'APIP'; 'CO'; 'CO2'; 'DCB1'; 'EOH'; 'ETHP'; ...
'GLY'; 'H2'; 'H2O2'; 'HC3P'; 'HCHO'; 'HNO3'; 'HO2'; 'HO2NO2'; 'HONO'; 'KET'; 'KETP'; 'MEK'; ...
'MEKP'; 'MGLY'; 'MO2'; 'MOH'; 'N2O5'; 'NO'; 'NO2'; 'NO3'; 'O1D'; 'O3'; 'O3P'; 'OH'; 'OLND'; ...
'OLNN'; 'ONIT'; 'OP1'; 'OP2'; 'ORA1'; 'ORA2'; 'ORAP'; 'PAA'; 'PAN'; 'PPN'; 'RCO3'; 'ROH'; 'XO2'; ...
'HZO3'; 'HOZO'; 'HOOZO'; 'HO2ZO2'; 'ZNO5';  'Z2O5'; 'ZO'; 'ZO2'; 'ZO3'; 'OLZD'; 'OLZN'; 'OZIT'; ...
'PAZ'; 'PPZ'; 'A'; ...
};

AddSpecies


%% Flow tube
i=i+1; %R00X
Rnames{i} = 'A=N2O5';
k(:,i) = 0.000143984;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fN2O5(i)=fN2O5(i)+1;

i=i+1; %R00X
Rnames{i} = 'A=ZNO5';
k(:,i) = 1.00859E-06;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fZNO5(i)=fZNO5(i)+1;


i=i+1; %R00X
Rnames{i} = 'A=Z2O5';
k(:,i) = 7.06499E-09;
Gstr{i,1} = 'A'; 
fA(i)=fA(i)-1; fZ2O5(i)=fZ2O5(i)+1;






%% THAT'S ALL FOLKS!


