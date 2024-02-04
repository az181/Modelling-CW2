%test for various h
%win
function h = Q3hTester(theFunction, v, alpha, bigT)

load("constants.mat")

%make things that are used just for this script
h = 1:1:100;
n = 1;
theRealValue = trajectory_eq(bigT,v,alpha);
error = zeros(1,100);

% check lots of different h and see the error to our "true" value
while n<100
    error(n) = abs(theFunction() - theRealValue); %the function here should be an input
    n = n+1;
end
%might want to plot too
%also i think this should be a function with the appropriate variables as
%inputs

end
%hopefully my madness makes some sense here