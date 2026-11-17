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
# package org.allbinary.emulator.device

defmodule TrueTypeFontUtil do
  def jsuper(), do: TrueTypeFontUtilBase
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TrueTypeFontUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :fontImage, nil)
        JR.put(this, :fontImage, OpenGLESImage.jstatic_NULL_OPENGL_IMAGE())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TrueTypeFontUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        TrueTypeFontUtilBase.jinit(this, 1)
        TrueTypeFontUtil.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getAsTextureSize(this, p_textureSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :textureSize, p_textureSize)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getCellSize(this, p_cellSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cellSize, p_cellSize)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getFontBitmap(this, p_filename, p_fontSize, p_cellSize, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filename, p_filename)
      JR.lset(f, :fontSize, p_fontSize)
      JR.lset(f, :cellSize, p_cellSize)
      JR.lset(f, :basicColor, p_basicColor)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_saveFontAtlasAsFile(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getFontBitmapGL(this, p_gl, p_filename, p_cellSize, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :filename, p_filename)
      JR.lset(f, :cellSize, p_cellSize)
      JR.lset(f, :basicColor, p_basicColor)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getFontWidths(this, p_filename, p_fontSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filename, p_filename)
      JR.lset(f, :fontSize, p_fontSize)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


