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
# package org.allbinary.input

defmodule AllBinarySensor do
  def jsuper(), do: JObject
def jstatic_NULL_ALLBINARY_SENSOR(), do: JR.static_get(__MODULE__, :NULL_ALLBINARY_SENSOR, fn -> AllBinarySensor.jnew() end)
  def jstatic_set_NULL_ALLBINARY_SENSOR(value), do: JR.static_put(__MODULE__, :NULL_ALLBINARY_SENSOR, value)
def jstatic_max(), do: JR.static_get(__MODULE__, :max, fn -> 100 end)
  def jstatic_set_max(value), do: JR.static_put(__MODULE__, :max, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
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


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setMax(p_max) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :max, p_max)
        AllBinarySensor.jstatic_set_max(JR.lget(f, :max))
    end)
  end


  def jm_getMax() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AllBinarySensor.jstatic_max()})
    end)
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, AllBinarySensor.jm_getMax()})
    end)
  end


  def jm_shutdown(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "shutdown"])
    end)
  end


  def jm_onSensorChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
    end)
  end
end


