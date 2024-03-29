function [] = Q1(v, alpha)

% combine all of the functions to create the plot of the ball's path
% takes v and alpha as inputs to allow the constants to be varied

% load constants
load constants.mat H_ball;
h = 0.01;

% perform forward euler to obtain arrays of x and y values
[x, y] = forwardEuler(H_ball, @dxdt, @dydt, h, v, alpha);

% use the trajectory equation to find the real trajectory of the equation
ty(1) = H_ball;
tx(1) = 0;
tt(1) = 0;
n = 1;
while ty(n) > 0
    tt(n + 1) = tt(n) + h;
    [tx(n + 1), ty(n + 1)] = trajectory_eq(tt(n + 1), v, alpha);
    ty(n + 1) = ty(n + 1) + 0.8;
    n = n + 1;
end

% plot y against x
figure(1)
plot(x, y)
xlabel("x")
ylabel("y")
title("Trajectory of ball with no drag")
subtitle("Approximated using Forward Euler")
% set the axis limits to positive only
ylim([0, inf])

% plot the real trajectory using the trajectory equation
figure(2)
plot(tx, ty)
xlabel("x")
ylabel("y")
title("Trajectory of ball with no drag")
subtitle("Analytical Solution")
ylim([0, inf])

end