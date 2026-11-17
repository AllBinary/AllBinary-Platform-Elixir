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
# package org.allbinary.game.input

defmodule NullPlayerGameInputComposite do
  def jsuper(), do: JObject
def jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE(), do: JR.static_get(__MODULE__, :NULL_PLAYER_GAME_INPUT_COMPOSITE, fn -> NullPlayerGameInputComposite.jnew() end)
  def jstatic_set_NULL_PLAYER_GAME_INPUT_COMPOSITE(value), do: JR.static_put(__MODULE__, :NULL_PLAYER_GAME_INPUT_COMPOSITE, value)

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


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_processInput(this, p_layerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
        nil
    end)
  end


  def jm_initInputProcessors(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getPlayerGameInput(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, NoPlayerGameInput.jm_getInstance()})
    end)
  end
end


