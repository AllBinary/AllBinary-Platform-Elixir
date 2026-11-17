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
# package org.allbinary.game.ag.layer.hud.basic.life

defmodule LivesHudWidget do
  def jsuper(), do: BasicHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :lifeInterface, nil)
    JR.put(this, :xArray, nil)
    JR.put(this, :animationInterface, nil)
        
        
        
    nil
  end


  def jinit(this, p_animationInterface, p_lifeInterface, p_location, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :lifeInterface, p_lifeInterface)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
        BasicHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), 2, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        LivesHudWidget.jinitfields(this)
        JR.put(this, :lifeInterface, JR.lget(f, :lifeInterface))
        JR.lset(f, :size, JR.int32(JR.call(JR.call(this, :jm_getLifeInterface, []), :jm_getMaxlives, [])))
        JR.put(this, :xArray, JR.anew(JR.lget(f, :size), 0))
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :updateMaxWidth, (JR.call(JR.get(this, :lifeInterface), :jm_getMaxlives, []) * 16))
        JR.put(this, :updateMaxHeight, 16)
    end)
  end

  def jnew(p_animationInterface, p_lifeInterface, p_location, p_direction) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_lifeInterface, p_location, p_direction)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        BasicHud.jm_updateMeasurement(this, JR.lget(f, :graphics))
        JR.lset(f, :maxLives, JR.int32(JR.call(JR.call(this, :jm_getLifeInterface, []), :jm_getMaxlives, [])))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :maxLives)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :xArray), JR.lget(f, :index), (JR.call(this, :jm_getX, []) + (JR.int32(JR.lget(f, :index) * 16))))
        end)
    end)
  end


  def jm_onDisplayChangeEvent(this, p_displayChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayChangeEvent, p_displayChangeEvent)
        BasicHud.jm_onDisplayChangeEvent(this, JR.lget(f, :displayChangeEvent))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_setX(this, p_x) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
        BasicHud.jm_setX(this, JR.lget(f, :x))
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
        JR.lset(f, :index, JR.int32(JR.call(JR.call(this, :jm_getLifeInterface, []), :jm_get, [])))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.aget(JR.get(this, :xArray), JR.lget(f, :index)), JR.call(this, :jm_getY, [])])
        end)
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


  def jm_getLifeInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lifeInterface)})
    end)
  end
end


