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

defmodule ImageArraySingletonAnimationInterfaceFactory do
  def jsuper(), do: SingletonAnimationInterfaceFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_imageArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
        SingletonAnimationInterfaceFactory.jinit(this, ImageArrayAnimation.jnew(JR.lget(f, :imageArray), AnimationBehavior.jm_getInstance()))
        ImageArraySingletonAnimationInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew(p_imageArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_imageArray)
    this
  end
end


