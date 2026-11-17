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
# package org.allbinary.math

defmodule DistanceUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DistanceUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :mathUtil, nil)
        JR.put(this, :mathUtil, MathUtil.jm_getInstance())
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DistanceUtil.jstatic_instance()})
    end)
  end


  def jm_getDistance(this, p_x1, p_y1, p_x2, p_y2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x1, p_x1)
      JR.lset(f, :y1, p_y1)
      JR.lset(f, :x2, p_x2)
      JR.lset(f, :y2, p_y2)
        JR.lset(f, :dx, JR.int32(JR.lget(f, :x1) - JR.lget(f, :x2)))
        JR.lset(f, :dy, JR.int32(JR.lget(f, :y1) - JR.lget(f, :y2)))
        throw({:jreturn, JR.int32(JR.call(JR.get(this, :mathUtil), :jm_sqrt, [JR.int32((JR.int32(JR.lget(f, :dx) * JR.lget(f, :dx))) + (JR.int32(JR.lget(f, :dy) * JR.lget(f, :dy))))]))})
    end)
  end
end


