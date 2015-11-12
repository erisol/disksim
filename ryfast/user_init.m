global_info.time.startclock = [0 0 0]; %start clock at midnight
global_info.time.stopclock  = [23 59 59]; %stop clock prior to midnight
global_info.time.work.start = [7 0 0]; %start working day
global_info.time.work.stop  = [23 0 0]; %end working day
global_info.time.work.hours = clockToSec(global_info.time.work.stop)-clockToSec(global_info.time.work.start)*3600; %amount of hours worked
global_info.time.work.counter = 0; %counter for days until reached goal

global_info.place.tasta.projected_mass = 0; %todo: m3 projected mass from tasta
global_info.place.hundvaag.projected_mass = 0; %todo: m3 projected mass from hundvaag
global_info.place.solbakk.projected_mass = 0; %todo: m3 projected mass from solbakk
global_info.place.eiganes.projected_mass = 0; %todo: m3 projected mass from eiganes

global_info.truck.capacity = 15; %capacity in m3
global_info.truck.length = 12.5; %length of truck in m
global_info.truck.load_time = [0 0 0]; %todo: specify the load time
global_info.truck.unload_time = [0 0 0]; %todo: specify the unload time

global_info.belt.capacity = 0; %todo:capacity in m3
global_info.belt.length = 0; %todo: length of belt in m
global_info.belt.load_time = [0 0 0]; %todo: specify the load time
global_info.belt.unload_time = [0 0 0]; %todo: specify the unload time

global_info.barge.capacity = 0; %todo:capacity in m3
global_info.barge.length = 0; %todo: length of barge in m
global_info.barge.load_time = [0 0 0]; %todo: specify the load time
global_info.barge.unload_time = [0 0 0]; %todo: specify the unload time

global_info.road.tasta_hinna.length = 8000; %length of road in m between tasta and hinna
global_info.road.tasta_hinna.capacity = 0; %capacity of trucks on road each way
global_info.road.tasta_hinna.avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road.tasta_hinna.time_traffic_start = [14 0 0];
global_info.road.tasta_hinna.time_traffic_stop  = [17 0 0];
global_info.road.tasta_hinna.time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps

global_info.road.x_y.length = 8000; %length of road in m between tasta and hinna
global_info.road.x_y.capacity = 0; %capacity of trucks on road each way
global_info.road.x_y.avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road.x_y.time_traffic_start = [14 0 0];
global_info.road.x_y.time_traffic_stop  = [17 0 0];
global_info.road.x_y.time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps

global_info.road.x_y.length = 8000; %length of road in m between tasta and hinna
global_info.road.x_y.capacity = 0; %capacity of trucks on road each way
global_info.road.x_y.avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road.x_y.time_traffic_start = [14 0 0];
global_info.road.x_y.time_traffic_stop  = [17 0 0];
global_info.road.x_y.time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


global_info.road.x_y.length = 8000; %length of road in m between tasta and hinna
global_info.road.x_y.capacity = 0; %capacity of trucks on road each way
global_info.road.x_y.avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road.x_y.time_traffic_start = [14 0 0];
global_info.road.x_y.time_traffic_stop  = [17 0 0];
global_info.road.x_y.time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps


global_info.road.x_y.length = 8000; %length of road in m between tasta and hinna
global_info.road.x_y.capacity = 0; %capacity of trucks on road each way
global_info.road.x_y.avg_time = [0 12 0]; %average time of travel on the road. information from Google Maps
global_info.road.x_y.time_traffic_start = [14 0 0];
global_info.road.x_y.time_traffic_stop  = [17 0 0];
global_info.road.x_y.time_traffic_time = [0 23 0]; %time of travel during rush hours/trafficated road. information from Google Maps

