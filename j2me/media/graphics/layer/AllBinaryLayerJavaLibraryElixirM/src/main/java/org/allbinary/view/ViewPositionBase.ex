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
# package org.allbinary.view

defmodule ViewPositionBase do
  def jsuper(), do: GPoint
def jstatic_NULL_VIEW_POSITION(), do: JR.static_get(__MODULE__, :NULL_VIEW_POSITION, fn -> ViewPositionBase.jnew(0, 0, 0) end)
  def jstatic_set_NULL_VIEW_POSITION(value), do: JR.static_put(__MODULE__, :NULL_VIEW_POSITION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_x, p_y, p_z) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        GPoint.jinit(this, JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z))
        ViewPositionBase.jinitfields(this)
    end)
  end

  def jnew(p_x, p_y, p_z) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_x, p_y, p_z)
    this
  end


  def jm_getX2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getX, [])})
    end)
  end


  def jm_getY2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getY, [])})
    end)
  end


  def jm_getZ2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getZ, [])})
    end)
  end


  def jm_setAllbinaryLayer(this, p_allbinaryLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayer, p_allbinaryLayer)
        nil
    end)
  end
end


