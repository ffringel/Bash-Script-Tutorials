#!/usr/bin/env escript

-define(NODE_NAME, pinger).

main([Node, Cookie]) ->
  {ok, _} = net_kernal:start([?NODE_NAME, shortnames]),
  erlang:set_cookie(node(), list_to_atom(Cookie)),

  case net_adm:ping(list_to_atom(Node)) of
    ping ->
      io:format("~s ~p~n", [Node, ping]),
      halt(0);
    Else ->
      io:format("~s ~p~n", [Node, Else]),
      halt(1)
  end.