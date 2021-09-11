% Fact
num((1..10, 1..10, 1..10)).

% Rule
solution(X, Y, Z) :- 2 * X < Z, X + Y < 2 * Z, num((X, Y, Z)).