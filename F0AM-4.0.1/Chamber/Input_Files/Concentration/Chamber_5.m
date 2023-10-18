% Chamber_5.m
% This is the input file for the 
% concentration simulation of Chamber
% experiment 5.
% 20231007 WW

clear

%% METEOROLOGY

Met = {...
%   names       values          
    'P'         1013                       ; %Pressure, mbar
    'T'         295                        ; %Temperature, K
    'RH'        1                          ; %Relative Humidity, percent
    'LFlux'     'GTLightFlux_2019.txt'     ; %Text file for radiation spectrum
    'jcorr'     1                          ; %light attenuation factor
    };

%% CHEMICAL CONCENTRATIONS

InitConc = {...
%   names       conc(ppb)           HoldMe
    'API'        25                 0;
    'NO'         125                0;
    'H2O2'       2000               0;
};

%% CHEMISTRY

ChemFiles = {...
    'RACM2_K(Met)';
    'RACM2_J(Met,1)'; %Jmethod flag of 1 specifies using "BottomUp" J-value method.
    'RACM2';
    };

%% DILUTION CONCENTRATIONS
% We are not diluting the chamber air, so this input is irrelevant (but still necessary).

BkgdConc = {...
%   names           values
    'DEFAULT'       0;   %0 for all zeros, 1 to use InitConc
    };

%% OPTIONS

ModelOptions.Verbose       = 1;
ModelOptions.EndPointsOnly = 0;
ModelOptions.LinkSteps     = 0;
ModelOptions.IntTime       = 4*3600;
ModelOptions.SavePath      = 'Output_Chamber_5_Concentration.mat';
ModelOptions.GoParallel    = 0;

%% MODEL RUN
% Now we call the model.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
% clear Met InitConc ChemFiles BkgdConc ModelOptions

%Ploting 
APIrates = PlotRates('API',S,50,'unit','ppb_h','sumEq',1)
NO2rates = PlotRates('NO2',S,50,'unit','ppb_h','sumEq',1)
HNO3rates = PlotRates('HNO3',S,50,'unit','ppb_h','sumEq',1)
ONITrates = PlotRates('ONIT',S,50,'unit','ppb_h','sumEq',1)
HONOrates = PlotRates('HONO',S,50,'unit','ppb_h','sumEq',1)



