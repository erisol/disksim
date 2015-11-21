function [fire, transition] = tStatusReportGenerator_post (transition)
global global_info;
fire = 0;
%print a status report every simulated hour
if mod(current_time()/60,60)==0
    p1 = get_place('pStorageAtSolbakk');
    p2 = get_place('pBelt');
    p3 = get_place('pDumpAtSolbakk');
    fprintf('\n######## STATUS REPORT AT TIME %s ########\n',string_HH_MM_SS(current_time()));
    fprintf('Generated mass: \t\t\t\t\t %sm3\n',num2str(global_info.generated_mass_solbakk));
    fprintf('Dumped mass: \t\t\t\t\t\t %sm3\n',num2str(global_info.dumped_at_solbakk));
    fprintf('Tokens at pStorageAtSolbakk: \t\t %d\n',p1.tokens);
    fprintf('Tokens at pBelt: \t\t\t\t\t %d\n',p2.tokens);
    fprintf('Tokens at pDumpAtSolbakk: \t\t\t %d\n',p3.tokens);
    fprintf('################################################\n\n');
    fire = 1;
end