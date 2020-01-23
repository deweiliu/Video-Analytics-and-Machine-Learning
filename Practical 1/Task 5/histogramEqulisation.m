function output = histogramEqulisation(input, image)
    % Histogram Equlisation

    % Given an image and a grey scale value, returns the output grey scale

    [pixelCounts, grayLevels] = imhist(image);
    cdf = cumsum(pixelCounts);
    table = 256 * cdf / sum(pixelCounts);
    output = table(input + 1, 1);

end
