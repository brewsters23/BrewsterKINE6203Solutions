function [s,d,p,m] = math(num1,num2)
% This function allows a user to input 2 numbers and returns the sum,
% difference, product, and maximum values based on the 2 numbers.
%
% To find sum, the function adds the 2 inputs together. To find difference,
% the function takes the absolute value of the difference of the two
% numbers to make sure the output is a positive integer. To find product,
% this function multiplies the 2 inputs together. To find the maximum, the
% conditional statement uses the greater than sign to determine which
% number is higher.

s = (num1+num2);
d = abs(num1-num2);
p = (num1*num2);
if num1 > num2
    m = num1;
else
    m = num2;

end