h = 0.1;
x(1) = 0;
y(1) = 0.8;
t = 0;
n = 1;
while y(n) >= 0
    n = n + 1;
    t = t + h;
    [x(n), y(n)] = trajectory_eq(t, 12, 1);
    y(n) = y(n) + 0.8;
end

plot(x, y)