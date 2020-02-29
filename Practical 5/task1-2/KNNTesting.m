function prediction=KNNTesting(testImage,modelNN,K)
%% Create a matrix indicating the images closest o the test image
% first column indicates the index
% second column indicates the distance
closests=zeros(K,2);
for i=1:K
    closests(i,2)=Inf;
end

%% Loop over each training image
% number of images in the model
modelSize=size(modelNN.neighbours,1);

for index=1:modelSize
% for each image in the training set
train=modelNN.neighbours(index,:);
distance=EuclideanDistance(testImage,train);

% if a closer image is found
if distance<closests(K,2)
    closests(K,2)=distance;
    closests(K,1)=index;
    closests=sortMatrix(closests);

end

end

%% Each images in the list will vote for the result
indices=closests(:,1);
indices=transpose(indices);
labels=modelNN.labels(indices);
% the most frequent value in the array
prediction=mode(labels);
end

function sorted=sortMatrix(matrix)
% https://uk.mathworks.com/matlabcentral/answers/278956-sort-matrix-based-on-unique-values-in-one-column
% sort the matrix by its second column (the distance)
[~,idx] = sort(matrix(:,2)); % sort just the first column
sorted = matrix(idx,:);   % sort the whole matrix using the sort indices
end