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

defmodule GestureOnlyMotionRecognizer do
  def jsuper(), do: MotionRecognizer
def jstatic_index(), do: JR.static_get(__MODULE__, :index, fn -> 0 end)
  def jstatic_set_index(value), do: JR.static_put(__MODULE__, :index, value)
def jstatic_pointCircularPool(), do: JR.static_get(__MODULE__, :pointCircularPool, fn -> GPointCircularPool.jnew(40) end)
  def jstatic_set_pointCircularPool(value), do: JR.static_put(__MODULE__, :pointCircularPool, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :motionGestureRecognizer, nil)
    JR.put(this, :id, 0)
        
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      MotionRecognizer.jinit(this)
      jinitfields(this)
        JR.put(this, :id, JR.postinc(GestureOnlyMotionRecognizer, :index, 1))
        JR.put(this, :motionGestureRecognizer, MotionGestureRecognizer.jnew(JR.get(this, :id)))
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
        JR.lset(f, :point, JR.call(GestureOnlyMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
        JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
        JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
        JR.call(JR.get(this, :motionGestureRecognizer), :jm_processPressedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
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
        JR.lset(f, :point, JR.call(GestureOnlyMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
        JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
        JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
        JR.call(JR.get(this, :motionGestureRecognizer), :jm_processReleasedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
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
        JR.lset(f, :point, JR.call(GestureOnlyMotionRecognizer.jstatic_pointCircularPool(), :jm_getNextInstance, []))
        JR.call(JR.lget(f, :point), :jm_setX, [JR.lget(f, :x)])
        JR.call(JR.lget(f, :point), :jm_setY, [JR.lget(f, :y)])
        JR.call(JR.get(this, :motionGestureRecognizer), :jm_processDraggedMotionEvent, [JR.lget(f, :point), JR.lget(f, :deviceId), JR.lget(f, :modifiers)])
    end)
  end
end


