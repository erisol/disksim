function [fire, transition] = tDumpMass_pre (transition)
global ryfast_info;
fire = 0;
if current_time() - ryfast_info.start_time > 15
    if mod(current_time()/60,8)==0 
        fprintf('Time %s: \t Place: pDumpAtJaatta \t Action: Load dumped at Jåttå\n',string_HH_MM_SS(current_time()));
        ryfast_info.dumped_at_jaattaa = ryfast_info.dumped_at_jaattaa + ryfast_info.truck_capacity;
        fire = 1;
    end
end