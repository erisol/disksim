function [fire, transition] = tDumpMass_pre (transition)
global global_info;
fire = 0;

tokID = tokenAny('pEnroute', 1);
colors = get_color('pEnroute',tokID);

if current_time >= str2double(colors{1})
    fprintf('Time %s: \t Place: pDumpAtFiskaa \t\t Action: Load dumped at Fiskaa\n',string_HH_MM_SS(current_time()));
    global_info.dumped_at_fiskaa = global_info.dumped_at_fiskaa + global_info.truck_capacity;
    transition.new_color = num2str(str2double(colors{1})+60*randi([10,13],1,1));
    transition.override = 1;
    fire = tokID;
end
