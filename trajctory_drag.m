load("constants")
[x, y] = forwardEuler(H_ball, @dxdt_drag, @dydt_drag, 0.01, 10, pi/4);
plot(x,y);
