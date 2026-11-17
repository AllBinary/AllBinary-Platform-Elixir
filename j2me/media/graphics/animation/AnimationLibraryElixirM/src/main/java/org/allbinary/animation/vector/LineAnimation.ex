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
# package org.allbinary.animation.vector

defmodule LineAnimation do
  def jsuper(), do: Animation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :newLine, nil)
    JR.put(this, :tempLine, nil)
    JR.put(this, :line, nil)
        JR.put(this, :newLine, JR.anew_of(2, fn -> JR.anew(2, 0) end))
        JR.put(this, :tempLine, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY))
        JR.put(this, :line, JR.anew_of(2, fn -> JR.anew(2, 0) end))
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      Animation.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end

  def jnew(p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor)
    this
  end


  def jm_init(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.aset(JR.aget(JR.get(this, :newLine), 0), 0, JR.lget(f, :x))
        JR.aset(JR.aget(JR.get(this, :newLine), 0), 1, JR.lget(f, :y))
        JR.aset(JR.aget(JR.get(this, :newLine), 1), 0, JR.lget(f, :x))
        JR.aset(JR.aget(JR.get(this, :newLine), 1), 1, JR.lget(f, :y))
        JR.put(this, :tempLine, JR.get(this, :line))
        JR.put(this, :line, JR.get(this, :newLine))
        JR.put(this, :newLine, JR.get(this, :tempLine))
    end)
  end


  def jm_setPosition(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.aset(JR.aget(JR.get(this, :newLine), 0), 0, JR.aget(JR.aget(JR.get(this, :line), 1), 0))
        JR.aset(JR.aget(JR.get(this, :newLine), 0), 1, JR.aget(JR.aget(JR.get(this, :line), 1), 1))
        JR.aset(JR.aget(JR.get(this, :newLine), 1), 0, JR.lget(f, :x))
        JR.aset(JR.aget(JR.get(this, :newLine), 1), 1, JR.lget(f, :y))
        JR.put(this, :tempLine, JR.get(this, :line))
        JR.put(this, :line, JR.get(this, :newLine))
        JR.put(this, :newLine, JR.get(this, :tempLine))
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :currentLine, JR.get(this, :line))
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, []), JR.call(this, :jm_getColor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawLine, [JR.aget(JR.aget(JR.lget(f, :currentLine), 0), 0), JR.aget(JR.aget(JR.lget(f, :currentLine), 0), 1), JR.aget(JR.aget(JR.lget(f, :currentLine), 1), 0), JR.aget(JR.aget(JR.lget(f, :currentLine), 1), 1)])
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Animation.jm_getBasicColorP(this)})
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        Animation.jm_setBasicColorP(this, JR.lget(f, :basicColor))
    end)
  end
end


