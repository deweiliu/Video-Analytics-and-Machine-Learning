function image=enhanceBrightness(image,c)
[rows,columns]=size(image);

table=brightnessTable(c);
for row=1:rows
    for column=1:columns
        pixel=image(row,column);
        index=uint16(pixel)+1;
        newPixel=table(index);
        image(row,column)=newPixel;
    end
end

end