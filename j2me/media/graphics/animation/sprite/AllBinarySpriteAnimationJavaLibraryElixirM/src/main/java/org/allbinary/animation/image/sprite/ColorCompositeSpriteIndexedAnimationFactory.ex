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

defmodule ColorCompositeSpriteIndexedAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationFactorySpriteScaleUtil, nil)
    JR.put(this, :basicColorArray, nil)
        JR.put(this, :animationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_image, p_basicColorArray, p_width, p_height, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :basicColorArray, p_basicColorArray)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        BaseImageAnimationFactory.jinit(this, JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.lget(f, :width), JR.lget(f, :height), 0, 0, JR.lget(f, :animationBehaviorFactory))
        ColorCompositeSpriteIndexedAnimationFactory.jinitfields(this)
        JR.put(this, :basicColorArray, JR.lget(f, :basicColorArray))
    end)
  end

  def jnew(p_image, p_basicColorArray, p_width, p_height, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_basicColorArray, p_width, p_height, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :sprite, JR.call(JR.get(this, :animationFactorySpriteScaleUtil), :jm_createImage, [JR.call(this, :jm_getImage, []), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :height), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        throw({:jreturn, SpriteIndexedAnimation.jnew(JR.lget(f, :sprite), JR.call(this, :jm_getImage, []), JR.get(this, :basicColorArray), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
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


