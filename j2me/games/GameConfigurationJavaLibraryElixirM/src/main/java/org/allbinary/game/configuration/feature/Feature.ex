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
# package org.allbinary.game.configuration.feature

defmodule Feature do
  def jsuper(), do: JObject
def jstatic_hashtable(), do: JR.static_get(__MODULE__, :hashtable, fn -> JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []) end)
  def jstatic_set_hashtable(value), do: JR.static_put(__MODULE__, :hashtable, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
        
    nil
  end


  def jinit(this, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        Feature.jm_add(JR.lget(f, :name), this)
        JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_add, [this])
    end)
  end

  def jnew(p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name)
    this
  end


  def jm_getInstance(p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        throw({:jreturn, JR.call(Feature.jstatic_hashtable(), :jm_get, [JR.lget(f, :name)])})
    end)
  end


  def jm_add(p_name, p_gameFeature) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :gameFeature, p_gameFeature)
        JR.call(Feature.jstatic_hashtable(), :jm_put, [JR.lget(f, :name), JR.lget(f, :gameFeature)])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getName, [])})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end
end


