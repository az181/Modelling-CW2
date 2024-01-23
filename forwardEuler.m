function y = forwardEuler(height, f, h)
%forwardEuler - forward Euler on f where f is a function with input y and t (in that order)
t(1) = 0;
y(1) = height;
n = 1;
while y(n) > 0
    y(n + 1) = y(n) + h * f(y(n), t(n));
    t(n + 1) = t(n) + h;
    n = n + 1;
end
end
