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

defmodule StaticViewPosition do
  def jsuper(), do: ViewPosition

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
        ViewPosition.jinit(this, JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z))
        StaticViewPosition.jinitfields(this)
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
        throw({:jreturn, JR.call(this, :jm_getRawX, [])})
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getRawY, [])})
    end)
  end


  def jm_getZ(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getRawZ, [])})
    end)
  end
end


