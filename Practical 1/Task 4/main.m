addpath('../utilities/');
boat = imread('../images/boat256.jpg');

gammaValues = [0.5, 2, 3];

for gamma = gammaValues
    table = transformTable(@powerLaw, gamma);
    title = sprintf('Power Law gamma = %f', gamma);
    newBoat = transform(boat, table);
    displayImages(boat, table, title, newBoat);

end
