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
# package org.allbinary.emulator.device

defmodule TrueTypeFontUtilBase do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_scale) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :scale, p_scale)
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_scale) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_scale)
    this
  end


  def jm_getAsTextureSize(this, p_textureSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :textureSize, p_textureSize)
        throw({:jreturn, -1})
    end)
  end


  def jm_getCellSize(this, p_cellSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cellSize, p_cellSize)
        throw({:jreturn, -1})
    end)
  end
end


