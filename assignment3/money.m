function [total] = money(q,d,n,p)
% This function allows the user to input 4 values as quarters, dimes,
% nickels, and pennies and returns the total amount as the output.
% This functions multiplies each input by their monetary value to output
% the total monetary value.

total = (q*0.25) + (d*0.10) + (n*0.05) + (p*0.01);
end