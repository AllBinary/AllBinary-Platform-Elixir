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
# package org.allbinary.animation

defmodule NullRotationAnimationFactory do
  def jsuper(), do: JObject
def jstatic_NULL_ROTATION_ANIMATION_FACTORY(), do: JR.static_get(__MODULE__, :NULL_ROTATION_ANIMATION_FACTORY, fn -> NullRotationAnimationFactory.jnew() end)
  def jstatic_set_NULL_ROTATION_ANIMATION_FACTORY(value), do: JR.static_put(__MODULE__, :NULL_ROTATION_ANIMATION_FACTORY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_ROTATION_ANIMATION_ARRAY, nil)
    JR.put(this, :NULL_ANIMATION, nil)
        JR.put(this, :NULL_ROTATION_ANIMATION_ARRAY, JR.anew(0, nil))
        JR.put(this, :NULL_ANIMATION, NullRotationAnimation2.jnew())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getFactoryInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NullRotationAnimationFactory.jstatic_NULL_ROTATION_ANIMATION_FACTORY()})
    end)
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        throw({:jreturn, JR.get(this, :NULL_ANIMATION)})
    end)
  end


  def jm_getInstanceAnimation(this, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        throw({:jreturn, JR.get(this, :NULL_ANIMATION)})
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


