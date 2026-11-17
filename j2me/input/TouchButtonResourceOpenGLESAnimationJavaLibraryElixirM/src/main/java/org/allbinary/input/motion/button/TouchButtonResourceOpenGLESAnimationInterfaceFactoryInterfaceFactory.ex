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
# package org.allbinary.input.motion.button

defmodule TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory do
  def jsuper(), do: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jinit(this, "OpenGL TouchButton Animations")
        TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_init(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jm_initImageCache(this, OpenGLImageCacheFactory.jm_getInstance(), JR.lget(f, :level))
    end)
  end


  def jm_isFeature(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(Features.jm_getInstance(), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)]) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end
end


