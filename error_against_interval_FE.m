%test for various h
clear
load("constants.mat")

%pre allocate, idk if this does anything I just saw it another script
error_x = zeros(1,100);
error_y = zeros(1,100);
error_y = zeros(1,100);
interval = zeros(1,100);

%things that should be inputs and other possible inputs to try out for
%other plots
v = 10; % v=5, v=15
alpha = pi/3; % try with pi/6, pi/4
bigT = 1; %use T=1

%caculate actual position with the trajectory equation,
[tr_x, tr_y] = trajectory_eqQ3(bigT,v,alpha);

%for loop for multiple values of h
for p = 1:1:100000
     h = 0.001 * p;
     t = 0;
     interval(p) = 0.001 * p;  
     %forward euler for position at time = bigT,
     [fe_x(p),fe_y(p)] = forwardEuler_Q3c(H_ball, @dxdt, @dydt, h, v, alpha);
end

%pp = [1 :1 : 100];
%interval = 1 ./ pp;

error_x = abs(fe_x - tr_x); %should be zero without drag being accounted for.
error_y = abs(fe_y - tr_y);
error = ((error_x).^2 + (error_y).^2).^(1/2);
%error = abs([fe_x, fe_y] - [tr_x, tr_y])

%plot error against interval
%plot(interval, error)
%scatter(interval, error)
%xlim([0 0.1])
%ylim([0 10])

loglog(interval, error)

title("error in forwardEuler for different time-step intervals" )
ylabel("natural log of the error in forwardEuler")
xlabel("time-step interval (natural log of h)")









