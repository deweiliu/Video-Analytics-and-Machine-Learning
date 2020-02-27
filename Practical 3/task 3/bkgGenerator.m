function [bkg]=bkgGenerator(video_stream,sampling)
buffer=uint8.empty;
counter=0;
frame_number=size(video_stream,3);
disp(frame_number)

for t=1:sampling:frame_number

    counter=counter+1;
    frame=video_stream(:,:,t);
    buffer(:,:,counter)=frame;
end
bkg=median(buffer,3);

end