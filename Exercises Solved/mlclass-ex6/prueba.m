load('ex6data3.mat');

% Try different SVM Parameters here
[C, sigma] = dataset3Params(X, y, Xval, yval);

% Train the SVM
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);

predictions = svmPredict(model, Xval);
mean(double(predictions ~= yval))

fprintf('Program paused. Press enter to continue.\n');
pause;
