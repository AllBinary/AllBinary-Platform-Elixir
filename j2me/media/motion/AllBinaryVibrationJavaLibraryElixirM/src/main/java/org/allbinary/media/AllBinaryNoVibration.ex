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

defmodule AllBinaryNoVibration do
  def jsuper(), do: AllBinaryVibrationME
def jstatic_NO_VIBRATION(), do: JR.static_get(__MODULE__, :NO_VIBRATION, fn -> AllBinaryNoVibration.jnew() end)
  def jstatic_set_NO_VIBRATION(value), do: JR.static_put(__MODULE__, :NO_VIBRATION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    AllBinaryVibrationME.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
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


