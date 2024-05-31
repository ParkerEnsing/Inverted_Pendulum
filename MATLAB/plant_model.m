close all; clear; clc;

t = 0:0.01:10; % time (s)

% Dynamics for a undamped pendulum (non-inverted)

theta_initial = 0.1; % angle from vertical (rad)
theta_dot_initial = 0;
g = 9.81; % gravitational acceleration (m/s/s)
l = 0.1; % length of rod (m)
k = sqrt(2*g / l);
c2 = theta_dot_initial / k;

theta = @(t, k, c1, c2) c1*cos(k*t) + c2*sin(k*t);

plot(t, theta(t, k, theta_initial, c2))