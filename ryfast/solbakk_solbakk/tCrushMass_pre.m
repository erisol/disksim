function [fire, transition] = tCrushMass_pre (transition)
global global_info;
tokID = tokenAny('pBelt', 1);
colors = get_color('pBelt',tokID);
fire = 0;
if current_time >= str2double(colors{1})
    global_info.dumped_at_solbakk = global_info.dumped_at_solbakk + global_info.belt_capacity;
    fire = tokID;
end

