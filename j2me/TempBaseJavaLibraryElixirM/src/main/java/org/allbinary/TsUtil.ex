# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary

#TempBase
defmodule TsUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TsUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TsUtil.jstatic_instance()})
    end)
  end


  def jm_longBitsToDouble(this, p_bits) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bits, p_bits)
        throw({:jreturn, J.Double.jm_longBitsToDouble(JR.lget(f, :bits))})
    end)
  end


  def jm_intBitsToFloat(this, p_bits) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :bits, p_bits)
        throw({:jreturn, J.Float.jm_intBitsToFloat(JR.lget(f, :bits))})
    end)
  end


  def jm_hashCode(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        throw({:jreturn, JR.call(JR.lget(f, :anyType), :jm_hashCode, [])})
    end)
  end


  def jm_waitFor(this, p_any, p_timeoutMillis) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :any, p_any)
      JR.lset(f, :timeoutMillis, p_timeoutMillis)
        JR.lset(f, :anyType, JR.lget(f, :any))
        JR.call(JR.lget(f, :anyType), :jm_wait, [JR.lget(f, :timeoutMillis)])
    end)
  end


  def jm_compareTo(this, p_a, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :a, p_a)
      JR.lset(f, :b, p_b)
        throw({:jreturn, JR.call(JR.lget(f, :a), :jm_compareTo, [JR.lget(f, :b)])})
    end)
  end
end


