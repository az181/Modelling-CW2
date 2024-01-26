function [] = Q1(v, alpha)

    %combine all of the functions to create the plot of the ball's path
    %takes v and alpha as inputs to allow the constants to be varied

    %load constants
    load("constants.mat")
    h = 0.1;

    %perform forward euler to obtain arrays of x and y values
    [x, y] = forwardEuler(H_ball, @dydt, h, v, alpha)

    %use the trajectory equation to find the real trajectory of the equation
    ty(1) = H_ball
    tt(1) = 0
    while ty(n) > 0,
        tt(n + 1) = tt(n) + h
        ty(n + 1) = trajectory_eq(tt(n + 1), v, alpha)
    end
    
    %plot y against x
    figure(1)
    plot(x, y)
    xlabel("x")
    ylabel("y")
    title("Trajectory of ball with no drag")
    subtitle("Approximated using Forward Euler")
    %set the axis limits to positive only
    ylim([0, inf])

    %plot the real trajectory using the trajectory equation
    figure(2)
    plot(x, ty)
    xlabel("x")
    ylabel("y")
    title("Trajectory of ball with no drag")
    subtitle("Analytical Solution")
    ylim([0, inf])
    
end