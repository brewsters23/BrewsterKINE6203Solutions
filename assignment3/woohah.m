function [output] = woohah(num1,num2)
% This function allows the user to input 2 numbers and returns "Woo" if
% their sum is even and "Hah" if their sum is odd.
% This evaluates the remainder after division of the 2 inputs. If the
% remainder is 2, the sum is even, yielding "Woo" as the output. If the
% remainder is not 2, the output will be "Hah" as the sum is odd.

sum = (num1+num2);
if rem(sum,2) == 0
    output = 'woo';
else
    output = 'hah';
end