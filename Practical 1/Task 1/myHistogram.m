function [histogram] = myHistogram(image)
histogram=zeros(1,256);
[rows,columns]=size(image);
for row=1:rows
    for column=1:columns
        pixel=image(row,column);
        index=int16(pixel)+1;
        histogram(index)=histogram(index)+1;
    end
end    


end

