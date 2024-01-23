function dy = f(y, t)
%function to find the gradient of the trajectory for use in the Forward 
%Euler scheme
g = -9.81;
dy = v * sin(alpha) + g * t;
end
