function dx = dxdt_mag (y, t, v_x, v_y, omega, v, alpha)
% this is the ode of the system with thue magnus effect and drag in the x axis
% x is the x position, t is the time, v_x is the horizontal velocity, v_y is the vertical velocity
% omega is the angular velocity: positive if the ball spins clockwise (topspin)

%calculate initial conditions
initial_x = v * cos(alpha);


%drag force coefficient sourced from https://www.researchgate.net/publication/313199404_The_drag_coefficient_of_tennis_balls
Ca = 0.55;

load constants.mat A C_D m p;


%find velocity and angle of magnus force at time t
v_x = abs(v_x);
v_y = abs(v_y);
V = sqrt((v_x)^2 + (v_y)^2);
%the magnus force is orthogonal to the velocity
theta = atand(v_y/v_x);

% find the radius of the ball
r = sqrt(A/pi);

% find the linear speed of rotation (rad/s)
rotation_speed = r * omega;

%calculate magnus force acting on the ball (resolved in x direction)
% equation sourced from wikipedia
%the force depends on the relative velocities of each surface, the drag force coefficient,
%and the dimensions of the ball
magnus_force = Ca * (p/2) * ((V - rotation_speed)^2 - (V + rotation_speed)^2) * A * cos(theta);

%calculate acceleration
ax = magnus_force / m;

%calculate velocity
dx = initial_x - ( C_D * p * A) / (2 * m) * abs( V ) * initial_x + ax;


end