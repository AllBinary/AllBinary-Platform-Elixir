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
# package org.allbinary.direction

defmodule DirectionUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DirectionUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :directionArray, nil)
    JR.put(this, :directionArray2, nil)
        JR.put(this, :directionArray, JR.anew(10, nil))
        JR.put(this, :directionArray2, JR.anew(10, nil))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DirectionUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        JR.lset(f, :directionFactory, DirectionFactory.jm_getInstance())
        JR.aset(JR.get(this, :directionArray), JR.call(JR.get(JR.lget(f, :directionFactory), :LEFT), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :LEFT))
        JR.aset(JR.get(this, :directionArray), JR.call(JR.get(JR.lget(f, :directionFactory), :RIGHT), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :RIGHT))
        JR.aset(JR.get(this, :directionArray), JR.call(JR.get(JR.lget(f, :directionFactory), :UP), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :UP))
        JR.aset(JR.get(this, :directionArray), JR.call(JR.get(JR.lget(f, :directionFactory), :DOWN), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :DOWN))
        JR.aset(JR.get(this, :directionArray2), JR.call(JR.get(JR.lget(f, :directionFactory), :LEFT), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :LEFT))
        JR.aset(JR.get(this, :directionArray2), JR.call(JR.get(JR.lget(f, :directionFactory), :RIGHT), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :RIGHT))
        JR.aset(JR.get(this, :directionArray2), JR.call(JR.get(JR.lget(f, :directionFactory), :UP), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :UP))
        JR.aset(JR.get(this, :directionArray2), JR.call(JR.get(JR.lget(f, :directionFactory), :DOWN), :jm_getValue, []), JR.get(JR.lget(f, :angleFactory), :DOWN))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getAngle(this, p_direction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
        throw({:jreturn, JR.aget(JR.get(this, :directionArray2), JR.call(JR.lget(f, :direction), :jm_getValue, []))})
    end)
  end


  def jm_getFrameAngle(this, p_direction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
        throw({:jreturn, JR.aget(JR.get(this, :directionArray), JR.call(JR.lget(f, :direction), :jm_getValue, []))})
    end)
  end
end


