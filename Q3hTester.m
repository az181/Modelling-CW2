%test for various h
%win

load("constants.mat")

%things that should be inputs
v = 2;
alpha = pi/10;
bigT = 55; %should find out what t is when the ball hits the ground

%make things that are used just for this script
h = 1:1:100;
n = 1;
theRealValue = trajectory_eq(bigT,v,alpha);
error = zeros(1,100); %pre allocating array makes it faster by an infeasible amount

% check lots of different h and see the error to our "true" value
while n<100
    error(n) = abs(forwardEuler(H_ball,dxdt,dydt,h,v,alpha) - theRealValue); %the function here should be an input
    n = n+1;
end
%might want to plot too
%also i think this should be a function with the appropriate variables as
%inputs

%hopefully my madness makes some sense here