# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

defmodule ViewPosition do
  def jsuper(), do: ViewPositionBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :allbinaryLayer, nil)
        JR.put(this, :allbinaryLayer, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
    nil
  end


  def jm_getInstanceD() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ViewPosition.jnew(0, 0, 0)})
    end)
  end


  def jinit(this, p_x, p_y, p_z) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        ViewPositionBase.jinit(this, JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z))
        ViewPosition.jinitfields(this)
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
        throw({:jreturn, JR.call(JR.get(this, :allbinaryLayer), :jm_getXP, [])})
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :allbinaryLayer), :jm_getYP, [])})
    end)
  end


  def jm_getZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :allbinaryLayer), :jm_getZP, [])})
    end)
  end


  def jm_getX2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(this, :jm_getX, []) + JR.call(JR.get(this, :allbinaryLayer), :jm_getWidth, []))})
    end)
  end


  def jm_getY2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(this, :jm_getY, []) + JR.call(JR.get(this, :allbinaryLayer), :jm_getHeight, []))})
    end)
  end


  def jm_getZ2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int32(((JR.call(this, :jm_getZ, []) + JR.call(JR.get(this, :allbinaryLayer), :jm_getDepth, []))))})
    end)
  end


  def jm_setAllbinaryLayer(this, p_allbinaryLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayer, p_allbinaryLayer)
        JR.put(this, :allbinaryLayer, JR.lget(f, :allbinaryLayer))
    end)
  end
end


