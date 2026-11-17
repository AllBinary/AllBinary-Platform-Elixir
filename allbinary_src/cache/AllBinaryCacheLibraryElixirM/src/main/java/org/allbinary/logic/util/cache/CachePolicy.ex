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

defmodule CachePolicy do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :maxTime, 0)
    JR.put(this, :maxSize, 0)
        
        JR.put(this, :maxTime, 0)
        JR.put(this, :maxSize, 0)
    nil
  end


  def jinit(this, p_name, p_maxTime, p_maxSize) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :maxTime, p_maxTime)
      JR.lset(f, :maxSize, p_maxSize)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.call(this, :jm_setMaxTime, [JR.lget(f, :maxTime)])
        JR.call(this, :jm_setMaxSize, [JR.lget(f, :maxSize)])
    end)
  end

  def jnew(p_name, p_maxTime, p_maxSize) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_maxTime, p_maxSize)
    this
  end


  def jm_getMaxTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxTime)})
    end)
  end


  def jm_setMaxTime(this, p_maxTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxTime, p_maxTime)
        JR.put(this, :maxTime, JR.lget(f, :maxTime))
    end)
  end


  def jm_getMaxSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxSize)})
    end)
  end


  def jm_setMaxSize(this, p_maxSize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxSize, p_maxSize)
        JR.put(this, :maxSize, JR.lget(f, :maxSize))
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


