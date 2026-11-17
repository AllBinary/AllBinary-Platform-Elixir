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

defmodule OneRowSpriteIndexedAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationFactorySpriteScaleUtil, nil)
        JR.put(this, :animationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.jm_getInstance())
    nil
  end


  def jm_createFactoryDX(p_image, p_dx, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :oneRowSpriteIndexedAnimationFactory, OneRowSpriteIndexedAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), 0, 0, JR.lget(f, :animationBehaviorFactory)))
        JR.call(JR.lget(f, :oneRowSpriteIndexedAnimationFactory), :jm_initW, [JR.lget(f, :dx)])
        throw({:jreturn, JR.lget(f, :oneRowSpriteIndexedAnimationFactory)})
    end)
  end


  def jm_createFactoryDXY(p_image, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        JR.lset(f, :oneRowSpriteIndexedAnimationFactory, OneRowSpriteIndexedAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), 0, 0, JR.lget(f, :animationBehaviorFactory)))
        JR.call(JR.lget(f, :oneRowSpriteIndexedAnimationFactory), :jm_init, [JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :oneRowSpriteIndexedAnimationFactory)})
    end)
  end


  def jm_createFactoryWH(p_image, p_width, p_height, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        throw({:jreturn, OneRowSpriteIndexedAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.lget(f, :width), JR.lget(f, :height), 0, 0, JR.lget(f, :animationBehaviorFactory))})
    end)
  end


  def jm_createFactory(p_image, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        throw({:jreturn, OneRowSpriteIndexedAnimationFactory.jnew(JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), 0, 0, JR.lget(f, :animationBehaviorFactory))})
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
        OneRowSpriteIndexedAnimationFactory.jinitfields(this)
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


  def jm_initW(this, p_dx) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
        JR.call(this, :jm_init, [JR.lget(f, :dx), 0])
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dx, (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) + -(Bitwise.bsr(JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width), 2))))
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
            throw({:jreturn, AdjustedSpriteIndexedAnimation.jnew(JR.lget(f, :sprite), JR.call(this, :jm_getImage, []), JR.get(BasicColorUtil.jm_getInstance(), :ZERO_ARRAY), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, SpriteIndexedAnimation.jnew(JR.lget(f, :sprite), JR.call(this, :jm_getImage, []), JR.get(BasicColorUtil.jm_getInstance(), :ZERO_ARRAY), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        end
    end)
  end
end


