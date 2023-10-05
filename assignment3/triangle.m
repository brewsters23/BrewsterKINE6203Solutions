function [check] = triangle(array)
% This function allows the user to input a variable that is associated with
% a single 3-element array (e.g. [3 4 5]). It returns a logical value
% (0 or 1) to evaluate if it is a valid triangle. The function sorts the
% array into numerical order to evaluate if the sum of the two smallest
% sides (array(1) and array(2)) is greater than the longest side
% (array(3)). If the sum is greater than array(3), the triangle is valid.

sort(array)

if (array(1) + array(2)) > array(3)
    check = true;
else
    check = false;
end
