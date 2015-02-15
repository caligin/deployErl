-module(echo_version).
-export([
    init/3,
    rest_init/2,
    content_types_provided/2,
    vsn/2
    ]).

init(_Transport, Req, []) ->
    {upgrade, protocol, cowboy_rest, Req, []}.

rest_init(Req, []) ->
    {ok, Req, []}.    

content_types_provided(Req, []) ->
    {[{<<"text/plain">>, vsn}], Req, []}.

vsn(Req, []) ->
    {"1", Req, []}.
