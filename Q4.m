load constants.mat H_ball;

h = 0.001;

% set inital speed and angle of projection (chnage this to investigate different values)
v = 15;
alpha = pi/10;

% find x and y values for topspin (omega is positive)
omega_t = 50;
[tx,ty] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha, omega_t);

% find x and y values for backspin (omega is negative)
omega_b = -50;
[bx, by] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha, omega_b);

% calculate trajectory for no rotation
omega_n = 0;
[nx, ny] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha, omega_n);

x = [11.9, 11.9];
y = [0, 0.9];

%plot the three trajectories for comparison
plot(tx, ty, bx, by, '--', nx, ny, ':', x, y, 'k')
title("Trajectory with Magnus effect")
legend('Topspin', 'Backspin', 'No Rotation', 'Placement of Net')
xlabel("x")
ylabel("y")
ylim([0, inf])


