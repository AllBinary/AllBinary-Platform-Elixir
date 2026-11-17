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
# package org.allbinary.graphics.color

defmodule BasicColorCacheFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicColorCacheFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :hashtable, nil)
        JR.put(this, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, BasicColorCacheFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_add(this, p_basicDefaultColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicDefaultColor, p_basicDefaultColor)
        JR.call(JR.get(this, :hashtable), :jm_put, [JR.call(JR.lget(f, :basicDefaultColor), :jm_intValue, []), JR.lget(f, :basicDefaultColor)])
    end)
  end


  def jm_getAndOrCreate(this, p_integer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :integer, p_integer)
        JR.lset(f, :basicColor, JR.call(JR.get(this, :hashtable), :jm_get, [JR.lget(f, :integer)]))
        if (JR.lget(f, :basicColor) == nil) do
            JR.lset(f, :basicColor, JR.call(BasicColorFactory.jm_getInstance(), :jm_createInstance, [JR.call(JR.lget(f, :integer), :jm_intValue, [])]))
            JR.call(JR.get(this, :hashtable), :jm_put, [JR.lget(f, :integer), JR.lget(f, :basicColor)])
        end
        throw({:jreturn, JR.lget(f, :basicColor)})
    end)
  end
end


