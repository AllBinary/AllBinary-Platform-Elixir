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
# package org.allbinary.game.ag.layer.hud.basic

defmodule NumberStringHud do
  def jsuper(), do: BasicHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :primitiveLongUtil, nil)
    JR.put(this, :prependString, nil)
    JR.put(this, :PREPEND_STRING, nil)
    JR.put(this, :value, 0)
    JR.put(this, :max, 0)
    JR.put(this, :offset, 0)
    JR.put(this, :valueString, nil)
    JR.put(this, :valueTotalDigits, 0)
        
        
        
        
        
        JR.put(this, :offset, 0)
        
        JR.put(this, :valueTotalDigits, 0)
    nil
  end


  def jinit(this, p_prependString, p_max, p_location, p_direction, p_bufferZone, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :prependString, p_prependString)
      JR.lset(f, :max, p_max)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :bufferZone, p_bufferZone)
      JR.lset(f, :basicColor, p_basicColor)
        BasicHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), JR.lget(f, :bufferZone), JR.lget(f, :basicColor))
        NumberStringHud.jinitfields(this)
        JR.put(this, :prependString, JR.lget(f, :prependString))
        JR.put(this, :PREPEND_STRING, JR.call(JR.lget(f, :prependString), :jm_toCharArray, []))
        JR.put(this, :valueString, JR.aget(JR.get(PrimitiveLongSingleton.jm_getInstance(), :NUMBER_CHAR_ARRAYS), 0))
        JR.put(this, :primitiveLongUtil, PrimitiveLongUtil.jm_createPowerOfTen(JR.int32(JR.lget(f, :max) + 1)))
        JR.put(this, :max, JR.lget(f, :max))
        JR.put(this, :value, 0)
        if (JR.lget(f, :direction) == 0) do
            throw({:jexception, JR.exception("RuntimeException", JR.get(BasicHudFactory.jm_getInstance(), :DIRECTION_EXCEPTION))})
        end
    end)
  end

  def jnew(p_prependString, p_max, p_location, p_direction, p_bufferZone, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_prependString, p_max, p_location, p_direction, p_bufferZone, p_basicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :offset, (JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :prependString)]) + MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font))))
        BasicHud.jm_updateMeasurement(this, JR.lget(f, :graphics))
    end)
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end


  def jm_add(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.call(this, :jm_set, [JR.int32(JR.get(this, :value) + JR.lget(f, :value))])
    end)
  end


  def jm_set(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :value, JR.lget(f, :value))
        if (JR.get(this, :value) > JR.get(this, :max)) do
            JR.put(this, :value, 0)
        end
        JR.put(this, :valueString, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCharArray, [JR.get(this, :value)]))
        JR.put(this, :valueTotalDigits, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCurrentTotalDigits, []))
    end)
  end


  def jm_reduce(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.call(this, :jm_set, [JR.int32(JR.get(this, :value) - JR.lget(f, :value))])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        BasicHud.jm_paintDX(this, JR.lget(f, :graphics), JR.get(this, :PREPEND_STRING), 0, JR.alength(JR.get(this, :PREPEND_STRING)), JR.get(this, :valueString), 0, JR.get(this, :valueTotalDigits), JR.get(this, :offset))
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :charArray, JR.get(this, :PREPEND_STRING))
        JR.lset(f, :len, JR.alength(JR.get(this, :PREPEND_STRING)))
        JR.lset(f, :charArray2, JR.get(this, :valueString))
        JR.lset(f, :len2, JR.get(this, :valueTotalDigits))
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray), 0, JR.lget(f, :len), JR.lget(f, :x), JR.lget(f, :y), 0])
        JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.lget(f, :charArray2), 0, JR.lget(f, :len2), JR.int32(JR.lget(f, :x) - JR.get(this, :offset)), JR.lget(f, :y), 0])
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


