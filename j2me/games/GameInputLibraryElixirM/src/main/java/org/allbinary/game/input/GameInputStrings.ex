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
# package org.allbinary.game.input

defmodule GameInputStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameInputStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :PROCESS_INPUT, nil)
    JR.put(this, :KEY_PRESSED, nil)
    JR.put(this, :KEY_RELEASED, nil)
    JR.put(this, :KEY_REPEATED, nil)
    JR.put(this, :ON_PRESS_GAME_KEY, nil)
    JR.put(this, :ON_DOWN_GAME_KEY, nil)
    JR.put(this, :ON_UP_GAME_KEY, nil)
    JR.put(this, :NO_KEY, nil)
    JR.put(this, :ADD_KEY_EVENT, nil)
    JR.put(this, :REMOVE_KEY_EVENT, nil)
    JR.put(this, :STRAFE_LEFT, nil)
    JR.put(this, :STRAFE_RIGHT, nil)
    JR.put(this, :PROCESS_MOTION_INPUT, nil)
    JR.put(this, :UDPATE_CURRENT_TOUCH_INPUT_FACTORY, nil)
    JR.put(this, :ENABLE_PLAYER_GAME_INPUTS, nil)
    JR.put(this, :ENABLE_PLAYER_GAME_INPUT, nil)
        JR.put(this, :PROCESS_INPUT, "processInput")
        JR.put(this, :KEY_PRESSED, "keyPressed")
        JR.put(this, :KEY_RELEASED, "keyReleased")
        JR.put(this, :KEY_REPEATED, "keyRepeated")
        JR.put(this, :ON_PRESS_GAME_KEY, "onPressGameKeyEvent")
        JR.put(this, :ON_DOWN_GAME_KEY, "onDownGameKeyEvent")
        JR.put(this, :ON_UP_GAME_KEY, "onUpGameKeyEvent")
        JR.put(this, :NO_KEY, "Key Code Not Mapped For Game: ")
        JR.put(this, :ADD_KEY_EVENT, "addGameKeyEvent")
        JR.put(this, :REMOVE_KEY_EVENT, "removeGameKeyEvent")
        JR.put(this, :STRAFE_LEFT, "strafeLeft")
        JR.put(this, :STRAFE_RIGHT, "strafeRight")
        JR.put(this, :PROCESS_MOTION_INPUT, "processMotionInput")
        JR.put(this, :UDPATE_CURRENT_TOUCH_INPUT_FACTORY, "updateCurrentTouchInputFactory")
        JR.put(this, :ENABLE_PLAYER_GAME_INPUTS, "Enabling PlayerGameInputs: ")
        JR.put(this, :ENABLE_PLAYER_GAME_INPUT, "Enabling PlayerGameInput: ")
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInputStrings.jstatic_instance()})
    end)
  end
end


