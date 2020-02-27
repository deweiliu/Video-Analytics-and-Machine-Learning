disp("viptraffic");
video_path="../resources/viptraffic.avi";
file_info=aviinfo(video_path);
disp(file_info);
video_object=VideoReader(video_path);
disp(video_object);

vid_frames=read(video_object);
size(vid_frames)

implay(vid_frames,10);
montage(vid_frames);
frame=vid_frames(:,:,:,100);
imshow(frame);