% load stuff
x = csvread('ex3x.dat');
y = csvread('ex3y.dat');

% cool, now try to fit the curve
[X,theta,J] = linear_regression(x,y,1,50);
plot(J);
