count_occurrences(List, Occ):-
      findall(L-X, (bagof(true,member(X,List),Xs), length(Xs,L)), Occ).

minway_(Lss, N, Ls) :-
      (  ground(Lss)              % (actually, only the keys must be ground)
      -> keysort(Lss, Ess),
         Ess = [N-_|_],
         member(N-Ls, Ess)
      ;  throw(error(instantiation_error,_))
      ).

not_neighbor(X, Y) :- (X=a,Y=c;X=c,Y=a;X=b,Y=d;X=d,Y=b;X=a,Y=d;X=d,Y=a) -> true ; false.

same(X, Y) :- (X=1;Y=1) -> writeln(same) ; writeln(not).

neighor_res(X, Y) :- not_neighbor(X, Y) -> writeln(not); writeln(yes).

opposite(B1, B2) :- (B1;B2), not((B1,B2)) -> true ; false.

least_occurrence(List, E) :-
            count_occurrences(List, Occ), keysort(Occ, Sorted), Sorted = [N-_|_], member(N-E, Sorted).

minmax_occurrence(List, Mm) :-
            count_occurrences(List, Occ), keysort(Occ, Sorted), Sorted = [N-_|_], reverse(Sorted, Rev), Rev = [M-_|_], Mm is M - N.

