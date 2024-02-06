function dy = dydt_drag (y, t, v_x, v_y)
% this is the ode of the system with drag in the y axis
% x is the x position, t is the time, v_x is the horizontal velocity, v_y is the vertical velocityload("constants.mat");

load constants.mat g C_D p A m;
dy = v_y - g * t - ( C_D * p * A) / (2 * m) * abs( sqrt(v_y^2 + v_x^2) ) * v_y;
end
