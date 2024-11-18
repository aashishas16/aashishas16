% Defining genders
male(dasharatha).
male(rama).
male(bharata).
male(lakshmana).
male(shatrughna).
male(luv).
male(kush).

female(kaushalya).
female(kaikeyi).
female(sumitra).
female(sita).
female(urmila).
female(mandavi).
female(shrutakirti).

% Defining parent-child relationships
parent(dasharatha, rama).
parent(kaushalya, rama).
parent(dasharatha, bharata).
parent(kaikeyi, bharata).
parent(dasharatha, lakshmana).
parent(sumitra, lakshmana).
parent(dasharatha, shatrughna).
parent(sumitra, shatrughna).
parent(rama, luv).
parent(sita, luv).
parent(rama, kush).
parent(sita, kush).

% Defining spouse relationships
spouse(dasharatha, kaushalya).
spouse(dasharatha, kaikeyi).
spouse(dasharatha, sumitra).
spouse(rama, sita).
spouse(lakshmana, urmila).
spouse(bharata, mandavi).
spouse(shatrughna, shrutakirti).

% Defining sibling relationships
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Defining ancestor relationships
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% swipl
%[filename].
% query eg - spouse(rama,x).
