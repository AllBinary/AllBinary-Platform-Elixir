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

defmodule AbstractArrayListPool do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :buffers, nil)
    JR.put(this, :cacheableInterfaceFactoryInterface, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :buffers, BasicArrayListD.jnew())
        
    nil
  end


  def jinit(this, p_cacheableInterfaceFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaceFactoryInterface, p_cacheableInterfaceFactoryInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :cacheableInterfaceFactoryInterface, JR.lget(f, :cacheableInterfaceFactoryInterface))
    end)
  end

  def jnew(p_cacheableInterfaceFactoryInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cacheableInterfaceFactoryInterface)
    this
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_remove(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_add(this, p_cacheableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterface, p_cacheableInterface)
        JR.call(JR.get(this, :buffers), :jm_add, [JR.lget(f, :cacheableInterface)])
    end)
  end


  def jm_addArray(this, p_cacheableInterfaces) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaces, p_cacheableInterfaces)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :cacheableInterfaces))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.get(this, :buffers), :jm_add, [JR.aget(JR.lget(f, :cacheableInterfaces), JR.lget(f, :index))])
        end)
    end)
  end
end


