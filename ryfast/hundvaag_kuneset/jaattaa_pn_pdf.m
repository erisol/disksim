function [pns] = jaattaa_pn_pdf()
pns.PN_name = 'Jaattaa';
global global_info;
pns.set_of_Ps = {...
'pStorageAtJaattaa',...
'pEnroute',...
'pDumpAtHarestadvika',...
'pVehiclesEnrouteBack',...
'pTransportVehicles'};

pns.set_of_Ts = {'tMassGenerator','tStartTransport','tDumpMass','tNewVehicleAvailable','tStatusReportGenerator'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtJaattaa',global_info.mass_per_blast/global_info.truck_capacity,...
'pStorageAtJaattaa','tStartTransport',1,...
'tStartTransport','pEnroute',1,...
'pEnroute','tDumpMass',1,...
'tDumpMass','pDumpAtHarestadvika',1,...
'tDumpMass','pVehiclesEnrouteBack',1,...
'pVehiclesEnrouteBack','tNewVehicleAvailable',1,...
'tNewVehicleAvailable','pTransportVehicles',1,...
'pTransportVehicles','tStartTransport',1};