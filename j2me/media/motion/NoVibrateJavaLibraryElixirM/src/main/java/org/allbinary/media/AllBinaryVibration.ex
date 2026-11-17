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
# package org.allbinary.media

defmodule AllBinaryVibration do
  def jsuper(), do: AllBinaryVibrationME
def jstatic_VIBRATION(), do: JR.static_get(__MODULE__, :VIBRATION, fn -> AllBinaryNoVibration.jstatic_NO_VIBRATION() end)
  def jstatic_set_VIBRATION(value), do: JR.static_put(__MODULE__, :VIBRATION, value)

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
      AllBinaryVibrationME.jinit(this)
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
        throw({:jreturn, AllBinaryVibration.jstatic_VIBRATION()})
    end)
  end


  def jm_init() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (JR.call(JR.call(JR.get(GameConfigurationCentral.jm_getInstance(), :VIBRATION), :jm_getValue, []), :jm_intValue, []) == 0) do
            AllBinaryVibration.jstatic_set_VIBRATION(AllBinaryNoVibration.jstatic_NO_VIBRATION())
        else
            AllBinaryVibration.jstatic_set_VIBRATION(AllBinaryVibration.jnew())
        end
    end)
  end


  def jm_vibrate(this, p_duration, p_type, p_volume) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :duration, p_duration)
      JR.lset(f, :type, p_type)
      JR.lset(f, :volume, p_volume)
        nil
    end)
  end
end


