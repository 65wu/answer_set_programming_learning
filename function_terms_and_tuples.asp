% f(a,1,2), f(a,2,4), f(a,b), (a,1,2), (a,2,4), (a,b)都添加进sym集合中

sym(f(a,1,2)). sym(f(a,2,4)). sym(f(a,b)).
sym( (a,1,2)). sym( (a,2,4)). sym( (a,b)).

% 先判断F是否为f(a,X,X+1)格式的函数，这里的=代表传统意义的相等，而非赋值
% 后面的”,“ 表示”并“的逻辑，判断F是否在sym集合中
% unify2同理

unify1(X) :- f(a,X,X+1) = F, sym(F).
unify2(X) :- (a,X,X+2) = T, sym(T).
