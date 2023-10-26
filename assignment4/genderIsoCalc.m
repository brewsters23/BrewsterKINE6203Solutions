function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMeans, femaleGroupIsoMeans] = genderIsoCalc(Day1, Day2, Day3, Gender)
%The first set of outputs (one for males and one for females) should return
% a matrix with individual mean isometric strength values across all 3 days
% of lifting for the appropriate group. The second set of outputs will
% return the single mean value for each group (mean of subject means).

for i = 1:length(Gender)

if Gender(i) == 'M'
    maleIsoIndMeans(i) = (Day1(i) + Day2(i) + Day3(i))/3;

elseif Gender(i) == 'F'
    femaleIsoIndMeans(i) = (Day1(i) + Day2(i) + Day3(i))/3;
end
end

femaleIsoIndMeans = femaleIsoIndMeans';
maleIsoIndMeans = maleIsoIndMeans';
maleGroupIsoMeans = mean(maleIsoIndMeans);
femaleGroupIsoMeans = mean(femaleIsoIndMeans);