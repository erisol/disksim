function [fire, transition] = tDumpMass_pre (transition)
global global_info;

tokID = tokenAny('pEnroute', 1); % first, select the only token
color = get_color('pEnroute',tokID);
fprintf('a truck dumped %s m3 of mass\n', color{1});
global_info.dumped_at_jaattaa = global_info.dumped_at_jaattaa + str2double(color{1});
transition.new_color = ''; % put the sum as the new color 
transition.override = 1; % only sum as color - NO inheritance
 
fire = 1;  %let it fire