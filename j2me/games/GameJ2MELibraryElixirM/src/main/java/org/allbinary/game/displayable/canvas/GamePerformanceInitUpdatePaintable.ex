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

defmodule GamePerformanceInitUpdatePaintable do
  def jsuper(), do: InitUpdatePaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :halfHeight, 0)
    JR.put(this, :yArray, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :baseRefreshHelperCharArray, nil)
    JR.put(this, :defaultStringWidth, 0)
    JR.put(this, :RED, 0)
        JR.put(this, :halfHeight, JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_getLastHalfHeight, []))
        JR.put(this, :yArray, JR.afrom([JR.int32(JR.get(this, :halfHeight) + 30), JR.int32(JR.get(this, :halfHeight) + 30), JR.int32(JR.int32(JR.get(this, :halfHeight) + 30) + 15), JR.int32(JR.int32(JR.get(this, :halfHeight) + 30) + 15), JR.int32(JR.int32(JR.get(this, :halfHeight) + 30) + 30), JR.int32(JR.int32(JR.get(this, :halfHeight) + 30) + 30), JR.int32(JR.int32(JR.get(this, :halfHeight) + 30) + 45), JR.int32(JR.int32(JR.get(this, :halfHeight) + 30) + 45)]))
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :baseRefreshHelperCharArray, JR.anew_of(0, fn -> JR.anew(0, 0) end))
        JR.put(this, :defaultStringWidth, 0)
        JR.put(this, :RED, JR.call(JR.get(BasicColorFactory.jm_getInstance(), :RED), :jm_intValue, []))
    nil
  end

  def jinit(this) do
    InitUpdatePaintable.jinit(this)
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
        JR.put(this, :defaultStringWidth, MyFontProcessor.jm_defaultStringWidth(JR.lget(f, :font), 2))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :baseRefreshHelperCharArray, JR.call(GameStatisticsFactory.jm_getInstance(), :jm_to2DCharArray, []))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :RED)])
        JR.lset(f, :charArray, nil)
        JR.lset(f, :charArray2, nil)
        JR.lset(f, :size2, 0)
        JR.lset(f, :size3, 0)
        JR.lset(f, :size, JR.int32(JR.alength(JR.get(this, :baseRefreshHelperCharArray)) - 2))
        JR.lset(f, :index, JR.lget(f, :size))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lset(f, :index, JR.int32(JR.lget(f, :index) - 2)) end, fn ->
            JR.lset(f, :charArray, JR.aget(JR.get(this, :baseRefreshHelperCharArray), JR.lget(f, :index)))
            JR.lset(f, :charArray2, JR.aget(JR.get(this, :baseRefreshHelperCharArray), JR.int32(JR.lget(f, :index) + 1)))
            JR.lset(f, :size2, JR.alength(JR.lget(f, :charArray)))
            JR.lset(f, :size3, JR.alength(JR.lget(f, :charArray2)))
            JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray), 0, JR.lget(f, :size2), 0, JR.aget(JR.get(this, :yArray), JR.lget(f, :index)), 0])
            JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray2), 0, JR.lget(f, :size3), JR.int32(JR.lget(f, :size2) * JR.get(this, :defaultStringWidth)), JR.aget(JR.get(this, :yArray), JR.int32(JR.lget(f, :index) + 1)), 0])
        end)
    end)
  end
end


