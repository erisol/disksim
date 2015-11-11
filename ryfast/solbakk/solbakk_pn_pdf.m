function [pns] = solbakk_pn_pdf()
pns.PN_name = 'Surplus mass handling - Solbakk';
pns.set_of_Ps = {'pSolbakk', 'pBand', 'pBuffer', 'pSeadump'};
pns.set_of_Ts = {'tLoad','tTransport','tCrush'};
<<<<<<< HEAD:ryfast/solbakk/solbakk_pn_pdf.m
pns.set_of_As =  {'pSolbakk', 'tLoad', 1, 'tLoad', 'pBand', 1, 'pBand', 'tTransport', 1, 'tTransport', 'pBuffer', 1, 'pBuffer', 'tCrush', 1, 'tCrush', 'pSeadump', 1};  
=======
pns.set_of_As =  {'pSolbakk', 'tLoad', 1, 'tLoad', 'pBand', 1, 'pBand', 'tTransport', 1, 'tTransport', 'pBuffer', 1, 'pBuffer', 'tCrush', 1, 'tCrush', 'pSeadump', 1};   
    
>>>>>>> 7ac7ca92c538ef483b8fc5b2214e565a8d736069:ryfast/solbakk/solbakk_pn_pdf.m~
