function user_init()

global global_info;

global_info.time_startclock = [0 0 0]; %start clock at midnight
global_info.time_stopclock  = [23 59 59]; %stop clock prior to midnight
global_info.time_work_start = [7 0 0]; %start working day
global_info.time_work_stop  = [23 0 0]; %end working day
global_info.time_work_hours = clockToSec(global_info.time_work_stop)-clockToSec(global_info.time_work_start)*3600; %amount of hours worked
global_info.time_work_counter = 0; %counter for days until reached goal

global_info.place_tasta_projected_mass = 800000; %m3 projected mass from tasta
global_info.place_tasta_daily_mass = 1920; %todo m3 daily mass
global_info.place_hundvaag_projected_mass = 0; %todo: m3 projected mass from hundvaag
global_info.place_solbakk_projected_mass = 0; %todo: m3 projected mass from solbakk
global_info.place_eiganes_projected_mass = 0; %todo: m3 projected mass from eiganes

global_info.dumped_at_jaattaa = 0; %amount dumped at j�tt�

global_info.truck_per_place = randi([10,20],1,1); %amount of trucks at any given place
global_info.truck_capacity = 8; %capacity in m3
global_info.truck_load_time = [0 0 0]; %todo: specify the load time
global_info.truck_unload_time = [0 0 0]; %todo: specify the unload time

global_info.belt_capacity = 0; %todo:capacity in m3
global_info.belt_length = 0; %todo: length of belt in m
global_info.belt_load_time = [0 0 0]; %todo: specify the load time
global_info.belt_unload_time = [0 0 0]; %todo: specify the unload time

global_info.barge_capacity = 0; %todo:capacity in m3
global_info.barge_length = 0; %todo: length of barge in m
global_info.barge_load_time = [0 0 0]; %todo: specify the load time
global_info.barge_unload_time = [0 0 0]; %todo: specify the unload time

global_info.road_tasta_hinna_length = 8000; %length of road in m between tasta and hinna
global_info.road_tasta_hinna_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road_tasta_hinna_time_traffic_start = [14 0 0];
global_info.road_tasta_hinna_time_traffic_stop  = [17 0 0];
global_info.road_tasta_hinna_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps
global_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
global_info.road_x_y_capacity = 0; %capacity of trucks on road each way
global_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road_x_y_time_traffic_start = [14 0 0];
global_info.road_x_y_time_traffic_stop  = [17 0 0];
global_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps

global_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
global_info.road_x_y_capacity = 0; %capacity of trucks on road each way
global_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road_x_y_time_traffic_start = [14 0 0];
global_info.road_x_y_time_traffic_stop  = [17 0 0];
global_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


global_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
global_info.road_x_y_capacity = 0; %capacity of trucks on road each way
global_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road_x_y_time_traffic_start = [14 0 0];
global_info.road_x_y_time_traffic_stop  = [17 0 0];
global_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


global_info.road_x_y_length = 8000; %length of road in m between tasta and hinna
global_info.road_x_y_capacity = 0; %capacity of trucks on road each way
global_info.road_x_y_avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road_x_y_time_traffic_start = [14 0 0];
global_info.road_x_y_time_traffic_stop  = [17 0 0];
global_info.road_x_y_time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps

