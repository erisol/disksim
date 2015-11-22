function [fire, transition] = tNewVehicleAvailable_pre (transition)
fire = 0;
%a new vehicle is available 10-13 minutes after dumping its load at jåttå
tokID = tokenAny('pVehiclesEnrouteBack', 1);
colors = get_color('pVehiclesEnrouteBack',tokID);
if current_time >= str2double(colors{1})
    fprintf('Time %s: \t Place: pAvailableTrucks \t Action: Truck ready for loading\n',string_HH_MM_SS(current_time()));
    fire = tokID;
end