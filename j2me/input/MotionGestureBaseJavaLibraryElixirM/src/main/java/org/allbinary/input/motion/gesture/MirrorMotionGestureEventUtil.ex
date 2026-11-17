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
# package org.allbinary.input.motion.gesture

defmodule MirrorMotionGestureEventUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MirrorMotionGestureEventUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :motionEventCircularPool, nil)
        
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :motionEventCircularPool, MotionEventCircularPool.jm_createPool(J.Integer.jstatic_MAX_VALUE()))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_mirrorVerticle(this, p_motionGestureEvent, p_halfWidth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
      JR.lset(f, :halfWidth, p_halfWidth)
        JR.lset(f, :event, JR.call(JR.get(this, :motionEventCircularPool), :jm_getInstance, [JR.call(JR.lget(f, :motionGestureEvent), :jm_getMotionGesture, [])]))
        JR.lset(f, :previousNewX, JR.call(this, :jm_getNewX, [JR.call(JR.call(JR.lget(f, :motionGestureEvent), :jm_getPreviousPoint, []), :jm_getX, []), JR.lget(f, :halfWidth)]))
        JR.lset(f, :currentNewX, JR.call(this, :jm_getNewX, [JR.call(JR.call(JR.lget(f, :motionGestureEvent), :jm_getCurrentPoint, []), :jm_getX, []), JR.lget(f, :halfWidth)]))
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :mirroredPreviousPoint, JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :previousNewX), JR.call(JR.call(JR.lget(f, :motionGestureEvent), :jm_getPreviousPoint, []), :jm_getY, [])]))
        JR.lset(f, :mirroredCurrentPoint, JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :currentNewX), JR.call(JR.call(JR.lget(f, :motionGestureEvent), :jm_getCurrentPoint, []), :jm_getY, [])]))
        JR.call(JR.lget(f, :event), :jm_setPreviousPoint, [JR.lget(f, :mirroredPreviousPoint)])
        JR.call(JR.lget(f, :event), :jm_setCurrentPoint, [JR.lget(f, :mirroredCurrentPoint)])
        throw({:jreturn, JR.lget(f, :event)})
    end)
  end


  def jm_getNewX(this, p_x, p_halfWidth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :halfWidth, p_halfWidth)
        JR.lset(f, :newX, 0)
        if (JR.lget(f, :x) > JR.lget(f, :halfWidth)) do
            JR.lset(f, :newX, JR.int32(JR.lget(f, :halfWidth) - (JR.int32(JR.lget(f, :x) - JR.lget(f, :halfWidth)))))
        else
            JR.lset(f, :newX, JR.int32(JR.lget(f, :halfWidth) + (JR.int32(JR.lget(f, :halfWidth) - JR.lget(f, :x)))))
        end
        throw({:jreturn, JR.lget(f, :newX)})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MirrorMotionGestureEventUtil.jstatic_instance()})
    end)
  end
end


