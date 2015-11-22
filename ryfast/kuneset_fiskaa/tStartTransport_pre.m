function [fire, transition] = tStartTransport_pre (transition)
fire = 0;
p1 = get_place('pStorageAtKuneset');
if current_time() < 79200
     %there has to be loads available at the storage
    if p1.tokens > 0 
        %start transport and calculate transport time
        if mod(current_time()/60,3)==0 
            transition.new_color = num2str(current_time()+ 60*60*3);
            transition.override = 1;
            fprintf('Time %s: \t Place: pEnroute \t \t \t Action: Loaded barge departed\n',string_HH_MM_SS(current_time()));
            fire = 1;
        end
    end
end