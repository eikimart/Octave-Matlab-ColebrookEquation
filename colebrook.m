#!/usr/bin/octave -qf
% colebrook.m
% This script iteratively evaluates the Colebrook formula 
% for pipe friction.  
% Eiki Martinson, MSEE Thesis, July 2010

% Call it like this: colebrook.m Re d epsilon, where
% 'Re' is the Reynolds number, 'epsilon' is the roughness height in
% millimeters, a characteristic of the pipe material that you can
% probably look up in published tables, depending on your
% requirements. 'd' is the pipe diameter in millimeters.

clear;
arg_list = argv ();
Re = str2num(arg_list{1});
d = str2num(arg_list{2});
epsilon = str2num(arg_list{3});

f_initial = 0.035; %Initial value guessed at by aiming at the
                   %middle of the Moody chart  

r = epsilon / d;   %Roughness ratio
f = f_initial;
for i = 1:10
  f = (2.0 * log10((r/3.7) + (2.51/(Re*f^0.5))))^-2;
end
f
