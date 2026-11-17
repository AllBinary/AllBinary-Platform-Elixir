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

defmodule SimpleGravityVelocityMovement do
  def jsuper(), do: BasicConstantVelocityMovement

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gravityUtil, nil)
        JR.put(this, :gravityUtil, GravityUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_speedBasicDecimal) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :speedBasicDecimal, p_speedBasicDecimal)
        BasicConstantVelocityMovement.jinit(this, JR.lget(f, :speedBasicDecimal), VelocityProperties.jnew(JR.int32(JR.call(JR.lget(f, :speedBasicDecimal), :jm_getUnscaled, [])), JR.int32(JR.call(JR.lget(f, :speedBasicDecimal), :jm_getUnscaled, []))))
        SimpleGravityVelocityMovement.jinitfields(this)
    end)
  end

  def jnew(p_speedBasicDecimal) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_speedBasicDecimal)
    this
  end


  def jm_process(this, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
        JR.call(JR.get(this, :gravityUtil), :jm_process, [JR.call(this, :jm_getVelocityProperties, []), JR.get(JR.get(this, :gravityUtil), :GAME_GRAVITY_VELOCITY)])
        BasicConstantVelocityMovement.jm_process(this, JR.lget(f, :layer))
    end)
  end
end


