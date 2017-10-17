-module(mpgit).

%% API exports
-export([get_current_branch/0,
         gerrit_review/3
        ]).

%%====================================================================
%% API functions
%%====================================================================

get_current_branch() ->
    Branch = mpgit_lib:get_current_branch(),
    lager:debug("mpgit:get_current_branch/0 returns ~p~n", [Branch]),
    Branch.

%% Config example:
%%   #{host => "gerrit.server.com",
%%     port => "29418",
%%     project => "gerrit/project-name"}.
%% Actions example:
%%   [{verified, "+1"},
%%    {codereview, "+2"},
%%    submit]

gerrit_review(ConfigMap, Actions, CommitID) ->
    mpgit_gerrit:review(ConfigMap, Actions, CommitID).

%%====================================================================
%% Internal functions
%%====================================================================
