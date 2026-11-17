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
# package org.allbinary.math

defmodule AngleIncrementInfo do
  def jsuper(), do: JObject
def jstatic_INCREMENT(), do: JR.static_get(__MODULE__, :INCREMENT, fn -> "Inc: " end)
  def jstatic_set_INCREMENT(value), do: JR.static_put(__MODULE__, :INCREMENT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :angleIncrement, 0)
    JR.put(this, :DOWN_FRAME, nil)
    JR.put(this, :UP_FRAME, nil)
    JR.put(this, :LEFT_FRAME, nil)
    JR.put(this, :RIGHT_FRAME, nil)
    JR.put(this, :frameUtil, nil)
        
        
        
        
        
        JR.put(this, :frameUtil, FrameUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_angleIncrement) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angleIncrement, p_angleIncrement)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :angleIncrement, JR.lget(f, :angleIncrement))
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.put(this, :DOWN_FRAME, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [(JR.call(JR.get(JR.lget(f, :angleFactory), :DOWN), :jm_getValue, []) / JR.get(this, :angleIncrement))]))
        JR.put(this, :UP_FRAME, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.int32(JR.call(JR.get(JR.lget(f, :angleFactory), :UP), :jm_getValue, []))]))
        JR.put(this, :LEFT_FRAME, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [(JR.call(JR.get(JR.lget(f, :angleFactory), :LEFT), :jm_getValue, []) / JR.get(this, :angleIncrement))]))
        JR.put(this, :RIGHT_FRAME, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [(JR.call(JR.get(JR.lget(f, :angleFactory), :RIGHT), :jm_getValue, []) / JR.get(this, :angleIncrement))]))
    end)
  end

  def jnew(p_angleIncrement) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angleIncrement)
    this
  end


  def jm_getFrameAngle(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
        throw({:jreturn, JR.call(JR.get(this, :frameUtil), :jm_getFrameAngle, [JR.lget(f, :frame), JR.int32(JR.get(this, :angleIncrement))])})
    end)
  end


  def jm_getAngleIncrement(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :angleIncrement)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [AngleIncrementInfo.jstatic_INCREMENT()]), :jm_appendshort, [JR.get(this, :angleIncrement)]), :jm_toString, [])})
    end)
  end


  def jm_getClosestGeneralDirection(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.lset(f, :closestDirection, JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [360]))
        if ((JR.call(JR.get(this, :UP_FRAME), :jm_intValue, []) - JR.lget(f, :angle)) < (JR.call(JR.lget(f, :closestDirection), :jm_intValue, []) - JR.lget(f, :angle))) do
            JR.lset(f, :closestDirection, JR.get(this, :UP_FRAME))
        end
        if ((JR.call(JR.get(this, :DOWN_FRAME), :jm_intValue, []) - JR.lget(f, :angle)) < (JR.call(JR.lget(f, :closestDirection), :jm_intValue, []) - JR.lget(f, :angle))) do
            JR.lset(f, :closestDirection, JR.get(this, :DOWN_FRAME))
        end
        if ((JR.call(JR.get(this, :LEFT_FRAME), :jm_intValue, []) - JR.lget(f, :angle)) < (JR.call(JR.lget(f, :closestDirection), :jm_intValue, []) - JR.lget(f, :angle))) do
            JR.lset(f, :closestDirection, JR.get(this, :LEFT_FRAME))
        end
        if ((JR.call(JR.get(this, :RIGHT_FRAME), :jm_intValue, []) - JR.lget(f, :angle)) < (JR.call(JR.lget(f, :closestDirection), :jm_intValue, []) - JR.lget(f, :angle))) do
            JR.lset(f, :closestDirection, JR.get(this, :RIGHT_FRAME))
        end
        throw({:jreturn, JR.call(JR.lget(f, :closestDirection), :jm_intValue, [])})
    end)
  end
end


