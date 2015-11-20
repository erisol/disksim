function [fire, transition] = tStartTransport_pre (transition)
%global global_info;
%global ryfast_info;
%num1 = randi([6,11],1,1); %mass from explosion
%transition.new_color = num2str(randi([6,11],1,1));
fire = 0;
p1 = get_place('pStorageAtTasta');
if current_time() < 79200
    if p1.tokens > 0 
        if mod(current_time()/60,4)==0 
            fprintf('Time %s: \t Place: pEnroute \t \t \t Action: Loaded truck departed\n',string_HH_MM_SS(current_time()));
            fire = 1;
        end
    end
end