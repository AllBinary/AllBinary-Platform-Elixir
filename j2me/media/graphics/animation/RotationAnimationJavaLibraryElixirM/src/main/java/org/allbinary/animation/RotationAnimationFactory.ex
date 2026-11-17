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
# package org.allbinary.animation

defmodule RotationAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :totalAngle, 0)
    JR.put(this, :angleIncrement, 0)
        
        
    nil
  end


  def jm_createFactory() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        JR.lset(f, :totalAngle, JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE))
        throw({:jreturn, RotationAnimationFactory.jnew(JR.lget(f, :totalAngle), JR.int16(((JR.lget(f, :totalAngle) / JR.call(GameConfigurationCentral.jm_getInstance(), :jm_getGameControlFidelity, [])))))})
    end)
  end


  def jinit(this, p_totalAngle, p_angleIncrement) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :angleIncrement, p_angleIncrement)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :totalAngle, JR.lget(f, :totalAngle))
        JR.put(this, :angleIncrement, JR.lget(f, :angleIncrement))
    end)
  end

  def jnew(p_totalAngle, p_angleIncrement) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_totalAngle, p_angleIncrement)
    this
  end


  def jm_getInstance(this, p_instanceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :instanceId, p_instanceId)
        throw({:jreturn, NullRotationAnimation.jm_createTotalAngle(AngleInfo.jm_getInstance(JR.get(this, :angleIncrement)), JR.get(this, :totalAngle), AnimationBehavior.jm_getInstance())})
    end)
  end


  def jm_getInstanceAnimation(this, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        throw({:jreturn, NullRotationAnimation.jm_createTotalAngle(AngleInfo.jm_getInstance(JR.get(this, :angleIncrement)), JR.get(this, :totalAngle), AnimationBehavior.jm_getInstance())})
    end)
  end


  def jm_setInitialScale(this, p_scaleProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleProperties, p_scaleProperties)
        nil
    end)
  end
end


