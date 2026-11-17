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
# package org.allbinary.game.ag.layer.hud.basic.score

defmodule ScoreHudWidget do
  def jsuper(), do: NumberStringHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance(p_maxscore, p_location, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxscore, p_maxscore)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
        throw({:jreturn, ScoreHudWidget.jnew(JR.lget(f, :maxscore), JR.lget(f, :location), JR.lget(f, :direction), 2, JR.get(BasicColorFactory.jm_getInstance(), :GREY))})
    end)
  end


  def jinit(this, p_maxscore, p_location, p_direction, p_bufferZone, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxscore, p_maxscore)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :bufferZone, p_bufferZone)
      JR.lset(f, :basicColor, p_basicColor)
        NumberStringHud.jinit(this, "Pts ", JR.lget(f, :maxscore), JR.lget(f, :location), JR.lget(f, :direction), JR.lget(f, :bufferZone), JR.lget(f, :basicColor))
        ScoreHudWidget.jinitfields(this)
        JR.put(this, :updateMaxHeight, 14)
    end)
  end

  def jnew(p_maxscore, p_location, p_direction, p_bufferZone, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_maxscore, p_location, p_direction, p_bufferZone, p_basicColor)
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
        NumberStringHud.jm_updateMeasurement(this, JR.lget(f, :graphics))
    end)
  end
end


