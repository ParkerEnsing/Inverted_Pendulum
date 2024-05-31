close all; clear; clc;

t = 0:0.01:1; % time (s)

% Dynamics for a undamped inverted pendulum

theta_initial = 0.1; % angle from vertical (rad)
g = 9.81; % gravitational acceleration (m/s/s)
l = 0.2; % length of rod (m)
k = sqrt(g / l);
c = theta_initial / 2;

theta = @(t, k, c) c*exp(k*t) + c*exp(-k*t);
plot(t, theta(t, k, c))