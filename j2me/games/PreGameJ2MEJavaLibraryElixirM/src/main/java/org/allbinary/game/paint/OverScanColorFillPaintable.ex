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

defmodule OverScanColorFillPaintable do
  def jsuper(), do: ColorFillPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        ColorFillPaintable.jinit(this, JR.lget(f, :basicColor))
        OverScanColorFillPaintable.jinitfields(this)
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
        JR.call(JR.lget(f, :graphics), :jm_fillRect, [-JR.call(JR.lget(f, :graphics), :jm_getClipX, []), -JR.call(JR.lget(f, :graphics), :jm_getClipY, []), (JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []) + ((JR.call(JR.lget(f, :graphics), :jm_getClipX, []) * 2))), (JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHeight, []) + ((JR.call(JR.lget(f, :graphics), :jm_getClipY, []) * 2)))])
    end)
  end
end


