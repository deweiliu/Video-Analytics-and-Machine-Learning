function [Edges, Ihor,Iver]=edgeExtraction(image,B1,B2)

Iver=conv2(image,B1);
Ihor=conv2(image,B2);

Iver_square=Iver.*Iver;
Ihor_square=Ihor.*Ihor;
Edges=sqrt(Iver_square+Ihor_square);



Edges=uint8(Edges);
Ihor=uint8(Ihor);
Iver=uint8(Iver);

end