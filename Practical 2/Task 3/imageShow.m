function imageShow(varargin)
figure
rows=2;
columns=nargin/2;


for index=1:columns
    % display image
    image=varargin{index*2-1};
    subplot(rows,columns,index);
    imshow(image);
    
    % display histogram
    subplot(rows,columns,index+columns);
    histogram(image, 'BinLimits', [0 256], 'BinWidth', 1);
    text=varargin{index*2};
    title(text);

end
    

end