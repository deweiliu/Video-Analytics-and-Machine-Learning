% Histogram Equalisation

addpath('../utilities/');
boat = imread('../images/boat256.jpg');

% Implement our own transformation
table = transformTable(@histogramEqulisation, boat);
title = sprintf('Our Own Histogram Equalisation');
newBoat = transform(boat, table);
displayImages(boat, table, title, newBoat);

% Use Matlab built-in function to do the transformation
% https://uk.mathworks.com/help/images/ref/histeq.html
title = sprintf('Built-in Histogram Equalisation');
newBoat = histeq(boat, 256);
displayImages(boat, table, title, newBoat);
