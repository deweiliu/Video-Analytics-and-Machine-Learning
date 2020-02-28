function isBelong = belong2Gauss(distance, sd, threshold)

    if (distance / sd) < threshold
        isBelong = true;
    else
        isBelong = false;
    end

end
