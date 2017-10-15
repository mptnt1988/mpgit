-module(mpgit).

%% API exports
-export([get_current_branch/0]).

%%====================================================================
%% API functions
%%====================================================================
get_current_branch() ->
    Branch = mpgit_lib:get_current_branch(),
    lager:info("mpgit:get_current_branch/0 returns ~p~n", [Branch]),
    Branch.

%%====================================================================
%% Internal functions
%%====================================================================
