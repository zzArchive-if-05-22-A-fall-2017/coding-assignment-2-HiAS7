female(eve).
female(lisa).
female(anne).
female(carol).
male(adam).
male(john).
male(pat).
male(jacob).
parent(adam, john).
parent(eve, john).
parent(eve,lisa).
parent(john, anne).
parent(john, pat).
parent(pat,jacob).
parent(carol,jacob).

grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
grandfather(X,Y) :- grandparent(X,Y),male(X).
grandmother(X,Y) :- grandparent(X,Y),female(X).
father(X,Y) :- parent(X,Y),male(X).
mother(X,Y) :- parent(X,Y),female(X).
son(Y,X) :- parent(X,Y),male(X).
daughter(Y,X) :- parent(X,Y),female(X).