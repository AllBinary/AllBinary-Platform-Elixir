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
# package org.allbinary.graphics

defmodule GPointCircularPool do
  def jsuper(), do: BaseCircularPool

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_size) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      BaseCircularPool.jinit(this)
      jinitfields(this)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.lget(f, :size)))
        JR.put(this, :OBJECT_ARRAY, JR.anew(JR.lget(f, :size), nil))
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :OBJECT_ARRAY), JR.lget(f, :index), CustomGPoint.jm_getInstance3(0, 0))
        end)
    end)
  end

  def jnew(p_size) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_size)
    this
  end
end


