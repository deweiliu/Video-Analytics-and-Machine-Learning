function Iout=noiseReduction(image,mask_size)
mask=ones(mask_size)/(mask_size^2);
convolved_image=conv2(image,mask,'same');
Iout=uint8(convolved_image);
end