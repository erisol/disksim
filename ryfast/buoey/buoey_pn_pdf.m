function [pns] = buoey_pn_pdf()
pns.PN_name = 'Surplus mass handling - buoey';
pns.set_of_Ps = {'pBuoey', 'pBand', 'pBuffer', 'pSeadump'};
pns.set_of_Ts = {'tLoad','tTransport','tCrush'};
pns.set_of_As =  {'pBuoey', 'tLoad', 1, 'tLoad', 'pBand', 1, 'pBand', 'tTransport', 1, 'tTransport', 'pBuffer', 1, 'pBuffer', 'tCrush', 1, 'tCrush', 'pSeadump', 1};  