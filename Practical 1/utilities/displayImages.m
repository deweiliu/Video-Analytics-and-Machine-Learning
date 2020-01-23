function displayImages(image, transformTable, transformTitle, newImage)
    % This function can be used in Tasks 2, 3 & 4

    % Given the original and new images, display them

    figure
    subplot(2, 3, 1);
    imshow(image);
    subplot(2, 3, 4);
    value = histogram(image, 'BinLimits', [0 256], 'BinWidth', 1);

    subplot(2, 3, 2);

    x = 0:255;
    y = transformTable;
    plot(x, y);
    xlabel('input');
    ylabel('output');
    title(transformTitle);

    subplot(2, 3, 3);
    imshow(newImage);
    subplot(2, 3, 6);
    histogram(newImage, 'BinLimits', [0 256], 'BinWidth', 1);
end
