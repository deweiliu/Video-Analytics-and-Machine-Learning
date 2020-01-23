function [min, max] = findRange(matrix, noise)
    % Given an image, find the min & max grey scales, ignoring the noise
    sorted = sort(matrix(:));
    min = sorted(noise + 1, 1);
    min = double(min);
    numberPixels = (size(sorted));
    max = sorted(numberPixels(1) - noise, 1);
    max = double(max);
end
