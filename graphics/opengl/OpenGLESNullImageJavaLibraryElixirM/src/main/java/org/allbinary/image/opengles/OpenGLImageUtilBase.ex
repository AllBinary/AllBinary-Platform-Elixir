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
# package org.allbinary.image.opengles

defmodule OpenGLImageUtilBase do
  def jsuper(), do: JObject

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


  def jm_paint(this, p_alphaBitmap, p_originalBitmap, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaBitmap, p_alphaBitmap)
      JR.lset(f, :originalBitmap, p_originalBitmap)
      JR.lset(f, :index, p_index)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_paint(this, p_colorBitmap, p_originalBitmap, p_alpha, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :colorBitmap, p_colorBitmap)
      JR.lset(f, :originalBitmap, p_originalBitmap)
      JR.lset(f, :alpha, p_alpha)
      JR.lset(f, :basicColor, p_basicColor)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_createImage(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_createImageFromInputStream(this, p_inputStream) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


