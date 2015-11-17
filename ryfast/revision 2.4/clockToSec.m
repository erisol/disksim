function [ secFormat ] = clockToSec ( clock )
    secFormat = (clock(1)*3600)+(clock(2)*60)+clock(3);
end