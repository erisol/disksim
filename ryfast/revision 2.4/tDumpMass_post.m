function [fire, transition] = tDumpMass_post (transition)
global ryfast_info;
%global global_info;

%fprintf('a truck dumped %s m3 of mass\n', color{1});

tokID = tokenAny('pEnroute', 1); % first, select the only token
colors = get_color('pEnroute',tokID);
fprintf('Time %s: \t Place: pDumpAtJaattaa \t \t Action: Truck dumped %s m^3\n',num2str(current_clock(1)-ryfast_info.start_time),colors{1});
ryfast_info.dumped_at_jaattaa = ryfast_info.dumped_at_jaattaa + str2double(colors{1});
transition.new_color = '';
transition.override = 1;
fire = 1;




%if mod(clock , 960) == 0
%    fprintf('amount dumped today: %s\n', num2str(ryfast_info.dumped_at_jaattaa));
%    ryfast_info.dumped_at_jaattaa_total = ryfast_info.dumped_at_jaattaa_total + ryfast_info.dumped_at_jaattaa;
%    ryfast_info.dumped_at_jaattaa = 0;
%end

%fire = 1;  %let it fire