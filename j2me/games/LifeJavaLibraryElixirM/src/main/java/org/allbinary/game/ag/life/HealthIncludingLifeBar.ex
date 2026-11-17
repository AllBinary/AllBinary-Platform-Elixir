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
# package org.allbinary.game.ag.life

defmodule HealthIncludingLifeBar do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
    JR.put(this, :life, nil)
    JR.put(this, :healthInterface, nil)
    JR.put(this, :allbinaryLayer, nil)
        
        
        
        
    nil
  end


  def jm_createHealthIncludingLifeBar(p_layerInterface, p_life, p_healthInterface, p_location, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :life, p_life)
      JR.lset(f, :healthInterface, p_healthInterface)
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
        throw({:jreturn, HealthIncludingLifeBar.jnew(JR.lget(f, :layerInterface), JR.lget(f, :life), JR.lget(f, :healthInterface), HealthBarTwodAnimation.jnew(JR.lget(f, :layerInterface), JR.lget(f, :location)), JR.lget(f, :direction))})
    end)
  end


  def jinit(this, p_layerInterface, p_life, p_healthInterface, p_animationInterface, p_direction) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :life, p_life)
      JR.lset(f, :healthInterface, p_healthInterface)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :direction, p_direction)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :allbinaryLayer, JR.lget(f, :layerInterface))
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :life, JR.lget(f, :life))
        JR.put(this, :healthInterface, JR.lget(f, :healthInterface))
        JR.call(JR.get(this, :healthInterface), :jm_addListener, [this])
        JR.call(this, :jm_onHealthChange, [])
    end)
  end

  def jnew(p_layerInterface, p_life, p_healthInterface, p_animationInterface, p_direction) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterface, p_life, p_healthInterface, p_animationInterface, p_direction)
    this
  end


  def jm_onHealthChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :animationInterface), :jm_onHealthChange, [(((((JR.call(JR.get(this, :healthInterface), :jm_getHealth, []) + ((JR.call(JR.get(this, :healthInterface), :jm_getMaxHealth, []) * JR.call(JR.get(this, :life), :jm_get, []))))) * JR.call(JR.get(this, :allbinaryLayer), :jm_getWidth, []))) / ((JR.call(JR.get(this, :healthInterface), :jm_getMaxHealth, []) + ((JR.call(JR.get(this, :healthInterface), :jm_getMaxHealth, []) * JR.call(JR.get(this, :life), :jm_getStartLives, []))))))])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), 0, 0])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), 0, 0, 0])
    end)
  end
end


