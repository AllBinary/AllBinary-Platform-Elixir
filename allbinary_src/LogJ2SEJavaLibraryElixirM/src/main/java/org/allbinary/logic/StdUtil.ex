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
# package org.allbinary.logic

#ActualPlatform
defmodule StdUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> StdUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EMPTY_VECTOR, nil)
    JR.put(this, :NULL_TABLE, nil)
    JR.put(this, :NULL_MAP, nil)
        JR.put(this, :EMPTY_VECTOR, JR.call(this, :jm_createVector, []))
        JR.put(this, :NULL_TABLE, JR.call(this, :jm_createHashtable, []))
        JR.put(this, :NULL_MAP, JR.call(this, :jm_createHashMap, []))
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
        throw({:jreturn, StdUtil.jstatic_instance()})
    end)
  end


  def jm_createStack(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, ABStack.jnew()})
    end)
  end


  def jm_createVector(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, ABVector.jnew()})
    end)
  end


  def jm_createHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, ABHashtable.jnew()})
    end)
  end


  def jm_createHashMap(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, ABHashMap.jnew()})
    end)
  end
end


