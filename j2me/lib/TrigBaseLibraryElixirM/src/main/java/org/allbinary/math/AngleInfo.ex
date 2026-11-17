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

defmodule AngleInfo do
  def jsuper(), do: JObject
def jstatic_ANGLE(), do: JR.static_get(__MODULE__, :ANGLE, fn -> "Angle: " end)
  def jstatic_set_ANGLE(value), do: JR.static_put(__MODULE__, :ANGLE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :angleIncrementInfo, nil)
    JR.put(this, :angle, 0)
    JR.put(this, :frameUtil, nil)
        
        JR.put(this, :angle, 0)
        JR.put(this, :frameUtil, FrameUtil.jm_getInstance())
    nil
  end


  def jm_getInstance(p_angleIncrement) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angleIncrement, p_angleIncrement)
        throw({:jreturn, AngleInfo.jnew(JR.call(AngleIncrementInfoFactory.jm_getInstance(), :jm_getAt, [JR.lget(f, :angleIncrement)]))})
    end)
  end


  def jinit(this, p_angleIncrementInfo) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angleIncrementInfo, p_angleIncrementInfo)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :angleIncrementInfo, JR.lget(f, :angleIncrementInfo))
    end)
  end

  def jnew(p_angleIncrementInfo) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angleIncrementInfo)
    this
  end


  def jm_adjustAngle(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
        JR.lset(f, :newAngle, ((JR.call(JR.get(this, :angleIncrementInfo), :jm_getAngleIncrement, []) * JR.lget(f, :frame)) - 90))
        JR.call(this, :jm_setAngle, [JR.int16(JR.call(JR.get(this, :frameUtil), :jm_adjustAngleToFrameAngle, [JR.lget(f, :newAngle)]))])
    end)
  end


  def jm_getAngle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :angle)})
    end)
  end


  def jm_setAngle(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.put(this, :angle, JR.lget(f, :angle))
    end)
  end


  def jm_getAngleIncrementInfo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :angleIncrementInfo)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [AngleInfo.jstatic_ANGLE()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendshort, [JR.get(this, :angle)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(this, :jm_getAngleIncrementInfo, [])])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


