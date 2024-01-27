function dy = dydt_drag (y, t, v, alpha)
% this is the ode of the system with drag in the y axis
load("constants.mat");
v_y = sin(alpha) * v;
% dy = (2 * m) / (C_D * p * A * abs( v_y )) * (a + g)
dy = g * t + ( C_D * p * A) / (4 * m) * abs( v_y ) * v_y ;
end
