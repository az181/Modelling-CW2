function [x, y] = no_magnus(h, v, alpha)
% this function is used in magnus to see the same condeshons with no spin
load constants H_ball;
[x, y] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha);
plot(x,y);
xlabel("x")
ylabel("y")
title("Trajectory of ball with no magnus force")
subtitle("Approximated using Forward Euler")
% set the axis limits to positive only
ylim([0, inf])
end