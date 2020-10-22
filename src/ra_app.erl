%% This Source Code Form is subject to the terms of the Mozilla Public
%% License, v. 2.0. If a copy of the MPL was not distributed with this
%% file, You can obtain one at https://mozilla.org/MPL/2.0/.
%%
%% Copyright (c) 2017-2021 VMware, Inc. or its affiliates.  All rights reserved.
%%
%% @hidden
-module(ra_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    ra_sup:start_link().
    % %% start default Ra system
    % DefaultRet = ra_systems_sup:start_system(
    %                ra_system:default_config()),
    % case element(1, DefaultRet) of
    %     ok ->
    %         Ret;
    %     _ ->
    %         DefaultRet
    % end.

stop(_State) ->
    ok.

