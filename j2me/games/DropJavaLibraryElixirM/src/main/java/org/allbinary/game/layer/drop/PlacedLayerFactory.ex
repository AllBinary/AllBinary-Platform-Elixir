# Generated Code Do Not Modify
# package org.allbinary.game.layer.drop

defmodule PlacedLayerFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PlacedLayerFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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
        throw({:jreturn, PlacedLayerFactory.jstatic_instance()})
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
end


