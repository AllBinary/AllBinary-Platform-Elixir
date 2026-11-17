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

defmodule IndexedBasicArrayListCache do
  def jsuper(), do: BaseBasicArrayListCache

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :size, 0)
    JR.put(this, :index, 0)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :size, 0)
        JR.put(this, :index, 0)
    nil
  end


  def jm_createCache(p_size) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        JR.lset(f, :indexedBasicArrayListCache, IndexedBasicArrayListCache.jnew())
        JR.call(JR.lget(f, :indexedBasicArrayListCache), :jm_init, [JR.lget(f, :size)])
        throw({:jreturn, JR.lget(f, :indexedBasicArrayListCache)})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      BaseBasicArrayListCache.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_init(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        if (JR.get(this, :size) < JR.lget(f, :size)) do
            JR.call(JR.get(this, :list), :jm_ensureCapacity, [JR.lget(f, :size)])
            JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
            JR.jfor(fn -> (JR.lget(f, :index) >= JR.get(this, :size)) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
                JR.call(this, :jm_addDefault, [])
            end)
            JR.put(this, :size, JR.lget(f, :size))
        end
    end)
  end


  def jm_getAt(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index))})
    end)
  end


  def jm_addDefault(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_addObject(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :anyType)])
    end)
  end


  def jm_add(this, p_cacheableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterface, p_cacheableInterface)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :cacheableInterface)])
    end)
  end


  def jm_addArray(this, p_cacheableInterfaces) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaces, p_cacheableInterfaces)
        throw({:jexception, JR.exception("Exception", "No Imple")})
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :index, 0)
    end)
  end
end


