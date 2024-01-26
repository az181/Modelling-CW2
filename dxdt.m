function dx = dxdt (x, t, v, alpha)
    % this is the eq for the x velosity in the case with no drag
    dx = v * cos(alpha);
end