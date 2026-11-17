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
# package org.allbinary.graphics.opengles.shader

defmodule SimpleShaderInitializer do
  def jsuper(), do: ShaderInitializer
def jstatic_instanceC(), do: JR.static_get(__MODULE__, :instanceC, fn -> SimpleShaderInitializer.jnew() end)
  def jstatic_set_instanceC(value), do: JR.static_put(__MODULE__, :instanceC, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    ShaderInitializer.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SimpleShaderInitializer.jstatic_instanceC()})
    end)
  end
end


