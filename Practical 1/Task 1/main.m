boat=imread('../images/boat256.jpg');
dome=imread('../images/dome256.jpg');


plotRows=2;
plotColumns=2;

subplot(plotRows,plotColumns,1);
imshow(boat);

subplot(plotRows,plotColumns,2);
imshow(dome);

subplot(plotRows,plotColumns,3);
HBoat=histogram(boat,'BinLimits',[0,256],'BinWidth',1);
boatValues=(HBoat.Values);
myBoatValues=myHistogram(boat);

if boatValues==myBoatValues
    disp("Function correct for boat");
else
    disp("Function incorrect for boat");
end 


subplot(plotRows,plotColumns,4);
HDome=histogram(dome,'BinLimits',[0,256],'BinWidth',1);

domeValues=(HDome.Values);
myDomeValues=myHistogram(dome);

if domeValues==myDomeValues
    disp("Function correct for dome");
else
    disp("Function incorrect for dome");
end 


