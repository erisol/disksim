clear all; clc; 

global global_info; % user data 
global_info.PRINT_LOOP_NUMBER = 1; 
global_info.MAX_LOOP = 10;

pns = pnstruct('eiganes_pn_pdf'); % create petri net structure

dyn.m0 = {'pEiganes',20};

prnsys(pns, dyn);
pni = initialdynamics(pns, dyn);

sim = gpensim(pni); % perform simulation runs

prnss(sim); % print the simulation results 
plotp(sim, {'pEiganes', 'pRoadFrom', 'pJaattaa','pRoadTo'}); % plot the results

