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
# package org.allbinary.logic.util.cache

defmodule BaseCircularPool do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :OBJECT_ARRAY, nil)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL())
        JR.put(this, :OBJECT_ARRAY, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT_ARRAY))
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


  def jm_getNextInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :anyType, JR.aget(JR.get(this, :OBJECT_ARRAY), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])))
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
        throw({:jreturn, JR.lget(f, :anyType)})
    end)
  end


  def jm_init(this, p_allBinaryObjectFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryObjectFactoryInterface, p_allBinaryObjectFactoryInterface)
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [0])
        JR.lset(f, :size, JR.call(JR.get(this, :circularIndexUtil), :jm_getSize, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :OBJECT_ARRAY), JR.lget(f, :index), JR.call(JR.lget(f, :allBinaryObjectFactoryInterface), :jm_getInstance, []))
        end)
    end)
  end


  def jm_getInstance(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.aget(JR.get(this, :OBJECT_ARRAY), JR.lget(f, :index))})
    end)
  end
end


