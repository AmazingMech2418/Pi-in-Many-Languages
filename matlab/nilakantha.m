clc;
clear all;
close all;

% Initial variables
% a is the step
% s is the sign
% calcPi calculates pi
a = 2;
s = 1;
calcPi = 3;

% Iterate and loop through
for n = 0:150000
    % Nilakantha Series
    calcPi = calcPi + s * (4 / (a * (a * (a + 3) + 2)));
    % Increment step by 2
    a = a + 2;
    % Invert sign
    s = -s;
end

% Display pi
disp("pi = " + num2str(calcPi,15));
