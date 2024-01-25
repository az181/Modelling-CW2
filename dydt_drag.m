function dy = dydt_drag (y, t, v, alpha)
% this is the ode of the system with drag 
load("constants.mat")
% dy = (2 * m) / (C_D * p * A * abs(v)) * (a + g) 
dy = g * t + ( C_D * p * A) / (4 * m) * abs(v) * v; 
end
