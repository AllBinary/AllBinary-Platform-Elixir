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
# package org.allbinary.logic.math

defmodule BasicDecimal do
  def jsuper(), do: JObject
def jstatic_ZERO_BIGDECIMAL(), do: JR.static_get(__MODULE__, :ZERO_BIGDECIMAL, fn -> BasicDecimal.jnew(0) end)
  def jstatic_set_ZERO_BIGDECIMAL(value), do: JR.static_put(__MODULE__, :ZERO_BIGDECIMAL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :units, 0)
    JR.put(this, :scaled, 0)
    JR.put(this, :factor, 0)
    JR.put(this, :factorValue, 0)
        
        JR.put(this, :scaled, 0)
        JR.put(this, :factor, JR.get(ScaleFactorFactory.jm_getInstance(), :DEFAULT_SCALE_FACTOR))
        JR.put(this, :factorValue, JR.get(ScaleFactorFactory.jm_getInstance(), :DEFAULT_SCALE_VALUE))
    nil
  end


  def jm_createBigDecimal(p_bigDecimal) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :bigDecimal, p_bigDecimal)
        throw({:jreturn, BasicDecimal.jnew(JR.call(JR.lget(f, :bigDecimal), :jm_getUnscaled, []))})
    end)
  end


  def jinit(this, p_units) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :units, p_units)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :units, JR.lget(f, :units))
        JR.call(this, :jm_updateScaled, [])
    end)
  end

  def jnew(p_units) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_units)
    this
  end


  def jm_setint(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.lget(f, :value))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_setlong(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.lget(f, :value))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_set(this, p_bigDecimal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bigDecimal, p_bigDecimal)
        JR.put(this, :units, JR.call(JR.lget(f, :bigDecimal), :jm_getUnscaled, []))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_addint(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.int64(JR.get(this, :units) + JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_addlong(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.int64(JR.get(this, :units) + JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_add(this, p_bigDecimal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bigDecimal, p_bigDecimal)
        JR.put(this, :units, JR.int64(JR.get(this, :units) + JR.call(JR.lget(f, :bigDecimal), :jm_getUnscaled, [])))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_subtractint(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.int64(JR.get(this, :units) - JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_subtractlong(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.int64(JR.get(this, :units) - JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_subtract(this, p_bigDecimal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bigDecimal, p_bigDecimal)
        JR.put(this, :units, JR.int64(JR.get(this, :units) - JR.call(JR.lget(f, :bigDecimal), :jm_getUnscaled, [])))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_multiplyint(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.int64(JR.get(this, :units) * JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_multiplylong(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, JR.int64(JR.get(this, :units) * JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_multiply(this, p_bigDecimal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bigDecimal, p_bigDecimal)
        JR.put(this, :units, JR.int64(JR.get(this, :units) * JR.call(JR.lget(f, :bigDecimal), :jm_getUnscaled, [])))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_divideint(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, div(JR.get(this, :units), JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_dividelong(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :units, div(JR.get(this, :units), JR.lget(f, :value)))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_divide(this, p_bigDecimal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bigDecimal, p_bigDecimal)
        JR.put(this, :units, div(JR.get(this, :units), JR.call(JR.lget(f, :bigDecimal), :jm_getUnscaled, [])))
        JR.call(this, :jm_updateScaled, [])
    end)
  end


  def jm_getUnscaled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :units)})
    end)
  end


  def jm_updateScaled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :scaled, JR.int32((div(JR.get(this, :units), JR.get(this, :factorValue)))))
    end)
  end


  def jm_getScaled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scaled)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.str(JR.get(this, :units))})
    end)
  end


  def jm_getScaledFactor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :factor)})
    end)
  end


  def jm_getScaledFactorValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :factorValue)})
    end)
  end
end


