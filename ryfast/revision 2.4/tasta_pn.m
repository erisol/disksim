clear all; clc; 

global global_info; % user data 
global_info.STOP_AT = 960;
%global_info.PRINT_LOOP_NUMBER = 1; 
%global_info.MAX_LOOP = 1;

pns = pnstruct('tasta_pn_pdf'); % create petri net structure
dyn.m0 = {'pStorageAtTasta',100,'pTransportVehicles',randi([10,20],1,1)};
dyn.ft = {'tMassGenerator',180,'tNewVehicleAvailable',3,'tStartTransport',3,'tDumpMass',13}; 
dyn.ip = {'tStartTransport',5};

prnsys(pns, dyn);
pni = initialdynamics(pns, dyn);

sim = gpensim(pni); % perform simulation runs

prnss(sim); % print the simulation results 
plotp(sim, {...
'pStorageAtTasta',...
'pEnroute',...
'pStorageAtJaattaa',...
'pVehiclesEnrouteBack',...
'pTransportVehicles',...
'pDumpAtJaatta'}); % plot the results
