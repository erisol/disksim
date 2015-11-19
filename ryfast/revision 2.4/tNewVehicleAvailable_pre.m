function [fire, transition] = tNewVehicleAvailable_pre (transition)
global ryfast_info;
fprintf('Time %s: \t Place: pAvailableTrucks \t Action: Truck ready for loading\n',num2str(current_clock(1)-ryfast_info.start_time));
fire = 1;