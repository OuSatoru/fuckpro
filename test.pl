count_occurrences(List, Occ):-
      findall([X,L], (bagof(true,member(X,List),Xs), length(Xs,L)), Occ).

not_neighbor(X, Y) :- (X=a,Y=c;X=c,Y=a;X=b,Y=d;X=d,Y=b;X=a,Y=d;X=d,Y=a) -> true ; false.

same(X, Y) :- (X=1;Y=1) -> writeln(same) ; writeln(not).

neighor_res(X, Y) :- not_neighbor(X, Y) -> writeln(not); writeln(yes).

opposite(B1, B2) :- (B1;B2), not((B1,B2)) -> true ; false.

