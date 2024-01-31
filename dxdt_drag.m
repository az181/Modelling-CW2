function dx = dxdt_drag (x, t, v_x, v_y)
% this is the ode of the system with drag in the x axis
load("constants.mat");
% v_x = cos(alpha) * v;
% dy = (2 * m) / (C_D * p * A * abs( v_y )) * (a + g)
dx = v_x - ( C_D * p * A) / (2 * m) * abs( sqrt(v_y^2 + v_x^2) ) * v_x ;
end
