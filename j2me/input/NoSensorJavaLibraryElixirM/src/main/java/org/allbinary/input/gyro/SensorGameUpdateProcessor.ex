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

defmodule SensorGameUpdateProcessor do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :inputSensor, nil)
        JR.put(this, :inputSensor, NoAllBinarySensor.jm_getInstance())
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


  def jm_setInputSensor(this, p_inputSensor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputSensor, p_inputSensor)
        JR.put(this, :inputSensor, JR.lget(f, :inputSensor))
    end)
  end


  def jm_getInputSensor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :inputSensor)})
    end)
  end


  def jm_process(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        nil
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


  def jm_isAnySensor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :inputSensor) == NoAllBinarySensor.jm_getInstance()) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end


  def jm_setNoSensors(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setInputSensor, [NoAllBinarySensor.jm_getInstance()])
    end)
  end
end


