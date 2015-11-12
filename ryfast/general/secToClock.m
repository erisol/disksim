function [ clockFormat ] = secToClock( time )
% using seconds to format to a normal clock
h = floor(time / 3600); %hours
time = time-hours*3600;
m = floor(time / 60); %minutes
s = t - m * 60; %seconds
clockFormat = [h,m,s];
end