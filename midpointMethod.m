%H_ball = 0.8;
%T = 100;%whatever you want
%h = 0.1;%or whatever you want
%i hop this is what i was supposed to do
%if it is wrong i am sorry and tell me where I'm wrong
function [x, y] = midpointMethod(T, H_ball, h, trajectory_eq, v, alpha)
    t = 0:h:T; % time array
    x = zeros(size(t));
    y = zeros(size(t));
    y(1) = H_ball; % y starts at the height of the ball

    for i = 1:(length(t)-1)
        mid = t(i) + h / 2; % finds midpoint
        [xMid, yMid] = trajectory_eq(mid, v, alpha);
        %calculate slopes at midpoint using trajectory_eq
        
        % Update co-ordinates
        x(i+1) = x(i) + h * xMid;
        y(i+1) = y(i) + h * yMid;
    end
end








