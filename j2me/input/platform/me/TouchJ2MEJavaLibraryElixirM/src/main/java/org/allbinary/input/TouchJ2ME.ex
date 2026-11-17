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
# package org.allbinary.input

#TouchJ2ME
defmodule TouchJ2ME do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :DEVICE_ID, 0)
    JR.put(this, :motionRecognizer, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :DEVICE_ID, 0)
        JR.put(this, :motionRecognizer, AllMotionRecognizer.jnew())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :motionGesturesHandler, JR.call(JR.call(JR.get(this, :motionRecognizer), :jm_getMotionGestureRecognizer, []), :jm_getMotionGesturesHandler, []))
        JR.call(JR.lget(f, :motionGesturesHandler), :jm_addListenerInterface, [GameMotionGestureListener.jnew(MotionGestureReceiveInterfaceFactory.jm_getInstance())])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_pointerDragged(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        try do
            JR.call(JR.get(this, :motionRecognizer), :jm_processDraggedMotionEvent, [JR.lget(f, :x), JR.lget(f, :y), JR.get(this, :DEVICE_ID), 0])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "pointerDragged", JR.lget(f, :e)])
        end
    end)
  end


  def jm_pointerPressed(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        try do
            JR.call(JR.get(this, :motionRecognizer), :jm_processStartMotionEvent, [JR.lget(f, :x), JR.lget(f, :y), JR.get(this, :DEVICE_ID), 0])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "pointerPressed", JR.lget(f, :e)])
        end
    end)
  end


  def jm_pointerReleased(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        try do
            JR.call(JR.get(this, :motionRecognizer), :jm_processEndMotionEvent, [JR.lget(f, :x), JR.lget(f, :y), JR.get(this, :DEVICE_ID), 0])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "pointerReleased", JR.lget(f, :e)])
        end
    end)
  end
end


