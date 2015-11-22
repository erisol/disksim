function [fire, transition] = tDumpMass_pre (transition)
global global_info;
fire = 0;

tokID = tokenAny('pEnroute', 1);
colors = get_color('pEnroute',tokID);
%start return trip and calculate trip time after dumping
%check if rushhour( between 14.30 <-> 16.30) and assign return time
%accordingly
if current_time >= str2double(colors{1})
    fprintf('Time %s: \t Place: pDumpAtHarestadvika  Action: Load dumped at Harestadvika\n',string_HH_MM_SS(current_time()));
    global_info.dumped_at_harestadvika = global_info.dumped_at_harestadvika + global_info.truck_capacity;
     %if rushhour
            if current_time() > 52200 && current_time() < 59400 
                transition.new_color = num2str(current_time()+ 60*randi([26,28],1,1));
                transition.override = 1;
            else
                transition.new_color = num2str(current_time()+ 60*randi([22,24],1,1));
                transition.override = 1;
            end
    fire = tokID;
end
