function [x, y] = forwardEuler(H_ball, dxdt, dydt, h, v, alpha)
% forwardEuler - - forward Euler on dxdt and dydt where the inputs are (x or y) t v_x and v_y
% this reterns the x y valuse for each point in time incrementing by h

t(1) = 0;
y(1) = H_ball;
x(1) = 0;
v_x = cos(alpha) * v;
v_y = sin(alpha) * v;

% a for loop is used the prevent the posibilaty of an infinate loop if the ball never hits the ground
for n = 1:10000
    if y(n) < 0
        break
    end
    x(n + 1) = x(n) + h * dxdt(x(n), t(n), v_x, v_y);
    y(n + 1) = y(n) + h * dydt(y(n), t(n), v_x, v_y);
    t(n + 1) = t(n) + h;
    
end
end