function [fire, transition] = tMassGenerator_pre (transition)
global global_info;
global_info.generated_mass_buoey = global_info.generated_mass_buoey + global_info.mass_per_blast*global_info.belt_capacity;
fprintf('Time %s: \t Place: pStorageAtBuoey \t Action: Mass generated and brought to tunnel entrance\n',string_HH_MM_SS(current_time()));
fire = 1;