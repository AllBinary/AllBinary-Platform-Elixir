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

defmodule AllBinaryArrayImageRotationAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageArray, nil)
    JR.put(this, :angleIncrement, 0)
        JR.put(this, :imageArray, NullImage.jstatic_NULL_IMAGE_ARRAY())
        
    nil
  end


  def jm_createFactory(p_image, p_dx, p_dy) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.lset(f, :arrayImageRotationAnimationFactory, AllBinaryArrayImageRotationAnimationFactory.jnew(JR.lget(f, :image), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), (JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE) / JR.call(GameConfigurationCentral.jm_getInstance(), :jm_getGameControlFidelity, [])), AnimationBehaviorFactory.jm_getInstance()))
        JR.call(JR.lget(f, :arrayImageRotationAnimationFactory), :jm_initDXY, [JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :arrayImageRotationAnimationFactory)})
    end)
  end


  def jm_createFactoryA(p_image, p_dx, p_dy, p_angleIncrement) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :angleIncrement, p_angleIncrement)
        JR.lset(f, :arrayImageRotationAnimationFactory, AllBinaryArrayImageRotationAnimationFactory.jnew(JR.lget(f, :image), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.lget(f, :angleIncrement), AnimationBehaviorFactory.jm_getInstance()))
        JR.call(JR.lget(f, :arrayImageRotationAnimationFactory), :jm_initDXY, [JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :arrayImageRotationAnimationFactory)})
    end)
  end


  def jinit(this, p_image, p_width, p_height, p_angleIncrement, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :angleIncrement, p_angleIncrement)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        BaseImageAnimationFactory.jinit(this, JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.lget(f, :width), JR.lget(f, :height), 0, 0, JR.lget(f, :animationBehaviorFactory))
        AllBinaryArrayImageRotationAnimationFactory.jinitfields(this)
        JR.put(this, :angleIncrement, JR.lget(f, :angleIncrement))
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew(p_image, p_width, p_height, p_angleIncrement, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_width, p_height, p_angleIncrement, p_animationBehaviorFactory)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setImageArray, [JR.call(ImageToRotationImageArrayUtil.jm_getInstance(), :jm_generate, [JR.call(this, :jm_getImage, []), JR.call(this, :jm_getAngleIncrement, []), JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE))])])
    end)
  end


  def jm_initDXY(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dx, JR.lget(f, :dx))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dy, JR.lget(f, :dy))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :originalDx, JR.lget(f, :dx))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :originalDy, JR.lget(f, :dy))
    end)
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :scaledImageArray, JR.anew(JR.alength(JR.get(this, :imageArray)), nil))
        JR.lset(f, :size, JR.alength(JR.lget(f, :scaledImageArray)))
        JR.lset(f, :image, JR.call(this, :jm_getImage, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :scaledImageArray), JR.lget(f, :index), JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_createImage, [JR.lget(f, :image), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        end)
        if ((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) != 0) || (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy) != 0)) do
            JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_processAdjust, [this])
            throw({:jreturn, AdjustedImageArrayRotationAnimation.jnew(JR.lget(f, :scaledImageArray), AngleInfo.jm_getInstance(JR.int16(JR.call(this, :jm_getAngleIncrement, []))), JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, ImageArrayRotationAnimation.jnew(JR.lget(f, :scaledImageArray), AngleInfo.jm_getInstance(JR.int16(JR.call(this, :jm_getAngleIncrement, []))), JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        end
    end)
  end


  def jm_setImageArray(this, p_imageArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
        JR.put(this, :imageArray, JR.lget(f, :imageArray))
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
end


