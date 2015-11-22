function [fire, transition] = tMassGenerator_pre (transition)
global global_info;
global_info.generated_mass_hundvaag = global_info.generated_mass_hundvaag + global_info.mass_per_blast;
%this is the mass generator
fprintf('Time %s: \t Place: pStorageAtJaattaa \t Action: Mass generated and brought to tunnel entrance\n',string_HH_MM_SS(current_time()));
fire = 1;
