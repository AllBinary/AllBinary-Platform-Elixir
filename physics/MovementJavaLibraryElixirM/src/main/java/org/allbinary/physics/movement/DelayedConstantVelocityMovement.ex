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
# package org.allbinary.physics.movement

defmodule DelayedConstantVelocityMovement do
  def jsuper(), do: BasicConstantVelocityMovement

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeDelayHelper, nil)
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(60))
    nil
  end


  def jinit(this, p_basicDecimal, p_velocityProperties) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicDecimal, p_basicDecimal)
      JR.lset(f, :velocityProperties, p_velocityProperties)
        BasicConstantVelocityMovement.jinit(this, JR.lget(f, :basicDecimal), JR.lget(f, :velocityProperties))
        DelayedConstantVelocityMovement.jinitfields(this)
    end)
  end

  def jnew(p_basicDecimal, p_velocityProperties) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicDecimal, p_velocityProperties)
    this
  end


  def jm_init(this, p_speedBasicDecimal, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :speedBasicDecimal, p_speedBasicDecimal)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        nil
    end)
  end


  def jm_process(this, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
            BasicConstantVelocityMovement.jm_process(this, JR.lget(f, :layer))
        end
    end)
  end
end


