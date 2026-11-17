% 
% AllBinary Open License Version 1 
% Copyright (c) 2025 AllBinary 
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
% package org.allbinary.image
% import java.io.InputStream
% import javax.microedition.lcdui.Image
% import org.allbinary.MIDPUtil

-module('ImageFactory').
-compile([export_all, nowarn_export_all, nowarn_unused_vars, nowarn_shadow_vars]).
-on_load(static_init/0).

static_init() ->
    put({?MODULE, instance}, 'ImageFactory':new()),
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
        get({'ImageFactory', instance}).

% throws Exception
createImageUrl(This, Url) when (is_list(Url) orelse Url =:= undefined) ->
        'Image':createImage(Url).

% throws Exception
createImage(This, Caller, Width, Height) when (is_list(Caller) orelse Caller =:= undefined), is_integer(Width), is_integer(Height) ->
        (fun(Target_N65865) -> (get({Target_N65865, '$class'})):createImageWH(Target_N65865, Width, Height) end)('MIDPUtil':getInstance()).

% throws Exception
createImageFromInputStream(This, Key, InputStream) ->
        Image = (fun(Target_N66035) -> (get({Target_N66035, '$class'})):createImageFromInputStream(Target_N66035, InputStream) end)('MIDPUtil':getInstance()),
        Image.

% throws Exception
createImageFromInputStream(This, InputStream) ->
        (fun(Target_N66197) -> (get({Target_N66197, '$class'})):createImageFromInputStream(Target_N66197, InputStream) end)('MIDPUtil':getInstance()).

