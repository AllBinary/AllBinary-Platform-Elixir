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

#J2SEForJ2ME
defmodule J2SEUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> J2SEUtil.jnew() end)
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
        throw({:jreturn, J2SEUtil.jstatic_instance()})
    end)
  end


  def jm_getHashMapAsArray(this, p_hashMap) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashMap, p_hashMap)
        JR.lset(f, :objectArray, JR.call(JR.call(JR.lget(f, :hashMap), :jm_keySet, []), :jm_toArray, []))
        throw({:jreturn, JR.lget(f, :objectArray)})
    end)
  end


  def jm_getMapAsArray(this, p_map) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :map, p_map)
        JR.lset(f, :objectArray, JR.call(JR.call(JR.lget(f, :map), :jm_keySet, []), :jm_toArray, []))
        throw({:jreturn, JR.lget(f, :objectArray)})
    end)
  end


  def jm_getSetAsArray(this, p_set) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :set, p_set)
        JR.lset(f, :objectArray, JR.call(JR.lget(f, :set), :jm_toArray, []))
        throw({:jreturn, JR.lget(f, :objectArray)})
    end)
  end
end


