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

defmodule ImageArrayRotationAnimation do
  def jsuper(), do: ImageArrayBaseRotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :expectedTotalFrames, 0)
        JR.put(this, :expectedTotalFrames, 0)
    nil
  end


  def jm_createAnimation(p_anyType, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        JR.lset(f, :imageRotationAnimationInfo, JR.lget(f, :anyType))
        throw({:jreturn, ImageArrayRotationAnimation.jnew(JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getImageArray, []), JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getAngleInfoP, []), JR.call(JR.lget(f, :imageRotationAnimationInfo), :jm_getTotalAngle, []), JR.lget(f, :animationBehavior))})
    end)
  end


  def jinit(this, p_imageArray, p_angleInfo, p_totalAngle, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageArrayBaseRotationAnimation.jinit(this, JR.lget(f, :imageArray), JR.lget(f, :angleInfo), JR.lget(f, :animationBehavior))
        ImageArrayRotationAnimation.jinitfields(this)
        JR.call(this, :jm_initImageArray, [JR.lget(f, :imageArray), JR.lget(f, :angleInfo), JR.lget(f, :totalAngle)])
    end)
  end

  def jnew(p_imageArray, p_angleInfo, p_totalAngle, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_imageArray, p_angleInfo, p_totalAngle, p_animationBehavior)
    this
  end


  def jm_initImageArray(this, p_imageArray, p_angleInfo, p_totalAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
        JR.put(this, :expectedTotalFrames, (JR.lget(f, :totalAngle) / JR.call(JR.call(JR.get(this, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, [])))
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [0])
        if (JR.get(this, :expectedTotalFrames) != JR.call(this, :jm_getSize, [])) do
            throw({:jexception, JR.exception("Exception", "Wrong Number of Frames")})
        end
    end)
  end


  def jm_setImageArray(this, p_imageArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
        ImageArrayBaseRotationAnimation.jm_setImageArray(this, JR.lget(f, :imageArray))
        JR.call(JR.get(this, :angleInfo), :jm_adjustAngle, [0])
    end)
  end
end


