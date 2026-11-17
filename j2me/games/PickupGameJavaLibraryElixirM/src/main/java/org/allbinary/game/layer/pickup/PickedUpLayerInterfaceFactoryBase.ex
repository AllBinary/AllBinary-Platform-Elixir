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
# package org.allbinary.game.layer.pickup

defmodule PickedUpLayerInterfaceFactoryBase do
  def jsuper(), do: JObject
def jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE(), do: JR.static_get(__MODULE__, :NULL_PICKED_UP_LAYER_FACTORY_BASE, fn -> PickedUpLayerInterfaceFactoryBase.jnew() end)
  def jstatic_set_NULL_PICKED_UP_LAYER_FACTORY_BASE(value), do: JR.static_put(__MODULE__, :NULL_PICKED_UP_LAYER_FACTORY_BASE, value)

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


  def jm_getIconLayer(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getPickedUpLayerType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


