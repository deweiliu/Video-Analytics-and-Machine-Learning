function video=readVideoGray(video_path)
    video_reader=VideoReader(video_path);
    coloured_frames=read(video_reader);
gray_frames=convert2gray(coloured_frames);
video.Frames=gray_frames;
video.Height=video_reader.Height;
video.Width=video_reader.Width;
video.NumFrames=video_reader.Duration*video_reader.FrameRate;
    
end
function gray_frames=convert2gray(coloured_frames)
    if is_coloured(coloured_frames)
            frame_number=size(coloured_frames,4);
    gray_frames=uint8.empty;
    for t=1:frame_number
        gray_frame=rgb2gray(coloured_frames(:,:,:,t));
        gray_frames(:,:,t)=gray_frame;
    end
    else
        gray_frames=coloured_frames;
    end
    
end
function coloured= is_coloured(frames)
frame_size=size(frames);
if(size(frame_size)==3)
    coloured=false;
else
    coloured=true;
end

end