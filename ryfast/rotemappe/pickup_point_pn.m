clear all; clc; 

global global_info; % user data 
global_info.STOP_AT = 960;
%global_info.PRINT_LOOP_NUMBER = 1; 
%global_info.MAX_LOOP = 1;

pns = pnstruct('pickup_point_pn_pdf'); % create petri net structure
%a = randi([0,2],1,1);
dyn.m0 = {'pStorage',2000};
dyn.ft = {'tGen',180,'tTruckReady',unifrnd(0.1,1.3),'tS_R',0.1}; 
dyn.ip = {'tS_R',5};

prnsys(pns, dyn);
pni = initialdynamics(pns, dyn);

sim = gpensim(pni); % perform simulation runs

prnss(sim); % print the simulation results 
plotp(sim, {'pStorage','pTrucks','pRoad'}); % plot the results


