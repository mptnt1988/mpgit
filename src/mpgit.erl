-module(mpgit).
-compile(export_all).

%% API exports
-export([]).

%%====================================================================
%% API functions
%%====================================================================
test() ->
    lager:debug("Tuan debug"),
    lager:info("Tuan info"),
    lager:notice("Tuan notice"),
    lager:warning("Tuan warning"),
    lager:error("Tuan error"),
    lager:critical("Tuan critical"),
    lager:alert("Tuan alert"),
    lager:emergency("Tuan emergency").

%%====================================================================
%% Internal functions
%%====================================================================
