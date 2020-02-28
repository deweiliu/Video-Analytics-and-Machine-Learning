addpath("../utilities");
letter_image = "../resources/letters.JPG";
templateK = "../resources/K.JPG";
templateS = "../resources/S.JPG";

templateMatching(letter_image, templateK);
templateMatching(letter_image, templateS);
templateMatching2(letter_image, templateS, 10);

image = "../resources/image1.jpg";
target = "../resources/image2.JPG";

templateMatching2(image, target, 40);
