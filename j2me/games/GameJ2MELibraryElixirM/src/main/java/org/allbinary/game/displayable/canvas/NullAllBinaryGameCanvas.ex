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
# package org.allbinary.game.displayable.canvas

defmodule NullAllBinaryGameCanvas do
  def jsuper(), do: JObject
def jstatic_NULL_ALLBINARY_GAME_CANVAS(), do: JR.static_get(__MODULE__, :NULL_ALLBINARY_GAME_CANVAS, fn -> NullAllBinaryGameCanvas.jnew() end)
  def jstatic_set_NULL_ALLBINARY_GAME_CANVAS(value), do: JR.static_put(__MODULE__, :NULL_ALLBINARY_GAME_CANVAS, value)

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


  def jm_getLayerManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_addCommand(this, p_cmd) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmd, p_cmd)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_removeCommand(this, p_cmd) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmd, p_cmd)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_setCommandListener(this, p_l) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :l, p_l)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


