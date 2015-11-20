function [fire, transition] = tNewVehicleAvailable_pre (transition)
global ryfast_info;
fire = 0;
%the transition firing time is set to 11 so it fulfills the time conditions set
if current_time() - ryfast_info.start_time > 48
    if mod(current_time()/60,11)==0 
        fprintf('Time %s: \t Place: pAvailableTrucks \t Action: Truck ready for loading\n',string_HH_MM_SS(current_time()));
        fire = 1;
    end
end