%load
load("constants.mat")
%preallocate
xerror = zeros(1,100);
yerror = zeros(1,100);
error = zeros(1,100);
h = 1:0.01:10;
%inputs
bigT = length(h);
alpha = pi/4;
v = 10;
%calculate "actual" 
[xtr,ytr] = trajectory_eq_vector(bigT,v,alpha);
%loop over a load of h
for n = 1:length(h)
    [mpx,mpy] = forwardEuler(H_ball,@dxdt,@dydt,h,v,alpha);
    xerror(n) = abs(mpx(length(mpx)) - xtr(length(xtr)));
    yerror(n) = abs(mpy(length(mpy)) - ytr(length(ytr)));
    error(n) = sqrt((xerror(n))^2 + (yerror(n))^2);
end
%plot
loglog(h,error)
