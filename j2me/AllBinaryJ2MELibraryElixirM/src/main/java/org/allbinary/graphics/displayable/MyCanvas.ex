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
# package org.allbinary.graphics.displayable

defmodule MyCanvas do
  def jsuper(), do: Canvas

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :canvasStrings, nil)
    JR.put(this, :stringUtil, nil)
    JR.put(this, :displayInfo, nil)
    JR.put(this, :name, nil)
    JR.put(this, :childNameList, nil)
    JR.put(this, :commandStack, nil)
    JR.put(this, :commandListener, nil)
    JR.put(this, :paused, false)
    JR.put(this, :touchME, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :canvasStrings, CanvasStrings.jm_getInstance())
        JR.put(this, :stringUtil, StringUtil.jm_getInstance())
        JR.put(this, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        
        
        
        JR.put(this, :commandListener, NullCommandListener.jstatic_NULL_COMMAND_LISTENER())
        JR.put(this, :paused, false)
        JR.put(this, :touchME, TouchJ2ME.jnew())
    nil
  end


  def jinit(this, p_name, p_childNameList) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :childNameList, p_childNameList)
      Canvas.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.call(JR.get(this, :displayInfo), :jm_update, [this, JR.get(JR.get(this, :canvasStrings), :CONSTRUCTOR)])
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :childNameList, JR.lget(f, :childNameList))
        JR.put(this, :commandStack, JR.call(StdUtil.jm_getInstance(), :jm_createStack, []))
    end)
  end

  def jnew(p_name, p_childNameList) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_childNameList)
    this
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Canvas.jm_getWidth(this)})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Canvas.jm_getHeight(this)})
    end)
  end


  def jm_setFullScreenMode(this, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
        Canvas.jm_setFullScreenMode(this, JR.lget(f, :mode))
        JR.call(JR.get(this, :displayInfo), :jm_update, [this, JR.get(JR.get(this, :canvasStrings), :SET_FULL_SCREEN_MODE)])
    end)
  end


  def jm_sizeChanged(this, p_w, p_h) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :w, p_w)
      JR.lset(f, :h, p_h)
        JR.call(JR.get(this, :displayInfo), :jm_update, [this, JR.get(JR.get(this, :canvasStrings), :SIZE_CHANGED)])
    end)
  end


  def jm_getCommandStack(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :commandStack)})
    end)
  end


  def jm_isCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        throw({:jreturn, JR.call(JR.get(this, :commandStack), :jm_contains, [JR.lget(f, :command)])})
    end)
  end


  def jm_addCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        if !JR.call(JR.get(this, :commandStack), :jm_contains, [JR.lget(f, :command)]) do
            JR.call(JR.get(this, :commandStack), :jm_push, [JR.lget(f, :command)])
            Canvas.jm_addCommand(this, JR.lget(f, :command))
        end
    end)
  end


  def jm_removeCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        JR.call(JR.get(this, :commandStack), :jm_removeElement, [JR.lget(f, :command)])
        Canvas.jm_removeCommand(this, JR.lget(f, :command))
    end)
  end


  def jm_removeAllCommands(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :size, JR.call(JR.get(this, :commandStack), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            Canvas.jm_removeCommand(this, JR.call(JR.get(this, :commandStack), :jm_pop, []))
        end)
    end)
  end


  def jm_setCommandListener(this, p_l) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :l, p_l)
        Canvas.jm_setCommandListener(this, JR.lget(f, :l))
        JR.put(this, :commandListener, JR.lget(f, :l))
    end)
  end


  def jm_getCustomCommandListener(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :commandListener)})
    end)
  end


  def jm_isPaused(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :paused)})
    end)
  end


  def jm_removePauseCommand(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_removeCommand, [JR.get(MyCommandsFactory.jm_getInstance(), :PAUSE_COMMAND)])
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :canvasStrings), :PAUSE)])
        JR.call(this, :jm_removePauseCommand, [])
        JR.call(this, :jm_addCommand, [JR.get(MyCommandsFactory.jm_getInstance(), :RESUME_COMMAND)])
        JR.call(this, :jm_setPaused, [true])
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :canvasStrings), :UN_PAUSE)])
        JR.call(this, :jm_removeCommand, [JR.get(MyCommandsFactory.jm_getInstance(), :RESUME_COMMAND)])
        JR.call(this, :jm_addCommand, [JR.get(MyCommandsFactory.jm_getInstance(), :PAUSE_COMMAND)])
        JR.call(this, :jm_setPaused, [false])
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :displayInfo), :jm_process, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_draw(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_hasChild(this, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayable, p_displayable)
        throw({:jreturn, JR.call(JR.get(this, :childNameList), :jm_contains, [JR.get(JR.lget(f, :displayable), :name)])})
    end)
  end


  def jm_destroy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Destroyed MyCanvas", this, "destroy"])
    end)
  end


  def jm_setPaused(this, p_isPaused) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isPaused, p_isPaused)
        JR.put(this, :paused, JR.lget(f, :isPaused))
    end)
  end


  def jm_keyPressedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        nil
    end)
  end


  def jm_keyRepeatedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        nil
    end)
  end


  def jm_keyReleasedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        nil
    end)
  end


  def jm_pointerDragged(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :touchME), :jm_pointerDragged, [JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_pointerPressed(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :touchME), :jm_pointerPressed, [JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_pointerReleased(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :touchME), :jm_pointerReleased, [JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_nextSong(this, p_nextSongSound, p_leftVolume, p_rightVolume) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :nextSongSound, p_nextSongSound)
      JR.lset(f, :leftVolume, p_leftVolume)
      JR.lset(f, :rightVolume, p_rightVolume)
        nil
    end)
  end
end


