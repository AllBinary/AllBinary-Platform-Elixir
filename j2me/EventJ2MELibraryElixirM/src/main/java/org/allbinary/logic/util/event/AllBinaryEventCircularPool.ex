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
# package org.allbinary.logic.util.event

defmodule AllBinaryEventCircularPool do
  def jsuper(), do: BaseCircularPool

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_max) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :max, p_max)
      BaseCircularPool.jinit(this)
      jinitfields(this)
        JR.put(this, :OBJECT_ARRAY, JR.anew(JR.lget(f, :max), nil))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.lget(f, :max)))
    end)
  end

  def jnew(p_max) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_max)
    this
  end


  def jm_initAllBinaryEventCircularPool(this, p_allBinaryEventObjectFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryEventObjectFactoryInterface, p_allBinaryEventObjectFactoryInterface)
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [0])
        JR.lset(f, :size, JR.call(JR.get(this, :circularIndexUtil), :jm_getSize, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :OBJECT_ARRAY), JR.lget(f, :index), JR.call(JR.lget(f, :allBinaryEventObjectFactoryInterface), :jm_getInstance, []))
        end)
    end)
  end
end


