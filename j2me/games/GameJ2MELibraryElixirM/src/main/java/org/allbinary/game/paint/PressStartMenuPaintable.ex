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

defmodule PressStartMenuPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfo, nil)
    JR.put(this, :PRESS_START, nil)
    JR.put(this, :KEY_START, nil)
    JR.put(this, :MENU_START, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :startString, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :flash, false)
    JR.put(this, :anchor, 0)
    JR.put(this, :beginWidth, 0)
    JR.put(this, :line, 0)
        JR.put(this, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :PRESS_START, "Press Screen To Start")
        JR.put(this, :KEY_START, "Press or Click F2 To Begin")
        JR.put(this, :MENU_START, "Press Start From The Menu To Begin")
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :startString, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(1100))
        JR.put(this, :flash, false)
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :beginWidth, 0)
        JR.put(this, :line, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Paintable.jinit(this)
      jinitfields(this)
        if JR.call(TouchScreenFactory.jm_getInstance(), :jm_isTouch, []) do
            JR.put(this, :startString, JR.get(this, :PRESS_START))
        else
            if AppletUtil.jm_isAppletLoader(this) do
            JR.put(this, :startString, JR.get(this, :KEY_START))
        else
            JR.put(this, :startString, JR.get(this, :MENU_START))
        end
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :beginWidth, (Bitwise.bsr(JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.get(this, :startString)]), 1)))
        JR.put(this, :line, (((4 * MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font)))) + (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_getHeight, []), 1))))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTimeTNT, []) do
            if JR.call(this, :jm_isFlash, []) do
                JR.call(this, :jm_setFlash, [false])
            else
                JR.call(this, :jm_setFlash, [true])
            end
        end
        if JR.call(this, :jm_isFlash, []) do
            JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :startString), (JR.call(JR.get(this, :displayInfo), :jm_getLastHalfWidth, []) - JR.get(this, :beginWidth)), (JR.call(JR.get(this, :displayInfo), :jm_getLastHeight, []) - JR.get(this, :line)), JR.get(this, :anchor)])
        end
    end)
  end


  def jm_setFlash(this, p_flash) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :flash, p_flash)
        JR.put(this, :flash, JR.lget(f, :flash))
    end)
  end


  def jm_isFlash(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :flash)})
    end)
  end
end


