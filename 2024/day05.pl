:- use_module(library(dcg/basics)).

solve(File, Part1, Part2) :-
    phrase_from_file(file(Dir, Nodes), File).


order(O1"|"O2).

file(Ordering,Update) --> order(Ordering), "\n\n", updates(Updates).
