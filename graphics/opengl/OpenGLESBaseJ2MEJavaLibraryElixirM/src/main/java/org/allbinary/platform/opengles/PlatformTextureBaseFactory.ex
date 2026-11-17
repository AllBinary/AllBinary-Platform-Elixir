# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.platform.opengles

defmodule PlatformTextureBaseFactory do
  def jsuper(), do: JObject
def jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY(), do: JR.static_get(__MODULE__, :NULL_PLATFORM_TEXTURE_BASE_FACTORY, fn -> PlatformTextureBaseFactory.jnew() end)
  def jstatic_set_NULL_PLATFORM_TEXTURE_BASE_FACTORY(value), do: JR.static_put(__MODULE__, :NULL_PLATFORM_TEXTURE_BASE_FACTORY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_load(this, p_gl, p_target, p_level, p_image, p_border, p_flip) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :image, p_image)
      JR.lset(f, :border, p_border)
      JR.lset(f, :flip, p_flip)
        nil
    end)
  end
end


