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
# package org.allbinary.android.input.motion

defmodule AnalogControllerHelper do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :reduceTimeFactor, 0)
    JR.put(this, :SCALE_VALUE, 0)
    JR.put(this, :rightTimeElapsedHelper, nil)
    JR.put(this, :leftTimeElapsedHelper, nil)
    JR.put(this, :downTimeElapsedHelper, nil)
    JR.put(this, :upTimeElapsedHelper, nil)
        
        JR.put(this, :SCALE_VALUE, JR.get(AnalogControllerConfigurationFactory.jm_getInstance(), :SCALE_VALUE))
        JR.put(this, :rightTimeElapsedHelper, TimeDelayHelper.jnew(0))
        JR.put(this, :leftTimeElapsedHelper, TimeDelayHelper.jnew(0))
        JR.put(this, :downTimeElapsedHelper, TimeDelayHelper.jnew(0))
        JR.put(this, :upTimeElapsedHelper, TimeDelayHelper.jnew(0))
    nil
  end


  def jinit(this, p_reduceTimeFactor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :reduceTimeFactor, p_reduceTimeFactor)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :reduceTimeFactor, JR.lget(f, :reduceTimeFactor))
    end)
  end

  def jnew(p_reduceTimeFactor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_reduceTimeFactor)
    this
  end


  def jm_right(this, p_collidableDestroyableDamageableLayer, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        JR.put(JR.get(this, :rightTimeElapsedHelper), :delay, (Bitwise.bsr((JR.int32(JR.get(this, :SCALE_VALUE) - JR.lget(f, :xAnalogValue))), JR.get(this, :reduceTimeFactor))))
        if JR.call(JR.get(this, :rightTimeElapsedHelper), :jm_isTimeTNT, []) do
            JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_right, [])
        end
    end)
  end


  def jm_left(this, p_collidableDestroyableDamageableLayer, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        JR.put(JR.get(this, :leftTimeElapsedHelper), :delay, (Bitwise.bsr((JR.int32(JR.get(this, :SCALE_VALUE) + JR.lget(f, :xAnalogValue))), JR.get(this, :reduceTimeFactor))))
        if JR.call(JR.get(this, :leftTimeElapsedHelper), :jm_isTimeTNT, []) do
            JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_left, [])
        end
    end)
  end


  def jm_up(this, p_collidableDestroyableDamageableLayer, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        JR.put(JR.get(this, :upTimeElapsedHelper), :delay, (Bitwise.bsr((JR.int32(JR.get(this, :SCALE_VALUE) - JR.lget(f, :xAnalogValue))), JR.get(this, :reduceTimeFactor))))
        if JR.call(JR.get(this, :upTimeElapsedHelper), :jm_isTimeTNT, []) do
            JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_up, [])
        end
    end)
  end


  def jm_down(this, p_collidableDestroyableDamageableLayer, p_xAnalogValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
      JR.lset(f, :xAnalogValue, p_xAnalogValue)
        JR.put(JR.get(this, :downTimeElapsedHelper), :delay, (Bitwise.bsr((JR.int32(JR.get(this, :SCALE_VALUE) + JR.lget(f, :xAnalogValue))), JR.get(this, :reduceTimeFactor))))
        if JR.call(JR.get(this, :downTimeElapsedHelper), :jm_isTimeTNT, []) do
            JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_down, [])
        end
    end)
  end
end


