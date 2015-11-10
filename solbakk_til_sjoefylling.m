function [pns] = solbakk_pdf()
pns.PN_name = 'Surplus mass handling - Solbakk';
pns.set_of_Ps = {'pSolbakk', 'pBand', 'pSeadump'};
pns.set_of_Ts = {'tLoad','tTransport','tCrush'};
pns.set_of_As =  {'pSolbakk', 'tLoad', 1, 'tLoad', 'pBand', 1, 'pBand', 'tCrush', 1, 'tCrush', 'pSeadump', 1};   