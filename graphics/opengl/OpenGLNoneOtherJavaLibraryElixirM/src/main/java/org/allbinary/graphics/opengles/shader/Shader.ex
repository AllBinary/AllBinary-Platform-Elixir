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

defmodule Shader do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :shaderName, nil)
    JR.put(this, :shaderStringList, nil)
    JR.put(this, :shaderAsString, nil)
    JR.put(this, :shaderHandle, 0)
        JR.put(this, :shaderName, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :shaderStringList, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
        JR.put(this, :shaderAsString, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :shaderHandle, 0)
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


