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
# package org.allbinary.game.paint

defmodule ColorFillBasePaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColor, nil)
    JR.put(this, :colorP, 0)
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        JR.put(this, :colorP, 0)
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      Paintable.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end

  def jnew(p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor)
    this
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
        JR.call(this, :jm_setColor, [JR.call(JR.call(this, :jm_getBasicColorP, []), :jm_intValue, [])])
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColor)})
    end)
  end


  def jm_getColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :colorP)})
    end)
  end


  def jm_setColor(this, p_color) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :color, p_color)
        JR.put(this, :colorP, JR.lget(f, :color))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


