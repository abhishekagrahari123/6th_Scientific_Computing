
% Script file graph1.

% Graph of the rational function y = x/(1+x^2).

for n=1:2:5
    %The loop is executed for 3 times;
    %3 graphs will be displayed in the
    %same figure window.
   n10 = 10*n;
   x = linspace(-2,2,n10);
   
   % A 1D array x of n10 uniformly spaced numbers in 
   %[-2,2] is created
   
   y = x./(1+x.^2);
   % The y -coordinates of the points to be
   %plotted are stored in array y.
   
   plot(x,y,'r')
   
   % plot is called with 3 arguments: x coordinates, y coordinates
   % and the string 'r' which describes the color 'red' to be
   % used to paint a plotted curve.There is a difference between the
   % smoothness of the graphs plotted!More points implies smoother graph.
   
   
   title(sprintf('Graph %g.  Plot based upon n = %g points.' ... 
   , (n+1)/2, n10))
%title adds a descriptive information of the graphs generated by this m file.
%sprintf takes 3 arguments: the string and the names of the variables
%printed in the title of each graph. %g is recommended for printing
%integers.
 
   axis([-2,2,-.8,.8])
   % axis gives the dimension of the box holding the plot.
   
   xlabel('x')
   ylabel('y')
   % give labels along x and y axes.Input arguments are strings.
   legend('graph of y')
   grid
      % adds grid lines to the graph.
   pause(5)
   % Holds on for the current graph for 3 seconds before continuing.In case
   % pause is used without an input argument, then the computer waits for
   % user's response. For instance, pressing the Enter key will resume the
   % execution of the program.
end
echo graph1.m off
