addpath("../utilities");
video="../resources/viptraffic.avi";
video=readVideoGray(video);

GMM=InitialiseGMM(video.Height,video.Width);
for t=1:video.NumFrames

    currentFrameGray=video.Frames(:,:,t);
[Foreground, Background, GMM] = RunGMM(currentFrameGray,GMM);
figure(1),subplot(2,3,1),imshow(uint8(currentFrameGray)), title(['Frame: ', num2str(t)])
subplot(2,3,2),imshow(uint8(Background)), title('Background')
subplot(2,3,3),imshow(uint8(Foreground)), title('Foreground')

end


