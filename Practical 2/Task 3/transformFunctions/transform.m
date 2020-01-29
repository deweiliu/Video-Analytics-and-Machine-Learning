function imageOut = transform(image, table)
    % This function can be used in Tasks 2, 3 & 4

    % Given the image and the transform table, returns the new image
    [rows, columns] = size(image);

    for row = 1:rows

        for column = 1:columns
            pixel = image(row, column);
            index = uint16(pixel) + 1;
            newPixel = table(index);
            image(row, column) = newPixel;
        end

    end

    imageOut = image;
end
