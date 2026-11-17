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
% package org.allbinary.game.paint.help
% import org.allbinary.logic.NullUtil
% import org.allbinary.logic.string.StringUtil

-module('UpdateMyFontProperties').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).

init_fields(This) ->
    put({This, actionStringArray}, (fun(Target_N65651) -> (get({Target_N65651, '$class'})):getArrayInstance(Target_N65651) end)('StringUtil':getInstance())),
    put({This, keymappingBeginWidthArray}, get({'NullUtil':getInstance(), 'NULL_INT_ARRAY'})),
    put({This, actionStringDeltaXArray}, get({'NullUtil':getInstance(), 'NULL_INT_ARRAY'})),
    put({This, inputDeltaXArray}, get({'NullUtil':getInstance(), 'NULL_INT_ARRAY_ARRAY'})),
    put({This, sepArray}, get({'StringUtil':getInstance(), 'ONE_EMPTY_STRING_ARRAY_OF_ARRAYS'})),
    put({This, sepWidthArray}, get({'NullUtil':getInstance(), 'NULL_INT_ARRAY_ARRAY'})),
    put({This, charHeight}, 0),
    ok.

new() ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This),
    This.

'$init'(This) ->
    init_fields(This).


