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
# package org.allbinary.android.input.motion

defmodule AnalogControllerConfigurationFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AnalogControllerConfigurationFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SCALE_FACTOR, 0)
    JR.put(this, :SCALE_VALUE, 0)
    JR.put(this, :available, false)
    JR.put(this, :analogControllerConfigurationEvent, nil)
        JR.put(this, :SCALE_FACTOR, JR.get(ScaleFactorFactory.jm_getInstance(), :DEFAULT_SCALE_FACTOR))
        JR.put(this, :SCALE_VALUE, JR.get(ScaleFactorFactory.jm_getInstance(), :DEFAULT_SCALE_VALUE))
        JR.put(this, :available, false)
        JR.put(this, :analogControllerConfigurationEvent, AnalogControllerConfigurationEvent.jnew(this))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AnalogControllerConfigurationFactory.jstatic_instance()})
    end)
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


  def jm_isAvailable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :available)})
    end)
  end


  def jm_setAvailable(this, p_available) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :available, p_available)
        JR.put(this, :available, JR.lget(f, :available))
        JR.call(AnalogControllerConfigurationEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :analogControllerConfigurationEvent)])
    end)
  end
end


