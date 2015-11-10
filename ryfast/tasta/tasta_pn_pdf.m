function [pns] = tasta_pn_pdf()
pns.PN_name = 'Surplus mass handling - Tasta';
pns.set_of_Ps = {'pTasta','pRoadFrom','pJaattaa','pRoadTo'};
pns.set_of_Ts = {'tLoad','tTransFrom','tDump','tTransTo', 'tWash'};
pns.set_of_As =  {'pTasta','tLoad', 1, 'tLoad','pRoadFrom', 1, 'pRoadFrom','tTransFrom', 1, 'tTransFrom','pJaattaa', 1, 'pJaattaa','tDump', 1, 'tDump','pRoadTo', 1, 'pRoadTo','tTransTo', 1, 'tTransTo','tWash', 1, 'tWash','pTasta', 1};