%test for various h

load("constants.mat")

%pre allocate, idk if this does anything I just saw it another script
error_x = zeros(1,100);
error_y = zeros(1,100);
error = zeros(1,100);

%things that should be inputs and other possible inputs to try out for
%other plots
v = 10; % v=5, v=15
alpha = pi/4; % try with pi/6, pi/3
bigT = 1; %use T=1

%caculate actual position with the trajectory equation,
[tr_x, tr_y] = trajectory_eqQ3(bigT,v,alpha)

%for loop for multiple values of h
for p = 1:100
     h = 1 ./ (p);
     t = 0;

     %forward euler for position at time = bigT,
     [fe_x(p),fe_y(p)] = forwardEuler_Q3c(H_ball, @dxdt, @dydt, h, v, alpha);
end

interval = [1 : 1 : 100];

error_x = abs(fe_x - tr_x);
error_y = abs(fe_y - tr_y);
error = ((error_x).^2 + (error_y).^2).^(1/2);

%plot error against interval
loglog(interval, error)
title("error in forwardEuler for different time-step intervals" )
ylabel("log base 10 of the error in forwardEuler")
xlabel("time-step interval (1/p)")








