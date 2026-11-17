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

defmodule BasicArrayListResetablePool do
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
        BasicArrayListResetablePool.jinitfields(this)
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
        nil
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
end


