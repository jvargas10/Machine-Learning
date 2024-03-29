function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    	temp0 = theta(1) - alpha *(1/m)*((X*theta)-y)'*X(:,1);
	temp1 = theta(2) - alpha *(1/m)*((X*theta)-y)'*X(:,2);
	temp2 = theta(3) - alpha *(1/m)*((X*theta)-y)'*X(:,3);
	temp3 = theta(4) - alpha *(1/m)*((X*theta)-y)'*X(:,4);
	theta(1) = temp0;
	theta(2) = temp1;
	theta(3) = temp2;
	theta(4) = temp3;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
