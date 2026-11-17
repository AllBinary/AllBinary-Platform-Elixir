# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.graphics

defmodule OpenGLBitmapConfig do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :bitmapConfig, nil)
        
    nil
  end


  def jinit(this, p_bitmapConfig) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :bitmapConfig, p_bitmapConfig)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :bitmapConfig, JR.lget(f, :bitmapConfig))
    end)
  end

  def jnew(p_bitmapConfig) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_bitmapConfig)
    this
  end
end


