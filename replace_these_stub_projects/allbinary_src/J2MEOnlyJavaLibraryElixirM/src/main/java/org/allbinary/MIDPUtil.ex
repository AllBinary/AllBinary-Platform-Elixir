%
% AllBinary Open License Version 1
% Copyright (c) 2026 AllBinary
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
% package org.allbinary
% import java.io.IOException
% import java.io.InputStream
% import javax.microedition.lcdui.Form
% import javax.microedition.lcdui.Image
% import javax.microedition.lcdui.Item
% import javax.microedition.media.Manager
% import javax.microedition.media.MediaException
% import javax.microedition.media.Player

-module('MIDPUtil').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).
-on_load(static_init/0).

static_init() ->
    put({?MODULE, instance}, 'MIDPUtil':new()),
    ok.

init_fields(This) ->
    ok.

new() ->
    This = make_ref(),
    put({This, '$class'}, ?MODULE),
    '$init'(This),
    This.

'$init'(This) ->
    init_fields(This).


getInstance() ->
        get({'MIDPUtil', instance}).

createImageWH(This, Width, Height) when is_integer(Width), is_integer(Height) ->
        'Image':createImage(Width, Height).

createImageFromByteArray(This, ImageData, ImageOffset, ImageLength) when (is_tuple(ImageData) orelse ImageData =:= undefined), is_integer(ImageOffset), is_integer(ImageLength) ->
        'Image':createImage(ImageData, ImageOffset, ImageLength).

% throws IOException
createImageFromInputStream(This, InputStream) ->
        'Image':createImage(InputStream).

% throws IOException, MediaException
createPlayerFromInputStream(This, InputStream, Type) when (is_list(Type) orelse Type =:= undefined) ->
        'Manager':createPlayer(InputStream, Type).

appendItem(This, Form, Item) ->
        (get({Form, '$class'})):append(Form, Item).

