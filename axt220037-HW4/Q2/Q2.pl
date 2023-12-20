%Anthony_Tran
%axt220037
%CS_4337_503

%base_case
reversea([], []).
%else_if_not_empty
reversea([H | T], R) :-
    reversea(T, R2),
    append(R2, [H], R).