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

defmodule ImageAnimationSingletonInterfaceFactory do
  def jsuper(), do: SingletonAnimationInterfaceFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_animationInterface, p_width, p_height) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        SingletonAnimationInterfaceFactory.jinit(this, ImageAnimation.jnew(JR.call(AnimationFrameToImageUtil.jm_getInstance(), :jm_getInstanceWH, [JR.lget(f, :width), JR.lget(f, :height), JR.lget(f, :animationInterface)]), AnimationBehavior.jm_getInstance()))
        ImageAnimationSingletonInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew(p_animationInterface, p_width, p_height) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_width, p_height)
    this
  end
end


