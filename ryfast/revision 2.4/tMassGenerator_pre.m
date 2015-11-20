function [fire, transition] = tMassGenerator_pre (transition)
global ryfast_info;
fire=0;
if mod(current_time()/60,300)==0
    ryfast_info.generated_mass_tasta = ryfast_info.generated_mass_tasta + 80;
    fprintf('Time %s: \t Place: pStorageAtTasta \t Action: Mass generated and brought to tunnel entrance\n',string_HH_MM_SS(current_time()));
    fire = 1;
end