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
# package org.allbinary.media

defmodule AllBinaryVisualDebugVibration do
  def jsuper(), do: AllBinaryVibrationME

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :VIBRATING, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :anchor, 0)
    JR.put(this, :width, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(J.Integer.jstatic_MAX_VALUE()))
        JR.put(this, :VIBRATING, "Vibrating")
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :width, 0)
    nil
  end

  def jinit(this) do
    AllBinaryVibrationME.jinit(this)
    jinitfields(this)
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
        JR.put(this, :width, JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :VIBRATING)]))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_vibrate(this, p_duration, p_type, p_volume) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :duration, p_duration)
      JR.lset(f, :type, p_type)
      JR.lset(f, :volume, p_volume)
        JR.put(JR.get(this, :timeDelayHelper), :delay, JR.lget(f, :duration))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTimeTNT, []) do
            JR.put(JR.get(this, :timeDelayHelper), :delay, J.Integer.jstatic_MAX_VALUE())
            JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :VIBRATING), (JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, []) - (Bitwise.bsr(JR.get(this, :width), 1))), 0, JR.get(this, :anchor)])
        end
    end)
  end
end


