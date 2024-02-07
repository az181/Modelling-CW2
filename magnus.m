function [x, y] = magnus(h, v, alpha, omega)

% %omega is the angular velocity: positive if the ball spins clockwise (topspin)
% Ca = 0.55;

load constants.mat H_ball;


% it does forwardEuler using the magnus effect formulae
[x,y] = forwardEuler_mag(H_ball, @dxdt_mag, @dydt_mag, h, v, alpha, omega);

%use the code from Q2 to create a plot of the trajectory with no magnus
%force
[nx, ny] = no_magnus(h, v, alpha);

figure(1)
plot(nx,ny);
xlabel("x")
ylabel("y")
title("Trajectory of ball with no magnus force")
%set the axis limits to positive only
ylim([0, inf])

%plot the trajectory with magnus force
figure(2)
plot(x, y)
xlabel("x")
ylabel("y")
title("Trajectory of ball with magnus force")
ylim([0, inf])

end

