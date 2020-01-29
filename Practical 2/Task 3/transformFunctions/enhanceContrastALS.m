function [m, c] = enhanceContrastALS(Iin)
    % Given an image, find the best parameters m&c for linear stretching
    [min, max] = findRange(Iin, 10);
    x1 = min;
    y1 = 0;

    x2 = max;
    y2 = 255;

    coefficients = polyfit([x1, x2], [y1, y2], 1);
    m = coefficients(1);
    c = coefficients(2);

end
