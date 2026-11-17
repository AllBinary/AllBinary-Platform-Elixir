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
# package org.allbinary.game.combat.destroy.event

defmodule DestroyedEventHandler do
  def jsuper(), do: BasicEventHandler
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DestroyedEventHandler.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DestroyedEventHandler.jstatic_instance()})
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


  def jm_addListener(this, p_collidableDestroyableDamageableLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
        if !JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :collidableDestroyableDamageableLayer)]) do
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :collidableDestroyableDamageableLayer)])
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
                JR.lset(f, :collidableDestroyableDamageableLayer, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
                JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_onDestroyed, [JR.lget(f, :eventObject)])
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
        JR.lset(f, :destroyedEventListenerInterface, JR.lget(f, :eventListenerInterface))
        JR.call(JR.lget(f, :destroyedEventListenerInterface), :jm_onDestroyed, [JR.lget(f, :eventObject)])
    end)
  end
end


