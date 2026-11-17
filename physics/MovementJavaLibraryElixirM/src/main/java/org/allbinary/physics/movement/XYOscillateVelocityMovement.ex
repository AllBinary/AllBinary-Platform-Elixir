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

defmodule XYOscillateVelocityMovement do
  def jsuper(), do: BasicConstantVelocityMovement

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :oscillateMin, 0)
    JR.put(this, :oscillateMax, 0)
    JR.put(this, :oscillate, 0)
    JR.put(this, :oscillatePositive, false)
        
        
        JR.put(this, :oscillate, 0)
        JR.put(this, :oscillatePositive, false)
    nil
  end


  def jinit(this, p_speedBasicDecimal, p_oscillateMin, p_oscillateMax) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :speedBasicDecimal, p_speedBasicDecimal)
      JR.lset(f, :oscillateMin, p_oscillateMin)
      JR.lset(f, :oscillateMax, p_oscillateMax)
        BasicConstantVelocityMovement.jinit(this, JR.lget(f, :speedBasicDecimal), VelocityProperties.jnew(JR.int32(JR.call(JR.lget(f, :speedBasicDecimal), :jm_getUnscaled, [])), JR.int32(JR.call(JR.lget(f, :speedBasicDecimal), :jm_getUnscaled, []))))
        XYOscillateVelocityMovement.jinitfields(this)
        JR.put(this, :oscillateMin, JR.lget(f, :oscillateMin))
        JR.put(this, :oscillateMax, JR.lget(f, :oscillateMax))
    end)
  end

  def jnew(p_speedBasicDecimal, p_oscillateMin, p_oscillateMax) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_speedBasicDecimal, p_oscillateMin, p_oscillateMax)
    this
  end


  def jm_process(this, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
        BasicConstantVelocityMovement.jm_process(this, JR.lget(f, :layer))
        if (JR.get(this, :oscillate) < JR.get(this, :oscillateMin)) do
            JR.put(this, :oscillatePositive, true)
            JR.call(JR.call(JR.call(this, :jm_getVelocityProperties, []), :jm_getVelocityYBasicDecimalP, []), :jm_addint, [3000])
        else
            if (JR.get(this, :oscillate) > JR.get(this, :oscillateMax)) do
            JR.put(this, :oscillatePositive, false)
            JR.call(JR.call(JR.call(this, :jm_getVelocityProperties, []), :jm_getVelocityYBasicDecimalP, []), :jm_subtractint, [3000])
        end
        end
        if JR.get(this, :oscillatePositive) do
            JR.postinc(this, :oscillate, 1)
            JR.call(JR.call(JR.call(this, :jm_getVelocityProperties, []), :jm_getVelocityXBasicDecimalP, []), :jm_addint, [5000])
        else
            JR.postinc(this, :oscillate, -1)
            JR.call(JR.call(JR.call(this, :jm_getVelocityProperties, []), :jm_getVelocityXBasicDecimalP, []), :jm_subtractint, [5000])
        end
    end)
  end
end


