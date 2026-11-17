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
# package org.allbinary.platform.graphics

defmodule PlatformBitmapBase do
  def jsuper(), do: JObject
def jstatic_NULL_PLATFORM_BITMAP_BASE(), do: JR.static_get(__MODULE__, :NULL_PLATFORM_BITMAP_BASE, fn -> PlatformBitmapBase.jnew() end)
  def jstatic_set_NULL_PLATFORM_BITMAP_BASE(value), do: JR.static_put(__MODULE__, :NULL_PLATFORM_BITMAP_BASE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :alpha, 0)
    JR.put(this, :basicColor, nil)
        JR.put(this, :alpha, 255)
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :NULL_COLOR))
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


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getImage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, NullImage.jstatic_NULL_IMAGE()})
    end)
  end
end


