function [output] = counter(num1,num2)
% This function allows the user to input 2 numbers and displays a vertical
% counter from the lower number to the higher number.
% The conditional statement determines the higher number to correctly
% display the counter.

if num1 < num2
    output = (num1:num2)';
else
    output = (num2:num1)';
end