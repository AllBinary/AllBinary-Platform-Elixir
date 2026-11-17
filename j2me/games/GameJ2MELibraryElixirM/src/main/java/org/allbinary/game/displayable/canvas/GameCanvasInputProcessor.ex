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
# package org.allbinary.game.displayable.canvas

defmodule GameCanvasInputProcessor do
  def jsuper(), do: InputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :allBinaryGameCanvas, nil)
    JR.put(this, :downGameKeyEventHandler, nil)
    JR.put(this, :upGameKeyEventHandler, nil)
    JR.put(this, :downKeyEventHandler, nil)
    JR.put(this, :smallIntegerSingletonFactory, nil)
    JR.put(this, :inputToGameKeyMapping, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :gameKeyEventFactory, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :downGameKeyEventHandler, DownGameKeyEventHandler.jm_getInstance())
        JR.put(this, :upGameKeyEventHandler, UpGameKeyEventHandler.jm_getInstance())
        JR.put(this, :downKeyEventHandler, DownKeyEventHandler.jm_getInstance())
        JR.put(this, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.put(this, :inputToGameKeyMapping, JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_getInputMapping, []))
        JR.put(this, :NONE, JR.get(GameKeyFactory.jm_getInstance(), :NONE))
        JR.put(this, :gameKeyEventFactory, GameKeyEventFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
      InputProcessor.jinit(this)
      jinitfields(this)
        JR.put(this, :allBinaryGameCanvas, JR.lget(f, :allBinaryGameCanvas))
        JR.call(JR.get(this, :inputToGameKeyMapping), :jm_init, [JR.get(this, :allBinaryGameCanvas)])
    end)
  end

  def jnew(p_allBinaryGameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_allBinaryGameCanvas)
    this
  end


  def jm_keyPressedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        try do
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [JR.get(this, :allBinaryGameCanvas), JR.lget(f, :keyCode)]))
            if (JR.lget(f, :gameKey) != JR.get(this, :NONE)) do
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [JR.get(this, :allBinaryGameCanvas), JR.lget(f, :gameKey)]))
                JR.call(JR.get(this, :downGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                JR.call(JR.call(JR.get(this, :downGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :NO_KEY)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT)])
            end
            JR.lset(f, :keyCodeAsInteger, JR.call(JR.get(this, :smallIntegerSingletonFactory), :jm_getAtNoThrow, [JR.lget(f, :keyCode)]))
            JR.call(JR.get(this, :downKeyEventHandler), :jm_fireEventI, [JR.lget(f, :keyCodeAsInteger)])
            JR.call(JR.call(JR.get(this, :downKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEventI, [JR.lget(f, :keyCodeAsInteger)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Key Event Error", this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_keyReleasedByDevice(this, p_canvas, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        JR.call(this, :jm_removeGameKeyEvent, [JR.lget(f, :canvas), JR.lget(f, :keyCode), JR.lget(f, :deviceId), false])
    end)
  end


  def jm_removeGameKeyEvent(this, p_canvas, p_keyCode, p_deviceId, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :repeated, p_repeated)
        try do
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [JR.lget(f, :canvas), JR.lget(f, :keyCode)]))
            if (JR.lget(f, :gameKey) != JR.get(this, :NONE)) do
                JR.lset(f, :gameKeyEventSourceInterface, JR.lget(f, :canvas))
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [JR.lget(f, :gameKeyEventSourceInterface), JR.lget(f, :gameKey)]))
                JR.call(JR.get(this, :upGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                JR.call(JR.call(JR.get(this, :upGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :NO_KEY)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :REMOVE_KEY_EVENT)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Key Event Error", this, JR.get(JR.get(this, :gameInputStrings), :REMOVE_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end
end


