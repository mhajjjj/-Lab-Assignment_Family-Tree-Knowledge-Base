% ===================================
% Facts
% ===================================

% Gender Facts
male(yasin).
male(mohammed).
male(faisal).
male(naji).

female(sharifa).
female(reem).
female(haliya).
female(jana).

% Parent Facts
parent(yasin, mohammed).
parent(sharifa, mohammed).

parent(yasin, reem).
parent(sharifa, reem).

parent(yasin, haliya).
parent(sharifa, haliya).

parent(yasin, faisal).
parent(sharifa, faisal).

parent(faisal, naji).
parent(jana, naji).

% ===================================
% Rules
% ===================================

% 1. Father Rule
father(X, Y) :- 
    parent(X, Y), 
    male(X).

% 2. Mother Rule
mother(X, Y) :- 
    parent(X, Y), 
    female(X).

% 3. Brother Rule
brother(X, Y) :- 
    parent(Z, X), 
    parent(Z, Y), 
    male(X), 
    X \== Y.

% 4. Sister Rule
sister(X, Y) :- 
    parent(Z, X), 
    parent(Z, Y), 
    female(X), 
    X \== Y.
