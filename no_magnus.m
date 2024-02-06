function [x, y] = no_magnus(h, v, alpha)
load("constants")
[x, y] = forwardEuler(H_ball, @dxdt_drag, @dydt_drag, h, v, alpha);
plot(x,y);
xlabel("x")
ylabel("y")
title("Trajectory of ball with no magnus force")
subtitle("Approximated using Forward Euler")
%set the axis limits to positive only
ylim([0, inf])
end