addpath('../utilities/');
boat=imread('../images/boat256.jpg');
mValues=[1.5];
cValues=[-50];
for m=mValues
    for c=cValues
  table=transformTable(@linearStretching,m,c);
  title=sprintf('Transform function m = %d c = %d',m,c);
  newBoat=transform(boat,table);
displayImages(boat,table,title,newBoat);
    end


end

[m,c]=enhanceContrastALS(boat);

  table=transformTable(@linearStretching,m,c);
  title=sprintf('Transform function m = %d c = %d',m,c);
  newBoat=transform(boat,table);
displayImages(boat,table,title,newBoat);