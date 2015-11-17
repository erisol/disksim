function [pns] = rosenberg_pn_pdf()
pns.PN.name = 'Rosenberg';

pns.set_of_Ps = {...
'pStorageAtKunset',...
'pEnroute',...
'pStorageAtRosenberg',...
'pVehiclesEnrouteBack',...
'pTransportVehicles'};

pns.set_of_Ts = {'tMassGenerator','tStartTransport','tDumpMass','tNewVehicleAvailable'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtKunset',1,...
'pStorageAtKunset','tStartTransport',1,...
'tStartTransport','pEnroute',1,...
'pEnroute','tDumpMass',1,...
'tDumpMass','pStorageAtRosenberg',1,...
'tDumpMass','pVehiclesEnrouteBack',1,...
'pVehiclesEnrouteBack','tNewVehicleAvailable',1,...
'tNewVehicleAvailable','pTransportVehicles',1,...
'pTransportVehicles','tStartTransport',1};