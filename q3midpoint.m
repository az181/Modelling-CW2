%load
load("constants.mat")
%preallocate
xerror = zeros(1,100);
yerror = zeros(1,100);
error = zeros(1,100);
h = 1:0.01:10;
%inputs
bigT = 1;
alpha = pi/4;
v = 10;
%calculate "actual" 
[xtr,ytr] = trajectory_eq(bigT,v,alpha);
%loop over a load of h
for n = 1:length(h)
    [mpx,mpy] = midpointMethod();
    xerror(n) = abs(mpx(end) - xtr);
    yerror(n) = abs(mpy(end) - ytr);
    error(n) = sqrt((xerror(n))^2 + (yerror(n))^2);
end
%plot
figure(1)
loglog(h, error)
xlabel("Value for h")
ylabel("Error when compared to trajectory equation")
title("Error of Forward Euler as h varies")
%set the axis limits to positive only
ylim([0, inf])
