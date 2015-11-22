function [pns] = lervik_pn_pdf()
pns.PN_name = 'Lervik';
global global_info;
pns.set_of_Ps = {...
'pStorageAtKuneset',...
'pEnroute',...
'pDumpAtLervik',...
'pVehiclesEnrouteBack',...
'pTransportVehicles'};

pns.set_of_Ts = {'tMassGenerator','tStartTransport','tDumpMass','tNewVehicleAvailable','tStatusReportGenerator'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtKuneset',global_info.mass_per_blast/global_info.truck_capacity,...
'pStorageAtKuneset','tStartTransport',1,...
'tStartTransport','pEnroute',1,...
'pEnroute','tDumpMass',1,...
'tDumpMass','pDumpAtLervik',1,...
'tDumpMass','pVehiclesEnrouteBack',1,...
'pVehiclesEnrouteBack','tNewVehicleAvailable',1,...
'tNewVehicleAvailable','pTransportVehicles',1,...
'pTransportVehicles','tStartTransport',1};
