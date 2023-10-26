function [dayAtoB] = dayComparer(SubjectID, dayA, dayB)
%This takes the subject IDs and two days as inputs and returns the subject
% IDs of those who had an increase from dayA to dayB.

for i = 1:length(SubjectID)

    if (dayB(i) > dayA(i))
      dayAtoB(i) = SubjectID(i);
    end

end