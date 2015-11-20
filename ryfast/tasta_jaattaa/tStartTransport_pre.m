function [fire, transition] = tStartTransport_pre (transition)
fire = 0;
p1 = get_place('pStorageAtTasta');
if current_time() < 79200
    if p1.tokens > 0 
        if mod(current_time()/60,3)==0 
            %start transport and calculate transport time
            transition.new_color = num2str(current_time()+ 60*randi([10,13],1,1));
            transition.override = 1;
            fprintf('Time %s: \t Place: pEnroute \t \t \t Action: Loaded truck departed\n',string_HH_MM_SS(current_time()));
            fire = 1;
        end
    end
end