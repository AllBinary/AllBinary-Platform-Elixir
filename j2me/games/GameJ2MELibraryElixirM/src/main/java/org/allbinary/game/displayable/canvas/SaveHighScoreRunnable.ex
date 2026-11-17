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
% package org.allbinary.game.displayable.canvas
% import org.allbinary.game.score.displayable.HighScoreTextBox
% import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
% import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
% import org.allbinary.logic.communication.log.LogUtil
% import org.allbinary.string.CommonStrings

-module('SaveHighScoreRunnable').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).
% implements Runnable

init_fields(This) ->
    put({This, progressCanvas}, 'ProgressCanvasFactory':getInstance()),
    put({This, isLast}, false),
    put({This, textBox}, undefined),
    ok.


new(IsLast, TextBox) when is_boolean(IsLast) ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This, IsLast, TextBox),
    This.

'$init'(This, IsLast, TextBox) when is_boolean(IsLast) ->
    init_fields(This),
        put({This, isLast}, IsLast),
        put({This, textBox}, TextBox).

run(This) ->
        LogUtil = 'LogUtil':getInstance(),
        try
            case get({This, isLast}) of
                true ->
                (get({get({This, textBox}), '$class'})):submit(get({This, textBox}));
                false ->
                (get({get({This, textBox}), '$class'})):saveHighScore(get({This, textBox}))
            end
        catch _:E when E =/= '$break', E =/= '$continue', (not is_tuple(E) orelse element(1, E) =/= '$return') ->
            CommonStrings = 'CommonStrings':getInstance(),
            (get({LogUtil, '$class'})):put(LogUtil, get({CommonStrings, 'EXCEPTION'}), This, "run", E),
            (get({get({This, progressCanvas}), '$class'})):'end'(get({This, progressCanvas}))
        end.

