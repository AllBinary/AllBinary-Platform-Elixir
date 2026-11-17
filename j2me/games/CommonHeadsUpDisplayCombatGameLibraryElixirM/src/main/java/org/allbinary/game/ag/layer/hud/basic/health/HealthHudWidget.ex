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
# package org.allbinary.game.ag.layer.hud.basic.health

defmodule HealthHudWidget do
  def jsuper(), do: BasicHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :healthScale, 0)
    JR.put(this, :animationInterface, nil)
    JR.put(this, :healthInterface, nil)
    JR.put(this, :max, 0)
    JR.put(this, :xArray, nil)
    JR.put(this, :gameTickTimeDelayHelper, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :slowBeatTimeDelayHelper, nil)
    JR.put(this, :mediumBeatTimeDelayHelper, nil)
    JR.put(this, :fastBeatTimeDelayHelper, nil)
        
        
        
        JR.put(this, :max, 0)
        
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
        JR.put(this, :timeDelayHelper, NoTimeDelayHelper.jstatic_SINGLETON())
        JR.put(this, :slowBeatTimeDelayHelper, TimeDelayHelper.jnew(1280))
        JR.put(this, :mediumBeatTimeDelayHelper, TimeDelayHelper.jnew(640))
        JR.put(this, :fastBeatTimeDelayHelper, TimeDelayHelper.jnew(320))
    nil
  end


  def jinit(this, p_animationInterface, p_healthInterface, p_location, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :healthInterface, p_healthInterface)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
        BasicHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), 2, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        HealthHudWidget.jinitfields(this)
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :healthInterface, JR.lget(f, :healthInterface))
        JR.call(JR.get(this, :healthInterface), :jm_addListener, [this])
        JR.put(this, :healthScale, (((JR.call(JR.get(this, :healthInterface), :jm_getMaxHealth, []) / 6)) + 1))
        JR.call(this, :jm_onHealthChange, [])
        JR.put(this, :updateMaxWidth, (JR.call(JR.lget(f, :healthInterface), :jm_getMaxHealth, []) * 16))
        JR.put(this, :updateMaxHeight, 16)
        JR.put(this, :xArray, JR.anew(30, 0))
        JR.call(this, :jm_update, [])
    end)
  end

  def jnew(p_animationInterface, p_healthInterface, p_location, p_direction) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_healthInterface, p_location, p_direction)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :xArray) != nil) do
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :xArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.aset(JR.get(this, :xArray), JR.lget(f, :index), (JR.call(this, :jm_getX, []) + (JR.int32(JR.lget(f, :index) * 16))))
            end)
        end
    end)
  end


  def jm_setX(this, p_x) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
        BasicHud.jm_setX(this, JR.lget(f, :x))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_onHealthChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :max, ((JR.call(JR.get(this, :healthInterface), :jm_getHealth, []) / JR.get(this, :healthScale))))
        JR.put(this, :timeDelayHelper, NoTimeDelayHelper.jstatic_SINGLETON())
        if ((JR.get(this, :max) <= 1) && JR.call(JR.get(this, :healthInterface), :jm_isAlive, [])) do
            JR.put(this, :max, 1)
            if ((JR.get(this, :healthScale) - JR.call(JR.get(this, :healthInterface), :jm_getHealth, [])) > div((JR.int32(JR.get(this, :healthScale) * 2)), 3)) do
                JR.put(this, :timeDelayHelper, JR.get(this, :slowBeatTimeDelayHelper))
            else
                if ((JR.get(this, :healthScale) - JR.call(JR.get(this, :healthInterface), :jm_getHealth, [])) > div(JR.get(this, :healthScale), 3)) do
                JR.put(this, :timeDelayHelper, JR.get(this, :mediumBeatTimeDelayHelper))
            else
                JR.put(this, :timeDelayHelper, JR.get(this, :fastBeatTimeDelayHelper))
            end
            end
        end
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :max)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
                JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.aget(JR.get(this, :xArray), JR.lget(f, :index)), JR.call(this, :jm_getY, [])])
            end
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
end


