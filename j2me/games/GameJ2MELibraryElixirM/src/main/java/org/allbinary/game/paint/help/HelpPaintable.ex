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
# package org.allbinary.game.paint.help

defmodule HelpPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfo, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :anchor, 0)
    JR.put(this, :title, nil)
    JR.put(this, :inputInfo, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :titleBeginWidth, 0)
    JR.put(this, :beginWidthArray, nil)
    JR.put(this, :charHeight, 0)
        JR.put(this, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        
        JR.put(this, :inputInfo, JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []))
        
        JR.put(this, :titleBeginWidth, 0)
        JR.put(this, :beginWidthArray, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY))
        JR.put(this, :charHeight, 0)
    nil
  end


  def jinit(this, p_title, p_backgroundBasicColor, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :basicColor, p_basicColor)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :title, JR.lget(f, :title))
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end

  def jnew(p_title, p_backgroundBasicColor, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_backgroundBasicColor, p_basicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :titleBeginWidth, (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :title)]), 1)))
        JR.put(this, :charHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.lset(f, :size, JR.alength(JR.get(this, :inputInfo)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :beginWidthArray), JR.lget(f, :index), (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.aget(JR.get(this, :inputInfo), JR.lget(f, :index))]), 1)))
        end)
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_setInputInfoP(this, p_inputInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputInfo, p_inputInfo)
        JR.put(this, :inputInfo, JR.lget(f, :inputInfo))
        JR.put(this, :beginWidthArray, JR.anew(JR.alength(JR.get(this, :inputInfo)), 0))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :halfWidth, JR.call(JR.get(this, :displayInfo), :jm_getLastHalfWidth, []))
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.get(this, :basicColor), :jm_intValue, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :title), JR.int32(JR.lget(f, :halfWidth) - JR.get(this, :titleBeginWidth)), JR.get(this, :charHeight), JR.get(this, :anchor)])
        JR.lset(f, :size, JR.alength(JR.get(this, :inputInfo)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.aget(JR.get(this, :inputInfo), JR.lget(f, :index)), JR.int32(JR.lget(f, :halfWidth) - JR.aget(JR.get(this, :beginWidthArray), JR.lget(f, :index))), JR.int32((JR.int32(JR.lget(f, :index) + 3)) * JR.get(this, :charHeight)), JR.get(this, :anchor)])
        end)
    end)
  end
end


