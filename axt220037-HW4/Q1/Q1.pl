%Anthony_Tran
%axt220037
%CS_4337_503

%facts
%male
male(hunter).
male(beau).
male(joe).
male(howard).
male(bill).
male(jim).
male(frank).
male(joe_sr).

%female
female(naomi).
female(finnegan).
female(maisy).
female(kathleen).
female(hallie).
female(lunden).
female(melissa).
female(neila).
female(ashley).
female(jill).
female(valerie).
female(jean).
female(naomi2).

%parent
parent(joe_sr, joe).
parent(jean, joe).
parent(joe_sr, valerie).
parent(jean, valerie).
parent(joe_sr, frank).
parent(jean, frank).
parent(joe_sr, jim).
parent(jean, jim).

parent(kathleen, naomi).
parent(hunter, naomi).
parent(kathleen, finnegan).
parent(hunter, finnegan).
parent(kathleen, maisy).
parent(hunter, maisy).

parent(joe, beau).
parent(neila, beau).
parent(joe, hunter).
parent(neila, hunter).
parent(joe, naomi2).
parent(neila, naomi2).

parent(joe, ashley).
parent(jill, ashley).

parent(joe_sr, joe).
parent(jean, joe).
parent(joe_sr, valerie).
parent(jean, valerie).
parent(joe_sr, frank).
parent(jean, frank).
parent(joe_sr, jim).
parent(jean, jim).

%rules
mother(X, Y) :- female(X), parent(X, Y).
father(X, Y) :- male(X), parent(X, Y).

sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), X \= Y.

grandmother(X, Y) :- female(X), parent(Z, Y), parent(X, Z).
grandfather(X, Y) :- male(X), parent(Z, Y), parent(X, Z).

aunt(X, Y) :- female(X), parent(Z, Y), sister(X, Z).
uncle(X, Y) :- male(X), parent(Z, Y), brother(X, Z).

greatgrandmother(X, Y) :- female(X), grandfather(Z, Y), mother(X, Z).
greatgrandfather(X, Y) :- male(X), grandfather(Z, Y), father(X, Z).

greatgreatgrandmother(X, Y) :- female(X), greatgrandfather(Z, Y), mother(X, Z).
greatgreatgrandfather(X, Y) :- male(X), greatgrandfather(Z, Y), father(X, Z).