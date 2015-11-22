function [fire, transition] = tDumpMass_pre (transition)
global global_info;
fire = 0;

tokID = tokenAny('pEnroute', 1);
colors = get_color('pEnroute',tokID);
%start return trip and calculate trip time after dumping

if current_time >= str2double(colors{1})
    fprintf('Time %s: \t Place: pDumpAtRosenberg \t Action: Load dumped at Rosenberg\n',string_HH_MM_SS(current_time()));
    global_info.dumped_at_rosenberg = global_info.dumped_at_rosenberg + global_info.barge_capacity;
    transition.new_color = num2str(str2double(colors{1})+60*randi([20,30],1,1));
    transition.override = 1;
    fire = tokID;
end
