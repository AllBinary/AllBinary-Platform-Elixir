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
# package org.allbinary.graphics.canvas.transition.progress

defmodule ProgressPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :progressCanvas, nil)
        
    nil
  end


  def jinit(this, p_progressCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :progressCanvas, p_progressCanvas)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :progressCanvas, JR.lget(f, :progressCanvas))
    end)
  end

  def jnew(p_progressCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_progressCanvas)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :progressCanvas), :jm_paint2, [JR.lget(f, :graphics)])
    end)
  end
end


