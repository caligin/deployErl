-module(versionapp_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    Dispatcher = cowboy_router:compile([
        {'_', [
            {"/", echo_version, []}
        ]}
    ]),
    {ok, _} = cowboy:start_http(cowboy_ref, 10, [{port, 8888}], [ {env, [{dispatch, Dispatcher}]} ]),
	versionapp_sup:start_link().

stop(_State) ->
	ok.
