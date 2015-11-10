% Example-05-01: A Simple Classic Petri Net
% the main file to run simulation 

clear all; clc; 

global global_info; % user data 
global_info.PRINT_LOOP_NUMBER = 1; 
global_info.MAX_LOOP = 10;

pns = pnstruct('solbakk_pn_pdf'); % create petri net structure

dyn.m0 = {'pSolbakk',10};

prnsys(pns, dyn);
pni = initialdynamics(pns, dyn);

sim = gpensim(pni); % perform simulation runs

prnss(sim); % print the simulation results 
plotp(sim, {'pSolbakk', 'pBand', 'pSeadump'}); % plot the results

