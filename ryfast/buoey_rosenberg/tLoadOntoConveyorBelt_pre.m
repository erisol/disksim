function [fire, transition] = tLoadOntoConveyorBelt_pre (transition)
fire = 0;
if current_time() < 79200
    transition.new_color = num2str(current_time()+ 60*15);
    transition.override = 1;
    fire = 1;
end