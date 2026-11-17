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
# package org.allbinary.game.midlet

defmodule DemoGameMidletStateFactory do
  def jsuper(), do: JObject
def jstatic_STATE(), do: JR.static_get(__MODULE__, :STATE, fn -> DemoGameMidletStateFactory.jnew() end)
  def jstatic_set_STATE(value), do: JR.static_put(__MODULE__, :STATE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NONE, nil)
    JR.put(this, :START_DEMO, nil)
    JR.put(this, :START_GAME, nil)
    JR.put(this, :START_INPUT_MAPPING, nil)
        JR.put(this, :NONE, DemoGameMidletState.jnew())
        JR.put(this, :START_DEMO, DemoGameMidletState.jnew())
        JR.put(this, :START_GAME, DemoGameMidletState.jnew())
        JR.put(this, :START_INPUT_MAPPING, DemoGameMidletState.jnew())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
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
        throw({:jreturn, DemoGameMidletStateFactory.jstatic_STATE()})
    end)
  end
end


