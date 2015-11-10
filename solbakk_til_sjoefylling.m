% Example-05-01: A Simple Classic Petri Net 
% file: simple_pn_def.m: 

function [pns] = simple_pn_pdf()
pns.PN_name = 'A Simple Classic Petri Net';
pns.set_of_Ps = {'pSolbakk', 'pB�nd', 'pSjoefylling'};
pns.set_of_Ts = {'tLoad','tTransport','tKnus'};
pns.set_of_As =  {'pSolbakk', 'tLoad', 1, 'tLoad', 'pB�nd', 1, 'pB�nd', 'pSjoefylling', 1};   
    
