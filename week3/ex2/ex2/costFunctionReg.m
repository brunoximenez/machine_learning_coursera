function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


% Cost
arg = X * theta;
sig = sigmoid(arg);

J = - y' * log(sig) - (1 - y)' * log(1 - sig);
J = J / m;

%  regularization
tmp = ones(size(theta), 1);
tmp(1) = 0;
tmp_2 = theta;
tmp_2 = tmp .* tmp_2;
J = J + lambda * (tmp_2' * tmp_2) / (2*m);

% tpm = theta
% tmp(1) = 0
% J = J + lambda * (tmp' * tmp) / (2*m);

% Grad
grad = (sig - y)' * X / m;
xii = tmp .* theta * lambda / m;


grad = grad + xii';

% =============================================================

end
