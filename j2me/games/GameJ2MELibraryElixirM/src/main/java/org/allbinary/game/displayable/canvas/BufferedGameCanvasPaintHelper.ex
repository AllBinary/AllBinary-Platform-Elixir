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
# package org.allbinary.game.displayable.canvas

defmodule BufferedGameCanvasPaintHelper do
  def jsuper(), do: ProcessPaintable
def jstatic_MAX_IMAGES(), do: JR.static_get(__MODULE__, :MAX_IMAGES, fn -> 4 end)
  def jstatic_set_MAX_IMAGES(value), do: JR.static_put(__MODULE__, :MAX_IMAGES, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameCanvas, nil)
    JR.put(this, :offScreenImage, nil)
    JR.put(this, :previousImage, nil)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :drawCircularIndexUtil, nil)
    JR.put(this, :anchor, 0)
        JR.put(this, :gameCanvas, NullCanvas.jstatic_NULL_CANVAS())
        JR.put(this, :offScreenImage, JR.anew(BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES(), nil))
        JR.put(this, :previousImage, NullImage.jstatic_NULL_IMAGE())
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES()))
        JR.put(this, :drawCircularIndexUtil, CircularIndexUtil.jm_createInstanceAt(JR.int32(BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES() - 1), BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES()))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_gameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvas, p_gameCanvas)
      ProcessPaintable.jinit(this)
      jinitfields(this)
        throw({:jexception, JR.exception("Exception", "No Longer Used")})
    end)
  end

  def jnew(p_gameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameCanvas)
    this
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :myCanvas, (JR.get(this, :gameCanvas)))
        JR.call(JR.lget(f, :myCanvas), :jm_draw, [JR.call(JR.aget(JR.get(this, :offScreenImage), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])), :jm_getGraphics, [])])
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
        JR.call(JR.get(this, :drawCircularIndexUtil), :jm_next, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.put(this, :previousImage, JR.aget(JR.get(this, :offScreenImage), JR.call(JR.get(this, :drawCircularIndexUtil), :jm_getIndex, [])))
        JR.call(JR.lget(f, :graphics), :jm_drawImage, [JR.get(this, :previousImage), 0, 0, JR.get(this, :anchor)])
    end)
  end
end


