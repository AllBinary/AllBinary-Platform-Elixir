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
# package org.allbinary.game.physics.velocity

defmodule BasicVelocityProperties do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :velocityXBasicDecimal, nil)
    JR.put(this, :velocityYBasicDecimal, nil)
    JR.put(this, :velocityZBasicDecimal, nil)
    JR.put(this, :axisMathVectorUtil, nil)
    JR.put(this, :directionUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
        
        JR.put(this, :axisMathVectorUtil, AxisMathVectorUtil.jm_getInstance())
        JR.put(this, :directionUtil, DirectionUtil.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :velocityXBasicDecimal, BasicDecimal.jnew(0))
        JR.put(this, :velocityYBasicDecimal, BasicDecimal.jnew(0))
        JR.put(this, :velocityZBasicDecimal, BasicDecimal.jnew(0))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_zero(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :velocityXBasicDecimal), :jm_setint, [0])
        JR.call(JR.get(this, :velocityYBasicDecimal), :jm_setint, [0])
        JR.call(JR.get(this, :velocityZBasicDecimal), :jm_setint, [0])
    end)
  end


  def jm_getVelocityXBasicDecimalP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :velocityXBasicDecimal)})
    end)
  end


  def jm_getVelocityYBasicDecimalP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :velocityYBasicDecimal)})
    end)
  end


  def jm_getVelocityZBasicDecimalP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :velocityZBasicDecimal)})
    end)
  end


  def jm_setVelocityWithBigDecimalAndDirection(this, p_magnitudeBasicDecimal, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
        JR.lset(f, :angle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :direction)]))
        JR.lset(f, :otherAngle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :otherDirection)]))
        JR.call(this, :jm_setVelocityWithBigDecimal, [JR.lget(f, :magnitudeBasicDecimal), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_setVelocityWithDirection(this, p_magnitude, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
        JR.lset(f, :angle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :direction)]))
        JR.lset(f, :otherAngle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :otherDirection)]))
        JR.call(this, :jm_setVelocity, [JR.lget(f, :magnitude), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_addVelocityWithBigDecimalAndDirection(this, p_magnitudeBasicDecimal, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
        JR.lset(f, :angle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :direction)]))
        JR.lset(f, :otherAngle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :otherDirection)]))
        JR.call(this, :jm_addVelocityWithBigDecimal, [JR.lget(f, :magnitudeBasicDecimal), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_addVelocityWithDirection(this, p_magnitude, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
        JR.lset(f, :angle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :direction)]))
        JR.lset(f, :otherAngle, JR.call(JR.get(this, :directionUtil), :jm_getAngle, [JR.lget(f, :otherDirection)]))
        JR.call(this, :jm_addVelocity, [JR.lget(f, :magnitude), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_setVelocityWithBigDecimal(this, p_magnitudeBasicDecimal, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.lset(f, :magnitude, JR.call(JR.lget(f, :magnitudeBasicDecimal), :jm_getUnscaled, []))
        JR.call(this, :jm_setVelocity, [JR.lget(f, :magnitude), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_addVelocityWithBigDecimal(this, p_magnitudeBasicDecimal, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.lset(f, :magnitude, JR.call(JR.lget(f, :magnitudeBasicDecimal), :jm_getUnscaled, []))
        JR.call(this, :jm_addVelocity, [JR.lget(f, :magnitude), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_setVelocity(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.call(this, :jm_setVelocityi, [JR.lget(f, :magnitude), JR.int32(JR.call(JR.lget(f, :angle), :jm_getValue, [])), JR.int32(JR.call(JR.lget(f, :otherAngle), :jm_getValue, []))])
    end)
  end


  def jm_addVelocity(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.call(this, :jm_addVelocityi, [JR.lget(f, :magnitude), JR.int32(JR.call(JR.lget(f, :angle), :jm_getValue, [])), JR.int32(JR.call(JR.lget(f, :otherAngle), :jm_getValue, []))])
    end)
  end


  def jm_setVelocityi(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.lset(f, :xVector, ((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateX, [JR.lget(f, :magnitude), JR.lget(f, :angle)]) / JR.call(JR.get(this, :velocityXBasicDecimal), :jm_getScaledFactorValue, []))))
        JR.lset(f, :yVector, ((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateY, [JR.lget(f, :magnitude), JR.lget(f, :angle)]) / JR.call(JR.get(this, :velocityYBasicDecimal), :jm_getScaledFactorValue, []))))
        JR.lset(f, :zVector, ((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateZ, [JR.lget(f, :magnitude), JR.lget(f, :otherAngle)]) / JR.call(JR.get(this, :velocityZBasicDecimal), :jm_getScaledFactorValue, []))))
        JR.call(JR.get(this, :velocityXBasicDecimal), :jm_setlong, [JR.lget(f, :xVector)])
        JR.call(JR.get(this, :velocityYBasicDecimal), :jm_setlong, [JR.lget(f, :yVector)])
        JR.call(JR.get(this, :velocityZBasicDecimal), :jm_setlong, [JR.lget(f, :zVector)])
    end)
  end


  def jm_addVelocityi(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.lset(f, :xVector, ((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateX, [JR.lget(f, :magnitude), JR.lget(f, :angle)]) / JR.call(JR.get(this, :velocityXBasicDecimal), :jm_getScaledFactorValue, []))))
        JR.lset(f, :yVector, ((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateY, [JR.lget(f, :magnitude), JR.lget(f, :angle)]) / JR.call(JR.get(this, :velocityYBasicDecimal), :jm_getScaledFactorValue, []))))
        JR.lset(f, :zVector, ((JR.call(JR.get(this, :axisMathVectorUtil), :jm_calculateZ, [JR.lget(f, :magnitude), JR.lget(f, :otherAngle)]) / JR.call(JR.get(this, :velocityZBasicDecimal), :jm_getScaledFactorValue, []))))
        JR.call(JR.get(this, :velocityXBasicDecimal), :jm_addlong, [JR.lget(f, :xVector)])
        JR.call(JR.get(this, :velocityYBasicDecimal), :jm_addlong, [JR.lget(f, :yVector)])
        JR.call(JR.get(this, :velocityZBasicDecimal), :jm_addlong, [JR.lget(f, :zVector)])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :positionStrings, PositionStrings.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Velocity "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :X_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :velocityXBasicDecimal)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Y_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :velocityYBasicDecimal)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Z_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :velocityZBasicDecimal)])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


