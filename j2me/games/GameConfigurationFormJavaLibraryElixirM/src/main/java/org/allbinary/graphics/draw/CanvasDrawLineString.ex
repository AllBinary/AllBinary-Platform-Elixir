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
# package org.allbinary.graphics.draw

defmodule CanvasDrawLineString do
  def jsuper(), do: JObject
def jstatic_NULL_CANVAS_DRAW_LINE_STRING(), do: JR.static_get(__MODULE__, :NULL_CANVAS_DRAW_LINE_STRING, fn -> CanvasDrawLineString.jnew(0, 0) end)
  def jstatic_set_NULL_CANVAS_DRAW_LINE_STRING(value), do: JR.static_put(__MODULE__, :NULL_CANVAS_DRAW_LINE_STRING, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :drawStringUtil, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
    JR.put(this, :fontHeight, 0)
        JR.put(this, :drawStringUtil, DrawStringUtil.jm_getInstance())
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        
        
        JR.put(this, :fontHeight, 0)
    nil
  end


  def jinit(this, p_x, p_y) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :x, JR.lget(f, :x))
        JR.put(this, :y, JR.lget(f, :y))
    end)
  end

  def jnew(p_x, p_y) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_x, p_y)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :fontHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_paint(this, p_graphics, p_string, p_line) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :string, p_string)
      JR.lset(f, :line, p_line)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :drawStringUtil), :jm_drawCenterString, [JR.lget(f, :graphics), JR.lget(f, :string), 0, byte_size(JR.lget(f, :string)), JR.get(this, :x), JR.int32(JR.get(this, :y) + (JR.int32(JR.lget(f, :line) * JR.get(this, :fontHeight))))])
    end)
  end
end


