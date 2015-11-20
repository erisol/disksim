function [fire, transition] = tLoadOntoConveyorBelt_pre (transition)
fire = 0;
if current_time() < 79200
    fire = 1;
end
