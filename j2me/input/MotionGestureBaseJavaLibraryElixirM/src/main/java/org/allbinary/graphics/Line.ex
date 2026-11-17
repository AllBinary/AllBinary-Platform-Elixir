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

defmodule Line do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :p1, nil)
    JR.put(this, :p2, nil)
    JR.put(this, :deltaX, 0.0)
    JR.put(this, :deltaY, 0.0)
        
        
        JR.put(this, :deltaX, 0.0)
        JR.put(this, :deltaY, 0.0)
    nil
  end


  def jinit(this, p_p1, p_p2) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :p1, p_p1)
      JR.lset(f, :p2, p_p2)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :p1, JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO))
        JR.put(this, :p2, JR.get(this, :p1))
        JR.call(this, :jm_setP1, [JR.lget(f, :p1)])
        JR.call(this, :jm_setP2, [JR.lget(f, :p2)])
    end)
  end

  def jnew(p_p1, p_p2) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_p1, p_p2)
    this
  end


  def jm_getGradient(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(this, :jm_getDeltaY, []) / JR.call(this, :jm_getDeltaX, []))})
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :deltaX, ((JR.call(JR.call(this, :jm_getP1, []), :jm_getX, []) * 1.0) - JR.call(JR.call(this, :jm_getP2, []), :jm_getX, [])))
        JR.put(this, :deltaY, ((JR.call(JR.call(this, :jm_getP1, []), :jm_getY, []) * 1.0) - JR.call(JR.call(this, :jm_getP2, []), :jm_getY, [])))
    end)
  end


  def jm_getDeltaX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :deltaX)})
    end)
  end


  def jm_getDeltaY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :deltaY)})
    end)
  end


  def jm_getP1(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :p1)})
    end)
  end


  def jm_getP2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :p2)})
    end)
  end


  def jm_setP1(this, p_p1) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :p1, p_p1)
        JR.put(this, :p1, JR.lget(f, :p1))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_setP2(this, p_p2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :p2, p_p2)
        JR.put(this, :p2, JR.lget(f, :p2))
        JR.call(this, :jm_update, [])
    end)
  end
end


