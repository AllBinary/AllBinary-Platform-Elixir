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
# package org.allbinary.animation

defmodule VectorRotationAnimation do
  def jsuper(), do: VectorBaseRotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_currentPoints, p_basicColor, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        VectorBaseRotationAnimation.jinit(this, AngleInfo.jm_getInstance(JR.int16(((JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE) / JR.alength(JR.lget(f, :currentPoints)))))), JR.lget(f, :currentPoints), JR.lget(f, :basicColor), JR.lget(f, :animationBehavior))
        VectorRotationAnimation.jinitfields(this)
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [JR.call(this, :jm_getFrame, [])])
    end)
  end

  def jnew(p_currentPoints, p_basicColor, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_currentPoints, p_basicColor, p_animationBehavior)
    this
  end


  def jm_setFrameByDirection(this, p_direction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
        JR.lset(f, :angle, JR.call(JR.get(this, :directionUtil), :jm_getFrameAngle, [JR.lget(f, :direction)]))
        JR.call(this, :jm_adjustFrameToAngle, [JR.lget(f, :angle)])
    end)
  end


  def jm_setFrameToAngle(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.call(this, :jm_adjustFrameToAngle, [JR.lget(f, :angle)])
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        VectorBaseRotationAnimation.jm_setFrame(this, JR.lget(f, :index))
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [JR.call(this, :jm_getFrame, [])])
    end)
  end


  def jm_adjustFrame(this, p_newAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newAngle, p_newAngle)
        JR.call(this, :jm_setFrame, [JR.call(JR.get(this, :frameUtil), :jm_getFrameForAngle, [JR.lget(f, :newAngle), JR.int32(JR.call(JR.call(JR.get(this, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, []))])])
    end)
  end


  def jm_adjustFrameToAngle(this, p_newAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newAngle, p_newAngle)
        JR.call(this, :jm_adjustFrame, [JR.call(JR.lget(f, :newAngle), :jm_getValue, [])])
    end)
  end
end


