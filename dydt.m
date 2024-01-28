function dy = dydt(y, t, v_x, v_y)
%function to find the gradient of the trajectory for use in the Forward
%Euler scheme
g = -9.81;
dy = v_y + g * t;
% dx = v * cos(alpha) * t;
% dv = dy;
end
