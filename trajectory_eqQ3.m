function [tr_x,tr_y] = trajectory_eqQ3(bigT, v, alpha)
load constants.mat g;
% calcuate the trajectory y of the particle at point x when fired at and
% angle alpha to the horizontal at initial speed v.
tr_x = v * bigT * cos(alpha);
tr_y = (v * bigT * sin(alpha)) - ( ((g) * (bigT ^ 2)) / 2);
end
