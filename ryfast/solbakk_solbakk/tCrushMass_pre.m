function [fire, transition] = tCrushMass_pre (transition)
global global_info;
    global_info.dumped_at_solbakk = global_info.dumped_at_solbakk + global_info.belt_capacity;
fire = 1;

