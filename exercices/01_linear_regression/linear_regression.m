function [X,theta,J]=linear_regression(x,y,alpha,niter)
%% init stuff
m = size(x,1); % sample count
n = size(x,2); % feature count
theta = zeros(size(x,2)+1,1); % what we are actually after
X = [ x ones(size(x,1),1) ]; % big x also containging an extra columns of ones

% normalize data
offset = mean(x);
scale = max(x) - min(x);
for i=1:n
  X(:,i) = (X(:,i)-offset(i))/scale(i);
end

%% iterate away
J = zeros(niter,1);
for i=1:niter
  [theta,J(i)] = step(theta,X,y,alpha);
end
end


function [theta_new,J]=step(theta,X,y,alpha)
% init stuff
theta_new = theta;
m = length(y);
temp = X*theta - y; % the meat of the problem

% run over all parameters
for p=1:size(theta,1)
 theta_new(p) = theta(p) - (1/m)*alpha*dot(temp,X(:,p));
end

% compute error
J = (0.5/m) * dot(temp,temp);
end