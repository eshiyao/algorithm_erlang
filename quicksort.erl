-module(quicksort).
-export([startsort/1]).

startsort([])->
    [];
startsort([H|T])->
    startsort([S||S<-T,S<H])++[H]++startsort([L||L<-T,L>=H]).
