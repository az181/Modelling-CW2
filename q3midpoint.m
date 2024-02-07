load constants.mat 
% preallocate
h_interval = 0.001;
h = 0.01:h_interval:1;
xerror = zeros(1,100);
yerror = zeros(1,100);
error = zeros(1,100);


% inputs
bigT = 1;
alpha = pi/4;
v = 10;
% calculate "actual" 
[xtr,ytr] = trajectory_eq(bigT,v,alpha);
% loop over a load of h
for n = 1:length(h)
    [mpx,mpy] = midpointMethod(bigT, H_ball, h(n), @trajectory_eq, v, alpha);
    % disp(mpx);
    xerror(n) = (mpx(end) - xtr);
    yerror(n) = (mpy(end) - ytr); %floor(abs(bigT/h(n)))
    error(n) = sqrt((xerror(n))^2 + (yerror(n))^2);
end
% plot
figure(1)
loglog(h, error)
xlabel("Value for h")
ylabel("Error when compared to trajectory equation")
title("Error of Midpoint Method as h varies")
% set the axis limits to positive only
ylim([0, inf])
