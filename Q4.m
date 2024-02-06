load constants.mat H_ball;

h = 0.01;

% set inital speed and angle of projection (chnage this to investigate different values)
v = 10;
alpha = pi/4;

% find x and y values for topspin (omega is positive)
omega_t = 1.2;
[tx,ty] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha, omega_t);

% find x and y values for backspin (omega is negative)
omega_b = -1.2;
[bx, by] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha, omega_b);

% calculate trajectory for no rotation
[nx, ny] = no_magnus(h, v, alpha);

% plot the three trajectories for comparison
figure(1)
plot(tx, ty)
title("Trajectory with topspin")
xlabel("x")
ylabel("y")
ylim([])

