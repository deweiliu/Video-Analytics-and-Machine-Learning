function output=linearStretching(input,m,c)
% Given the values of grey scale, m and c, return the output grey scale
    
    
    output=input*m+c;
if output<0
    output=0;
end
if output > 255
        output =255;

end

 
end