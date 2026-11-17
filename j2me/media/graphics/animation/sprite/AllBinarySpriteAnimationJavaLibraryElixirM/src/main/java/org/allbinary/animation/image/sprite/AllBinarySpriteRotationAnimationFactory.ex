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
# package org.allbinary.animation.image.sprite

defmodule AllBinarySpriteRotationAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationFactorySpriteScaleUtil, nil)
        JR.put(this, :animationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.jm_getInstance())
    nil
  end


  def jm_createWHDY(p_image, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :spriteRotationAnimationFactory, AllBinarySpriteRotationAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), (Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), (Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), 0, 0, JR.lget(f, :animationBehaviorFactory)))
        JR.call(JR.lget(f, :spriteRotationAnimationFactory), :jm_initWH, [JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :spriteRotationAnimationFactory)})
    end)
  end


  def jm_createWH(p_image, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        throw({:jreturn, AllBinarySpriteRotationAnimationFactory.jm_createWHDY(JR.lget(f, :image), 0, 0, JR.lget(f, :animationBehaviorFactory))})
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
        JR.lset(f, :spriteRotationAnimationFactory, AllBinarySpriteRotationAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), 0, 0, JR.lget(f, :animationBehaviorFactory)))
        JR.call(JR.lget(f, :spriteRotationAnimationFactory), :jm_init, [JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :spriteRotationAnimationFactory)})
    end)
  end


  def jm_createDXYQ(p_image, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :spriteRotationAnimationFactory, AllBinarySpriteRotationAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), (Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), (Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), 0, 0, JR.lget(f, :animationBehaviorFactory)))
        JR.call(JR.lget(f, :spriteRotationAnimationFactory), :jm_init, [JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :spriteRotationAnimationFactory)})
    end)
  end


  def jm_createQ(p_image, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        throw({:jreturn, AllBinarySpriteRotationAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), (Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), (Bitwise.bsr(JR.call(JR.lget(f, :image), :jm_getHeight, []), 2)), 0, 0, JR.lget(f, :animationBehaviorFactory))})
    end)
  end


  def jm_createWHF(p_image, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        throw({:jreturn, AllBinarySpriteRotationAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), 0, 0, JR.lget(f, :animationBehaviorFactory))})
    end)
  end


  def jinit(this, p_image, p_sequenceArray, p_width, p_height, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :sequenceArray, p_sequenceArray)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        BaseImageAnimationFactory.jinit(this, JR.lget(f, :image), JR.lget(f, :sequenceArray), JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :dx), JR.lget(f, :dy), JR.lget(f, :animationBehaviorFactory))
        AllBinarySpriteRotationAnimationFactory.jinitfields(this)
        if (JR.lget(f, :animationBehaviorFactory) == AnimationBehaviorFactory.jm_getInstance()) do
            ForcedLogUtil.jm_log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        end
    end)
  end

  def jnew(p_image, p_sequenceArray, p_width, p_height, p_dx, p_dy, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_sequenceArray, p_width, p_height, p_dx, p_dy, p_animationBehaviorFactory)
    this
  end


  def jm_init(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dx, JR.lget(f, :dx))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dy, JR.lget(f, :dy))
    end)
  end


  def jm_initWH(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.call(this, :jm_init, [JR.lget(f, :dx), JR.lget(f, :dy)])
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dx, (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) + (-JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width) / 5)))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dy, (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy) + (-JR.get(JR.get(this, :animationFactoryInitializationVisitor), :height) / 5)))
    end)
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :sprite, JR.call(JR.get(this, :animationFactorySpriteScaleUtil), :jm_createImage, [JR.call(this, :jm_getImage, []), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :height), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        if ((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) != 0) || (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy) != 0)) do
            throw({:jreturn, AllBinaryAdjustedSpriteRotationAnimation.jnew(JR.lget(f, :sprite), JR.call(this, :jm_getImage, []), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, AllBinarySpriteRotationAnimation.jnew(JR.lget(f, :sprite), JR.call(this, :jm_getImage, []), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        end
    end)
  end


  def jm_getInstanceAnimation(this, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        throw({:jreturn, JR.call(this, :jm_getInstance, [0])})
    end)
  end
end


