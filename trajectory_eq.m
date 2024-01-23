function [y] = trajectory_eq(t, alpha, v)
g = -9.81;
%calcuate the trajectory y of the particle at point x when fired at and
%angle alpha to the horizontal at initial speed v.
x = v * t * cos(alpha);
z = v * t * sin(alpha) - (g * t ^ 2) / 2;
end
