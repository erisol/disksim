function [fire, transition] = tLoadOntoConveyorBelt_pre (transition)
fire = 0;
%if the time is earlier than 22.00
%this transition loads the mass on to the conveyor belt.
if current_time() < 79200
    %assign transport time
    transition.new_color = num2str(current_time()+ 60*15);
    transition.override = 1;
    fire = 1;
end