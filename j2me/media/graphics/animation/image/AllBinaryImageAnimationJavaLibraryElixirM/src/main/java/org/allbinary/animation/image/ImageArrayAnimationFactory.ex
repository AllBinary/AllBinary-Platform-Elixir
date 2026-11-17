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

defmodule ImageArrayAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :imageArray, nil)
    JR.put(this, :animationBehaviorFactory, nil)
        JR.put(this, :dx, 0)
        JR.put(this, :dy, 0)
        
        
    nil
  end


  def jinit(this, p_imageArray, p_dx, p_dy, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :imageArray, JR.lget(f, :imageArray))
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_imageArray, p_dx, p_dy, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_imageArray, p_dx, p_dy, p_animationBehaviorFactory)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        if ((JR.get(this, :dx) != 0) || (JR.get(this, :dy) != 0)) do
            throw({:jreturn, AdjustedImageArrayAnimation.jnew(JR.get(this, :imageArray), JR.get(this, :dx), JR.get(this, :dy), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
        else
            throw({:jreturn, ImageArrayAnimation.jnew(JR.get(this, :imageArray), AnimationBehavior.jm_getInstance())})
        end
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


