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
# package org.allbinary.input.motion

defmodule AllMotionRecognizer do
  def jsuper(), do: MotionRecognizer
def jstatic_index(), do: JR.static_get(__MODULE__, :index, fn -> 0 end)
  def jstatic_set_index(value), do: JR.static_put(__MODULE__, :index, value)
def jstatic_pointCircularPool(), do: JR.static_get(__MODULE__, :pointCircularPool, fn -> GPointCircularPool.jnew(40) end)
  def jstatic_set_pointCircularPool(value), do: JR.static_put(__MODULE__, :pointCircularPool, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :motionGestureRecognizer, nil)
    JR.put(this, :touchButtonProcessing, false)
    JR.put(this, :touchButtonRecognizer, nil)
    JR.put(this, :id, 0)
    JR.put(this, :lastX, 0)
    JR.put(this, :lastY, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :touchButtonProcessing, false)
        
        
        JR.put(this, :lastX, 0)
        JR.put(this, :lastY, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      MotionRecognizer.jinit(this)
      jinitfields(this)
        JR.put(this, :id, JR.postinc(AllMotionRecognizer, :index, 1))
        JR.put(this, :motionGestureRecognizer, MotionGestureRecognizer.jnew(JR.get(this, :id)))
        JR.put(this, :touchButtonRecognizer, TouchButtonRecognizer.jnew())
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_processStartMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        if JR.call(JR.get(this, :touchButtonRecognizer), :jm_pressTouchButtonInput, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :deviceId)]) do
            JR.put(this, :touchButtonProcessing, true)
        end
        if !JR.get(this, :touchButtonProcessing) do
            JR.lset(f, :point, JR.call(AllMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
            JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
            JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
            JR.call(JR.get(this, :motionGestureRecognizer), :jm_processPressedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
        end
    end)
  end


  def jm_processEndMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        if JR.call(JR.get(this, :touchButtonRecognizer), :jm_releaseTouchButtonInput, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :deviceId)]) do
            nil
        end
        if !JR.get(this, :touchButtonProcessing) do
            JR.lset(f, :point, JR.call(AllMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
            JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
            JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
            JR.call(JR.get(this, :motionGestureRecognizer), :jm_processReleasedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
        end
        if JR.get(this, :touchButtonProcessing) do
            JR.put(this, :touchButtonProcessing, false)
        end
    end)
  end


  def jm_processDraggedMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        if JR.get(this, :touchButtonProcessing) do
            JR.call(JR.get(this, :touchButtonRecognizer), :jm_pressTouchButtonInput, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :deviceId)])
        end
        if !JR.get(this, :touchButtonProcessing) do
            JR.lset(f, :point, JR.call(AllMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
            JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
            JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
            JR.call(JR.get(this, :motionGestureRecognizer), :jm_processDraggedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
        end
    end)
  end


  def jm_processMovedMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        if ((JR.lget(f, :x) != JR.get(this, :lastX)) || (JR.lget(f, :y) != JR.get(this, :lastY))) do
            JR.put(this, :lastX, JR.lget(f, :x))
            JR.put(this, :lastY, JR.lget(f, :y))
            JR.lset(f, :point, JR.call(AllMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
            JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
            JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
            JR.call(JR.get(this, :motionGestureRecognizer), :jm_processMovedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
        end
    end)
  end


  def jm_processScrolledMotionEvent(this, p_x, p_y, p_deviceId, p_modifiers) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :modifiers, p_modifiers)
        JR.lset(f, :point, JR.call(AllMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
        JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
        JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
        JR.call(JR.get(this, :motionGestureRecognizer), :jm_processScrolledMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
    end)
  end


  def jm_getMotionGestureRecognizer(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :motionGestureRecognizer)})
    end)
  end
end


