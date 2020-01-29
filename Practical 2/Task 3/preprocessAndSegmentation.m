function preprocessAndSegmentation(image, segmentation_threshold)

    % Original Image
    image0 = image;

    % Linear Stretching
    [m, c] = enhanceContrastALS(image0);
    table = transformTable(@linearStretching, m, c);
    image1 = transform(image0, table);

    % Noise reduction
    addpath("../Task 1/");
    image2 = noiseReduction(image1, 3);

    % Segmentation
    table = transformTable(@segmentation, segmentation_threshold);
    image3 = transform(image2, table);

    % Plot the processed images and histograms
    imageShow(image0, 'Original', image1, 'Linear Stretching', image2, 'Noise Reduction', image3, 'Segmentation');

end
