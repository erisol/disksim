clear all; clc;
global global_info; % user data
global_info.START_AT = [7 0 0]; %simulation starts at 7 in the morning
global_info.DELTA_TIME = 60; %time in hours
global_info.STOP_AT = [23 00 1]; %simulation end at 11 in the evening
global_info.generated_mass_tasta = 0; %generated mass in m3
global_info.truck_capacity = 10; %capacity in m3
global_info.mass_per_blast = 90; %mass produced by each blast
global_info.road_tasta_hinna_capacity = 2; %capacity of trucks on road each way
global_info.dumped_at_jaattaa = 0;

pns = pnstruct('tasta_pn_pdf'); % create petri net structure

dyn.m0 = {'pStorageAtTasta',global_info.mass_per_blast/global_info.truck_capacity,... %number of truckloads produced by the last blast from the previous day
          'pTransportVehicles',global_info.road_tasta_hinna_capacity,... %number of trucks available
          'pEnroute',0,...
          'pDumpAtJaatta',0,...
          'pVehiclesEnrouteBack',0,...
          };
dyn.ft = {'tMassGenerator',10800,... %a new blast/mass generation happens every 3rd hour
          'tNewVehicleAvailable',1,...
          'tStartTransport',1,...
          'tDumpMass',1,...
          'tStatusReportGenerator',1,...
          }; 
      
prnsys(pns, dyn);
pni = initialdynamics(pns, dyn);
sim = gpensim(pni); % perform simulation runs

plotp(sim, {...
'pDumpAtJaatta',...
'pEnroute',...
'pStorageAtTasta',...
'pVehiclesEnrouteBack',...
'pTransportVehicles',...
}); % plot the results

fprintf('amount dumped today: %s\n', num2str(global_info.dumped_at_jaattaa));