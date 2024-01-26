function [] = Q1(v, alpha)

    %combine all of the functions to create the plot of the ball's path
    %takes v and alpha as inputs to allow the constants to be varied

    %load constants
    load("constants.mat")
    h = 0.1;

    %perform forward euler to obtain arrays of x and y values
    [x, y] = forwardEuler(H_ball, @dydt, @dxdt, h, v, alpha);
    
    %plot y against x
    plot(x, y)
    xlabel("x")
    ylabel("y")
    title("Trajectory of ball with no drag")
    %set the axis limits to positive only
    ylim([0, inf])
    
end