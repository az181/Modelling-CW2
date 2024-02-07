function [fe_x, fe_y] = forwardEuler_Q3c(H_ball, dxdt, dydt, h, v, alpha)
%forwardEuler - forward Euler on f where f is a function with input y and t (in that ordder )
fe_y = H_ball;
fe_x = 0;
%output is the x and y value at time = bigT,
v_x = cos(alpha) * v;
v_y = sin(alpha) * v;

%intial tt
tt=0;
%set bigT
bigT = 1;

for n = 1:100000
    while tt <= bigT + 1e-6 %removes effect of rounding errors in h
    fe_x = fe_x + h .* dxdt(fe_x, tt, v_x, v_y);
    fe_y = fe_y + h .* dydt(fe_y, tt, v_x, v_y);
    tt = tt + h;
    end
end
end