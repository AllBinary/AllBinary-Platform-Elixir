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
# package org.allbinary.layer

defmodule AllBinaryLayerCircularPool do
  def jsuper(), do: BaseCircularPool

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      BaseCircularPool.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_initAllBinaryLayerCircularPool(this, p_allbinaryLayerFactoryInterface, p_total) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerFactoryInterface, p_allbinaryLayerFactoryInterface)
      JR.lset(f, :total, p_total)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.lget(f, :total)))
        JR.put(this, :OBJECT_ARRAY, JR.anew(JR.lget(f, :total), nil))
        JR.lset(f, :localIndex, 0)
        JR.jfor(fn -> (JR.lget(f, :localIndex) < JR.lget(f, :total)) end, fn -> JR.lpostinc(f, :localIndex, 1) end, fn ->
            JR.aset(JR.get(this, :OBJECT_ARRAY), JR.lget(f, :localIndex), JR.call(JR.lget(f, :allbinaryLayerFactoryInterface), :jm_getInstance, []))
        end)
    end)
  end
end


