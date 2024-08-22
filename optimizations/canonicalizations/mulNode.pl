mulNode(1,0).
mulNode(3,1).
mulNode(5,-1).

% MulEliminator
canonical(X,0) :-
    mulNode(X,0).
% MulNeutral
canonical(X,X) :-
    mulNode(X,1).
% MulNegate
canonical(X,Y) :- 
    mulNode(X,-1),
    Y is -X.
