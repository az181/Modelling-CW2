function [fe_x, fe_y] = forwardEuler_Q3c(H_ball, dxdt, dydt, h, v, alpha)
%forwardEuler - forward Euler on f where f is a function with input y and t (in that ordder )
t(1) = 0;
fe_y = H_ball;
fe_x = 0;
%output is the x and y value at time = bigT,
n = 1;
v_x = cos(alpha) * v;
v_y = sin(alpha) * v;

%intial tt
tt=0;
%set bigT
bigT = 1;

for n = 1:10000
    while tt < bigT
    fe_x = fe_x + h .* dxdt(fe_x, t(n), v_x, v_y);
    fe_y = fe_y + h .* dydt(fe_y, t(n), v_x, v_y);
    t(n + 1) = t(n) + h;
    tt = tt + h;
    n = n + 1;
    end
end
end