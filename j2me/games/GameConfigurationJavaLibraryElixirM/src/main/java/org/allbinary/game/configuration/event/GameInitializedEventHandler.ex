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
# package org.allbinary.game.configuration.event

defmodule GameInitializedEventHandler do
  def jsuper(), do: BasicEventHandler
def jstatic_gameKeyEventHandler(), do: JR.static_get(__MODULE__, :gameKeyEventHandler, fn -> GameInitializedEventHandler.jnew() end)
  def jstatic_set_gameKeyEventHandler(value), do: JR.static_put(__MODULE__, :gameKeyEventHandler, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInitializedEventHandler.jstatic_gameKeyEventHandler()})
    end)
  end


  def jm_process(this, p_eventObject, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.lset(f, :gameInitializedListenerInterface, (JR.lget(f, :eventListenerInterface)))
        JR.call(JR.lget(f, :gameInitializedListenerInterface), :jm_onGameInitialized, [JR.lget(f, :eventObject)])
    end)
  end
end


