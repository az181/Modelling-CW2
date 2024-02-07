function [x, y] = forwardEuler_mag(H_ball, dxdt_mag, dydt_mag, h, v, alpha, omega)
  % forward Euler for the magnus effect - forward Euler on dxdt and dydt where the inputs are (x or y) t v_x v_y and omega 
  % this reterns the x y valuse for each point in time incrementing by h

  % inital vereabls
  t(1) = 0;
  y(1) = H_ball;
  x(1) = 0;
  % n = 1;
  v_x = cos(alpha) * v;
  v_y = sin(alpha) * v;
  for n = 1:10000
      if y(n) < 0
          break
      end
      vx = dxdt_mag(x(n), t(n), v_x, v_y, omega, v, alpha);
      vy = dydt_mag(x(n), t(n), v_x, v_y, omega, v, alpha);
      x(n + 1) = x(n) + h * vx;
      y(n + 1) = y(n) + h * vy;
      t(n + 1) = t(n) + h;
      v_x = vx;
      v_y = vy;
      % v_x = x(n+1) - x(n);
      % v_y = y(n+1) - y(n);
      
      % n = n + 1;
  end
  end