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
# package org.allbinary.graphics.threed

#OpenGLNone
defmodule SWTJOGLProcessor do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SWTJOGLProcessor.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SWTJOGLProcessor.jstatic_instance()})
    end)
  end


  def jm_init(this, p_display, p_comp) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :display, p_display)
      JR.lset(f, :comp, p_comp)
        nil
    end)
  end


  def jm_isHolderCreated(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_setRenderer(this, p_renderer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :renderer, p_renderer)
        nil
    end)
  end


  def jm_isJOGL(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_createSurface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_onSurfaceCreated(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_onSurfaceChangedForEvent(this, p_event) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :event, p_event)
        nil
    end)
  end


  def jm_onSurfaceChanged(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_onSurfaceChangedWH(this, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        nil
    end)
  end


  def jm_addListener(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_addListeners(this, p_midlet) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midlet, p_midlet)
        nil
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setCustom(this, p_width, p_height, p_ratio) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :ratio, p_ratio)
        nil
    end)
  end


  def jm_setRatioProcessor(this, p_ratioProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ratioProcessor, p_ratioProcessor)
        nil
    end)
  end


  def jm_isPortraitRatioProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_charWidth(this, p_font, p_ch) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :font, p_font)
      JR.lset(f, :ch, p_ch)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_charsWidth(this, p_font, p_ch, p_offset, p_length) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :font, p_font)
      JR.lset(f, :ch, p_ch)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :length, p_length)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_stringWidth(this, p_font, p_str) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :font, p_font)
      JR.lset(f, :str, p_str)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_substringWidth(this, p_font, p_str, p_offset, p_len) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :font, p_font)
      JR.lset(f, :str, p_str)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :len, p_len)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


