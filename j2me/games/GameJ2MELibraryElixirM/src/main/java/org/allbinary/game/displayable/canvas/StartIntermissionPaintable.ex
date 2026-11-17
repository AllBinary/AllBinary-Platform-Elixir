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

defmodule StartIntermissionPaintable do
  def jsuper(), do: InitUpdatePaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :fontDebugFactory, nil)
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :gameCanvas, nil)
    JR.put(this, :stringArray, nil)
    JR.put(this, :fontSize, 0)
    JR.put(this, :font, nil)
    JR.put(this, :lastWidth, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :color, 0)
    JR.put(this, :lineYOffsetArray, nil)
    JR.put(this, :hasChanged, false)
    JR.put(this, :anchor, 0)
    JR.put(this, :fontHeightP, 0)
    JR.put(this, :BEGIN_LEVEL, nil)
    JR.put(this, :EMPTY_STRING, nil)
        JR.put(this, :fontDebugFactory, FontDebugFactory.jm_getInstance())
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        
        
        
        
        
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :BLACK))
        
        JR.put(this, :lineYOffsetArray, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY))
        JR.put(this, :hasChanged, true)
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :fontHeightP, 0)
        JR.put(this, :BEGIN_LEVEL, "Begin Level ")
        JR.put(this, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_gameCanvas, p_stringArray, p_basicColor, p_font) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvas, p_gameCanvas)
      JR.lset(f, :stringArray, p_stringArray)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :font, p_font)
      InitUpdatePaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :gameCanvas, JR.lget(f, :gameCanvas))
        JR.put(this, :stringArray, JR.lget(f, :stringArray))
        JR.put(this, :lastWidth, JR.anew(JR.alength(JR.get(this, :stringArray)), 0))
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
        JR.put(this, :color, JR.call(JR.lget(f, :basicColor), :jm_intValue, []))
        JR.put(this, :fontSize, JR.call(JR.lget(f, :font), :jm_getSize, []))
        JR.put(this, :font, JR.lget(f, :font))
    end)
  end

  def jnew(p_gameCanvas, p_stringArray, p_basicColor, p_font) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameCanvas, p_stringArray, p_basicColor, p_font)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :fontHeightP, JR.call(JR.lget(f, :font), :jm_getHeight, []))
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
        JR.lset(f, :existingFont, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.call(JR.get(this, :fontDebugFactory), :jm_setFont, [JR.get(this, :font), JR.lget(f, :graphics)])
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.get(this, :basicColor), JR.get(this, :color)])
        JR.lset(f, :beginWidth, 0)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :lineYOffsetArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if JR.get(this, :hasChanged) do
                JR.aset(JR.get(this, :lastWidth), JR.lget(f, :index), (Bitwise.bsr(JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.aget(JR.get(this, :stringArray), JR.lget(f, :index))]), 1)))
            end
            JR.lset(f, :beginWidth, JR.aget(JR.get(this, :lastWidth), JR.lget(f, :index)))
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.aget(JR.get(this, :stringArray), JR.lget(f, :index)), (JR.call(JR.lget(f, :displayInfo), :jm_getLastHalfWidth, []) - JR.lget(f, :beginWidth)), (JR.call(JR.lget(f, :displayInfo), :jm_getLastHalfHeight, []) - JR.aget(JR.get(this, :lineYOffsetArray), JR.lget(f, :index))), JR.get(this, :anchor)])
        end)
        JR.put(this, :hasChanged, false)
        JR.call(JR.get(this, :fontDebugFactory), :jm_setFont, [JR.lget(f, :existingFont), JR.lget(f, :graphics)])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :level, JR.call(JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getLayerManager, []), :jm_getGameInfo, []), :jm_getCurrentLevel, []))
        JR.aset(JR.get(this, :stringArray), 0, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :BEGIN_LEVEL)]), :jm_appendint, [JR.lget(f, :level)]), :jm_toString, []))
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :stringArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 1) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :stringArray), JR.lget(f, :index), JR.get(this, :EMPTY_STRING))
        end)
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
end


