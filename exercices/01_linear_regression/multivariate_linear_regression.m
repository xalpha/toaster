% load stuff
x = csvread('ex3x.dat');
y = csvread('ex3y.dat');

% cool, now try to fit the curve
for alpha=0.1:0.1:1
  [X,theta,J] = linear_regression(x,y,alpha,100);
  plot(J);
  hold on;
end
