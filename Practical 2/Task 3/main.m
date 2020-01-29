addpath('./transformFunctions/');

% Steps 1 & 2
% Perfrom segmentation on the image VEHICLE
vehicle=imread('../images/vehicle.jpg');
segmentation_threshold=40;
preprocessAndSegmentation(vehicle,segmentation_threshold);


% Step 3
% Perfrom segmentation on both the images VEHICLE & VEHICLE2
vehicle2=imread('../images/vehicle2.jpg');
segmentation_threshold=60;
preprocessAndSegmentation(vehicle,segmentation_threshold);
preprocessAndSegmentation(vehicle2,segmentation_threshold);
