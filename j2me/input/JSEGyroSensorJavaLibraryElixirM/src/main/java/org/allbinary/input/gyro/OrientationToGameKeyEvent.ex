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

defmodule OrientationToGameKeyEvent do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :allBinaryGyroSensor, nil)
    JR.put(this, :MIN, 0)
        JR.put(this, :allBinaryGyroSensor, nil)
        JR.put(this, :MIN, 15)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(SensorFeatureFactory.jm_getInstance(), :NO_ORIENTATION)]) do
            JR.put(this, :allBinaryGyroSensor, NoGyroSensor.jnew())
        else
            throw({:jexception, JR.exception("Exception", "Not Such Feature")})
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setAllBinaryGyroSensor(this, p_allBinaryGyroSensor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGyroSensor, p_allBinaryGyroSensor)
        JR.put(this, :allBinaryGyroSensor, JR.lget(f, :allBinaryGyroSensor))
    end)
  end


  def jm_getAllBinaryGyroSensor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :allBinaryGyroSensor)})
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_updateGameKeyEvents(this, p_orientation, p_yaw, p_pitch, p_roll) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :orientation, p_orientation)
      JR.lset(f, :yaw, p_yaw)
      JR.lset(f, :pitch, p_pitch)
      JR.lset(f, :roll, p_roll)
        nil
    end)
  end
end


