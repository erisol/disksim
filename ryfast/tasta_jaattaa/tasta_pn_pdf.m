function [png] = tasta_pn_pdf()
png.PN_name = 'tasta_pn_pdf';

png.set_of_Ps = {...
'pStorageAtTasta',...
'pTransportVehicles',...
'pEnroute',...
'pDumpAtJaatta',...
'pVehiclesEnrouteBack',...
 };

png.set_of_Ts = {'tMassGenerator',...
                 'tStartTransport',...
                 'tDumpMass',...
                 'tNewVehicleAvailable',...
                 'tStatusReportGenerator',...
                 };

png.set_of_As = {...
'tMassGenerator','pStorageAtTasta',22,...
'pStorageAtTasta','tStartTransport',1,...
'pTransportVehicles','tStartTransport',1,...
'tStartTransport','pEnroute',1,...
'pEnroute','tDumpMass',1,...
'tDumpMass','pDumpAtJaatta',1,...
'tDumpMass','pVehiclesEnrouteBack',1,...
'pVehiclesEnrouteBack','tNewVehicleAvailable',1,...
'tNewVehicleAvailable','pTransportVehicles',1,...
};