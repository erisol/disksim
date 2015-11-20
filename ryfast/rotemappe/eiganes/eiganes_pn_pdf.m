function [pns] = eiganes_pn_pdf()
pns.PN_name = 'Surplus mass handling - eiganes';
pns.set_of_Ps = {'pEiganes','pRoadFrom','pJaattaa','pRoadTo','pBuffer'};
pns.set_of_Ts = {'tLoad','tTransFrom','tDump','tTransTo', 'tWash'};
pns.set_of_As =  {'pEiganes','tLoad', 1, 'tLoad','pRoadFrom', 1, 'pRoadFrom','tTransFrom', 1, 'tTransFrom','pJaattaa', 1, 'pJaattaa','tDump', 1, 'tDump','pRoadTo', 1, 'pRoadTo','tTransTo', 1, 'tTransTo','pBuffer', 1, 'pBuffer', 'tWash', 1,'tWash','pEiganes', 1};