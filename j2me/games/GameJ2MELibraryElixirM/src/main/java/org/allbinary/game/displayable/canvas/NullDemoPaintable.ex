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

defmodule NullDemoPaintable do
  def jsuper(), do: JObject
def jstatic_NULL_DEMO_PAINTABLE(), do: JR.static_get(__MODULE__, :NULL_DEMO_PAINTABLE, fn -> NullDemoPaintable.jnew() end)
  def jstatic_set_NULL_DEMO_PAINTABLE(value), do: JR.static_put(__MODULE__, :NULL_DEMO_PAINTABLE, value)

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


  def jm_showGamePaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


