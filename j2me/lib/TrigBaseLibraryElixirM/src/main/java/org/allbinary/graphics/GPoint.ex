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

defmodule GPoint do
  def jsuper(), do: JObject
def jstatic_POINT_LABEL(), do: JR.static_get(__MODULE__, :POINT_LABEL, fn -> "Point: " end)
  def jstatic_set_POINT_LABEL(value), do: JR.static_put(__MODULE__, :POINT_LABEL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
    JR.put(this, :z, 0)
        
        
        
    nil
  end


  def jm_getInstance(p_point) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
        throw({:jreturn, GPoint.jnew(JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, []), JR.call(JR.lget(f, :point), :jm_getZ, []))})
    end)
  end


  def jinit(this, p_x, p_y, p_z) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :x, JR.lget(f, :x))
        JR.put(this, :y, JR.lget(f, :y))
        JR.put(this, :z, JR.lget(f, :z))
    end)
  end

  def jnew(p_x, p_y, p_z) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_x, p_y, p_z)
    this
  end


  def jm_getX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :x)})
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :y)})
    end)
  end


  def jm_getZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :z)})
    end)
  end


  def jm_getRawX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :x)})
    end)
  end


  def jm_getRawY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :y)})
    end)
  end


  def jm_getRawZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :z)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, GPoint.jm_toStringStatic(JR.call(this, :jm_getX, []), JR.call(this, :jm_getY, []), JR.call(this, :jm_getZ, []))})
    end)
  end


  def jm_toStringStatic(p_x, p_y, p_z) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :positionStrings, PositionStrings.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [GPoint.jstatic_POINT_LABEL()])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :X_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :x)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Y_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :y)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Z_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :z)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


