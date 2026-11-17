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
# package org.allbinary.util

defmodule CircularIndexUtil do
  def jsuper(), do: JObject
def jstatic_NULL_CIRCULAR_INDEX_UTIL(), do: JR.static_get(__MODULE__, :NULL_CIRCULAR_INDEX_UTIL, fn -> CircularIndexUtil.jnew(0, 0) end)
  def jstatic_set_NULL_CIRCULAR_INDEX_UTIL(value), do: JR.static_put(__MODULE__, :NULL_CIRCULAR_INDEX_UTIL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :index, 0)
    JR.put(this, :lastIndex, 0)
    JR.put(this, :size, 0)
        JR.put(this, :index, 0)
        JR.put(this, :lastIndex, 0)
        JR.put(this, :size, 0)
    nil
  end


  def jinit(this, p_index, p_size) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :size, p_size)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setSize, [JR.lget(f, :size)])
        JR.call(this, :jm_setIndex, [JR.lget(f, :index)])
    end)
  end

  def jnew(p_index, p_size) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_index, p_size)
    this
  end


  def jm_next(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :index) >= JR.get(this, :lastIndex)) do
            JR.put(this, :index, 0)
        else
            JR.postinc(this, :index, 1)
        end
        throw({:jreturn, JR.get(this, :index)})
    end)
  end


  def jm_previous(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :index) < 1) do
            JR.put(this, :index, JR.get(this, :lastIndex))
        else
            JR.postinc(this, :index, -1)
        end
        throw({:jreturn, JR.get(this, :index)})
    end)
  end


  def jm_setIndex(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        if (JR.lget(f, :index) > JR.get(this, :lastIndex)) do
            throw({:jreturn, nil})
        end
        JR.put(this, :index, JR.lget(f, :index))
    end)
  end


  def jm_getIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :index)})
    end)
  end


  def jm_createInstance(p_max) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :max, p_max)
        throw({:jreturn, CircularIndexUtil.jnew(0, JR.lget(f, :max))})
    end)
  end


  def jm_createInstanceAt(p_index, p_max) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :max, p_max)
        throw({:jreturn, CircularIndexUtil.jnew(JR.lget(f, :index), JR.lget(f, :max))})
    end)
  end


  def jm_setSize(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        JR.put(this, :size, JR.lget(f, :size))
        JR.put(this, :lastIndex, JR.int32(JR.lget(f, :size) - 1))
        JR.put(this, :index, 0)
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :size)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :INDEX_LABEL)]), :jm_appendint, [JR.get(this, :index)]), :jm_append, ["lastIndex: "]), :jm_appendint, [JR.get(this, :lastIndex)]), :jm_append, ["size: "]), :jm_appendint, [JR.get(this, :size)]), :jm_toString, [])})
    end)
  end
end


