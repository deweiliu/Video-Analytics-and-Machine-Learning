function output =powerLaw(input,gamma)
% apply the power law transformation
numerator=input^gamma;
denominator=255^(gamma-1);

output=numerator/denominator;
output=round(output);
end