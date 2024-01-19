function y = forwardEuler(hight, f, h)
%forwardEuler - forward Euler on f where f is a function with input y and t (in that ordder )
t = [0];
y = [hight];
n = 1;
    while y(n) > 0:
        y(n+1) = y(n) + h*f(y(n),t(n));
        t(n+1) = t(n) + h;
        n = n + 1;
    end
end