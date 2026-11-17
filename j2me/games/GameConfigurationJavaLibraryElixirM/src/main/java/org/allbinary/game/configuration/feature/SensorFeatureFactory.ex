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
# package org.allbinary.game.configuration.feature

defmodule SensorFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SensorFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NO_ORIENTATION, nil)
    JR.put(this, :ORIENTATION_SENSORS, nil)
    JR.put(this, :SIMULATED_ORIENTATION_SENSORS, nil)
    JR.put(this, :YAW, nil)
    JR.put(this, :YAW_MINUS_RIGHT_PLUS_LEFT, nil)
    JR.put(this, :YAW_MINUS_LEFT_PLUS_RIGHT, nil)
    JR.put(this, :PITCH, nil)
    JR.put(this, :ROLL, nil)
        JR.put(this, :NO_ORIENTATION, SensorFeature.jnew("No Orientation"))
        JR.put(this, :ORIENTATION_SENSORS, SensorFeature.jnew("Orientation Sensors"))
        JR.put(this, :SIMULATED_ORIENTATION_SENSORS, SensorFeature.jnew("Simulated Orientation Sensors"))
        JR.put(this, :YAW, SensorFeature.jnew("Yaw"))
        JR.put(this, :YAW_MINUS_RIGHT_PLUS_LEFT, SensorFeature.jnew("Yaw -Right +Left"))
        JR.put(this, :YAW_MINUS_LEFT_PLUS_RIGHT, SensorFeature.jnew("Yaw -Left +Right "))
        JR.put(this, :PITCH, SensorFeature.jnew("Pitch"))
        JR.put(this, :ROLL, SensorFeature.jnew("Roll"))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SensorFeatureFactory.jstatic_instance()})
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
end


