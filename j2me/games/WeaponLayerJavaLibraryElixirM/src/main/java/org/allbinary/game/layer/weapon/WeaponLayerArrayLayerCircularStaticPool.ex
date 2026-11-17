%
% AllBinary Open License Version 1
% Copyright (c) 2011 AllBinary
% 
% By agreeing to this license you and any business entity you represent are
% legally bound to the AllBinary Open License Version 1 legal agreement.
% 
% You may obtain the AllBinary Open License Version 1 legal agreement from
% AllBinary or the root directory of AllBinary's AllBinary Platform repository.
% 
% Created By: Travis Berthelot
%  
% Generated Code Do Not Modify
% package org.allbinary.game.layer.weapon
% import org.allbinary.util.CircularIndexUtil

-module('WeaponLayerArrayLayerCircularStaticPool').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).
-on_load(static_init/0).

static_init() ->
    put({?MODULE, instance}, 'WeaponLayerArrayLayerCircularStaticPool':new()),
    ok.

init_fields(This) ->
    put({This, 'MAX'}, 5),
    put({This, circularIndexUtil}, 'CircularIndexUtil':createInstance(get({This, 'MAX'}))),
    put({This, 'WEAPONLAYER_ARRAY'}, undefined),
    put({This, 'TWO_WEAPONLAYER_ARRAY'}, undefined),
    put({This, 'THREE_WEAPONLAYER_ARRAY'}, undefined),
    ok.

new() ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This),
    This.

'$init'(This) ->
    init_fields(This).


getInstance() ->
        get({'WeaponLayerArrayLayerCircularStaticPool', instance}).

init(This) ->
        WEAPONLAYER_ARRAY = array:new((get({This, 'MAX'}) * 2), {default, undefined}),
        TWO_WEAPONLAYER_ARRAY = array:new(get({This, 'MAX'}), {default, undefined}),
        THREE_WEAPONLAYER_ARRAY = array:new(get({This, 'MAX'}), {default, undefined}),
        lists:foreach(fun(Index) ->
            array:set(Index, array:new(1, {default, undefined}), WEAPONLAYER_ARRAY),
            array:set(Index, array:new(2, {default, undefined}), TWO_WEAPONLAYER_ARRAY),
            array:set(Index, array:new(3, {default, undefined}), THREE_WEAPONLAYER_ARRAY)
        end, lists:seq(0, get({This, 'MAX'}) - 1)),
        put({This, 'WEAPONLAYER_ARRAY'}, WEAPONLAYER_ARRAY),
        put({This, 'TWO_WEAPONLAYER_ARRAY'}, TWO_WEAPONLAYER_ARRAY),
        put({This, 'THREE_WEAPONLAYER_ARRAY'}, THREE_WEAPONLAYER_ARRAY).

getWeaponLayerArrays(This, Size) when is_integer(Size) ->
        try
        case (Size =:= 1) of
            true ->
            throw({'$return', get({This, 'WEAPONLAYER_ARRAY'})});
            false ->
            case (Size =:= 2) of
            true ->
            throw({'$return', get({This, 'TWO_WEAPONLAYER_ARRAY'})});
            false ->
            case (Size =:= 3) of
            true ->
            throw({'$return', get({This, 'THREE_WEAPONLAYER_ARRAY'})});
            false -> ok
        end
        end
        end,
        erlang:error({'RuntimeException'})
        catch throw:{'$return', ReturnValue} -> ReturnValue end.

% throws Exception
getInstanceArray(This, Size) when is_integer(Size) ->
        WeaponLayerArray = array:get((get({get({This, circularIndexUtil}), '$class'})):getIndex(get({This, circularIndexUtil})), (get({This, '$class'})):getWeaponLayerArrays(This, Size)),
        (get({get({This, circularIndexUtil}), '$class'})):next(get({This, circularIndexUtil})),
        WeaponLayerArray.

