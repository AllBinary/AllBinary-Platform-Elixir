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
% package org.allbinary.graphics.form
% import org.allbinary.graphics.form.item.ABCustomItem

-module('ScrollSelectionFormTempHorizontalDx').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).

'$handle_undefined_function'(Function, Arguments) ->
    apply('ItemIndexDx', Function, Arguments).

init_fields(This) ->
    put({This, scrollSelectionForm}, undefined),
    ok.


new(ScrollSelectionForm) ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This, ScrollSelectionForm),
    This.

'$init'(This, ScrollSelectionForm) ->
    'ItemIndexDx':'$init'(This),
    init_fields(This),
        put({This, scrollSelectionForm}, ScrollSelectionForm).

% throws Exception
getDx(This, Index, Item, Dx, Dy) when is_integer(Index), is_integer(Dx), is_integer(Dy) ->
        (get({get({This, scrollSelectionForm}), '$class'})):getSelectedIndexForPointTempHorizontalDx(get({This, scrollSelectionForm}), Index, Item, Dx, Dy).

