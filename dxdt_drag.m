function dy = dxdt_drag (x, t, v, alpha)
    % this is the ode of the system with drag in the x axis
    load("constants.mat");
    v_x = cos(alpha) * v;
    % dy = (2 * m) / (C_D * p * A * abs( v_y )) * (a + g) 
    dy = g * t + ( C_D * p * A) / (4 * m) * abs( v_x ) * v_x ; 
    end
    