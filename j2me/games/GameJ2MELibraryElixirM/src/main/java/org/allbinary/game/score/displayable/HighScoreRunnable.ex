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
% package org.allbinary.game.score.displayable
% import org.allbinary.J2MEUtil
% import org.allbinary.logic.ABSystemWrapper
% import org.allbinary.logic.communication.log.LogUtil
% import org.allbinary.logic.string.StringMaker
% import org.allbinary.string.CommonStrings
% import org.allbinary.thread.ARunnable

-module('HighScoreRunnable').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).

'$handle_undefined_function'(Function, Arguments) ->
    apply('ARunnable', Function, Arguments).

init_fields(This) ->
    put({This, highScoresCanvas}, undefined),
    ok.


new(HighScoresCanvas) ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This, HighScoresCanvas),
    This.

'$init'(This, HighScoresCanvas) ->
    'ARunnable':'$init'(This),
    init_fields(This),
        put({This, highScoresCanvas}, HighScoresCanvas).

run(This) ->
        CommonStrings = 'CommonStrings':getInstance(),
        LogUtil = 'LogUtil':getInstance(),
        HighScoresCanvas = get({This, highScoresCanvas}),
        try
            IsHTML = 'J2MEUtil':isHTML(),
            case (not IsHTML) of
                true ->
                (fun Loop() -> case (not get({HighScoresCanvas, hasPainted})) of true ->
                    ok,
                    Loop();
                false -> ok end end)(),
                put({HighScoresCanvas, hasPainted}, false);
                false -> ok
            end,
            StringMaker = 'StringMaker':new(),
            SystemWrapper = 'ABSystemWrapper':getInstance(),
            CurrentTimeMillis = (get({SystemWrapper, '$class'})):currentTimeMillis(SystemWrapper),
            (get({LogUtil, '$class'})):putF(LogUtil, (fun(Target_N66309) -> (get({Target_N66309, '$class'})):toString(Target_N66309) end)((fun(Target_N66316) -> (get({Target_N66316, '$class'})):appendlong(Target_N66316, CurrentTimeMillis) end)((get({StringMaker, '$class'})):append(StringMaker, "HighScoresCanvas - Request repaint to be sure: "))), This, get({CommonStrings, 'RUN'})),
            (get({get({HighScoresCanvas, repaintBehavior}), '$class'})):onChangeRepaint(get({HighScoresCanvas, repaintBehavior}), HighScoresCanvas),
            case (not IsHTML) of
                true ->
                (fun Loop() -> case (not get({HighScoresCanvas, hasPainted})) of true ->
                    ok,
                    Loop();
                false -> ok end end)();
                false -> ok
            end,
            (get({StringMaker, '$class'})):delete(StringMaker, 0, (get({StringMaker, '$class'})):length(StringMaker)),
            (get({LogUtil, '$class'})):putF(LogUtil, (fun(Target_N66535) -> (get({Target_N66535, '$class'})):toString(Target_N66535) end)((fun(Target_N66542) -> (get({Target_N66542, '$class'})):appendlong(Target_N66542, CurrentTimeMillis) end)((get({StringMaker, '$class'})):append(StringMaker, "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "))), This, get({CommonStrings, 'RUN'})),
            (get({HighScoresCanvas, '$class'})):executeUpdate(HighScoresCanvas)
        catch _:E when E =/= '$break', E =/= '$continue', (not is_tuple(E) orelse element(1, E) =/= '$return') ->
            (get({LogUtil, '$class'})):put(LogUtil, get({CommonStrings, 'EXCEPTION'}), This, get({CommonStrings, 'RUN'}), E)
        end.

