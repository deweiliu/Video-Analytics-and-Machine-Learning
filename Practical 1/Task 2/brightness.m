function [output] = brightness(input,c)
output=input+c;
if output<0
    output=0;
else
    if output > 255
        output =255;
    end
end


end