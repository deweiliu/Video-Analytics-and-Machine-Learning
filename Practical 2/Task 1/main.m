boat_noise=imread("../images/boatnoise.jpg");

% step 1
figure
subplot(1,2,1);
imshow(boat_noise);

% step 2
mask=ones(3,3)/9;

% step 3
subplot(1,2,2);
convolved_boat=uint8(conv2(boat_noise,mask,'same'));
imshow(convolved_boat);

%step 5
figure
subplot(1,2,1);
convolved_boat=noiseReduction(boat_noise,3);
imshow(convolved_boat);

subplot(1,2,2);
convolved_boat=noiseReduction(boat_noise,5);
imshow(convolved_boat);


% step 6

figure
convolved_boat=myconvolution(boat_noise,mask);
imshow(convolved_boat);


