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

defmodule BasicConstantVelocityMovement do
  def jsuper(), do: Movement

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :velocityProperties, nil)
    JR.put(this, :speedBasicDecimal, nil)
    JR.put(this, :axisMathVectorUtil, nil)
        
        JR.put(this, :speedBasicDecimal, BasicDecimal.jstatic_ZERO_BIGDECIMAL())
        JR.put(this, :axisMathVectorUtil, AxisMathVectorUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_basicDecimal, p_velocityProperties) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicDecimal, p_basicDecimal)
      JR.lset(f, :velocityProperties, p_velocityProperties)
      Movement.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setSpeedBasicDecimal, [JR.lget(f, :basicDecimal)])
        JR.put(this, :velocityProperties, JR.lget(f, :velocityProperties))
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
        JR.put(this, :speedBasicDecimal, JR.lget(f, :speedBasicDecimal))
        JR.lset(f, :angleFactory, AngleFactory.jm_getInstance())
        JR.call(JR.get(this, :velocityProperties), :jm_setVelocityWithBigDecimal, [JR.lget(f, :speedBasicDecimal), JR.call(JR.lget(f, :angleFactory), :jm_getAt, [JR.lget(f, :angle)]), JR.call(JR.lget(f, :angleFactory), :jm_getAt, [JR.lget(f, :otherAngle)])])
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
        JR.call(JR.lget(f, :layer), :jm_moveDXYZ, [JR.call(JR.call(JR.get(this, :velocityProperties), :jm_getVelocityXBasicDecimalP, []), :jm_getScaled, []), JR.call(JR.call(JR.get(this, :velocityProperties), :jm_getVelocityYBasicDecimalP, []), :jm_getScaled, []), JR.call(JR.call(JR.get(this, :velocityProperties), :jm_getVelocityZBasicDecimalP, []), :jm_getScaled, [])])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :velocityProperties), :jm_toString, [])})
    end)
  end


  def jm_stop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :velocityProperties), :jm_zero, [])
    end)
  end


  def jm_getVelocityProperties(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :velocityProperties)})
    end)
  end


  def jm_setVelocityProperties(this, p_velocityProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :velocityProperties, p_velocityProperties)
        JR.put(this, :velocityProperties, JR.lget(f, :velocityProperties))
    end)
  end


  def jm_setSpeedBasicDecimal(this, p_speedBasicDecimal) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :speedBasicDecimal, p_speedBasicDecimal)
        JR.put(this, :speedBasicDecimal, JR.lget(f, :speedBasicDecimal))
    end)
  end


  def jm_getSpeedBasicDecimal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :speedBasicDecimal)})
    end)
  end
end


