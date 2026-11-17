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

defmodule RotationAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :frameUtil, nil)
    JR.put(this, :directionUtil, nil)
    JR.put(this, :angleInfo, nil)
    JR.put(this, :circularIndexUtil, nil)
        JR.put(this, :frameUtil, FrameUtil.jm_getInstance())
        JR.put(this, :directionUtil, DirectionUtil.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_angleInfo, p_circularIndexUtil, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :circularIndexUtil, p_circularIndexUtil)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        RotationAnimation.jinitfields(this)
        JR.put(this, :angleInfo, JR.lget(f, :angleInfo))
        JR.put(this, :circularIndexUtil, JR.lget(f, :circularIndexUtil))
    end)
  end

  def jnew(p_angleInfo, p_circularIndexUtil, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angleInfo, p_circularIndexUtil, p_animationBehavior)
    this
  end


  def jm_nextRotationX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_previousRotationX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_nextRotation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])])
    end)
  end


  def jm_previousRotation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [JR.call(JR.get(this, :circularIndexUtil), :jm_previous, [])])
    end)
  end


  def jm_nextRotationZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_previousRotationZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [JR.lget(f, :index)])
        JR.lset(f, :newFrame, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [JR.lget(f, :newFrame)])
    end)
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


  def jm_adjustFrameToAngle(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.call(this, :jm_adjustFrame, [JR.call(JR.lget(f, :angle), :jm_getValue, [])])
    end)
  end


  def jm_adjustFrame(this, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
        JR.call(this, :jm_setFrame, [JR.call(JR.get(this, :frameUtil), :jm_getFrameForAngle, [JR.lget(f, :angle), JR.int32(JR.call(JR.call(JR.get(this, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, []))])])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :circularIndexUtil), :jm_getSize, [])})
    end)
  end


  def jm_getAngleInfoP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :angleInfo)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [IndexedAnimation.jm_toString(this)]), :jm_append, ["circularIndexUtil: "]), :jm_append, [JR.call(JR.get(this, :circularIndexUtil), :jm_toString, [])]), :jm_append, ["angleInfo: "]), :jm_append, [JR.call(JR.get(this, :angleInfo), :jm_toString, [])]), :jm_toString, [])})
    end)
  end
end


