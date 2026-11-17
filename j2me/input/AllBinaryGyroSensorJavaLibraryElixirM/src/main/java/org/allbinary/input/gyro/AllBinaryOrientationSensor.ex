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

defmodule AllBinaryOrientationSensor do
  def jsuper(), do: AllBinarySensor
def jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR(), do: JR.static_get(__MODULE__, :NULL_ALLBINARY_ORIENTATION_SENSOR, fn -> AllBinaryOrientationSensor.jnew() end)
  def jstatic_set_NULL_ALLBINARY_ORIENTATION_SENSOR(value), do: JR.static_put(__MODULE__, :NULL_ALLBINARY_ORIENTATION_SENSOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :sensorDataFloatArray, nil)
    JR.put(this, :listener, nil)
        JR.put(this, :sensorDataFloatArray, PrimitiveFloatUtil.jm_getArrayInstance())
        JR.put(this, :listener, NoCompleteMotionGestureInputEventListener.jm_getInstance())
    nil
  end


  def jm_setCompleteMotionGestureInputEventListener(this, p_completeMotionGestureInputEventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :completeMotionGestureInputEventListenerInterface, p_completeMotionGestureInputEventListenerInterface)
        JR.put(this, :listener, JR.lget(f, :completeMotionGestureInputEventListenerInterface))
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      AllBinarySensor.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getOrientation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end
end


