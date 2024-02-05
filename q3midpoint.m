%load
load("constants.mat")
%preallocate
xerror = zeros(1,100);
yerror = zeros(1,100);
error = zeros(1,100);
mpx = zeros(1,100);
mpy = zeros(1,100);
%inputs
bigT = 1; %really???
alpha = pi/4;
v = 10;
%calculate "actual" 
[xtr,ytr] = trajectory_eq_vector(bigT,v,alpha);
%loop over a load of h
for dex 1:100
    h = 1/dex;

%plot