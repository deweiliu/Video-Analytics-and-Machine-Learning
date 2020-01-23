addpath('../utilities/');
boat = imread('../images/boat256.jpg');
enhancedBrightnesses = [50, 70, 90];

for enhancedBrightness = enhancedBrightnesses
    table = transformTable(@brightness, enhancedBrightness);
    title = sprintf('Transform function - Enhanced Brightness = %d', enhancedBrightness);
    newBoat = transform(boat, table);
    displayImages(boat, table, title, newBoat);
end
