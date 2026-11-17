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
# package org.allbinary.animation.compound

defmodule AutoCompoundRotationAnimationInterfaceFactory do
  def jsuper(), do: CompoundAnimationInterfaceFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_basicAnimationInterfaceFactoryInterfaceArray, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicAnimationInterfaceFactoryInterfaceArray, p_basicAnimationInterfaceFactoryInterfaceArray)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
        CompoundAnimationInterfaceFactory.jinit(this, JR.lget(f, :basicAnimationInterfaceFactoryInterfaceArray), JR.lget(f, :animationBehaviorFactory))
        AutoCompoundRotationAnimationInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew(p_basicAnimationInterfaceFactoryInterfaceArray, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicAnimationInterfaceFactoryInterfaceArray, p_animationBehaviorFactory)
    this
  end


  def jm_createArray(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        throw({:jreturn, JR.anew(JR.lget(f, :size), nil)})
    end)
  end


  def jm_createAnimation(this, p_animationInterfaceArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
        throw({:jreturn, AutoCompoundRotationAnimation.jnew(JR.lget(f, :animationInterfaceArray), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
    end)
  end
end


