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
# package org.allbinary.game.terrain

defmodule TerrainEventHandler do
  def jsuper(), do: BasicEventHandler
def jstatic_hashtable(), do: JR.static_get(__MODULE__, :hashtable, fn -> JR.get(StdUtil.jm_getInstance(), :NULL_TABLE) end)
  def jstatic_set_hashtable(value), do: JR.static_put(__MODULE__, :hashtable, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jm_init() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        TerrainEventHandler.jstatic_set_hashtable(JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
    end)
  end


  def jm_getInstance(p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.lset(f, :eventHandlerCanBeNull, JR.call(TerrainEventHandler.jstatic_hashtable(), :jm_get, [JR.lget(f, :anyType)]))
        if (JR.lget(f, :eventHandlerCanBeNull) == nil) do
            JR.lset(f, :eventHandlerCanBeNull, TerrainEventHandler.jnew())
            JR.call(TerrainEventHandler.jstatic_hashtable(), :jm_put, [JR.lget(f, :anyType), JR.lget(f, :eventHandlerCanBeNull)])
        end
        throw({:jreturn, JR.lget(f, :eventHandlerCanBeNull)})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      BasicEventHandler.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_addListener(this, p_terrainEventListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :terrainEventListener, p_terrainEventListener)
        if !JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :terrainEventListener)]) do
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :terrainEventListener)])
        end
    end)
  end


  def jm_removeAllListeners(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :list), :jm_clear, [])
        BasicEventHandler.jm_removeAllListeners(this)
    end)
  end


  def jm_removeListener(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :eventListenerInterface)])
        BasicEventHandler.jm_removeListener(this, JR.lget(f, :eventListenerInterface))
    end)
  end


  def jm_fireEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        JR.lset(f, :index, JR.call(JR.get(this, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            try do
                JR.lset(f, :terrainEventListener, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :index)]))
                JR.call(JR.lget(f, :terrainEventListener), :jm_onTerrainEvent, [JR.lget(f, :eventObject)])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(EventStrings.jm_getInstance(), :FIRE_EVENT), JR.lget(f, :e)])
            end
        end)
        BasicEventHandler.jm_fireEvent(this, JR.lget(f, :eventObject))
    end)
  end


  def jm_process(this, p_eventObject, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.lset(f, :terrainEventListenerInterface, JR.lget(f, :eventListenerInterface))
        JR.call(JR.lget(f, :terrainEventListenerInterface), :jm_onTerrainEvent, [JR.lget(f, :eventObject)])
    end)
  end
end


