bird(tweet).
bird(twx).
penguin(twx).

fly(X) :- bird(X), not not fly(X).
fly(X) :- penguin(X).
