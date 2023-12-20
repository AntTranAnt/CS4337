%Anthony_Tran
%axt220037
%CS_4337_503

%year(identifier, count)
year(1, 3829).
year(2, 3500).
year(3, 3207).
year(4, 2742).

%age(year, age_group, count)
age(1, 15_19, 2400).
age(2, 15_19, 1235).
age(3, 15_19, 220).
age(4, 15_19, 30).

age(1, 20_24, 690).
age(2, 20_24, 1399).
age(3, 20_24, 2120).
age(4, 20_24, 1996).

age(1, 25_34, 461).
age(2, 25_34, 584).
age(3, 25_34, 556).
age(4, 25_34, 431).

age(1, 35, 278).
age(2, 35, 282).
age(3, 35, 311).
age(4, 35, 285).

%race
race(white_alone, 101, 85, 97, 39).
race(white_alone_non_hispanic, 1887, 1765, 1707, 1564).
race(black, 581, 624, 483, 432).
race(asian, 303, 225, 254, 208).
race(hispanic, 957, 801, 666, 499).

%employment
employment(full_employed, 567, 793, 757, 676).
employment(part_employed, 888, 953, 1025, 784).
employment(not_employed, 2374, 1754, 1425, 1282).

%disability
disability(nope, 3660, 3354, 3084, 2681).
disability(yes, 169, 146, 123, 61).

%rules
smallestFirstYearGroup(AgeGroup) :-
    % find list of counts for year 1
    findall(Count, age(1, _, Count), Year1),
    
    % find minimum count
    min_list(Year1, Min),
    
    % Find the age group(s) with the minimum count for year 1
    age(1, AgeGroup, Min).

largestFirstYearGroup(AgeGroup) :-
% find list of counts for year 1
    findall(Count, age(1, _, Count), Year1),
    
    % find max count
    max_list(Year1, Max),
    
    % Find the age group(s) with the minimum count for year 1
    age(1, AgeGroup, Max).

%helper function to add up count for 1 race
total_count_for_race(Race, TotalCount) :-
    race(Race, Count1, Count2, Count3, Count4),
    TotalCount is Count1 + Count2 + Count3 + Count4.

%finds largest of all race
largest_race(RaceMost, Count) :-
    findall(Race-Total, (race(Race, _, _, _, _), total_count_for_race(Race, Total)), RaceTotal),
    keysort(RaceTotal, SortList),
    reverse(SortList, [RaceMost-Count|_]).

%finds total students who are full time not_employed
full_time_employ_count(Total) :-
    employment(full_employed, Count1, Count2, Count3, Count4),
    Total is Count1 + Count2 + Count3 + Count4.

%function to find total of all students
total_students(Total) :-
    findall(Count, year(_, Count), CountList),
    sum_list(CountList, Total).

%function to find total of first and second years who are unemployed
first_and_second_unemployed(Total) :-
    findall(Count, employment(not_employed, Count, _, _, _), CountList1),
    findall(Count, employment(not_employed, _, Count, _, _), CountList2),
    append(CountList1, CountList2, CountList),
    sum_list(CountList, Total).

%function to find total students over 20
older_than_twenty(Total) :-
    findall(Count, age(_, 20_24, Count), CountList1),
    findall(Count, age(_, 25_34, Count), CountList2),
    findall(Count, age(_, 35, Count), CountList3),
    append(CountList1, CountList2, CountList4),
    append(CountList4, CountList3, CountList5),
    sum_list(CountList5, Total).

%function to find total students over 20 but under 35
older_than_twenty_but_under_thirtyfive(Total) :-
    findall(Count, age(_, 20_24, Count), CountList1),
    findall(Count, age(_, 25_34, Count), CountList2),
    append(CountList1, CountList2, CountList4),
    sum_list(CountList4, Total).

%function to count number of disabilities without 4th years
disability_count_no_four_years(Total) :-
    disability(yes, Count1, Count2, Count3, _),
    Total is Count1 + Count2 + Count3.

%function to count number of asians
asian_count(Total) :-
    race(asian, Count1, Count2, Count3, Count4),
    Total is Count1 + Count2 + Count3 + Count4.

%function to count number of hispanics
hispanic_count(Total) :-
    race(hispanic, Count1, Count2, Count3, Count4),
    Total is Count1 + Count2 + Count3 + Count4.

%calculate total of nonasians
not_asian(Total) :-
    asian_count(TotalAsians),
    total_students(TotalStudents),
    Total is TotalStudents - TotalAsians.

%calculate asians and hispanics
asian_and_hispanic(Total) :-
    asian_count(TotalAsians),
    hispanic_count(TotalHispanics),
    Total is TotalAsians + TotalHispanics.

    