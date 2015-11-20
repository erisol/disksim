function [fire, transition] = tStatusReportGenerator_post (transition)
global global_info;
fire = 0;
%print a status report every simulated hour
if mod(current_time()/60,60)==0
    p1 = get_place('pStorageAtTasta');
    p2 = get_place('pTransportVehicles');
    p3 = get_place('pEnroute');
    p4 = get_place('pDumpAtJaatta');
    p5 = get_place('pVehiclesEnrouteBack');
    fprintf('\n######## STATUS REPORT AT TIME %s ########\n',string_HH_MM_SS(current_time()));
    fprintf('Generated mass: \t\t\t\t\t %dm3\n',global_info.generated_mass_tasta);
    fprintf('Dumped mass: \t\t\t\t\t\t %dm3\n',global_info.dumped_at_jaattaa);
    fprintf('Tokens at pStorageAtTasta: \t\t\t %d\n',p1.tokens);
    fprintf('Tokens at pTransportVehicles: \t\t %d\n',p2.tokens);
    fprintf('Tokens at pEnroute: \t\t\t\t %d\n',p3.tokens);
    fprintf('Tokens at pDumpAtJaatta: \t\t\t %d\n',p4.tokens);
    fprintf('Tokens at pVehiclesEnrouteBack: \t %d\n',p5.tokens);
    fprintf('##########################################\n\n');
    fire = 1;
end