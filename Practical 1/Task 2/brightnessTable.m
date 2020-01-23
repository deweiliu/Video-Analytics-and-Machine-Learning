function array=brightnessTable(c)
array=zeros(1,256);
for index=1:256
    input=index-1;
    output=brightness(input,c);
    array(index)=output;
end
array=uint8(array);
end