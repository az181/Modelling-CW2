%test for various h
%win

load("constants.mat")

%should be inputs
theFunction = %joel upload it pls
v = 2;
alpha = pi/4;
bigT = %a number

%make things that are used just for this script
h = 1:1:100;
n = 1;
theRealValue = trajectory_eq(bigT,v,alpha);
error = [0:];

% check lots of different h and see the error to our "true" value
while n<100
    error(n) = abs(theFunction() - theRealValue); %the function here should be an input
    n = n+1;
end
%might want to plot too
%also i think this should be a function with the appropriate variables as
%inputs


%hopefully my madness makes some sense here