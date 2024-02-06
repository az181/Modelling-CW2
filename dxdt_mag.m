function dx = dxdt_mag (y, t, v_x, v_y, omega)
% this is the ode of the system with thue magnus effect and drag in the x axis
% x is the x position, t is the time, v_x is the horizontal velocity, v_y is the vertical velocity
% omega is the angular velocity: positive if the ball spins clockwise (topspin)

% this constant was soused from this articale (I can now nologer find it)
Ca = 0.55;

load constants.mat A C_D m p;


% finds magnitude of the velocity 
v = sqrt((v_x)^2 + (v_y)^2);

% find the radius of the ball
r = sqrt(A/pi);

% find the linear speed of rotation
rotation_speed = r * omega;

% this equastion is from wikipedia
ax = Ca * (p/2) * ((v + rotation_speed)^2 - (v - rotation_speed)^2) * A / m;

dx = v_x - ( C_D * p * A) / (2 * m) * abs( sqrt(v_y^2 + v_x^2) ) * v_x + ax;


end