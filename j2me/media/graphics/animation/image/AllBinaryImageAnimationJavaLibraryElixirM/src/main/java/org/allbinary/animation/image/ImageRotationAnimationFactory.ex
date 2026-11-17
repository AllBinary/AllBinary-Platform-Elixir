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

defmodule ImageRotationAnimationFactory do
  def jsuper(), do: BaseImageAnimationFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :angleIncrement, 0)
        
    nil
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
        BaseImageAnimationFactory.jinit(this, JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.lget(f, :width), JR.lget(f, :height), 0, 0, JR.lget(f, :animationBehaviorFactory))
        ImageRotationAnimationFactory.jinitfields(this)
        JR.put(this, :angleIncrement, JR.lget(f, :angleIncrement))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dx, JR.lget(f, :dx))
        JR.put(JR.get(this, :animationFactoryInitializationVisitor), :dy, JR.lget(f, :dy))
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
        if ((JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx) != 0) || (JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy) != 0)) do
            JR.call(JR.get(this, :animationFactoryImageScaleUtil), :jm_processAdjust, [this])
            throw({:jreturn, AdjustedImageBaseRotationAnimation.jnew(JR.call(this, :jm_getImage, []), AngleInfo.jm_getInstance(JR.get(this, :angleIncrement)), JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dx), JR.get(JR.get(this, :animationFactoryInitializationVisitor), :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, ImageBaseRotationAnimation.jnew(JR.call(this, :jm_getImage, []), AngleInfo.jm_getInstance(JR.get(this, :angleIncrement)), JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        end
    end)
  end


  def jm_getAngleIncrementP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :angleIncrement)})
    end)
  end
end


