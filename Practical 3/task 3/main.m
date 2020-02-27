video="../resources/viptraffic.avi";
video_object=VideoReader(video);
coloured_frames=read(video_object);
[rows,columns,colours,frame_number]=size(coloured_frames);
frames=uint8.empty;
for t=1:frame_number
    conveted_frame=rgb2gray(coloured_frames(:,:,:,t));
    frames(:,:,t)=conveted_frame;
end
bkg=bkgGenerator(frames,3);
%bkg=frames(:,:,end);


figure;
threshold=50;
post_process_mask_size=5;


for t=1:frame_number
    % background
    subplot(2,3,1),imshow(bkg),title("background"), colormap(gray);
    
    % current frame
    current_frame=frames(:,:,t);
    subplot(2,3,2),imshow(current_frame),title(["Frame",num2str(t)]);
    
    % segmentation
    Blobs=abs(double(current_frame) - double(bkg)) > threshold;
    subplot(2,3,3), imshow(Blobs), title("Bolbs"), colormap(gray);
    
    % post processing
    mask=ones(post_process_mask_size,post_process_mask_size);
    BlobsCorrect=Blobs;
        BlobsCorrect=imclose(BlobsCorrect,mask);
    BlobsCorrect=imopen(BlobsCorrect,mask);

    subplot(2,3,4), imshow(BlobsCorrect), title("Post-processed Bolbs"), colormap(gray);
    
    % labelling
    BolbsLablelled=bwlabel(BlobsCorrect);
    number_vehicles=max(max(BolbsLablelled));
    label_image=label2rgb(BolbsLablelled,"spring","black");
    subplot(2,3,5), imshow(label_image), title(["Labelled Vehicles = ",number_vehicles]);
    
    % bounding box
    boxes=[];
    for n=1:number_vehicles
        [Ys,Xs]=find(BolbsLablelled==n);
        x=min(Xs);
     xmax=max(Xs);
                width=xmax-x+1;
                
        y=min(Ys);
        ymax=max(Ys);
        height=ymax-y+1;
        box=[x,y,height,height];
        boxes=[boxes;box];
    end
    subplot(2,3,6), imshow(current_frame), title("Dectation");
    hold on
    for n=1:number_vehicles
        rectangle("Position",[boxes(n,1),boxes(n,2),boxes(n,3),boxes(n,4)]);
    end
    hold off


    pause(0.02);
end






