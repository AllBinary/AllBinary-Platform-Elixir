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
# package org.allbinary.graphics.paint

defmodule SimpleTextPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :text, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :topScoresWidth, 0)
    JR.put(this, :fontHeight, 0)
    JR.put(this, :anchor, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        
        
        JR.put(this, :topScoresWidth, 0)
        JR.put(this, :fontHeight, 0)
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_text, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :basicColor, p_basicColor)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :text, JR.lget(f, :text))
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end

  def jnew(p_text, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_text, p_basicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :topScoresWidth, (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :text)]), 1)))
        JR.put(this, :fontHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :width, JR.aget(JR.call(JR.get(this, :displayInfoSingleton), :jm_getLast, []), JR.get(JR.get(this, :displayInfoSingleton), :WIDTH)))
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.call(this, :jm_getBasicColorP, []), :jm_intValue, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :text), JR.int32((Bitwise.bsr(JR.lget(f, :width), 1)) - JR.get(this, :topScoresWidth)), JR.get(this, :fontHeight), JR.get(this, :anchor)])
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
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


  def jm_setText(this, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
        JR.put(this, :text, JR.lget(f, :text))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_getText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :text)})
    end)
  end
end


