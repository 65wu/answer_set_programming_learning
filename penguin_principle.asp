% Fact
bird(tweet).
bird(twx).
penguin(twx).

% Rule
fly(X) :- bird(X), not neg_fly(X).
neg_fly(X) :- bird(X), not fly(X).
neg_fly(X) :- penguin(X).

% Integrity constraint
:- fly(X), neg_fly(X).

