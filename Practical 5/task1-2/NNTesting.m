function prediction=NNTesting(testImage,modelNN)
shortestDistance=Inf;
closestIndex=0;

% number of images in the model
modelSize=size(modelNN.neighbours,1);

for index=1:modelSize
% for each image in the training set
train=modelNN.neighbours(index,:);
distance=EuclideanDistance(testImage,train);

% if a closer image is found
if distance<shortestDistance
shortestDistance=distance;
closestIndex=index;
end

end
prediction=modelNN.labels(closestIndex);
end