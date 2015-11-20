function [pns] = solbakk_pn_pdf()
pns.PN_name = 'Solbakk';
global global_info;

pns.set_of_Ps = {...
'pStorageAtSolbakk',...
'pBelt',...
'pDumpAtSolbakk'};

pns.set_of_Ts = {'tMassGenerator','tLoadOntoConveyorBelt','tCrushMass'};

pns.set_of_As = {...
'tMassGenerator','pStorageAtSolbakk',global_info.mass_per_blast,...
'pStorageAtSolbakk','tLoadOntoConveyorBelt',1,...
'tLoadOntoConveyorBelt','pBelt',1,...
'pBelt','tCrushMass',1,...
'tCrushMass','pDumpAtSolbakk',1};
