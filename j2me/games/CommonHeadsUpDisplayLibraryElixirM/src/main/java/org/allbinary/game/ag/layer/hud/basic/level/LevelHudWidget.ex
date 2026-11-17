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
# package org.allbinary.game.ag.layer.hud.basic.level

defmodule LevelHudWidget do
  def jsuper(), do: BasicHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :level, 0)
    JR.put(this, :maxlevel, 0)
    JR.put(this, :levelString, nil)
    JR.put(this, :levelNumberCharArray, nil)
    JR.put(this, :levelNumberTotalDigits, 0)
    JR.put(this, :offset, 0)
    JR.put(this, :primitiveLongUtil, nil)
        
        
        
        JR.put(this, :levelNumberCharArray, JR.get(NullUtil.jm_getInstance(), :NULL_CHAR_ARRAY))
        JR.put(this, :levelNumberTotalDigits, 0)
        JR.put(this, :offset, 0)
        
    nil
  end


  def jm_createHud(p_maxlevel, p_location, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxlevel, p_maxlevel)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
        throw({:jreturn, LevelHudWidget.jnew(JR.lget(f, :maxlevel), JR.lget(f, :location), JR.lget(f, :direction))})
    end)
  end


  def jinit(this, p_maxlevel, p_location, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxlevel, p_maxlevel)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
        BasicHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), 2, JR.get(BasicColorFactory.jm_getInstance(), :GREY))
        LevelHudWidget.jinitfields(this)
        JR.put(this, :primitiveLongUtil, PrimitiveLongUtil.jm_createPowerOfTen(1000))
        JR.lset(f, :LEVEL, "Lv ")
        JR.put(this, :levelString, JR.call(JR.lget(f, :LEVEL), :jm_toCharArray, []))
        JR.put(this, :maxlevel, JR.lget(f, :maxlevel))
        JR.put(this, :level, JR.lget(f, :maxlevel))
        JR.call(this, :jm_update, [])
        JR.put(this, :updateMaxHeight, 14)
    end)
  end

  def jnew(p_maxlevel, p_location, p_direction) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_maxlevel, p_location, p_direction)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :updateMaxWidth, (JR.call(JR.lget(f, :font), :jm_getSize, []) * 4))
        JR.put(this, :offset, (JR.call(JR.lget(f, :font), :jm_charsWidth, [JR.get(this, :levelString), 0, JR.alength(JR.get(this, :levelString))]) + JR.call(JR.lget(f, :font), :jm_getSize, [])))
        BasicHud.jm_updateMeasurement(this, JR.lget(f, :graphics))
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :levelNumberCharArray, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCharArray, [JR.get(this, :level)]))
        JR.put(this, :levelNumberTotalDigits, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCurrentTotalDigits, []))
    end)
  end


  def jm_setLevel(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.put(this, :level, JR.lget(f, :level))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_nextLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.postinc(this, :level, 1)
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_previousLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.postinc(this, :level, -1)
        if (JR.get(this, :level) < 0) do
            JR.put(this, :level, 0)
        end
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_isComplete(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :level) <= JR.get(this, :maxlevel)) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        BasicHud.jm_paintDX(this, JR.lget(f, :graphics), JR.get(this, :levelString), 0, JR.alength(JR.get(this, :levelString)), JR.get(this, :levelNumberCharArray), 0, JR.get(this, :levelNumberTotalDigits), JR.get(this, :offset))
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


