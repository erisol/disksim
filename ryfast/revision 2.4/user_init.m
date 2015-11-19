function user_init()

global ryfast_info;



ryfast_info.time_startclock = [0 0 0]; %start clock at midnight
ryfast_info.time_stopclock  = [23 59 59]; %stop clock prior to midnight
ryfast_info.time_work_start = [7 0 0]; %start working day
ryfast_info.time_work_stop  = [23 0 0]; %end working day
ryfast_info.time_work_hours = clockToSec(ryfast_info.time_work_stop)-clockToSec(ryfast_info.time_work_start)*3600; %amount of hours worked
ryfast_info.time_work_counter = 0; %counter for days until reached goal

ryfast_info.place_tasta_projected_mass = 800000; %m3 projected mass from tasta
ryfast_info.place_tasta_daily_mass = 1920; %todo m3 daily mass
ryfast_info.place_hundvaag_projected_mass = 0; %todo: m3 projected mass from hundvaag
ryfast_info.place_solbakk_projected_mass = 0; %todo: m3 projected mass from solbakk
ryfast_info.place_eiganes_projected_mass = 0; %todo: m3 projected mass from eiganes

ryfast_info.dumped_at_jaattaa = 0; %amount dumped at jåttå
ryfast_info.dumped_at_jaattaa_total = 0;

ryfast_info.truck_per_place = randi([10,20],1,1); %amount of trucks at any given place
ryfast_info.truck_capacity = 8; %capacity in m3
ryfast_info.truck_load_time = [0 0 0]; %todo: specify the load time
ryfast_info.truck_unload_time = [0 0 0]; %todo: specify the unload time

ryfast_info.belt_capacity = 0; %todo:capacity in m3
ryfast_info.belt_length = 0; %todo: length of belt in m
ryfast_info.belt_load_time = [0 0 0]; %todo: specify the load time
ryfast_info.belt_unload_time = [0 0 0]; %todo: specify the unload time

ryfast_info.barge_capacity = 0; %todo:capacity in m3
ryfast_info.barge_length = 0; %todo: length of barge in m
ryfast_info.barge_load_time = [0 0 0]; %todo: specify the load time
ryfast_info.barge_unload_time = [0 0 0]; %todo: specify the unload time

ryfast_info.road_tasta_hinna_length = 8000; %length of road in m between tasta and hinna
ryfast_info.road_tasta_hinna_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
ryfast_info.road_tasta_hinna_time_traffic_start = [14 0 0];
ryfast_info.road_tasta_hinna_time_traffic_stop  = [17 0 0];
ryfast_info.road_tasta_hinna_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps
ryfast_info.road_tasta_hinna_length = 8000; %length of road in m between tasta and hinna
ryfast_info.road_tasta_hinna_capacity = 20; %capacity of trucks on road each way
ryfast_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
ryfast_info.road_x_y_time_traffic_start = [14 0 0];
ryfast_info.road_x_y_time_traffic_stop  = [17 0 0];
ryfast_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps

ryfast_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
ryfast_info.road_x_y_capacity = 0; %capacity of trucks on road each way
ryfast_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
ryfast_info.road_x_y_time_traffic_start = [14 0 0];
ryfast_info.road_x_y_time_traffic_stop  = [17 0 0];
ryfast_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


ryfast_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
ryfast_info.road_x_y_capacity = 0; %capacity of trucks on road each way
ryfast_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
ryfast_info.road_x_y_time_traffic_start = [14 0 0];
ryfast_info.road_x_y_time_traffic_stop  = [17 0 0];
ryfast_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


ryfast_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
ryfast_info.road_x_y_capacity = 0; %capacity of trucks on road each way
ryfast_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
ryfast_info.road_x_y_time_traffic_start = [14 0 0];
ryfast_info.road_x_y_time_traffic_stop  = [17 0 0];
ryfast_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


ryfast_info.generated_mass_tasta = 90;