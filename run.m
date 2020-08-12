
% 
% -----------COPYRIGHT NOTICE STARTS WITH THIS LINE------------


% All rights reserved. 
% Permission is hereby granted, without written agreement and without license or royalty fees, to use, copy, 
% modify, and distribute this code (the source files) and its documentation for
% academic and research  purpose, provided that the copyright notice in its entirety appear in all copies of this code, and the 
% original source of this code. The research
% is to be cited in the bibliography as:
% 
%  S. K. Dhara, M. Roy, D. Sen and P. K. Biswas, "Color Cast Dependent Image Dehazing via Adaptive Airlight Refinement
%  and Non-linear Color Balancing," in IEEE Transactions on Circuits and Systems for Video Technology, doi: 10.1109/TCSVT.2020.3007850
% 
% 
% -----------COPYRIGHT NOTICE ENDS WITH THIS LINE------------%
% 
% Authors  : Sobhan Kanti Dhara ; Mayukh Roy ; Debashis Sen ; Prabir Kumar Biswas 
% Version : 1.1
% 
% The authors are with Dept. of Electronics and Electrical Communication Engineering, 
% Indian Institute of Technology, Kharagpur, India.
% 
% Kindly report any suggestions or corrections to dhara.sk@gmail.com
% 
% ========================================================================
% 
% It is an unoptimized implementation of the following paper The algorithm is described in:
%  S. K. Dhara, M. Roy, D. Sen and P. K. Biswas, "Color Cast Dependent Image Dehazing via Adaptive Airlight Refinement
%  and Non-linear Color Balancing," in IEEE Transactions on Circuits and Systems for Video Technology, doi: 10.1109/TCSVT.2020.3007850
 % usage: 
 %% Load the image, for example img = imread('testimage.jpg'));
 %% Check whether color correction required as per flag flag=classify(img); 
 %  flag: flag=1  classfied as color cast. 
 %  flag =0  classfied as non cast. 
 %  dehazedimg=dehazemain(img, flag); gives the output dehazedimg after required correction/no correction as per the flag

img=imread(input); 
flag=classify(img); 
dehazedimg=dehazemain(img, flag); 
%imshow(dehazedimg);