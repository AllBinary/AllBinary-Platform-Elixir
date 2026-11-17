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

#J2MEForJ2ME
defmodule OwnershipPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :displayInfo, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :COPYRIGHT, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :color, 0)
    JR.put(this, :anchor, 0)
    JR.put(this, :COPYRIGHT_Y, 0)
    JR.put(this, :beginWidth, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :COPYRIGHT, "AllBinary Copyright (c) 2011")
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        JR.put(this, :color, JR.call(JR.get(this, :basicColor), :jm_intValue, []))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :COPYRIGHT_Y, 0)
        JR.put(this, :beginWidth, 0)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, OwnershipPaintable.jnew()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Paintable.jinit(this)
      jinitfields(this)
        nil
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
        JR.put(this, :COPYRIGHT_Y, (2 * JR.call(JR.lget(f, :font), :jm_getHeight, [])))
        JR.put(this, :beginWidth, (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :COPYRIGHT)]), 1)))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
        JR.put(this, :color, JR.call(JR.lget(f, :basicColor), :jm_intValue, []))
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


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :color)])
        JR.lset(f, :halfWidth, JR.call(JR.get(this, :displayInfo), :jm_getLastHalfWidth, []))
        JR.lset(f, :height, JR.call(JR.get(this, :displayInfo), :jm_getLastHeight, []))
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :COPYRIGHT), JR.int32(JR.lget(f, :halfWidth) - JR.get(this, :beginWidth)), JR.int32(JR.lget(f, :height) - JR.get(this, :COPYRIGHT_Y)), JR.get(this, :anchor)])
    end)
  end
end


