function dEuc=EuclideanDistance(sample1,sample2)
numPixel=size(sample1,2);
dEuc=0;
for i=1:numPixel
    value1=sample1(1,i);
    value2=sample2(1,i);
    
currentDistance=abs(value1-value2);
dEuc=dEuc+currentDistance.^2;
end
dEuc=sqrt(dEuc);
end