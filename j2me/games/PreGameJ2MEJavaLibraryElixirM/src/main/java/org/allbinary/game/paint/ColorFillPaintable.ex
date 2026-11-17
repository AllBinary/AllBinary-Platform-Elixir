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

defmodule ColorFillPaintable do
  def jsuper(), do: ColorFillBasePaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        ColorFillBasePaintable.jinit(this, JR.lget(f, :basicColor))
        ColorFillPaintable.jinitfields(this)
    end)
  end

  def jnew(p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :colorP)])
        JR.call(JR.lget(f, :graphics), :jm_fillRect, [0, 0, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []), JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHeight, [])])
    end)
  end
end


