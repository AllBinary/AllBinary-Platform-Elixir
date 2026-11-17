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
# package org.allbinary.physics.movement

defmodule MovementInterface do
  def jsuper(), do: JObject


  def jm_init(this, p_speedBasicDecimal, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :speedBasicDecimal, p_speedBasicDecimal)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "init")})
    end)
  end


  def jm_process(this, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
      throw({:jexception, JR.exception("AbstractMethodError", "process")})
    end)
  end


  def jm_stop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "stop")})
    end)
  end
end


