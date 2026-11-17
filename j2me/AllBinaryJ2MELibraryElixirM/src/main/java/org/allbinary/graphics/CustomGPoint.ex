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

defmodule CustomGPoint do
  def jsuper(), do: GPoint
def jstatic_NULL_CUSTOM_POINT(), do: JR.static_get(__MODULE__, :NULL_CUSTOM_POINT, fn -> CustomGPoint.jnew(0, 0, 0) end)
  def jstatic_set_NULL_CUSTOM_POINT(value), do: JR.static_put(__MODULE__, :NULL_CUSTOM_POINT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :cx, 0)
    JR.put(this, :cy, 0)
    JR.put(this, :cz, 0)
        JR.put(this, :cx, 0)
        JR.put(this, :cy, 0)
        JR.put(this, :cz, 0)
    nil
  end


  def jm_getInstance(p_point) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
        throw({:jreturn, CustomGPoint.jnew(JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, []), JR.call(JR.lget(f, :point), :jm_getZ, []))})
    end)
  end


  def jm_getInstance3(p_x, p_y) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        throw({:jreturn, CustomGPoint.jnew(JR.lget(f, :x), JR.lget(f, :y), 3)})
    end)
  end


  def jinit(this, p_x, p_y, p_z) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        GPoint.jinit(this, JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z))
        CustomGPoint.jinitfields(this)
    end)
  end

  def jnew(p_x, p_y, p_z) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_x, p_y, p_z)
    this
  end


  def jm_setX(this, p_x) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
        JR.put(this, :cx, JR.lget(f, :x))
    end)
  end


  def jm_getX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :cx)})
    end)
  end


  def jm_setY(this, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :y, p_y)
        JR.put(this, :cy, JR.lget(f, :y))
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :cy)})
    end)
  end


  def jm_setZ(this, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :z, p_z)
        JR.put(this, :cz, JR.lget(f, :z))
    end)
  end


  def jm_getZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :cz)})
    end)
  end
end


