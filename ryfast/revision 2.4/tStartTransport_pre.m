function [fire, transition] = tStartTransport_pre (transition)
%global global_info;
global ryfast_info;
%num1 = randi([6,11],1,1); %mass from explosion
%transition.new_color = num2str(randi([6,11],1,1));

fprintf('Time %s: \t Place: pEnroute \t \t \t Action: Loaded truck departed\n',num2str(current_clock(1)-ryfast_info.start_time));
transition.new_color = {num2str(ryfast_info.truck_capacity)};
transition.override = 1;
fire = 1;