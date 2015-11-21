function [fire, transition] = tMassGenerator_pre (transition)
global global_info;
fire=0;
%new mass is generated every 90 minutes
if mod((1800+current_time())/60,90)==0
    global_info.generated_mass_solbakk = global_info.generated_mass_solbakk + global_info.mass_per_blast*global_info.belt_capacity;
    fprintf('Time %s: \t Place: pStorageAtSolbakk \t Action: Mass generated and brought to tunnel entrance\n',string_HH_MM_SS(current_time()));
    fire = 1;
end