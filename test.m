%declare stuff
load constants.mat H_ball
x = [];
y = [];
x(1) = 0;
y(1) = H_ball;
t=0;
n=1;
% variables to change (yeah I know this needs to be a function)
h=0.05;
alpha = pi/4;
v = 2;
% generate values
while y(n) > 0 & n < 150
    t = t+h;
    [x(n+1),y(n+1)] = trajectory_eq(t,alpha,v);
    y(n+1) = y(n+1) + H_ball
    n=n+1;
end

plot(x,y)
