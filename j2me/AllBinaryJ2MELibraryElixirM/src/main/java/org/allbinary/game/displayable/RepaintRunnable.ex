% 
% AllBinary Open License Version 1 
% Copyright (c) 2022 AllBinary 
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
% package org.allbinary.game.displayable
% import javax.microedition.lcdui.Canvas
% import org.allbinary.graphics.displayable.DisplayInfoSingleton
% import org.allbinary.logic.communication.log.LogUtil
% import org.allbinary.string.CommonStrings
% import org.allbinary.thread.ARunnable

-module('RepaintRunnable').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).

'$handle_undefined_function'(Function, Arguments) ->
    apply('ARunnable', Function, Arguments).

init_fields(This) ->
    put({This, canvas}, undefined),
    ok.


new(Canvas) ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This, Canvas),
    This.

'$init'(This, Canvas) ->
    'ARunnable':'$init'(This),
    init_fields(This),
        put({This, canvas}, Canvas).

run(This) ->
        try
            (get({get({This, canvas}), '$class'})):repaint(get({This, canvas})),
            (fun(Target_N65895) -> (get({Target_N65895, '$class'})):process(Target_N65895) end)('DisplayInfoSingleton':getInstance())
        catch _:E when E =/= '$break', E =/= '$continue', (not is_tuple(E) orelse element(1, E) =/= '$return') ->
            CommonStrings = 'CommonStrings':getInstance(),
            LogUtil = 'LogUtil':getInstance(),
            (get({LogUtil, '$class'})):put(LogUtil, get({CommonStrings, 'EXCEPTION'}), This, get({CommonStrings, 'RUN'}), E)
        end.

