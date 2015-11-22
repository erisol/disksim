function [fire, transition] = tNewVehicleAvailable_pre (transition)
fire = 0;
%a new vehicle becomes available a certain time after dumping its load
tokID = tokenAny('pVehiclesEnrouteBack', 1);
colors = get_color('pVehiclesEnrouteBack',tokID);
if current_time >= str2double(colors{1})
    fprintf('Time %s: \t Place: pAvailableBarge \t Action: Barge ready for loading\n',string_HH_MM_SS(current_time()));
    fire = tokID;
end