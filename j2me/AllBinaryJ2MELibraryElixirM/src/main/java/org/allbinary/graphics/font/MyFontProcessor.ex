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
# package org.allbinary.graphics.font

defmodule MyFontProcessor do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MyFontProcessor.jnew() end)
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


  def jm_defaultCharWidth(p_font) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :font, p_font)
        throw({:jreturn, JR.call(JR.lget(f, :font), :jm_charWidth, [?C])})
    end)
  end


  def jm_defaultStringWidth(p_font, p_size) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :font, p_font)
      JR.lset(f, :size, p_size)
        throw({:jreturn, (MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font)) * JR.lget(f, :size))})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MyFontProcessor.jstatic_instance()})
    end)
  end


  def jm_process(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


