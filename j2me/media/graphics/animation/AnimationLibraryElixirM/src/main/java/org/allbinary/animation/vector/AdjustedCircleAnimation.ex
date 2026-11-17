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
# package org.allbinary.animation.vector

defmodule AdjustedCircleAnimation do
  def jsuper(), do: CircleAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :xAdjustment, 0)
    JR.put(this, :yAdjustment, 0)
        JR.put(this, :xAdjustment, 0)
        JR.put(this, :yAdjustment, 0)
    nil
  end


  def jm_createAnimation(p_width, p_height, p_xAdjustment, p_yAdjustment, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :xAdjustment, p_xAdjustment)
      JR.lset(f, :yAdjustment, p_yAdjustment)
      JR.lset(f, :basicColor, p_basicColor)
        JR.lset(f, :adjustedCircleAnimation, AdjustedCircleAnimation.jnew(JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :basicColor)))
        JR.call(JR.lget(f, :adjustedCircleAnimation), :jm_initXY, [JR.lget(f, :xAdjustment), JR.lget(f, :yAdjustment)])
        throw({:jreturn, JR.lget(f, :adjustedCircleAnimation)})
    end)
  end


  def jm_createW(p_width, p_height, p_innerWidth, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :innerWidth, p_innerWidth)
      JR.lset(f, :basicColor, p_basicColor)
        JR.lset(f, :adjustedCircleAnimation, AdjustedCircleAnimation.jnew(JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :basicColor)))
        JR.call(JR.lget(f, :adjustedCircleAnimation), :jm_init, [JR.lget(f, :innerWidth)])
        throw({:jreturn, JR.lget(f, :adjustedCircleAnimation)})
    end)
  end


  def jinit(this, p_width, p_height, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :basicColor, p_basicColor)
        CircleAnimation.jinit(this, JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :basicColor))
        AdjustedCircleAnimation.jinitfields(this)
    end)
  end

  def jnew(p_width, p_height, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_width, p_height, p_basicColor)
    this
  end


  def jm_initXY(this, p_xAdjustment, p_yAdjustment) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :xAdjustment, p_xAdjustment)
      JR.lset(f, :yAdjustment, p_yAdjustment)
        JR.put(this, :xAdjustment, JR.lget(f, :xAdjustment))
        JR.put(this, :yAdjustment, JR.lget(f, :yAdjustment))
    end)
  end


  def jm_init(this, p_innerWidth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :innerWidth, p_innerWidth)
        if AndroidUtil.jm_isAndroid() do
            JR.lset(f, :widthPortion, (div((JR.int32((div(JR.lget(f, :innerWidth), 3)) * 10)), 7)))
            JR.put(this, :xAdjustment, -(((Bitwise.bsr(JR.get(this, :width), 1)) - JR.lget(f, :widthPortion))))
            JR.put(this, :yAdjustment, JR.get(this, :xAdjustment))
        else
            JR.put(this, :xAdjustment, -(((Bitwise.bsr(JR.get(this, :width), 1)) - JR.lget(f, :innerWidth))))
            JR.put(this, :yAdjustment, JR.get(this, :xAdjustment))
        end
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, []), JR.call(this, :jm_getColor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawArc, [JR.int32(JR.lget(f, :x) + JR.get(this, :xAdjustment)), JR.int32(JR.lget(f, :y) + JR.get(this, :yAdjustment)), JR.get(this, :width), JR.get(this, :height), 0, JR.get(this, :TOTAL_ANGLE)])
    end)
  end
end


