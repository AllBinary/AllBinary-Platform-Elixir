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

defmodule GyroSensorFactory do
  def jsuper(), do: JObject
def jstatic_allBinaryGyroSensor(), do: JR.static_get(__MODULE__, :allBinaryGyroSensor, fn -> AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR() end)
  def jstatic_set_allBinaryGyroSensor(value), do: JR.static_put(__MODULE__, :allBinaryGyroSensor, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_init() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        GyroSensorFactory.jstatic_set_allBinaryGyroSensor(NoGyroSensor.jnew())
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GyroSensorFactory.jstatic_allBinaryGyroSensor()})
    end)
  end
end


