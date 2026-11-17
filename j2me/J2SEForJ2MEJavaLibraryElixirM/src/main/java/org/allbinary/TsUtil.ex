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

#J2SE
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


  def jm_getRecord(this, p_anyType, p_recordId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :recordId, p_recordId)
        JR.lset(f, :recordStore, JR.lget(f, :anyType))
        JR.lset(f, :data, nil)
        (
            JR.lset(f, :data, JR.anew(JR.call(JR.lget(f, :recordStore), :jm_getRecordSize, [JR.lget(f, :recordId)]), 0))
            JR.call(JR.lget(f, :recordStore), :jm_getRecord, [JR.lget(f, :recordId), JR.lget(f, :data), 0])
        )
        throw({:jreturn, (if (JR.alength(JR.lget(f, :data)) < 1), do: JR.get(NullUtil.jm_getInstance(), :NULL_BYTE_ARRAY), else: JR.lget(f, :data))})
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


  def jm_equalIgnoreCase(this, p_a, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :a, p_a)
      JR.lset(f, :b, p_b)
        throw({:jreturn, JR.call(JR.lget(f, :a), :jm_equalsIgnoreCase, [JR.lget(f, :b)])})
    end)
  end


  def jm_equalsNotstring(this, p_anyType, p_object2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :object2, p_object2)
        throw({:jreturn, JR.call(JR.lget(f, :anyType), :jm_equals, [JR.lget(f, :object2)])})
    end)
  end


  def jm_getClassClassLoader(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        throw({:jreturn, JR.call(JR.class_name(JR.lget(f, :anyType)), :jm_getClassLoader, [])})
    end)
  end


  def jm_toNumberFromChar(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, JR.int32(JR.lget(f, :value))})
    end)
  end


  def jm_toNumber(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, JR.lget(f, :value)})
    end)
  end


  def jm_getByteArray(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        throw({:jreturn, JR.call(JR.lget(f, :string), :jm_getBytes, [])})
    end)
  end


  def jm_isItemListener(this, p_owner) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :owner, p_owner)
        if JR.instance_of(JR.lget(f, :owner), Form) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_gc(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        J.System.jm_gc()
    end)
  end
end


