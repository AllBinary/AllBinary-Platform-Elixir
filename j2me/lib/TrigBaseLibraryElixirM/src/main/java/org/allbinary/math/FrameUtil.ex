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

defmodule FrameUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> FrameUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, FrameUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getFrameForAngle(this, p_angle, p_angleIncrement) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :angleIncrement, p_angleIncrement)
        throw({:jreturn, div(JR.call(this, :jm_adjustAngleToFrameAngle, [JR.int32(JR.lget(f, :angle))]), JR.lget(f, :angleIncrement))})
    end)
  end


  def jm_getFrameAngle(this, p_frame, p_angleIncrement) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
      JR.lset(f, :angleIncrement, p_angleIncrement)
        JR.lset(f, :frameAngle, JR.int32(JR.int32(JR.lget(f, :angleIncrement) * JR.lget(f, :frame)) - 90))
        throw({:jreturn, JR.call(this, :jm_adjustAngleToFrameAngle, [JR.lget(f, :frameAngle)])})
    end)
  end


  def jm_adjustAngleToFrameAngle(this, p_currentAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentAngle, p_currentAngle)
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        if (JR.lget(f, :currentAngle) > 359) do
            JR.lset(f, :currentAngle, ((JR.lget(f, :currentAngle) - JR.get(JR.lget(f, :angleFactory), :TOTAL_ANGLE))))
            JR.jwhile(fn -> (JR.lget(f, :currentAngle) > 359) end, fn ->
                JR.lset(f, :currentAngle, ((JR.lget(f, :currentAngle) - JR.get(JR.lget(f, :angleFactory), :TOTAL_ANGLE))))
            end)
        end
        if (JR.lget(f, :currentAngle) < 0) do
            JR.lset(f, :currentAngle, ((JR.lget(f, :currentAngle) + JR.get(JR.lget(f, :angleFactory), :TOTAL_ANGLE))))
            JR.jwhile(fn -> (JR.lget(f, :currentAngle) < 0) end, fn ->
                JR.lset(f, :currentAngle, ((JR.lget(f, :currentAngle) + JR.get(JR.lget(f, :angleFactory), :TOTAL_ANGLE))))
            end)
        end
        throw({:jreturn, JR.lget(f, :currentAngle)})
    end)
  end
end


