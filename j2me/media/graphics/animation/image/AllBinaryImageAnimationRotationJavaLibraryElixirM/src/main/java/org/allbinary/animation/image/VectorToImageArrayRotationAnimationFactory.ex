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

defmodule VectorToImageArrayRotationAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageArray, nil)
    JR.put(this, :angleIncrement, 0)
        JR.put(this, :imageArray, NullImage.jstatic_NULL_IMAGE_ARRAY())
        JR.put(this, :angleIncrement, 0)
    nil
  end


  def jinit(this, p_vectorInfo, p_basicColor, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :vectorInfo, p_vectorInfo)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        BaseImageAnimationFactory.jinit(this, JR.call(AnimationFrameToImageUtil.jm_getInstance(), :jm_getInstanceTranslate, [JR.call(JR.lget(f, :vectorInfo), :jm_getWidth, []), JR.call(JR.lget(f, :vectorInfo), :jm_getHeight, []), VectorAnimation.jm_createVectorAnimation(JR.call(JR.lget(f, :vectorInfo), :jm_getPoints, []), JR.lget(f, :basicColor), JR.call(JR.lget(f, :animationBehaviorFactory), :jm_getOrCreateInstance, []))]), PrimitiveIntUtil.jm_getArrayInstance(), 0, 0, 0, 0, JR.lget(f, :animationBehaviorFactory))
        VectorToImageArrayRotationAnimationFactory.jinitfields(this)
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew(p_vectorInfo, p_basicColor, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_vectorInfo, p_basicColor, p_animationBehaviorFactory)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        JR.put(this, :angleIncrement, (JR.get(JR.lget(f, :angleFactory), :TOTAL_ANGLE) / JR.call(GameConfigurationCentral.jm_getInstance(), :jm_getGameControlFidelity, [])))
        JR.put(this, :imageArray, JR.call(ImageToRotationImageArrayUtil.jm_getInstance(), :jm_generate, [JR.call(this, :jm_getImage, []), JR.call(this, :jm_getAngleIncrement, []), JR.int32(JR.get(JR.lget(f, :angleFactory), :TOTAL_ANGLE))]))
    end)
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        if ((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) != 0) || (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy) != 0)) do
            throw({:jreturn, AdjustedImageArrayRotationAnimation.jnew(JR.get(this, :imageArray), AngleInfo.jm_getInstance(JR.int16(JR.call(this, :jm_getAngleIncrement, []))), JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, AdjustedImageArrayRotationAnimation.jm_createAnimation(JR.get(this, :imageArray), AngleInfo.jm_getInstance(JR.int16(JR.get(this, :angleIncrement))), JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        end
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


