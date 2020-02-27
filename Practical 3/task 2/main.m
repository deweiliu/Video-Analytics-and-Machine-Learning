% step 1
video="../resources/viptraffic.avi";
video_object=VideoReader(video);
frames=read(video_object);

% step 2
[rows,columns,colours,frame_number]=size(frames);
last=frames(:,:,:,end);
figure;

subplot(1,3,1),imshow(last);
disp("flsjfal");
% step 3
bkg=rgb2gray(last);

disp("flsjfal");
subplot(1,3,2),imshow(bkg),colormap(gray);

bkg3=bkgGenerator(frames,1);


% step 4
bkg2=zeros(rows,columns,class(last));
for row=1:rows
    for column=1:columns
        red=last(row,column,1);
        green=last(row,column,2);
        blue=last(row,column,3);
        pixel=(red+green+blue)/3;
        bkg2(row,column)=pixel;
    end
end
subplot(1,3,3),imshow(bkg2),colormap(gray);

% steps 5 & 6
figure;
threshold=20;

new_video_object=VideoWriter("new_video.avi");
open(new_video_object);
MAP=colormap(gray(256));

for t=1:frame_number
    current_frame=frames(:,:,:,t);
    current_frame_gray=rgb2gray(current_frame);
    subplot(2,3,1),imshow(current_frame_gray),title(["Frame",num2str(t)]);
    subplot(2,3,2),imshow(bkg),title("background"), colormap(gray);
    Blobs=abs(double(current_frame_gray) - double(bkg)) > threshold;
    subplot(2,3,3), imshow(Blobs), title("Bolbs"), colormap(gray);
    
    subplot(2,3,5),imshow(bkg3),title("background2"), colormap(gray);
    Blobs=abs(double(current_frame_gray) - double(bkg3)) > threshold;
    subplot(2,3,6), imshow(Blobs), title("Bolbs2"), colormap(gray);
    
    frame=im2frame(uint8(Blobs)*255,MAP);
    writeVideo(new_video_object,frame);
    
    pause(0.03);
end
close(new_video_object);






