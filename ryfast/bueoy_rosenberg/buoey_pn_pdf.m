function [pns] = buoey_pn_pdf()
pns.PN_name = 'Bueoy';
global global_info;

pns.set_of_Ps = {...
'pStorageAtBuoey',...
'pBelt',...
'pDumpAtRosenberg',...
};

pns.set_of_Ts = {'tMassGenerator','tLoadOntoConveyorBelt','tCrushMass','tStatusReportGenerator'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtBuoey',global_info.mass_per_blast,...
'pStorageAtBuoey','tLoadOntoConveyorBelt',global_info.belt_capacity,...
'tLoadOntoConveyorBelt','pBelt',global_info.belt_capacity,...
'pBelt','tCrushMass',global_info.belt_capacity,...
'tCrushMass','pDumpAtRosenberg',global_info.belt_capacity};
