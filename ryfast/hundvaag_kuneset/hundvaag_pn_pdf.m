function [pns] = hundvaag_pn_pdf()
pns.PN_name = 'Hundvaag';
global global_info;
pns.set_of_Ps = {...
'pStorageAtHundvaag',...
'pEnroute',...
'pDumpAtKuneset',...
'pVehiclesEnrouteBack',...
'pTransportVehicles',...
'pDumpAtKuenset',...
'pStorageAtKunset'};

pns.set_of_Ts = {'tMassGenerator','tStartTransport','tDumpMass','tNewVehicleAvailable','tStatusReportGenerator'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtHundvaag',global_info.mass_per_blast/global_info.truck_capacity,...
'pStorageAtHundvaag','tStartTransport',1,...
'tStartTransport','pEnroute',1,...
'pEnroute','tDumpMass',1,...
'tDumpMass','pStorageAtKunset',1,...
'tDumpMass','pVehiclesEnrouteBack',1,...
'pVehiclesEnrouteBack','tNewVehicleAvailable',1,...
'tNewVehicleAvailable','pTransportVehicles',1,...
'pTransportVehicles','tStartTransport',1,...
'tDumpMass','pDumpAtKuneset',1};
