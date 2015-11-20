function [pns] = pickup_point_pn_pdf()
pns.PN_name = 'Surplus mass handling ';
pns.set_of_Ps = {'pStorage','pTrucks','pRoad'};
pns.set_of_Ts = {'tGen','tS_R','tTruckReady'};
pns.set_of_As =  {...
    'tGen','pStorage',2000,...
    'pStorage','tS_R',9,...
    'tTruckReady','pTrucks',1,...
    'pTrucks','tS_R',1,...
    'tS_R','pRoad',9,...
    };