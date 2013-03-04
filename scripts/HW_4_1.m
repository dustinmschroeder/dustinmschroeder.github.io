% This is a script to produce a highly simplified model of the 
% phase distribution for a radar return from a perfectly flat 
% bed being transmitted through a rough dielectric ice surface
% Problem 1 in homework 4 for the 2013 unofficial
% UTIG Ice Penetrating Radar Course 
% written by Dustin M. Schroeder

sigma_h = 0; %RMS Height in meters
D = 3.2; % Dielectric Constant
lambda = 5.0; % Wavelength of Transmitted Signal
phase_in = zeros(1,1000);
delay_in = (rand(1,1000)-0.5)*sigma_h*(D-1)/lambda;
delay_out = (rand(1,1000)-0.5)*sigma_h*(D-1)/lambda;
phase_out = phase_in+delay_in+delay_out;
phase_out = acos(cos(phase_out));
hist(phase_out*180./pi)
xlabel('Return phase (in degrees)')
ylabel('Returns in phase bin (out of 1000)')
title('Phase distribution for bed return')

