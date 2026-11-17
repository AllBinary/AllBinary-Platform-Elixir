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
# package org.allbinary.input.gyro

defmodule SingleSensorGameUpdateProcessor do
  def jsuper(), do: SensorGameUpdateProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :accelerometerSensorUpdateProcessor, nil)
    JR.put(this, :gyroSensorUpdateProcessor, nil)
        JR.put(this, :accelerometerSensorUpdateProcessor, AccelerometerSensorUpdateProcessor.jnew())
        JR.put(this, :gyroSensorUpdateProcessor, GyroSensorUpdateProcessor.jnew())
    nil
  end

  def jinit(this) do
    SensorGameUpdateProcessor.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_process(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(this, :jm_setNoSensors, [])
    end)
  end


  def jm_sendNotifications(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        nil
    end)
  end
end


