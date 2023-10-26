%% Assignment 4 - Evaluating Isokinetic Data
%% Written by Sydney Brewster
%
%% Tested on Matlab 2023a
%% Tested using Asus Laptop
%% Last Updated: 10/26/2023

clear all
clc

% Use importfile function to import csv file of isokinetic data and save
% each column as a variable.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

% Use genderIsoCalc function to get male and female mean isokinetic values
% from each day and male and female group means from all 3 days.
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMeans, femaleGroupIsoMeans] = genderIsoCalc(Day1, Day2, Day3, Gender);

% This returns the subject IDs of those who had an increase from day 1 to
% day 2 (day1toDay2) and then the function is run again to return subject IDs
% that increased from the day 2 to day 3 (day2toDay3).

[day1toDay2] = dayComparer(SubjectID, Day1, Day2)';
[day2toDay3] = dayComparer(SubjectID, Day2, Day3)';

% This finds the average weight and the average isokinetic values for each
% day. Then this normalizes the data based on average weight, giving the
% normalized means for each day. These are saved as normDay1mean,
% normDay2mean, and normDay3mean.

avgWeight = mean(Weight);
day1avg = mean(Day1);
day2avg = mean(Day2);
day3avg = mean(Day3);
normDay1mean = (day1avg/avgWeight);
normDay2mean = (day2avg/avgWeight);
normDay3mean = (day3avg/avgWeight);

% This makes the variables all the same length in order to create a table
% of final results.
maleIsoIndMeans(25,1) = 0;
maleGroupIsoMeans(25,1) = 0;
femaleIsoIndMeans(25,1) = 0;
femaleGroupIsoMeans(25,1) = 0;
normDay1mean(25,1) = 0;
normDay2mean(25,1) = 0;
normDay3mean(25,1) = 0;
day1toDay2(25,1) = 0;
day2toDay3(25,1) = 0;

finalResults = table(maleIsoIndMeans, maleGroupIsoMeans, femaleIsoIndMeans, femaleGroupIsoMeans, normDay1mean, normDay2mean, normDay3mean, day1toDay2, day2toDay3);
writetable(finalResults,'iso_results.csv')
