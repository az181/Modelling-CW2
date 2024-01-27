function [x, y] = forwardEuler(H_ball, dydt, dxdt, h, v, alpha)
%forwardEuler - forward Euler on f where f is a function with input y and t (in that ordder )
t(1) = 0;
y(1) = H_ball;
%output is also a array of x values used when plotting the path
x(1) = 0;
n = 1;
while y(n) > 0
    y(n + 1) = y(n) + h * dydt(y(n), t(n), v, alpha);
    t(n + 1) = t(n) + h;
    %x = velocity * time
    x(n + 1) = x(n) + h * dxdt(x(n), t(n), v, alpha);
    n = n + 1;
end
end