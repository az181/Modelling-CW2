%test for various h
%win

load("constants.mat")

%things that should be inputs
v = 2;
alpha = pi/10;
bigT = 55; %should find out what t is when the ball hits the ground

%make things that are used just for this script
h = 0.01:0.01:1;
n = 1;
pos = trajectory_eq(bigT,v,alpha);
theRealValue = pos;
error = zeros(1,100); %pre allocating array makes it faster by an infeasible amount


% check lots of different h and see the error to our "true" value
while n<100
    Val = forwardEuler(H_ball,@dxdt,@dydt,h(n),v,alpha);
    error(n) = abs(Val(length(Val)) - theRealValue); %the function here should be an input
    n = n+1;
end
%drop final values because my indexing doesn't work
h(end) = [];
error(end) = [];

%might want to plot too
figure(1)
plot(h, error)
xlabel("Value for h")
ylabel("Error when compared to trajectory equation")
title("Error of Forward Euler as h varies")
%set the axis limits to positive only
ylim([0, inf])

%hopefully my madness makes some sense here