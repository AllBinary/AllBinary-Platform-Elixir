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
# package org.allbinary.game.score

defmodule Scoreable do
  def jsuper(), do: JObject
def jstatic_ID(), do: JR.static_get(__MODULE__, :ID, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [3]) end)
  def jstatic_set_ID(value), do: JR.static_put(__MODULE__, :ID, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :points, 0)
        
    nil
  end


  def jinit(this, p_points) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :points, JR.lget(f, :points))
    end)
  end

  def jnew(p_points) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_points)
    this
  end


  def jm_addPoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        JR.put(this, :points, JR.int32(JR.get(this, :points) + JR.lget(f, :points)))
    end)
  end


  def jm_removePoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        JR.put(this, :points, JR.int32(JR.get(this, :points) - JR.lget(f, :points)))
    end)
  end


  def jm_setPoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        JR.put(this, :points, JR.lget(f, :points))
    end)
  end


  def jm_getPoints(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :points)})
    end)
  end
end


