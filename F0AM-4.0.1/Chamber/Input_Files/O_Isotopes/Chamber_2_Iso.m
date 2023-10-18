% Chamber_2_Iso.m
% This is the input file for the 
% O isotope simulation of Chamber
% experiment 2.
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
    'NO'         10                  0;
    'H2O2'       2000               0;
};

%% CHEMISTRY

ChemFiles = {...
    'RACM2_K(Met)';
    'RACM2_J(Met,1)'; %Jmethod flag of 1 specifies using "BottomUp" J-value method.
    'ICOIN_RACM2';
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
ModelOptions.SavePath      = 'Output_Chamber_2_O_Isotope.mat';
ModelOptions.GoParallel    = 0;

%% MODEL RUN
% Now we call the model.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
% clear Met InitConc ChemFiles BkgdConc ModelOptions


