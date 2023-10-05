function [length, first, last] = stringValue(word)
% This function allows a user to input a string value and returns the
% length of the string and the first and last character as outputs.
% This function determines length by using strlength. This function
% determines the first and last characters by evaluating the string. 

length = strlength(word);
first = word(1);
last = word(end);

disp(length)
disp(first)
disp(last)

end