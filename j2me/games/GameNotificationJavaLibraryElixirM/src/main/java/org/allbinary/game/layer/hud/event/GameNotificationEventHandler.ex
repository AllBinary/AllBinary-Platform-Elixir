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
# package org.allbinary.game.layer.hud.event

defmodule GameNotificationEventHandler do
  def jsuper(), do: BasicEventHandler
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameNotificationEventHandler.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :enabled, false)
        JR.put(this, :enabled, true)
    nil
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


  def jm_removeAllListeners(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :eventListenerInterface, NullEventListener.jstatic_NULL_EVENT_LISTENER())
        JR.lset(f, :list, JR.get(this, :eventListenerInterfaceList))
        if (JR.call(JR.lget(f, :list), :jm_size, []) > 0) do
            JR.lset(f, :eventListenerInterface, JR.aget(JR.get(JR.lget(f, :list), :objectArray), 0))
        end
        BasicEventHandler.jm_removeAllListeners(this)
        if (JR.lget(f, :eventListenerInterface) != NullEventListener.jstatic_NULL_EVENT_LISTENER()) do
            JR.call(this, :jm_addListenerInterface, [JR.lget(f, :eventListenerInterface)])
        end
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameNotificationEventHandler.jstatic_instance()})
    end)
  end


  def jm_process(this, p_eventObject, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        if !JR.get(this, :enabled) do
            throw({:jreturn, nil})
        end
        JR.lset(f, :gameNotificationListenerInterface, JR.lget(f, :eventListenerInterface))
        JR.call(JR.lget(f, :gameNotificationListenerInterface), :jm_onGameNotificationEvent, [JR.lget(f, :eventObject)])
    end)
  end
end


