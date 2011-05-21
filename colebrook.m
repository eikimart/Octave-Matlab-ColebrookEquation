#!/usr/bin/octave -qf
% colebrook.m
% This script iteratively evaluates the Colebrook formula 
% for pipe friction.  
% Eiki Martinson, MSEE Thesis, July 2010

clear; clc;
f_initial = 0.035; %Initial value guessed at by aiming at the
                   %middle of the Moody chart  
Re = 25300;
epsilon = 0.002;
d = 25.4;          %Last two values both in millimeters

r = epsilon / d;   %Roughness ratio
f = f_initial;
for i = 1:10
  f = (2.0 * log10((r/3.7) + (2.51/(Re*f^0.5))))^-2;
end
f
