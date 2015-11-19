function [fire, transition] = tMassGenerator_pre (transition)
global ryfast_info;
ryfast_info.generated_mass_tasta = ryfast_info.generated_mass_tasta + 90;
fprintf('Time %s: \t Place: pStorageAtTasta \t Action: Mass generated and brought to tunnel entrance\n',num2str(current_clock(1)-ryfast_info.start_time));
fire = 1;