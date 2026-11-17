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

defmodule BasicArrayListPool do
  def jsuper(), do: AbstractArrayListPool

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_cacheableInterfaceFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaceFactoryInterface, p_cacheableInterfaceFactoryInterface)
        AbstractArrayListPool.jinit(this, JR.lget(f, :cacheableInterfaceFactoryInterface))
        BasicArrayListPool.jinitfields(this)
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
        JR.call(JR.get(this, :buffers), :jm_clear, [])
    end)
  end


  def jm_remove(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        JR.lset(f, :size, JR.call(JR.get(this, :buffers), :jm_size, []))
        if (JR.lget(f, :size) > 0) do
            throw({:jreturn, JR.call(JR.get(this, :buffers), :jm_removeAt, [JR.int32(JR.lget(f, :size) - 1)])})
        else
            throw({:jreturn, JR.call(JR.get(this, :cacheableInterfaceFactoryInterface), :jm_getInstance, [JR.lget(f, :key)])})
        end
    end)
  end


  def jm_addAll(this, p_usedList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :usedList, p_usedList)
        JR.lset(f, :index, JR.call(JR.lget(f, :usedList), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :anyType, JR.aget(JR.get(JR.lget(f, :usedList), :objectArray), JR.lget(f, :index)))
            JR.call(this, :jm_add, [JR.lget(f, :anyType)])
        end)
        JR.call(JR.lget(f, :usedList), :jm_clear, [])
    end)
  end


  def jm_releaseUsedBackToPool(this, p_usedList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :usedList, p_usedList)
        JR.lset(f, :index, JR.call(JR.lget(f, :usedList), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :list, JR.aget(JR.get(JR.lget(f, :usedList), :objectArray), JR.lget(f, :index)))
            if (JR.call(JR.lget(f, :list), :jm_size, []) == 0) do
                JR.call(JR.lget(f, :usedList), :jm_removeAt, [JR.lget(f, :index)])
                JR.call(this, :jm_add, [JR.lget(f, :list)])
            end
        end)
    end)
  end
end


