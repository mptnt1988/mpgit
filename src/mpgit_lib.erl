-module(mpgit_lib).

-export([get_current_branch/0]).

get_current_branch() ->
    gitrun(["symbolic-ref", "--short", "HEAD"]).

gitrun(WordList) ->
    Cmd = string_join(["git"|WordList]),
    os_cmd(Cmd).

string_join(ListOfStrings) ->
    lists:flatten(lists:join(" ", ListOfStrings)).

os_cmd(Cmd) ->
    string:trim(os:cmd(Cmd)).
