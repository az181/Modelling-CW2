function dy = dydt(y, t, v_x, v_y)
%function to find the gradient of the trajectory for use in the Forward
%Euler scheme
load constants.mat g;
dy = v_y - g * t;
end
