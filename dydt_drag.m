function dy = dydt_drag (y, t, v_x, v_y)
% this is the ode of the system with drag in the y axis
load("constants.mat");
% v_y = sin(alpha) * v;
% dy = (2 * m) / (C_D * p * A * abs( v_y )) * (a + g)
dy = v_y - (g - ( C_D * p * A) / (2 * m) * abs( sqrt(v_y^2 + v_x^2) ) * v_y);
end
