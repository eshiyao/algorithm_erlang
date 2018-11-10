-module(sort_algo).
-export([quicksort/1]).

quicksort([])->
    [];
quicksort([H|T])->
    quicksort([S||S<-T,S<H])++[H]++quicksort([L||L<-T,L>=H]).
