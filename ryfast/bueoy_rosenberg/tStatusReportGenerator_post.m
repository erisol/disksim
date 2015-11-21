function [fire, transition] = tStatusReportGenerator_post (transition)
global global_info;
fire = 0;
%print a status report every simulated hour
if mod(current_time()/60,60)==0
    p1 = get_place('pStorageAtBuoey');
    p2 = get_place('pBelt');
    p3 = get_place('pDumpAtRosenberg');
    fprintf('\n######## STATUS REPORT AT TIME %s ########\n',string_HH_MM_SS(current_time()));
    fprintf('Generated mass: \t\t\t\t\t %sm3\n',num2str(global_info.generated_mass_buoey));
    fprintf('Dumped mass: \t\t\t\t\t\t %sm3\n',num2str(global_info.dumped_at_rosenberg));
    fprintf('Tokens at pStorageAtBuoey: \t\t\t %d\n',p1.tokens);
    fprintf('Tokens at pBelt: \t\t\t\t\t %d\n',p2.tokens);
    fprintf('Tokens at pDumpAtRosenberg: \t\t %d\n',p3.tokens);
    fprintf('################################################\n\n');
    fire = 1;
end