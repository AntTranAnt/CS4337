%Anthony_Tran
%axt220037
%CS_4337_503

delements([], []). %returns empty list if empty
delements([_], []). %returns empty list if only 1 element
delements([_ , _ | T], R) :- %returns remaining list without first 2 elements
    R = T.
