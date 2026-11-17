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

defmodule AccelerometerSensorUpdateProcessor do
  def jsuper(), do: Processor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    Processor.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :sensorFeatureFactory, SensorFeatureFactory.jm_getInstance())
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :ORIENTATION_SENSORS)]) do
            JR.call(AccelerometerSensorFactory.jm_getInstance(), :jm_setCompleteMotionGestureInputEventListener, [SingleKeyPressGameKeyFromMotionGestureEventListener.jnew()])
        else
            if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :SIMULATED_ORIENTATION_SENSORS)]) do
            JR.call(AccelerometerSensorFactory.jm_getInstance(), :jm_setCompleteMotionGestureInputEventListener, [SingleKeyPressGameKeyFromMotionGestureEventListener.jnew()])
        else
            if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :NO_ORIENTATION)]) do
            JR.call(AccelerometerSensorFactory.jm_getInstance(), :jm_setCompleteMotionGestureInputEventListener, [NoCompleteMotionGestureInputEventListener.jm_getInstance()])
        else
            throw({:jexception, JR.exception("Exception", "Sensor Feature Not Set")})
        end
        end
        end
    end)
  end
end


