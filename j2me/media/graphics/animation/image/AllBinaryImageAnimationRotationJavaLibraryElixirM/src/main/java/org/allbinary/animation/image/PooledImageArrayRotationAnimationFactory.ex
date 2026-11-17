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
defmodule PooledImageArrayRotationAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :allBinaryImageRotationAnimationInfo, nil)
    JR.put(this, :animationBehaviorFactory, nil)
        JR.put(this, :allBinaryImageRotationAnimationInfo, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT))
        
    nil
  end


  def jm_createFactory(p_image, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :totalAngle, JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)))
        JR.lset(f, :angleIncrement, ((JR.lget(f, :totalAngle) / JR.call(GameConfigurationCentral.jm_getInstance(), :jm_getGameControlFidelity, []))))
        throw({:jreturn, PooledImageArrayRotationAnimationFactory.jnew(JR.lget(f, :image), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), -(Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getWidth, []), 2)), -(Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), JR.lget(f, :angleIncrement), JR.lget(f, :animationBehaviorFactory))})
    end)
  end


  def jm_createDXY(p_image, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :totalAngle, JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)))
        JR.lset(f, :angleIncrement, ((JR.lget(f, :totalAngle) / JR.call(GameConfigurationCentral.jm_getInstance(), :jm_getGameControlFidelity, []))))
        throw({:jreturn, PooledImageArrayRotationAnimationFactory.jnew(JR.lget(f, :image), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.lget(f, :dx), JR.lget(f, :dy), JR.lget(f, :angleIncrement), JR.lget(f, :animationBehaviorFactory))})
    end)
  end


  def jinit(this, p_image, p_width, p_height, p_dx, p_dy, p_angleIncrement, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :angleIncrement, p_angleIncrement)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
        JR.lset(f, :totalAngle, JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)))
        JR.lset(f, :imageArray, JR.call(ImageToRotationImageArrayUtil.jm_getInstance(), :jm_generate, [JR.lget(f, :image), JR.lget(f, :angleIncrement), JR.lget(f, :totalAngle)]))
        JR.put(this, :allBinaryImageRotationAnimationInfo, ImageArrayRotationAnimationInfo.jnew(JR.lget(f, :imageArray), JR.lget(f, :angleIncrement), JR.lget(f, :totalAngle), JR.lget(f, :dx), JR.lget(f, :dy)))
    end)
  end

  def jnew(p_image, p_width, p_height, p_dx, p_dy, p_angleIncrement, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_width, p_height, p_dx, p_dy, p_angleIncrement, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        throw({:jreturn, AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo(JR.get(this, :allBinaryImageRotationAnimationInfo), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        nil
    end)
  end
end


