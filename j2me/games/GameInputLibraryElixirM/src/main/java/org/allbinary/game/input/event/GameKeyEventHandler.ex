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
# package org.allbinary.game.input.event

defmodule GameKeyEventHandler do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameKeyEventHandler.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :pressGameKeyEventHandler, nil)
    JR.put(this, :upGameKeyEventHandler, nil)
    JR.put(this, :downGameKeyEventHandler, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :pressGameKeyEventHandler, PressGameKeyEventHandler.jm_getInstance())
        JR.put(this, :upGameKeyEventHandler, UpGameKeyEventHandler.jm_getInstance())
        JR.put(this, :downGameKeyEventHandler, DownGameKeyEventHandler.jm_getInstance())
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameKeyEventHandler.jstatic_instance()})
    end)
  end


  def jm_removeAllListeners(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :pressGameKeyEventHandler), :jm_removeAllListeners, [])
        JR.call(JR.get(this, :upGameKeyEventHandler), :jm_removeAllListeners, [])
        JR.call(JR.get(this, :downGameKeyEventHandler), :jm_removeAllListeners, [])
    end)
  end


  def jm_addListenerForPlayer(this, p_eventListenerInterface, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
      JR.lset(f, :playerInputId, p_playerInputId)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :eventListenerInterface), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :ADD_LISTENER)])
        JR.call(JR.get(this, :pressGameKeyEventHandler), :jm_addListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        JR.call(JR.call(JR.get(this, :upGameKeyEventHandler), :jm_getInstanceForPlayer, [JR.lget(f, :playerInputId)]), :jm_addListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        JR.call(JR.call(JR.get(this, :downGameKeyEventHandler), :jm_getInstanceForPlayer, [JR.lget(f, :playerInputId)]), :jm_addListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
    end)
  end


  def jm_addListener(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :eventListenerInterface), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :ADD_LISTENER)])
        JR.call(JR.get(this, :pressGameKeyEventHandler), :jm_addListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        JR.call(JR.get(this, :upGameKeyEventHandler), :jm_addListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        JR.call(JR.get(this, :downGameKeyEventHandler), :jm_addListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
    end)
  end


  def jm_removeListener(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :eventListenerInterface), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :REMOVE_LISTENER)])
        JR.call(JR.get(this, :pressGameKeyEventHandler), :jm_removeListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        JR.call(JR.get(this, :upGameKeyEventHandler), :jm_removeListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        JR.call(JR.get(this, :downGameKeyEventHandler), :jm_removeListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
    end)
  end
end


