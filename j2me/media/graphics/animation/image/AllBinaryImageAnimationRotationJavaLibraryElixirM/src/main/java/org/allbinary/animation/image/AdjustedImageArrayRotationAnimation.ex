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

#TWB - Adjustments should be done in the resource creation and not at the animation level
defmodule AdjustedImageArrayRotationAnimation do
  def jsuper(), do: ImageArrayRotationAnimation

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


  def jm_createAdjustedImageArrayRotationAnimationInfo(p_anyType, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        JR.lset(f, :imageRotationAnimationInfo, JR.lget(f, :anyType))
        throw({:jreturn, AdjustedImageArrayRotationAnimation.jnew(JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getImageArray, []), JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getAngleInfoP, []), JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getTotalAngle, []), JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getDx, []), JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getDy, []), JR.lget(f, :animationBehavior))})
    end)
  end


  def jm_createAnimation(p_imageArray, p_angleInfo, p_totalAngle, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        throw({:jreturn, AdjustedImageArrayRotationAnimation.jnew(JR.lget(f, :imageArray), JR.lget(f, :angleInfo), JR.lget(f, :totalAngle), -(Bitwise.bsr(JR.call(JR.aget(JR.lget(f, :imageArray), 0), :jm_getWidth, []), 2)), -(Bitwise.bsr(JR.call(JR.aget(JR.lget(f, :imageArray), 0), :jm_getHeight, []), 2)), JR.lget(f, :animationBehavior))})
    end)
  end


  def jinit(this, p_imageArray, p_angleInfo, p_totalAngle, p_dx, p_dy, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageArrayRotationAnimation.jinit(this, JR.lget(f, :imageArray), JR.lget(f, :angleInfo), JR.lget(f, :totalAngle), JR.lget(f, :animationBehavior))
        AdjustedImageArrayRotationAnimation.jinitfields(this)
        JR.call(this, :jm_init, [JR.lget(f, :dx), JR.lget(f, :dy)])
    end)
  end

  def jnew(p_imageArray, p_angleInfo, p_totalAngle, p_dx, p_dy, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_imageArray, p_angleInfo, p_totalAngle, p_dx, p_dy, p_animationBehavior)
    this
  end


  def jm_init(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.call(this, :jm_setDx, [JR.lget(f, :dx)])
        JR.call(this, :jm_setDy, [JR.lget(f, :dy)])
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
        ImageArrayRotationAnimation.jm_paintXY(this, JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :dx)), JR.int32(JR.lget(f, :y) + JR.get(this, :dy)))
    end)
  end


  def jm_setDx(this, p_dx) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
        JR.put(this, :dx, JR.lget(f, :dx))
    end)
  end


  def jm_getDx(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dx)})
    end)
  end


  def jm_setDy(this, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dy, p_dy)
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end


  def jm_getDy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dy)})
    end)
  end
end


