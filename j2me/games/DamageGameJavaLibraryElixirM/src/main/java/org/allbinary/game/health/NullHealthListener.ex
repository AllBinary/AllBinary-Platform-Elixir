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
# package org.allbinary.game.health

defmodule NullHealthListener do
  def jsuper(), do: JObject
def jstatic_NULL_HEALTH_LISTENER(), do: JR.static_get(__MODULE__, :NULL_HEALTH_LISTENER, fn -> NullHealthListener.jnew() end)
  def jstatic_set_NULL_HEALTH_LISTENER(value), do: JR.static_put(__MODULE__, :NULL_HEALTH_LISTENER, value)

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


  def jm_onHealthChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


