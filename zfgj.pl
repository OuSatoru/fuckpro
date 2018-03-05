answer(a).
answer(b).
answer(c).
answer(d).
not_neighbor(X, Y) :- (X=a,Y=c;X=c,Y=a;X=b,Y=d;X=d,Y=b;X=a,Y=d;X=d,Y=a) -> true ; false. %answer8
opposite(B1, B2) :- (B1;B2), not((B1,B2)) -> true ; false. %answer9 nxor
answers(A1,A2,A3,A4,A5,A6,A7,A8,A9,A10) :- 
    answer(A1),answer(A2),answer(A3),answer(A4),answer(A5),answer(A6),answer(A7),answer(A8),answer(A9),answer(A10),
    % answer2
    (A5 = a -> A2 = c;
    A5 = b -> A2 = d;
    A5 = c -> A2 = a;
    A5 = d -> A2 = b),
    % answer3
    (A3=A6,A6=A2,not(A2=A4) -> A3 = d;
    A2=A6,A6=A4,not(A4=A3) -> A3 = a;
    A3=A6,A6=A4,not(A2=A4) -> A3 = c;
    A3=A2,A2=A4,not(A4=A6) -> A3 = b),
    % answer4
    (A1=A5 -> A4 = a;
    A2=A7 -> A4 = b;
    A1=A9 -> A4 = c;
    A6=A10 -> A4 = d),
    % answer5
    (A5=A8 -> A5 = a;
    A5=A4 -> A5 = b;
    A5=A9 -> A5 = c;
    A5=A7 -> A5 = d),
    % answer6
    (A2=A4,A4=A8 -> A6 = a;
    A1=A6,A6=A8 -> A6 = b;
    A3=A10,A10=A8 -> A6 = c;
    A5=A9,A9=A8 -> A6 = d),
    % answer7
    % answer8
    (not_neighbor(A7,A1) -> A8 = a;
    not_neighbor(A5,A1) -> A8 = b;
    not_neighbor(A2,A1) -> A8 = c;
    not_neighbor(A10,A1) -> A8 = d),
    % answer9
    (opposite(A1=A6,A5=A6) -> A9 = a;
    opposite(A1=A6,A5=A10) -> A9 = b;
    opposite(A1=A6,A5=A2) -> A9 = c;
    opposite(A1=A6,A5=A9) -> A9 = d)
    %answer10
    .
