function [weight,mean,sd]=UpdateGMM(oldWeight,oldMean,oldSD,alpha,pixval)
if nargin<5
    %if there is no pixel value,
    weight=(1-alpha)*oldWeight;
    mean=oldMean;
    sd=oldSD;
else
    weight=calculateWeight(oldWeight,alpha);
    mean=calculateMean(oldMean,weight,alpha,pixval);
    sd=calculateSD(oldSD,mean,weight,alpha,pixval);
end
end
% The variable names with the prefix "old" are the original values
% without the prefix are the new calculated values
function weight=calculateWeight(oldWeight,alpha)
weight=1-alpha;
weight=weight*oldWeight;
weight=weight+alpha;
end
function mean=calculateMean(oldMean,weight,alpha,pixval)
part1=1-alpha/weight;
part1=part1*oldMean;

part2=alpha/weight;
part2=part2*pixval;

mean=part1+part2;
end
function sd=calculateSD(oldSD,mean,weight,alpha,pixval)
part1=1-alpha/weight;
part1=part1*oldSD*oldSD;

part2=square(pixval-mean);
part2=part2*alpha/weight;

variance=part1+part2;
sd=sqrt(variance);

end