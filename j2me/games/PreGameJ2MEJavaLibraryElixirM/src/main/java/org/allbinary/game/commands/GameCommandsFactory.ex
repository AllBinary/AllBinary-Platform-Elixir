#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.game.commands

defmodule GameCommandsFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :TOGGLE_FULLSCREEN, nil)
    JR.put(this, :TOGGLE_KEYBOARD, nil)
    JR.put(this, :SET_MENU_DISPLAYABLE, nil)
    JR.put(this, :APPLICATION_UPDATE, nil)
    JR.put(this, :DISPLAY_ABOUT, nil)
    JR.put(this, :OPEN_WEB_URL, nil)
    JR.put(this, :CLOSE_OPTIONS, nil)
    JR.put(this, :DISPLAY_OPTIONS, nil)
    JR.put(this, :START_TRACE, nil)
    JR.put(this, :STOP_TRACE, nil)
    JR.put(this, :DEFAULT_OPTIONS, nil)
    JR.put(this, :SHOW_GAME_CANVAS, nil)
    JR.put(this, :CLOSE_AND_SHOW_GAME_CANVAS, nil)
    JR.put(this, :QUIT_COMMAND, nil)
    JR.put(this, :RESTART_COMMAND, nil)
    JR.put(this, :DISPLAY_SAVE_FORM, nil)
    JR.put(this, :SAVE, nil)
    JR.put(this, :DISPLAY_LOAD_FORM, nil)
    JR.put(this, :LOAD_FILE, nil)
    JR.put(this, :DELETE_FILE, nil)
    JR.put(this, :EXIT_COMMAND, nil)
    JR.put(this, :EXIT_WITHOUT_PROGRESS_COMMAND, nil)
    JR.put(this, :START_COMMAND, nil)
    JR.put(this, :CONTINUE_COMMAND, nil)
    JR.put(this, :SELECT_COMMAND, nil)
    JR.put(this, :FEATURE_UPDATE, nil)
    JR.put(this, :BUY_COMMAND, nil)
        JR.put(this, :TOGGLE_FULLSCREEN, Command.jnew("Toggle FullScreen", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :TOGGLE_KEYBOARD, Command.jnew("Keyboard", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :SET_MENU_DISPLAYABLE, Command.jnew("Set Menu Displayable", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :APPLICATION_UPDATE, Command.jnew(JR.get(CommonStrings.jm_getInstance(), :UPDATE), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :DISPLAY_ABOUT, Command.jnew(JR.get(CanvasStrings.jm_getInstance(), :ABOUT), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 2))
        JR.put(this, :OPEN_WEB_URL, Command.jnew("Open Web URL", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 2))
        JR.put(this, :CLOSE_OPTIONS, Command.jnew("Back", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :DISPLAY_OPTIONS, Command.jnew(JR.get(CanvasStrings.jm_getInstance(), :OPTIONS), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 2))
        JR.put(this, :START_TRACE, Command.jnew("Start Trace", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :STOP_TRACE, Command.jnew("Stop Trace", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :DEFAULT_OPTIONS, Command.jnew("Default", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :SHOW_GAME_CANVAS, Command.jnew("Back to Game", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :CLOSE_AND_SHOW_GAME_CANVAS, Command.jnew("Back", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :QUIT_COMMAND, Command.jnew("Quit", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_STOP(), 1))
        JR.put(this, :RESTART_COMMAND, Command.jnew("Restart", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 0))
        JR.put(this, :DISPLAY_SAVE_FORM, Command.jnew("Save To", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 3))
        JR.put(this, :SAVE, Command.jnew("Save", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 3))
        JR.put(this, :DISPLAY_LOAD_FORM, Command.jnew("Load", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 3))
        JR.put(this, :LOAD_FILE, Command.jnew("Load File", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 3))
        JR.put(this, :DELETE_FILE, Command.jnew("Delete File", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :EXIT_COMMAND, Command.jnew("Exit", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_EXIT(), 2))
        JR.put(this, :EXIT_WITHOUT_PROGRESS_COMMAND, Command.jnew("Exit Without Progress", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_EXIT(), 2))
        JR.put(this, :START_COMMAND, Command.jnew(JR.get(CommonStrings.jm_getInstance(), :START), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :CONTINUE_COMMAND, Command.jnew("Continue", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :SELECT_COMMAND, Command.jnew("Select", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :FEATURE_UPDATE, Command.jnew("Feature Update", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :BUY_COMMAND, Command.jnew("BUY", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameCommandsFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameCommandsFactory.jstatic_set_instance(GameCommandsFactory.jnew())
        end
        throw({:jreturn, GameCommandsFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


