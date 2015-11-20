function [pns] = hundvaag_pn_pdf()
pns.PN_name = 'Surplus mass handling - Tasta';
pns.set_of_Ps = {'pKunset','pSeaFrom','pRosenberg','pSeaTo','pLervik','pFiskaa'};
pns.set_of_Ts = {'tLoad','tTransFrom','tDump','tSeaTo'};
pns.set_of_As =  {'pKunset','tLoad', 1, 'tLoad','pSeaFrom', 1, 'pSeaFrom','tDump', 1,'tDump','pRosenberg',1,'tDump','pLervik',1,'tDump','pFiskaa',1,'pFiskaa','tSeaTo',1,'pLervik','tSeaTo',1,'pRosenberg','tSeaTo',1,'tSeaTo','pKunset',1};