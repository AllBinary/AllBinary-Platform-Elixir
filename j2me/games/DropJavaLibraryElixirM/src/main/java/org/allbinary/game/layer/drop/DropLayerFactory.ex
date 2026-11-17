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
# package org.allbinary.game.layer.drop

defmodule DropLayerFactory do
  def jsuper(), do: JObject
def jstatic_DROP_LAYER_FACTORY(), do: JR.static_get(__MODULE__, :DROP_LAYER_FACTORY, fn -> DropLayerFactory.jnew() end)
  def jstatic_set_DROP_LAYER_FACTORY(value), do: JR.static_put(__MODULE__, :DROP_LAYER_FACTORY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
    JR.put(this, :basicArrayListUtil, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :basicArrayListUtil, BasicArrayListUtil.jm_getInstance())
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


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :list), :jm_clear, [])
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DropLayerFactory.jstatic_DROP_LAYER_FACTORY()})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_size, [])})
    end)
  end


  def jm_getRandomInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :basicArrayListUtil), :jm_getRandom, [JR.get(this, :list)])})
    end)
  end


  def jm_add(this, p_layerInterfaceFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterfaceFactoryInterface, p_layerInterfaceFactoryInterface)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :layerInterfaceFactoryInterface)])
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :list)})
    end)
  end
end


