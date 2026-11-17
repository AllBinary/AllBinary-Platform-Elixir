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

defmodule LeftToRightImageAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_image, p_sequenceArray, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :sequenceArray, p_sequenceArray)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        BaseImageAnimationFactory.jinit(this, JR.lget(f, :image), JR.lget(f, :sequenceArray), JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, []), JR.lget(f, :dx), JR.lget(f, :dy), JR.lget(f, :animationBehaviorFactory))
        LeftToRightImageAnimationFactory.jinitfields(this)
    end)
  end

  def jnew(p_image, p_sequenceArray, p_dx, p_dy, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_sequenceArray, p_dx, p_dy, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        JR.lset(f, :scaledImage, JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_createImage, [JR.call(this, :jm_getImage, []), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :width), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :height), JR.get(JR.get(this, :scaleProperties), :scaleWidth), JR.get(JR.get(this, :scaleProperties), :scaleHeight)]))
        if ((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) != 0) || (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy) != 0)) do
            JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_processAdjust, [this])
            throw({:jreturn, AdjustedLeftToRightImageAnimation.jnew(JR.lget(f, :scaledImage), JR.call(this, :jm_getSequenceArray, []), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, LeftToRightImageAnimation.jnew(JR.lget(f, :scaledImage), JR.call(this, :jm_getSequenceArray, []), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        end
    end)
  end
end


