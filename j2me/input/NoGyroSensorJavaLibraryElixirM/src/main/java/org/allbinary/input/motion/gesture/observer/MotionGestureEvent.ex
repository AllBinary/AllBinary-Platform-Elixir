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
# package org.allbinary.input.motion.gesture.observer

defmodule MotionGestureEvent do
  def jsuper(), do: AllBinaryEventObject
def jstatic_PREVIOUS(), do: JR.static_get(__MODULE__, :PREVIOUS, fn -> " Previous: " end)
  def jstatic_set_PREVIOUS(value), do: JR.static_put(__MODULE__, :PREVIOUS, value)
def jstatic_HASHCODE(), do: JR.static_get(__MODULE__, :HASHCODE, fn -> " hashcode: " end)
  def jstatic_set_HASHCODE(value), do: JR.static_put(__MODULE__, :HASHCODE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :motionGesture, nil)
    JR.put(this, :id, 0)
    JR.put(this, :previousPoint, nil)
    JR.put(this, :currentPoint, nil)
    JR.put(this, :commonLabels, nil)
        JR.put(this, :motionGesture, JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION))
        
        JR.put(this, :previousPoint, JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO))
        JR.put(this, :currentPoint, JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO))
        JR.put(this, :commonLabels, CommonLabels.jm_getInstance())
    nil
  end


  def jinit(this, p_source, p_id, p_motionGesture) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :source, p_source)
      JR.lset(f, :id, p_id)
      JR.lset(f, :motionGesture, p_motionGesture)
        AllBinaryEventObject.jinit(this, JR.lget(f, :source))
        MotionGestureEvent.jinitfields(this)
        JR.put(this, :id, JR.lget(f, :id))
        JR.call(this, :jm_setMotionGesture, [JR.lget(f, :motionGesture)])
    end)
  end

  def jnew(p_source, p_id, p_motionGesture) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_source, p_id, p_motionGesture)
    this
  end


  def jm_getMotionGesture(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :motionGesture)})
    end)
  end


  def jm_setMotionGesture(this, p_motionGesture) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGesture, p_motionGesture)
        JR.put(this, :motionGesture, JR.lget(f, :motionGesture))
    end)
  end


  def jm_getPreviousPoint(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :previousPoint)})
    end)
  end


  def jm_setPreviousPoint(this, p_previousPoint) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :previousPoint, p_previousPoint)
        JR.put(this, :previousPoint, JR.lget(f, :previousPoint))
    end)
  end


  def jm_getCurrentPoint(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentPoint)})
    end)
  end


  def jm_setCurrentPoint(this, p_currentPoint) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoint, p_currentPoint)
        JR.put(this, :currentPoint, JR.lget(f, :currentPoint))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :motionGesture)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonLabels), :CURRENT)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :currentPoint)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [MotionGestureEvent.jstatic_PREVIOUS()])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :previousPoint)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [MotionGestureEvent.jstatic_HASHCODE()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end
end


