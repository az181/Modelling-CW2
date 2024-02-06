function [x, y] = midpointMethod(T, H_ball, h, trajectory_eq, v, alpha)
% H_ball = 0.8;
% T = 100;%whatever you want
% h = 0.1;%or whatever you want
% time array
t = 0:h:T; 
x = zeros(size(t));
y = zeros(size(t));
% y starts at the height of the ball
y(1) = H_ball; 

for i = 1:(length(t)-1)
    % calculate slopes at midpoint using trajectory_eq
    mid = t(i) + h / 2; % finds midpoint
    [xMid, yMid] = trajectory_eq(mid, v, alpha);
    
    % Update co-ordinates
    x(i+1) = x(i) + h * xMid;
    y(i+1) = y(i) + h * yMid;
end
end








