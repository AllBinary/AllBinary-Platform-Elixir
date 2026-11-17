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
# package org.allbinary.logic.math.vector

defmodule AxisMathVectorUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AxisMathVectorUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :noDecimalTrigTable, nil)
        JR.put(this, :noDecimalTrigTable, NoDecimalTrigTable.jm_getInstance())
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AxisMathVectorUtil.jstatic_instance()})
    end)
  end


  def jm_calculateX(this, p_magnitude, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
        throw({:jreturn, ((JR.lget(f, :magnitude) * JR.call(JR.get(this, :noDecimalTrigTable), :jm_cos, [JR.lget(f, :angle)])) / 10)})
    end)
  end


  def jm_calculateY(this, p_magnitude, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
        throw({:jreturn, ((JR.lget(f, :magnitude) * JR.call(JR.get(this, :noDecimalTrigTable), :jm_sin, [JR.lget(f, :angle)])) / 10)})
    end)
  end


  def jm_calculateZ(this, p_magnitude, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :otherAngle, p_otherAngle)
        throw({:jreturn, ((JR.lget(f, :magnitude) * JR.call(JR.get(this, :noDecimalTrigTable), :jm_sin, [JR.lget(f, :otherAngle)])) / 10)})
    end)
  end
end


