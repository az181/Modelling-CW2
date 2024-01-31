function [x, y] = forwardEuler(H_ball, dxdt, dydt, h, v, alpha)
%forwardEuler - forward Euler on f where f is a function with input y and t (in that ordder )
t(1) = 0;
y(1) = H_ball;
%output is also a array of x values used when plotting the path
x(1) = 0;
% n = 1;
v_x = cos(alpha) * v;
v_y = sin(alpha) * v;
for n = 1:10000
    if y(n) < 0
        break
    end
    x(n + 1) = x(n) + h * dxdt(x(n), t(n), v_x, v_y);
    y(n + 1) = y(n) + h * dydt(y(n), t(n), v_x, v_y);
    t(n + 1) = t(n) + h;
    
    % n = n + 1;
end
end