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

defmodule PlatformBitmapBaseFactory do
  def jsuper(), do: JObject
def jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY(), do: JR.static_get(__MODULE__, :NULL_PLATFORM_BITMAP_BASE_FACTORY, fn -> PlatformBitmapBaseFactory.jnew() end)
  def jstatic_set_NULL_PLATFORM_BITMAP_BASE_FACTORY(value), do: JR.static_put(__MODULE__, :NULL_PLATFORM_BITMAP_BASE_FACTORY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_createBitmap(this, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
        throw({:jreturn, PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE()})
    end)
  end
end


