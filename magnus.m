function [x, y] = magnus(h, v, alpha, omega)

% %omega is the angular velocity: positive if the ball spins clockwise (topspin)
% Ca = 0.55;

load("constants.mat")

% %set initial speed in the x and y directions
% v_x = v * cos(alpha);
% v_y = v * sin(alpha);

% %find speeds at time t
% xspeed = dxdt_drag(x, t, v_x, v_y);
% yspeed = dydt_drag(y, t, v_x, v_y);

% %find velocity and angle at time t
% v = sqrt((v_x)^2 + (v_y)^2);
% theta = (pi/2) * atand(yspeed/xspeed);

% %find the radius of the ball
% r = sqrt(A/pi);

% %find the linear speed of rotation
% rotation_speed = r * omega;
% Fx = Ca * (p/2) * ((v + rotation_speed)^2 - (v - rotation_speed)^2) * A;

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

