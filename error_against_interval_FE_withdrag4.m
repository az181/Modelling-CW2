%Script to create a graph for the error in forward-euler for different
%time-stepping intervals.

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

%caculate actual position
%small h for the accurate position to be compared to
h = 0.0001;
%[tr_x, tr_y] = forwardEuler_Q3c(H_ball, @dxdt_drag, @dydt_drag, h, v, alpha);
%values for bigT=1 calculated beforehand 
tr_x = 4.473851595744981;
tr_y = 5.467811357143845;

%for loop for multiple values of h
for pp = 1:1:20
     hinterval = [1/1000, 1/750, 1/500, 1/250, 1/200, 1/128, 1/100, + ...
         1/75, 1/64, 1/50, 1/32, 1/25, 1/20, 1/16, 1/10, 1/8, 1/5, 1/4, 1/2, 1];
     h = hinterval(pp); %different h values being error tested
     t = 0; %initial t
     interval(pp) = hinterval(pp); %interval for plot
     %forward euler for position at time = bigT,
     [fe_x(pp),fe_y(pp)] = forwardEuler_Q3c(H_ball, @dxdt_drag, @dydt_drag, h, v, alpha);
end

%calculate the error,
error_x = abs(fe_x - tr_x); %error in x-position
error_y = abs(fe_y - tr_y); %error in y-position
error = ((error_x).^2 + (error_y).^2).^(1/2); %overall error 

%log-log plot of error in forward-euler agaisnt time-step interval,
loglog(hinterval, error)
title("Plot of error in forward-euler agaisnt" + ...
    " time-step interval for the trajectory of a projectile" )
ylabel("log(error), Error in forward-euler")
xlabel("log(interval), Time-stepping interval")


%%Notes
%code can be easily adjusted to work with other values of v, alpha and
%bigT, but changing bigT means you also have to change it in the
%forwardEuler script.







