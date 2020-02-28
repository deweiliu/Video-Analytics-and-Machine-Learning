function templateMatching2(image_path,template_path,N)

image=imread(image_path);
image=rgb2gray(image);
image=double(image);

template=imread(template_path);
template=rgb2gray(template);
template=double(template);

figure;

% image
image2show=uint8(image);
subplot(2,2,1),imshow(image2show);

% template
rows=size(template,1);
columns=size(template,2);
template2show=uint8(template);
subplot(2,2,2),imshow(template2show);

% convolution
pixel_sum=sum(sum(template));
mask=template./pixel_sum;
convolved=convn(image, mask, 'same');
convolved2show=uint8(convolved);
subplot(2,2,3),imshow(convolved2show);

% find bounding box
subplot(2,2,4),imshow(image2show);
hold on

for index=1:N
target=max(max(convolved));

[centreY,centreX]=find(convolved==target);
convolved(centreY,centreX)=-Inf;

x=centreX-columns/2;
y=centreY-rows/2;
width=columns;
height=rows;

% draw result
r=rectangle("Position",[x,y,width,height]);
r.EdgeColor="Red";
end
hold off


end