# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

defmodule PoolType do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :cacheType, nil)
        
    nil
  end


  def jinit(this, p_cacheType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheType, p_cacheType)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :cacheType, JR.lget(f, :cacheType))
    end)
  end

  def jnew(p_cacheType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cacheType)
    this
  end


  def jm_getCacheType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :cacheType)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :POOL_TYPE, "PoolType: ")
        throw({:jreturn, JR.lget(f, :POOL_TYPE) <> JR.call(JR.call(this, :jm_getCacheType, []), :jm_toString, [])})
    end)
  end
end


