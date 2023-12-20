%Anthony_Tran
%axt220037
%CS_4337_503

%base_case_if_empty_list
nelements([], 0).
%rules
nelements([H|T], Total) :-
    H > 3, %H is greater than 3
    1 is H mod 2, %H is odd number
    nelements(T, Ttotal), %call nelements on rest of list
    Total is H + Ttotal. %head to recursive call
%rule to skip element even or less than equal to 3
nelements([H|T], Total) :-
    (H mod 2 =\= 1 ; H =< 3),
    nelements(T, Total).