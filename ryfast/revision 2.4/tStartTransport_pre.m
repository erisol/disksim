function [fire, transition] = tStartTransport_pre (transition)

num1 = randi([6,11],1,1); %mass from explosion
transition.new_color = num2str(num1);
transition.override = 1;
fire = 1;