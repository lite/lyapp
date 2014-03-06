-module(lyapp_test).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-ifdef(TEST).

my_test() ->
	?assert(1 + 1 =:= 2).
  
simple_test() ->
  ok = application:start(lyapp),
  ?assertNot(undefined == whereis(lyapp_sup)).
  
-endif.

