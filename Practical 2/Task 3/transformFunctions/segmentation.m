function out = segmentation(input, threshold)

    if (input > threshold)
        out = 255;
    else
        out = 0;
    end

end
