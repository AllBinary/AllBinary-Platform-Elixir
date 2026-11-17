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
# package org.allbinary.animation.image

defmodule AdjustedImageBaseRotationAnimation do
  def jsuper(), do: ImageBaseRotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        JR.put(this, :dx, 0)
        JR.put(this, :dy, 0)
    nil
  end


  def jinit(this, p_image, p_angleInfo, p_totalAngle, p_dx, p_dy, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageBaseRotationAnimation.jinit(this, JR.lget(f, :image), JR.lget(f, :angleInfo), JR.lget(f, :totalAngle), JR.lget(f, :animationBehavior))
        AdjustedImageBaseRotationAnimation.jinitfields(this)
        JR.call(this, :jm_init, [JR.lget(f, :dx), JR.lget(f, :dy)])
    end)
  end

  def jnew(p_image, p_angleInfo, p_totalAngle, p_dx, p_dy, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_angleInfo, p_totalAngle, p_dx, p_dy, p_animationBehavior)
    this
  end


  def jm_init(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
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
        ImageBaseRotationAnimation.jm_paintXY(this, JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :dx)), JR.int32(JR.lget(f, :y) + JR.get(this, :dy)))
    end)
  end
end


