function [bkg]=bkgGenerator(video_stream,sampling)
buffer=[];
counter=0;
for t=1:sampling,size(video_stream,4)
    counter=counter+1;
    frame=video_stream(:,:,:,t);
    frame=rgb2gray(frame);
    buffer(:,:,counter)=frame;
end

bkg=median(buffer,3);
disp(class(bkg));
bkg=uint8(bkg);
disp(["size bkg"]);
disp(size(bkg));
disp(bkg);

end