
fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
% plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');

%% =================== Part 3: Cost and Gradient descent ===================


X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters
theta = [-1; 2];

theta(2);

X_norm = X;
X_norm = X(:, [2, :])
size(X_norm, 2)

mu = zeros(1, size(X_norm, 2));
sigma = zeros(1, size(X_norm, 2));

mu = mean(X_norm)
sigma = std(X_norm)


X_norm = (X_norm - mu) ./ sigma

X_norm = [X(:, 1), X_norm]

J = sum((X * theta - y).^2);
J = J / (2*m);

alpha = 0.01;
w = - (alpha/m) * sum( (X * theta - y) .* X(:, 2) );


theta = theta - (alpha/m) * ( X' * (X * theta - y) );

% temp = (alpha/m) * sum( (X * theta - y) .* X );

% temp0 = theta(1) - (alpha/m) * sum( (X * theta - y) .* X(:, 1) )
% temp1 = theta(2) - (alpha/m) * sum( (X * theta - y) .* X(:, 2) )

% theta(1) = temp0
% theta(2) = temp1

