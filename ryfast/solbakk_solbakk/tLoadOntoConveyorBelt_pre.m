function [fire, transition] = tLoadOntoConveyorBelt_pre (transition)
fire = 0;
%load mass on to the conveyor belt at given time.
if current_time() < 79200
    transition.new_color = num2str(current_time()+ 60*15);
    transition.override = 1;
    fire = 1;
end