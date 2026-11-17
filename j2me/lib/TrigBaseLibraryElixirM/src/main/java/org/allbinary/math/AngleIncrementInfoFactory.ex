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

defmodule AngleIncrementInfoFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AngleIncrementInfoFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :angleIncrementInfo, nil)
        JR.put(this, :angleIncrementInfo, JR.anew(JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)), nil))
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
        throw({:jreturn, AngleIncrementInfoFactory.jstatic_instance()})
    end)
  end


  def jm_getAt(this, p_angleIncrement) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angleIncrement, p_angleIncrement)
        JR.lset(f, :halfAngleIncrement, (Bitwise.bsr(JR.int32(JR.lget(f, :angleIncrement)), 1)))
        JR.lset(f, :angleIncrementInfo, nil)
        JR.lset(f, :angleIncrementInfoCanBeNull, JR.aget(JR.get(this, :angleIncrementInfo), JR.lget(f, :halfAngleIncrement)))
        if (JR.lget(f, :angleIncrementInfoCanBeNull) == nil) do
            JR.lset(f, :angleIncrementInfo, AngleIncrementInfo.jnew(JR.lget(f, :angleIncrement)))
            JR.aset(JR.get(this, :angleIncrementInfo), JR.lget(f, :halfAngleIncrement), JR.lget(f, :angleIncrementInfo))
            throw({:jreturn, JR.lget(f, :angleIncrementInfo)})
        else
            JR.lset(f, :angleIncrementInfo, JR.lget(f, :angleIncrementInfoCanBeNull))
        end
        throw({:jreturn, JR.lget(f, :angleIncrementInfo)})
    end)
  end
end


