function dx = dxdt_drag (x, t, v_x, v_y)
% this is the ode of the system with drag in the x axis
% x is the x position, t is the time, v_x is the horizontal velocity, v_y is the vertical velocity
load constants.mat A C_D m p;
% v_x = cos(alpha) * v;
% dy = (2 * m) / (C_D * p * A * abs( v_y )) * (a + g)
dx = v_x - ( C_D * p * A) / (2 * m) * abs( sqrt(v_y^2 + v_x^2) ) * v_x ;
end
