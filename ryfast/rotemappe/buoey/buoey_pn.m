% the main file to run simulation 

clear all; clc; 

global global_info; % user data 
global_info.PRINT_LOOP_NUMBER = 1; 
global_info.MAX_LOOP = 10;

pns = pnstruct('buoey_pn_pdf'); % create petri net structure

dyn.m0 = {'pBuoey',10};

prnsys(pns, dyn);
pni = initialdynamics(pns, dyn);

sim = gpensim(pni); % perform simulation runs

prnss(sim); % print the simulation results 
plotp(sim, {'pBuoey', 'pBand', 'pSeadump'}); % plot the results

