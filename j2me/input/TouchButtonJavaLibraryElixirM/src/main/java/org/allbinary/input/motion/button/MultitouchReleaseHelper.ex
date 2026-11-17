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
% package org.allbinary.input.motion.button
% import org.allbinary.game.input.event.GameKeyEvent

-module('MultitouchReleaseHelper').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).

'$handle_undefined_function'(Function, Arguments) ->
    apply('ReleaseHelper', Function, Arguments).

init_fields(This) ->
    ok.


new(TouchButtonRecognizer) ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This, TouchButtonRecognizer),
    This.

'$init'(This, TouchButtonRecognizer) ->
        'ReleaseHelper':'$init'(This, TouchButtonRecognizer).

% throws Exception
release(This, TouchButtonInput, DeviceId) when is_integer(DeviceId) ->
        CancelTouchButtonInput = (fun(Target_N65725) -> (get({Target_N65725, '$class'})):getCancel(Target_N65725, TouchButtonInput) end)('CancelTouchButtonInputFactory':getInstance()),
        put({local, nextTouchButtonInput}, undefined),
        put({local, gameKeyEvent}, undefined),
        lists:foreach(fun(Index) ->
            put({local, nextTouchButtonInput}, (get({get({get({This, touchButtonRecognizer}), currentlyPressedTouchButtonSingleton}), '$class'})):get(get({get({This, touchButtonRecognizer}), currentlyPressedTouchButtonSingleton}), Index)),
            case (CancelTouchButtonInput =:= get({local, nextTouchButtonInput})) of
                true ->
                put({local, gameKeyEvent}, (get({get({local, nextTouchButtonInput}), '$class'})):getGameKeyEvent(get({local, nextTouchButtonInput}))),
                (get({get({get({This, touchButtonRecognizer}), upGameKeyEventHandler}), '$class'})):fireEvent(get({get({This, touchButtonRecognizer}), upGameKeyEventHandler}), get({local, gameKeyEvent})),
                (fun(Target_N66004) -> (get({Target_N66004, '$class'})):fireEvent(Target_N66004, get({local, gameKeyEvent})) end)((get({get({get({This, touchButtonRecognizer}), upGameKeyEventHandler}), '$class'})):getInstanceForDevice(get({get({This, touchButtonRecognizer}), upGameKeyEventHandler}), DeviceId)),
                (get({get({get({This, touchButtonRecognizer}), currentlyPressedTouchButtonSingleton}), '$class'})):removeAt(get({get({This, touchButtonRecognizer}), currentlyPressedTouchButtonSingleton}), Index);
                false -> ok
            end
        end, lists:seq(((get({get({get({This, touchButtonRecognizer}), currentlyPressedTouchButtonSingleton}), '$class'})):size(get({get({This, touchButtonRecognizer}), currentlyPressedTouchButtonSingleton})) - 1), 0, -1)).

