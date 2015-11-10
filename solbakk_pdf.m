function [pns] = solbakk_pdf()
pns.PN_name = 'Surplus mass handling - Solbakk';
pns.set_of_Ps = {'pSolbakk', 'pBand', 'pSeadump'};
pns.set_of_Ts = {'tLoad','tTransport','tKnus'};
pns.set_of_As =  {'pSolbakk', 'tLoad', 1, 'tLoad', 'pB�nd', 1, 'pBand', 'pSjoefylling', 1};   
    
