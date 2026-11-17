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

defmodule DownKeyEventHandler do
  def jsuper(), do: DownKeyEventHandlerBase
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DownKeyEventHandler.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)
def jstatic_instanceArray(), do: JR.static_get(__MODULE__, :instanceArray, fn -> JR.afrom([DownKeyEventHandlerBase.jnew(), DownKeyEventHandlerBase.jnew(), DownKeyEventHandlerBase.jnew(), DownKeyEventHandlerBase.jnew(), DownKeyEventHandlerBase.jnew(), DownKeyEventHandlerBase.jnew()]) end)
  def jstatic_set_instanceArray(value), do: JR.static_put(__MODULE__, :instanceArray, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :playerInputIdFactory, nil)
        JR.put(this, :playerInputIdFactory, LocalPlayerInputIdFactory.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DownKeyEventHandler.jstatic_instance()})
    end)
  end


  def jm_getInstanceForDevice(this, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :deviceId, p_deviceId)
        JR.lset(f, :playerInputId, JR.call(JR.get(this, :playerInputIdFactory), :jm_getPlayerForDevice, [JR.lget(f, :deviceId)]))
        throw({:jreturn, JR.aget(DownKeyEventHandler.jstatic_instanceArray(), JR.lget(f, :playerInputId))})
    end)
  end


  def jm_getInstanceForPlayer(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        throw({:jreturn, JR.aget(DownKeyEventHandler.jstatic_instanceArray(), JR.lget(f, :playerInputId))})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      DownKeyEventHandlerBase.jinit(this)
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
        DownKeyEventHandlerBase.jm_removeAllListeners(this)
        JR.lset(f, :index, JR.int32(JR.alength(DownKeyEventHandler.jstatic_instanceArray()) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(DownKeyEventHandler.jstatic_instanceArray(), JR.lget(f, :index)), :jm_removeAllListeners, [])
        end)
    end)
  end


  def jm_removeListenerSingleThreaded(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        DownKeyEventHandlerBase.jm_removeListenerSingleThreaded(this, JR.lget(f, :eventListenerInterface))
        JR.lset(f, :index, JR.int32(JR.alength(DownKeyEventHandler.jstatic_instanceArray()) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(DownKeyEventHandler.jstatic_instanceArray(), JR.lget(f, :index)), :jm_removeListenerSingleThreaded, [JR.lget(f, :eventListenerInterface)])
        end)
    end)
  end


  def jm_removeListener(this, p_eventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventListenerInterface, p_eventListenerInterface)
        DownKeyEventHandlerBase.jm_removeListener(this, JR.lget(f, :eventListenerInterface))
        JR.lset(f, :index, JR.int32(JR.alength(DownKeyEventHandler.jstatic_instanceArray()) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(DownKeyEventHandler.jstatic_instanceArray(), JR.lget(f, :index)), :jm_removeListener, [JR.lget(f, :eventListenerInterface)])
        end)
    end)
  end
end


