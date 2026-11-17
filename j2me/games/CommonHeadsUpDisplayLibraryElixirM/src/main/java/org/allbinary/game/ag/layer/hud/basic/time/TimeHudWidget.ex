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
# package org.allbinary.game.ag.layer.hud.basic.time

defmodule TimeHudWidget do
  def jsuper(), do: BasicHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :TIME_STRING, nil)
    JR.put(this, :TIME_CHAR_ARRAY, nil)
    JR.put(this, :offset, 0)
    JR.put(this, :string, nil)
    JR.put(this, :totalDigits, 0)
    JR.put(this, :timer, nil)
        JR.put(this, :TIME_STRING, "Time ")
        JR.put(this, :TIME_CHAR_ARRAY, JR.afrom([?T, ?i, ?m, ?e, ?\s]))
        JR.put(this, :offset, 0)
        JR.put(this, :string, JR.get(PrimitiveLongSingleton.jm_getInstance(), :ZERO))
        JR.put(this, :totalDigits, 1)
        
    nil
  end


  def jm_getInstance(p_location, p_direction, p_basicColor, p_timer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :timer, p_timer)
        throw({:jreturn, TimeHudWidget.jnew(JR.lget(f, :location), JR.lget(f, :direction), 2, JR.lget(f, :basicColor), JR.lget(f, :timer))})
    end)
  end


  def jinit(this, p_location, p_direction, p_bufferZone, p_basicColor, p_timer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :bufferZone, p_bufferZone)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :timer, p_timer)
        BasicHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), JR.lget(f, :bufferZone), JR.lget(f, :basicColor))
        TimeHudWidget.jinitfields(this)
        JR.put(this, :timer, JR.lget(f, :timer))
        JR.call(this, :jm_set, [])
        JR.put(this, :updateMaxHeight, 14)
    end)
  end

  def jnew(p_location, p_direction, p_bufferZone, p_basicColor, p_timer) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_location, p_direction, p_bufferZone, p_basicColor, p_timer)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :updateMaxWidth, (JR.call(JR.lget(f, :font), :jm_getSize, []) * 5))
        JR.put(this, :offset, (JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :TIME_STRING)]) + MyFontProcessor.jm_defaultStringWidth(JR.lget(f, :font), 3)))
        BasicHud.jm_updateMeasurement(this, JR.lget(f, :graphics))
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :timer), :jm_update, [])
        JR.call(this, :jm_set, [])
    end)
  end


  def jm_set(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :string, JR.call(JR.get(this, :timer), :jm_getTimeChars, []))
        JR.put(this, :totalDigits, JR.call(JR.get(this, :timer), :jm_getCurrentTotalDigits, []))
    end)
  end


  def jm_getTimer(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :timer)})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        BasicHud.jm_paintDX(this, JR.lget(f, :graphics), JR.get(this, :TIME_CHAR_ARRAY), 0, JR.alength(JR.get(this, :TIME_CHAR_ARRAY)), JR.get(this, :string), 0, JR.get(this, :totalDigits), JR.get(this, :offset))
    end)
  end
end


