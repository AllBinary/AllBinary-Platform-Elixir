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
# package org.allbinary.layer.event

defmodule ScrollMapEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        JR.put(this, :dx, 0)
        JR.put(this, :dy, 0)
    nil
  end


  def jinit(this, p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        ScrollMapEvent.jinitfields(this)
    end)
  end

  def jnew(p_anyType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType)
    this
  end


  def jm_setDx(this, p_dx) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
        JR.put(this, :dx, JR.lget(f, :dx))
    end)
  end


  def jm_getDx(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dx)})
    end)
  end


  def jm_setDy(this, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dy, p_dy)
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end


  def jm_getDy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dy)})
    end)
  end


  def jm_setDxDy(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end
end


