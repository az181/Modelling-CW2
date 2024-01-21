function [y] = trajectory_eq(x, alpha, v)
g = -9.81;
%calcuate the trajectory y of the particle at point x when fired at and
%angle alpha to the horizontal at initial speed v.
y = x * tan(alpha) - (-g * x^2)/(v^2 *(cos(alpha)^2)) + 0.8;
end