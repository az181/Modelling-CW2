load constants H_ball;
[x, y] = forwardEuler(H_ball, @dxdt_drag, @dydt_drag, 0.01, 10, pi/4);
plot(x,y);
xlabel("x")
ylabel("y")
title("Trajectory of ball with drag")
subtitle("Approximated using Forward Euler")
% set the axis limits to positive only
ylim([0, inf])
