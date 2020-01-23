boat=imread('boat256.jpg');
enhancedBrightnesses=[50,70,90];
for enhancedBrightness=enhancedBrightnesses
% new figure
figure
subplot(2,3,1);
imshow(boat);
subplot(2,3,4);
histogram(boat,'BinLimits',[0 256],'BinWidth',1);

subplot(2,3,2);
table=brightnessTable(enhancedBrightness);
x=0:255;
y=table;
plot(x,y);
xlabel('input');
ylabel('output');
title(sprintf('Transform function - Enhanced Brightness = %d',enhancedBrightness));

subplot(2,3,3);
newBoat=enhanceBrightness(boat,enhancedBrightness);
imshow(newBoat);
subplot(2,3,6);
histogram(newBoat,'BinLimits',[0 256],'BinWidth',1);
end