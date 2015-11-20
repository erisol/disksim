function [fire, transition] = tMassGenerator_pre (transition)
global global_info;
fire=0;
%new mass is generated every 90 minutes
if mod((1800+current_time())/60,90)==0
    global_info.generated_mass_tasta = global_info.generated_mass_tasta + 110;
    fprintf('Time %s: \t Place: pStorageAtTasta \t Action: Mass generated and brought to tunnel entrance\n',string_HH_MM_SS(current_time()));
    fire = 1;
end