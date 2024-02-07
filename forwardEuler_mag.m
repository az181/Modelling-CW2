function [x, y] = forwardEuler_mag(H_ball, dxdt_mag, dydt_mag, h, v, alpha, omega)
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
      x(n + 1) = x(n) + h * dxdt_mag(x(n), t(n), v_x, v_y, v, omega);
      y(n + 1) = y(n) + h * dydt_mag(y(n), t(n), v_x, v_y, v, omega);
      t(n + 1) = t(n) + h;
      % v_x = x(n+1) - x(n);
      % v_y = y(n+1) - y(n);
      
      % n = n + 1;
  end
  end