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

defmodule FormInputProcessor do
  def jsuper(), do: InputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :gameKeyEventFactory, nil)
    JR.put(this, :downKeyEventHandler, nil)
    JR.put(this, :upGameKeyEventHandler, nil)
    JR.put(this, :inputFactory, nil)
    JR.put(this, :platformKeyFactory, nil)
    JR.put(this, :allBinaryGameCanvas, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :gameKeyEventFactory, GameKeyEventFactory.jm_getInstance())
        JR.put(this, :downKeyEventHandler, DownKeyEventHandler.jm_getInstance())
        JR.put(this, :upGameKeyEventHandler, UpGameKeyEventHandler.jm_getInstance())
        JR.put(this, :inputFactory, InputFactory.jm_getInstance())
        JR.put(this, :platformKeyFactory, PlatformKeyFactory.jm_getInstance())
        
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
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :inputFactory), :KEY_CODE_LABEL)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_append, [JR.get(JR.get(this, :inputFactory), :DEVICE_ID_LABEL)]), :jm_appendint, [JR.lget(f, :deviceId)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :KEY_PRESSED))
            JR.lset(f, :input, JR.call(JR.get(this, :inputFactory), :jm_getInstanceById, [JR.lget(f, :keyCode)]))
            JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [JR.get(this, :allBinaryGameCanvas), JR.lget(f, :input)]))
            JR.call(JR.get(this, :downKeyEventHandler), :jm_fireEventForGameKeyEvent, [JR.lget(f, :gameKeyEvent)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT), JR.lget(f, :e)])
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
        try do
            JR.lset(f, :input, JR.call(JR.get(this, :inputFactory), :jm_getInstanceById, [JR.lget(f, :keyCode)]))
            if JR.call(JR.get(this, :platformKeyFactory), :jm_isEnter, [JR.lget(f, :input)]) do
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :inputFactory), :KEY_CODE_LABEL)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_append, [JR.get(JR.get(this, :inputFactory), :DEVICE_ID_LABEL)]), :jm_appendint, [JR.lget(f, :deviceId)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :KEY_RELEASED))
                JR.lset(f, :gameKey, JR.get(GameKeyFactory.jm_getInstance(), :KEY_NUM0))
                JR.lset(f, :gameKeyEventSourceInterface, JR.lget(f, :canvas))
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [JR.lget(f, :gameKeyEventSourceInterface), JR.lget(f, :gameKey)]))
                JR.call(JR.get(this, :upGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                JR.call(JR.call(JR.get(this, :upGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end
end


