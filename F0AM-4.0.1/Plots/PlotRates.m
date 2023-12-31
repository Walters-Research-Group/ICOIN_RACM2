function SpRates = PlotRates(Spname,S,n2plot,varargin)
% function SpRates = PlotRates(Spname,S,n2plot,varargin)
% Generates a plot of production and loss rates vs time for a single species.
% The largest rates will be plotted individually (determined by n2plot), 
% while the rest are grouped into an "other" category.
%
% INPUTS:
% S: structure of model outputs. Must contain the following fields:
%    Time, Cnames, Chem.Rnames, Chem.Rates, Chem.f, Dil
% Spname: name of species
% n2plot: number of individual rates to plot. 
% varargin: One can specify several options as name-value pairs:
%
%           PlotRates(...,'sumEq',value)
%               Specifies a 0-1 flag for combining equilibrium reactions
%               (e.g. HO2 + NO2 = HO2NO2 and its reverse reaaction).
%               Default: 0
% 
%           PlotRates(...,'ptype',value)
%               Indicates type of plot.
%               Values can include 'fill', 'bar' or 'line'.
%               Default: 'fill'
%
%           PlotRates(...,'unit',value)
%               Changes the rate unit.
%               Valid values include any combination of cocentration (ppb, ppt, percc) and
%               time (s, m, h), separated by _.
%               Default: 'ppb_s'
% 
%           PlotRates(...,'scale',value)
%               Specifies an additonal scalar multiplier.
%               SPECIAL CASE: setting this to 0 causes P/L to be normalized by total P/L.
%               In this case, the "dilution" term is normalized to total loss.
%               Default: 1
%
% OUTPUT (optional) is a structure containing names and rates of plotted reactions.
%
% 20120319 GMW
% 20120725 GMW    Updated for UWCMv2.1. Now also includes dilution term.
% 20121028 GMW    Modified behavior of FilterEquilibria code to better handle cases where net
%                 reaction rates change sign (as per suggestion of SBH).
% 20131126 GMW    Moved Equilibrium filter code to ExtractRates.
% 20151106 GMW    Updates for F0AMv3.
%                 Changed options for ptype and sumEq to name-value pairs.
%                 Added options for unit and scale.
% 20200928 GMW    Fixed bug for plotting in case of no P or L reactions.

%%%%%DEAL WITH INPUTS%%%%%
%options
varInfo = {...
    %name       %default    %valid
    'unit'      'ppb_s'     {'ppb_s','ppb_m','ppb_h',...
                             'ppt_s','ppt_m','ppt_h',...
                             'percc_s','percc_m','percc_h'};...
    'scale'     1           [];...
    'ptype'     'fill'      {'fill','bar','line'};...
    'sumEq'     0           [0 1];...
    };
ParsePairs(varargin,varInfo);

%get unit multiplier and string
M = S.Met.M;
switch unit
    case 'ppb_s',   unitX = 1;           unitS = 'ppb s^-^1';
    case 'ppb_m',   unitX = 60;          unitS = 'ppb m^-^1';
    case 'ppb_h',   unitX = 3600;        unitS = 'ppb h^-^1';
    case 'ppt_s',   unitX = 1e3;         unitS = 'ppt s^-^1';
    case 'ppt_m',   unitX = 1e3*60;      unitS = 'ppt m^-^1';
    case 'ppt_h',   unitX = 1e3*3600;    unitS = 'ppt h^-^1';
    case 'percc_s', unitX = M./1e9;      unitS = 'cm^-^3 s^-^1';
    case 'percc_m', unitX = M./1e9*60;   unitS = 'cm^-^3 m^-^1';
    case 'percc_h', unitX = M./1e9*3600; unitS = 'cm^-^3 h^-^1';
end

if scale==0
    unitS = 'norm';
elseif scale~=1
    unitS = [num2str(1./scale,'%1.2G') ' ' unitS];
end
scale = unitX*scale;

%%%%%GRAB AND SORT RATES%%%%%
Time = S.Time;
[rSp,rSpnames] = ExtractRates(Spname,S,sumEq);

%%%%%COMBINE LIKE REACTIONS%%%%%
[rct,prd] = Rparts(rSpnames);
rct_unique = unique(rct);
rSp_unique = nan(size(rSp,1),length(rct_unique));
for i=1:length(rct_unique)
    j = ismember(rct,rct_unique{i});
    rSp_unique(:,i) = sum(rSp(:,j),2);
end
rct = rct_unique;
rSp = rSp_unique;

%%%%%SORT%%%%%
rSpsum = sum(rSp,1);
[rSpsum,n] = sort(rSpsum);
rSp = rSp(:,n);
rSpnames = rSpnames(n);
rct = rct(n);

%%%%%SEPARATE LOSS AND PRODUCTION, SCALE%%%%%
iL = rSpsum<0;
Lall = rSp(:,iL);
Lnames = rct(iL);
Lsum = sum(Lall,2);

if scale(1)==0,         Lall = Lall./repmat(-Lsum,1,sum(iL));
elseif length(scale)>1, Lall = Lall.*repmat(scale,1,sum(iL));
else                    Lall = Lall.*scale;
end
Lall(isnan(Lall)) = 0; %potential for NaN if normalizing

if sum(iL)<=n2plot
    L2plot = Lall;
else
    [MaxRate,iMax] = max(max(Lall(:,n2plot+1:end))); %identify largest contribution in "other"
    disp(['PlotRates: ' Spname])
    disp(['  Number of Loss Reactions in "other" = ' num2str(sum(iL)-n2plot)])
    disp(['  Largest contribution in "other" is ' Lnames{iMax} ' at ' num2str(MaxRate) ' ' unitS])
    
    Lother = sum(Lall(:,n2plot+1:end),2);
    L2plot = [Lall(:,1:n2plot) Lother];
    Lnames = [rct(iL(1:n2plot));'Other'];
end

iP = rSpsum>0;
Pall = fliplr(rSp(:,iP));
Pnames = flipud(rct(iP));
Psum = sum(Pall,2);

if scale(1)==0,         Pall = Pall./repmat(Psum,1,sum(iP));
elseif length(scale)>1, Pall = Pall.*repmat(scale,1,sum(iP));
else                    Pall = Pall.*scale;
end
Pall(isnan(Pall)) = 0; %potential for NaN if normalizing

if sum(iP)<=n2plot
    P2plot = Pall;
else
    [MaxRate,iMax] = max(max(Pall(:,n2plot+1:end))); %identify largest contribution in "other"
    disp(['PlotRates: ' Spname])
    disp(['  Number of Production Reactions in "other" = ' num2str(sum(iP)-n2plot)])
    disp(['  Largest contribution in "other" is ' Pnames{iMax} ' at ' num2str(MaxRate) ' ' unitS])
    
    Pother = sum(Pall(:,n2plot+1:end),2);
    P2plot = [Pall(:,1:n2plot) Pother];
    Pnames = [Pnames(1:n2plot);'Other'];
end

if isempty(P2plot),P2plot=nan(size(Time)); end
if isempty(L2plot),L2plot=nan(size(Time)); end

%%%%%DILUTION%%%%%
dil = S.Chem.DilRates.(Spname);
if scale(1)==0, dil = dil./-Lsum;
else            dil = dil.*scale;
end
dil(isnan(dil)) = 0;

%%%%%PLOTS%%%%%
figure;

load fillcolors.mat
colormap(fillcolors);

ax1 = axes;
ax2 = axes('Position',get(ax1,'Position'),'Color','none','Visible','off');
linkaxes([ax1,ax2])
hold on

switch ptype
    case 'fill'
        area(ax1,Time,P2plot)
        area(ax2,Time,L2plot)
        ylimit = max([max(abs(sum(L2plot,2))) max(sum(P2plot,2)) max(abs(dil))]);
    case 'line'
        plot(ax1,Time,P2plot,'LineWidth',2)
        plot(ax2,Time,L2plot,'LineWidth',2)
        plot([min(Time) max(Time)],[0 0],'k','LineWidth',2)
        ylimit = max([max(max(abs(L2plot))) max(max(P2plot)) max(abs(dil))]);
    case 'bar'
        bar(ax1,Time,P2plot,'stack');
        bar(ax2,Time,L2plot,'stack');
        ylimit = max([max(abs(sum(L2plot,2))) max(sum(P2plot,2)) max(abs(dil))]);
end

%Add dilution
if any(dil)
    hold on
    plot(Time,dil,'k--','LineWidth',2);
    Lnames = [Lnames; 'Dilution'];
end

%Plot decorations
if ~isempty(Pnames)
    legend(ax1,Pnames,'Location','NorthEast')
end

if ~isempty(Lnames)
    legend(ax2,Lnames,'Color','w','Location','SouthEast')
end

ylabel(ax1,[Spname ' Rates (' unitS ')'])
xlabel(ax1,'Model Time')

%tspacing = nanmean(diff(Time));
%xlim([min(Time)-tspacing max(Time)+tspacing])
%ylim(1.1*[-ylimit ylimit]);

set(ax2,'Position',get(ax1,'Position')) %need this to line up P and L plots
set(ax1,'Position',get(ax2,'Position'))

purtyPlot

%%%%%OUTPUT%%%%%
if nargout
    SpRates.Pnames = Pnames;
    SpRates.Prod = P2plot;
    SpRates.Lnames = Lnames;
    SpRates.Loss = L2plot;
end
