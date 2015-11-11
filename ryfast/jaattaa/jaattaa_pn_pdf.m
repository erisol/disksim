function [pns] = jaattaa_pn_pdf()
pns.PN_name = 'Surplus mass handling - Tasta';
pns.set_of_Ps = {'pJaattaa','pRoadFrom','pHarestadvika','pRoadTo','pBuffer'};
pns.set_of_Ts = {'tLoad','tTransFrom','tDump','tTransTo', 'tWash'};
pns.set_of_As =  {'pJaattaa','tLoad', 1, 'tLoad','pRoadFrom', 1, 'pRoadFrom','tTransFrom', 1, 'tTransFrom','pHarestadvika', 1, 'pHarestadvika','tDump', 1, 'tDump','pRoadTo', 1, 'pRoadTo','tTransTo', 1, 'tTransTo','pBuffer', 1, 'pBuffer', 'tWash', 1,'tWash','pJaattaa', 1};