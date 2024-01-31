%test for various h
%win

load("constants.mat")

%should be inputs
v = 2;
alpha = pi/3;
bigT = %a number

%make h yo
h = 1:1:100;
n = 1;
theRealValue = trajectory_eq(bigT,v,alpha);

% check lots of different h and see the error to our "true" value
while n<100
    error = abs(forwardEuler(H_ball,dxdt,dydt,h,v,alpha) - theRealValue); %nope nope nope, the function here should be an input too so that I can put any equation in
    n = n+1;
end
%might want to plot too
%also i think this should be a function with the appropriate variables as
%inputs


%hopefully my madness makes some sense here