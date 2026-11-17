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

defmodule BottomToTopImageAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_image, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        BaseImageAnimationFactory.jinit(this, JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), 0, 0, JR.lget(f, :animationBehaviorFactory))
        BottomToTopImageAnimationFactory.jinitfields(this)
    end)
  end

  def jnew(p_image, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :scaledImage, JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_createImage, [JR.call(this, :jm_getImage, []), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :height), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        throw({:jreturn, BottomToTopImageAnimation.jnew(JR.lget(f, :scaledImage), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
    end)
  end
end


