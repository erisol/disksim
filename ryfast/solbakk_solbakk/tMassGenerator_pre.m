function [fire, transition] = tMassGenerator_pre (transition)
global global_info;
global_info.generated_mass_solbakk = global_info.generated_mass_solbakk + global_info.mass_per_blast;
fprintf('Time %s: \t Place: pStorageAtSolbakk \t Action: Mass generated and brought to tunnel entrance\n',string_HH_MM_SS(current_time()));
fire = 1;
