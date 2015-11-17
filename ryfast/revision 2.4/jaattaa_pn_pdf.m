function [pns] = jaattaa_pn_pdf()
pns.PN.name = 'Jaattaa';

pns.set_of_Ps = {...
'pStorageAtJaattaa',...
'pEnroute',...
'pStorageAtHarestadvika',...
'pVehiclesEnrouteBack',...
'pTransportVehicles'};

pns.set_of_Ts = {'tMassGenerator','tStartTransport','tDumpMass','tNewVehicleAvailable'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtJaattaa',1,...
'pStorageAtJaattaa','tStartTransport,1',...
'tStartTransport','pEnroute',1,...
'pEnroute','tDumpMass',1,...
'tDumpMass','pStorageAtHarestadvika',1,...
'tDumpMass','pVehiclesEnrouteBack',1,...
'pVehiclesEnrouteBack','tNewVehicleAvailable',1,...
'tNewVehicleAvailable','pTransportVehicles',1,...
'pTransportVehicles','tStartTransport',1};
