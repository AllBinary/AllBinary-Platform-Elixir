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
# package org.allbinary.game.multiplayer.layer

defmodule MultiplayerBehavior do
  def jsuper(), do: JObject
def jstatic_NULL_MULTIPLAYER_BEHAVIOR(), do: JR.static_get(__MODULE__, :NULL_MULTIPLAYER_BEHAVIOR, fn -> MultiplayerBehavior.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)) end)
  def jstatic_set_NULL_MULTIPLAYER_BEHAVIOR(value), do: JR.static_put(__MODULE__, :NULL_MULTIPLAYER_BEHAVIOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_username) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :username, p_username)
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_username) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_username)
    this
  end


  def jm_startTick(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_endTick(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getApproximateElapsed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


