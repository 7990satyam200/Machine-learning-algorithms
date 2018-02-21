function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

m1=1./(2*m);
p=X*theta;
prediction=(p-y).^2;
sumpred=sum(prediction);	
J=m1*sumpred;% 1*1

lam1=lambda*m1;
theta1=[0; theta(2:end)];

%theta1=[zeros(1, size(theta, 2)); theta(2:end,:)];
sum1=sum(theta1.^2);% 1*1
J=J+lam1*sum1;%1*1
x=X(:,2)';
m2=(1./m);
sum2=sum((X*theta-y)*x);
grad = (X'*(p- y)+lambda*theta1)/m;








% =========================================================================

grad = grad(:);

end
