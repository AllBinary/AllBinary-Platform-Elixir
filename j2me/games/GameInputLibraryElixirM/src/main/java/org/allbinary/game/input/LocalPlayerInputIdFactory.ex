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
# package org.allbinary.game.input

defmodule LocalPlayerInputIdFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LocalPlayerInputIdFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :MAX_NUMBER_OF_PLAYERS, 0)
    JR.put(this, :MAX_FAST_DEVICEID, 0)
    JR.put(this, :deviceIdToplayerId, nil)
    JR.put(this, :playerIdToDeviceId, nil)
    JR.put(this, :playersInPlay, nil)
    JR.put(this, :totalDevicesMapped, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :MAX_NUMBER_OF_PLAYERS, 6)
        JR.put(this, :MAX_FAST_DEVICEID, 65)
        JR.put(this, :deviceIdToplayerId, JR.anew(JR.get(this, :MAX_FAST_DEVICEID), 0))
        JR.put(this, :playerIdToDeviceId, JR.anew(JR.get(this, :MAX_NUMBER_OF_PLAYERS), 0))
        JR.put(this, :playersInPlay, JR.anew(JR.get(this, :MAX_NUMBER_OF_PLAYERS), false))
        JR.put(this, :totalDevicesMapped, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :deviceIdToplayerId)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :deviceIdToplayerId), JR.lget(f, :index), -1)
        end)
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
        throw({:jreturn, LocalPlayerInputIdFactory.jstatic_instance()})
    end)
  end


  def jm_getDeviceId(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        throw({:jreturn, JR.aget(JR.get(this, :playerIdToDeviceId), JR.lget(f, :playerInputId))})
    end)
  end


  def jm_getPlayerForDevice(this, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :deviceId, p_deviceId)
        JR.lset(f, :index, 0)
        if (JR.lget(f, :deviceId) < JR.get(this, :MAX_FAST_DEVICEID)) do
            JR.lset(f, :playerInputId, JR.aget(JR.get(this, :deviceIdToplayerId), JR.lget(f, :deviceId)))
            if (JR.lget(f, :playerInputId) != -1) do
                throw({:jreturn, JR.lget(f, :playerInputId)})
            end
        else
            JR.lset(f, :index, JR.int32(JR.get(this, :totalDevicesMapped) - 1))
            JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
                if (JR.aget(JR.get(this, :playerIdToDeviceId), JR.lget(f, :index)) == JR.lget(f, :deviceId)) do
                    throw({:jreturn, JR.lget(f, :index)})
                end
            end)
        end
        JR.lset(f, :index, JR.get(this, :totalDevicesMapped))
        if (JR.lget(f, :deviceId) < JR.get(this, :MAX_FAST_DEVICEID)) do
            JR.aset(JR.get(this, :deviceIdToplayerId), JR.lget(f, :deviceId), JR.lget(f, :index))
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Added DeviceId: "]), :jm_appendint, [JR.lget(f, :deviceId)]), :jm_append, [" beyond fast Id list"]), :jm_toString, []), this, "getPlayerForDevice"])
        end
        JR.aset(JR.get(this, :playerIdToDeviceId), JR.lget(f, :index), JR.lget(f, :deviceId))
        JR.call(AnalogLocationInputFactory.jm_getInstance(), :jm_addPlayer, [JR.get(this, :totalDevicesMapped)])
        JR.postinc(this, :totalDevicesMapped, 1)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Added DeviceId: "]), :jm_appendint, [JR.lget(f, :deviceId)]), :jm_append, [" at: "]), :jm_appendint, [JR.lget(f, :index)]), :jm_append, [" Total: "]), :jm_appendint, [JR.get(this, :totalDevicesMapped)]), :jm_toString, []), this, "getPlayerForDevice"])
        throw({:jreturn, JR.lget(f, :index)})
    end)
  end


  def jm_getTotalDevicesInPlay(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :total, 0)
        JR.lset(f, :index, JR.int32(JR.get(this, :totalDevicesMapped) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if (JR.aget(JR.get(this, :playersInPlay), JR.lget(f, :index)) == true) do
                JR.lpostinc(f, :total, 1)
            end
        end)
        throw({:jreturn, JR.lget(f, :total)})
    end)
  end


  def jm_isPlayerInPlay(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        throw({:jreturn, JR.aget(JR.get(this, :playersInPlay), JR.lget(f, :playerInputId))})
    end)
  end


  def jm_setPlayerInPlay(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Setting PlayerInPlay with playerInputId: "]), :jm_appendint, [JR.lget(f, :playerInputId)]), :jm_toString, []), this, "setPlayerInPlay"])
        JR.aset(JR.get(this, :playersInPlay), JR.lget(f, :playerInputId), true)
    end)
  end


  def jm_setPlayerOutOfPlay(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Setting PlayerOutOfPlay with playerInputId: "]), :jm_appendint, [JR.lget(f, :playerInputId)]), :jm_toString, []), this, "setPlayerOutOfPlay"])
        JR.aset(JR.get(this, :playersInPlay), JR.lget(f, :playerInputId), false)
    end)
  end


  def jm_getPlayersInPlay(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :playersInPlay)})
    end)
  end
end


