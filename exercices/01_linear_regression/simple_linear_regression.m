% load stuff
x = csvread('ex2x.dat');
y = csvread('ex2y.dat');

% plot
clf;
scatter(x,y);
hold on;

% cool, now try to fit the curve
[X,theta,J] = linear_regression(x,y,0.01,5000);
plot(x, X*theta, '-');

% plot the error
figure;
plot(J);