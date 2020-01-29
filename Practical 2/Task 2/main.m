boat = imread("../images/boatnoise.jpg");

b1 = [-1, 0, 1];
B1 = [b1; b1; b1];

B2 = [-1, -1, -1; 0, 0, 0; 1, 1, 1];
[Edges, Ihor, Iver] = edgeExtraction(boat, B1, B2);
figure
subplot(2, 2, 1);
imshow(boat);
subplot(2, 2, 2);
imshow(Edges);
subplot(2, 2, 3);
imshow(Ihor);
subplot(2, 2, 4);
imshow(Iver);
