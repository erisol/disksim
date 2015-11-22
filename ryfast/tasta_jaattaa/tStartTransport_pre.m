function [fire, transition] = tStartTransport_pre (transition)
fire = 0;
p1 = get_place('pStorageAtTasta');
if current_time() < 79200
    %there has to be loads available at the storage
    if p1.tokens > 0 
        %start transport (each 3rd minute) and calculate transport time
        if mod(current_time()/60,3)==0 
            %transport time if rushhour( between 14.30 <-> 16.30)
            if current_time() > 52200 && current_time() < 59400 
                transition.new_color = num2str(current_time()+ 60*randi([12,14],1,1));
                transition.override = 1;
            else
                transition.new_color = num2str(current_time()+ 60*randi([10,13],1,1));
                transition.override = 1;
            end
            fprintf('Time %s: \t Place: pEnroute \t \t \t Action: Loaded truck departed\n',string_HH_MM_SS(current_time()));
            fire = 1;
        end
    end
end