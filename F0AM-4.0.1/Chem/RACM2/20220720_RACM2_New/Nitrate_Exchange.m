% RACM2_AllRxns.m
% generated from RACM2_AllRxns.txt
% # of species = 124
% # of reactions = 363
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

SpeciesToAdd = {...
'HNO2P'; 'NO2P'; 'HNO2Q'; 'NO2Q'; 'HNO3'; 'NO3';};

AddSpecies

%% Exchange
i=i+1; %R001
Rnames{i} = 'HNO2P+NO3=NO2P+HNO3';
k(:,i) = 0.998163;
Gstr{i,1} = 'HNO2P'; 
fHNO2P(i)=fHNO2P(i)-1; fNO3(i)=fNO3(i)-1; fNO2P(i)=fNO2P(i)+1; fHNO3(i)=fHNO3(i)+1;

i=i+1; %R001
Rnames{i} = 'NO2P+HNO3=HNO2P+NO3';
k(:,i) = 1.001844;
Gstr{i,1} = 'NO2P'; 
fNO2P(i)=fNO2P(i)-1; fHNO3(i)=fHNO3(i)-1; fHNO2P(i)=fHNO2P(i)+1; fNO3(i)=fNO3(i)+1;

i=i+1; %R001
Rnames{i} = 'HNO2Q+NO3=NO2Q+HNO3';
k(:,i) = 0.996466;
Gstr{i,1} = 'HNO2Q'; 
fHNO2Q(i)=fHNO2Q(i)-1; fNO3(i) = fNO3(i)-1; fNO2Q(i)=fNO2Q(i)+1; fHNO3(i)=fHNO3(i)+1;

i=i+1; %R001
Rnames{i} = 'NO2Q+HNO3=HNO2Q+NO3';
k(:,i) = 1.003546;
Gstr{i,1} = 'NO2Q'; 
fNO2Q(i)=fNO2Q(i)-1; fHNO3(i)=fHNO3(i)-1; fHNO2Q(i)=fHNO2Q(i)+1; fNO3(i)=fNO3(i)+1;


%% THAT'S ALL FOLKS!


