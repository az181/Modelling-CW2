function dy = dydt_mag (y, t, v_x, v_y, omega)
% this is the ode of the system with thue magnus effect and drag in the y axis
% x is the x position, t is the time, v_x is the horizontal velocity, v_y is the vertical velocity
% omega is the angular velocity: positive if the ball spins clockwise (topspin)

% this constant was soused from this articale (I can now nologer find it)
  Ca = 0.55;

  load constants.mat g A C_D m p 

  %set initial speed in the x and y directions
  % v_x = v * cos(alpha);
  % v_y = v * sin(alpha);

  %find speeds at time t
  % xspeed = dxdt_drag(x, t, v_x, v_y);
  % yspeed = dydt_drag(y, t, v_x, v_y);

  %find velocity and angle at time t
  v = sqrt((v_x)^2 + (v_y)^2);
  % theta = (pi/2) * atand(yspeed/xspeed);

  %find the radius of the ball
  r = sqrt(A/pi);

  %find the linear speed of rotation
  rotation_speed = r * omega;
  ay = Ca * (p/2) * ((v + rotation_speed)^2 - (v - rotation_speed)^2) * A / m;

  dy = v_y - g * t - ( C_D * p * A) / (2 * m) * abs( sqrt(v_y^2 + v_x^2) ) * v_y + ay;

end