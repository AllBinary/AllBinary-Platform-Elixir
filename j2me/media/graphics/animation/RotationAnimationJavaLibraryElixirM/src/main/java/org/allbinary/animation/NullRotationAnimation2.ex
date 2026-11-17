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
% package org.allbinary.animation
% import javax.microedition.lcdui.Graphics
% import org.allbinary.math.AngleFactory
% import org.allbinary.math.AngleInfo
% import org.allbinary.util.CircularIndexUtil

-module('NullRotationAnimation2').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).

'$handle_undefined_function'(Function, Arguments) ->
    apply('NullRotationAnimation', Function, Arguments).

init_fields(This) ->
    ok.


new() ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This),
    This.

'$init'(This) ->
        'NullRotationAnimation':'$init'(This, 'AngleInfo':getInstance(get({'AngleFactory':getInstance(), 'QUARTER_TOTAL_ANGLE'})), 'CircularIndexUtil':createInstance(4), 'IndexedAnimationBehavior':new(1, 250)).

paintXY(This, Graphics, X, Y) when is_integer(X), is_integer(Y) ->
        ok.

