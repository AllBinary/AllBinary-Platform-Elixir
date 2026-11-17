# Generated Code Do Not Modify
# package org.allbinary.game.terrain

defmodule TerrainEventListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
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


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onTerrainEvent(this, p_terrainEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :terrainEvent, p_terrainEvent)
        JR.call(JR.get(this, :list), :jm_clear, [])
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :terrainEvent)])
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


