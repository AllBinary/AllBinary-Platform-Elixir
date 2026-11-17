# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package javax.microedition.lcdui

defmodule NullImage do
  def jsuper(), do: JObject
def jstatic_NULL_IMAGE_ARRAY(), do: JR.static_get(__MODULE__, :NULL_IMAGE_ARRAY, fn -> JR.anew(0, nil) end)
  def jstatic_set_NULL_IMAGE_ARRAY(value), do: JR.static_put(__MODULE__, :NULL_IMAGE_ARRAY, value)
def jstatic_NULL_IMAGE(), do: JR.static_get(__MODULE__, :NULL_IMAGE, fn -> Image.jnew() end)
  def jstatic_set_NULL_IMAGE(value), do: JR.static_put(__MODULE__, :NULL_IMAGE, value)

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
end


