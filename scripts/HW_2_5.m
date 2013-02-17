% This is a script to produce the nadir facing beam pattern
% for an array of uniformly spaced dipoles created for problem
% 5 in homework 2 for the 2013 unofficial
% UTIG Ice Penetrating Radar Course 
% written by Dustin M. Schroeder

N = 3; % Number of Antennas
lambda = 5.0; % Wavelength of Transmitted Signal
d = lambda/2.0; % Spacing Between Antennas
theta = -180.0:1.0:180.0; % Angle of Beam Pattern (nadir = 90)
gamma = 2*pi*d/lambda*cos(theta/180.*pi); % Ulaby 9.112
F = sin(gamma*N/2.).^2./sin(gamma/2.).^2; % Ulaby 9.120
F_dB = 10*log10(F); % Convert to dB
plot(theta-90,F_dB); % Plot and Center on Nadir
ylim([-20,30]);
xlim([-90,90]);
xlabel('Degrees from Nadir')
ylabel('Gain(dB)')
str = sprintf('Array of %f Antennas',N);
title(str);