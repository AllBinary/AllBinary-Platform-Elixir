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
# package org.allbinary.input.accelerometer

defmodule AccelerometerSensorFactory do
  def jsuper(), do: JObject
def jstatic_allBinaryAccelerometerSensor(), do: JR.static_get(__MODULE__, :allBinaryAccelerometerSensor, fn -> nil end)
  def jstatic_set_allBinaryAccelerometerSensor(value), do: JR.static_put(__MODULE__, :allBinaryAccelerometerSensor, value)

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
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :sensorFeatureFactory, SensorFeatureFactory.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :ORIENTATION_SENSORS)]) do
            throw({:jexception, JR.exception("Exception", "No Orientation Sensors")})
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :SIMULATED_ORIENTATION_SENSORS)]) do
            throw({:jexception, JR.exception("Exception", "No Simulation Sensors")})
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :NO_ORIENTATION)]) do
            AccelerometerSensorFactory.jstatic_set_allBinaryAccelerometerSensor(NoAccelerometerSensor.jnew())
        else
            throw({:jexception, JR.exception("Exception", "Not Such SensorFeature")})
        end
        end
        end
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor()})
    end)
  end
end


