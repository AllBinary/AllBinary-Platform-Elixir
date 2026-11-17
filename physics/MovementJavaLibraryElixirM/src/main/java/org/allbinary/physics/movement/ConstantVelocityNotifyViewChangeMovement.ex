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

defmodule ConstantVelocityNotifyViewChangeMovement do
  def jsuper(), do: Movement

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicVelocityProperties, nil)
    JR.put(this, :speedBasicDecimal, nil)
    JR.put(this, :axisMathVectorUtil, nil)
        
        
        JR.put(this, :axisMathVectorUtil, AxisMathVectorUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Movement.jinit(this)
      jinitfields(this)
        JR.put(this, :speedBasicDecimal, BasicDecimal.jstatic_ZERO_BIGDECIMAL())
        JR.put(this, :basicVelocityProperties, BasicVelocityProperties.jnew())
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
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
        JR.put(this, :speedBasicDecimal, JR.lget(f, :speedBasicDecimal))
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        JR.call(JR.get(this, :basicVelocityProperties), :jm_setVelocityWithBigDecimal, [JR.lget(f, :speedBasicDecimal), JR.call(JR.lget(f, :angleFactory), :jm_getAt, [JR.lget(f, :angle)]), JR.call(JR.lget(f, :angleFactory), :jm_getAt, [JR.lget(f, :otherAngle)])])
    end)
  end


  def jm_moveOutsideRadius(this, p_layer, p_radius, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
      JR.lset(f, :radius, p_radius)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.lset(f, :scaleFactorValue, JR.call(JR.get(this, :speedBasicDecimal), :jm_getScaledFactorValue, []))
        JR.lset(f, :xVector, JR.int32(((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateX, [JR.lget(f, :radius), JR.lget(f, :angle)]) / JR.lget(f, :scaleFactorValue)))))
        JR.lset(f, :yVector, JR.int32(((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateY, [JR.lget(f, :radius), JR.lget(f, :angle)]) / JR.lget(f, :scaleFactorValue)))))
        JR.lset(f, :zVector, JR.int32(((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateZ, [JR.lget(f, :radius), JR.lget(f, :otherAngle)]) / JR.lget(f, :scaleFactorValue)))))
        JR.call(JR.lget(f, :layer), :jm_moveDXYZ, [JR.lget(f, :xVector), JR.lget(f, :yVector), JR.lget(f, :zVector)])
    end)
  end


  def jm_process(this, p_layer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layer, p_layer)
        JR.lset(f, :x, JR.call(JR.call(JR.get(this, :basicVelocityProperties), :jm_getVelocityXBasicDecimalP, []), :jm_getScaled, []))
        JR.lset(f, :y, JR.call(JR.call(JR.get(this, :basicVelocityProperties), :jm_getVelocityYBasicDecimalP, []), :jm_getScaled, []))
        JR.lset(f, :z, JR.call(JR.call(JR.get(this, :basicVelocityProperties), :jm_getVelocityZBasicDecimalP, []), :jm_getScaled, []))
        JR.call(JR.lget(f, :layer), :jm_moveDXYZ, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])
        if (((JR.lget(f, :x) != 0) || (JR.lget(f, :y) != 0)) || (JR.lget(f, :z) != 0)) do
            JR.call(JR.lget(f, :layer), :jm_onViewPositionChangeEvent, [])
        end
    end)
  end


  def jm_stop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :basicVelocityProperties), :jm_zero, [])
    end)
  end
end


