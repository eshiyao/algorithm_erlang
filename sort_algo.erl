-module(sort_algo).
-export([quicksort/1,
	 bubblesort/1]).

quicksort([])->
    [];
quicksort([H|T])->
    quicksort([S||S<-T,S<H])++[H]++quicksort([L||L<-T,L>=H]).

%% bubble sort, each round will fix a largist element
%% at the end of the list 
bubblesort(List)->
    bubblesort(List,length(List)).

bubblesort(List,1)->
    List;
bubblesort([H|T],N)->
    ResultList=compareElement(H,T),
    bubblesort(ResultList,N-1).

%%internal fun of bubblesort
compareElement(Refer,[])->
    [Refer];
compareElement(Refer,[H|T]) when Refer>H ->
    [H]++compareElement(Refer,T);
compareElement(Refer,[H|T])->
    [Refer]++compareElement(H,T).
