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

defmodule VelocityProperties do
  def jsuper(), do: BasicVelocityProperties
def jstatic_NULL_VELOCITY_PROPERTIES(), do: JR.static_get(__MODULE__, :NULL_VELOCITY_PROPERTIES, fn -> VelocityProperties.jnew(0, 0) end)
  def jstatic_set_NULL_VELOCITY_PROPERTIES(value), do: JR.static_put(__MODULE__, :NULL_VELOCITY_PROPERTIES, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :maxForwardVelocity, 0)
    JR.put(this, :maxReverseVelocity, 0)
        JR.put(this, :maxForwardVelocity, 0)
        JR.put(this, :maxReverseVelocity, 0)
    nil
  end


  def jinit(this, p_maxForwardVelocity, p_maxReverseVelocity) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxForwardVelocity, p_maxForwardVelocity)
      JR.lset(f, :maxReverseVelocity, p_maxReverseVelocity)
      BasicVelocityProperties.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setMaxForwardVelocity, [JR.lget(f, :maxForwardVelocity)])
        JR.call(this, :jm_setMaxReverseVelocity, [JR.lget(f, :maxReverseVelocity)])
    end)
  end

  def jnew(p_maxForwardVelocity, p_maxReverseVelocity) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_maxForwardVelocity, p_maxReverseVelocity)
    this
  end


  def jm_getMaxForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxForwardVelocity)})
    end)
  end


  def jm_setMaxForwardVelocity(this, p_maxForwardVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxForwardVelocity, p_maxForwardVelocity)
        JR.put(this, :maxForwardVelocity, JR.lget(f, :maxForwardVelocity))
    end)
  end


  def jm_getMaxReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxReverseVelocity)})
    end)
  end


  def jm_setMaxReverseVelocity(this, p_maxReverseVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxReverseVelocity, p_maxReverseVelocity)
        JR.put(this, :maxReverseVelocity, JR.lget(f, :maxReverseVelocity))
    end)
  end


  def jm_limitMaxXYForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxXYVelocity, [JR.call(this, :jm_getMaxForwardVelocity, [])])
    end)
  end


  def jm_limitMaxXYReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxXYVelocity, [JR.call(this, :jm_getMaxReverseVelocity, [])])
    end)
  end


  def jm_limitMaxYForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxYVelocity, [JR.call(this, :jm_getMaxForwardVelocity, [])])
    end)
  end


  def jm_limitMaxYReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxYVelocity, [JR.call(this, :jm_getMaxReverseVelocity, [])])
    end)
  end


  def jm_limitMaxXForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxXVelocity, [JR.call(this, :jm_getMaxForwardVelocity, [])])
    end)
  end


  def jm_limitMaxXReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxXVelocity, [JR.call(this, :jm_getMaxReverseVelocity, [])])
    end)
  end


  def jm_isOverXYMaxForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_isOverXYMaxVelocity, [JR.call(this, :jm_getMaxForwardVelocity, [])])})
    end)
  end


  def jm_isOverXYMaxReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_isOverXYMaxVelocity, [JR.call(this, :jm_getMaxReverseVelocity, [])])})
    end)
  end


  def jm_limitXYToForwardAndReverseMaxVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_limitMaxXYForwardVelocity, [])
        JR.call(this, :jm_limitMaxXYReverseVelocity, [])
    end)
  end


  def jm_limitMaxXYVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
        JR.call(this, :jm_limitMaxXVelocity, [JR.lget(f, :maxVelocity)])
        JR.call(this, :jm_limitMaxYVelocity, [JR.lget(f, :maxVelocity)])
    end)
  end


  def jm_limitMaxPositiveYVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
        if (JR.call(JR.get(this, :velocityYBasicDecimal), :jm_getUnscaled, []) > JR.lget(f, :maxVelocity)) do
            JR.call(JR.get(this, :velocityYBasicDecimal), :jm_setint, [JR.lget(f, :maxVelocity)])
        end
    end)
  end


  def jm_limitMaxNegativeYVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
        if (JR.call(JR.get(this, :velocityYBasicDecimal), :jm_getUnscaled, []) < -JR.lget(f, :maxVelocity)) do
            JR.call(JR.get(this, :velocityYBasicDecimal), :jm_setint, [-JR.lget(f, :maxVelocity)])
        end
    end)
  end


  def jm_limitMaxYVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
        JR.call(this, :jm_limitMaxPositiveYVelocity, [JR.lget(f, :maxVelocity)])
        JR.call(this, :jm_limitMaxNegativeYVelocity, [JR.lget(f, :maxVelocity)])
    end)
  end


  def jm_limitMaxXVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
        if (JR.call(JR.get(this, :velocityXBasicDecimal), :jm_getUnscaled, []) > JR.lget(f, :maxVelocity)) do
            JR.call(JR.get(this, :velocityXBasicDecimal), :jm_setint, [JR.lget(f, :maxVelocity)])
        end
        if (JR.call(JR.get(this, :velocityXBasicDecimal), :jm_getUnscaled, []) < -JR.lget(f, :maxVelocity)) do
            JR.call(JR.get(this, :velocityXBasicDecimal), :jm_setint, [-JR.lget(f, :maxVelocity)])
        end
    end)
  end


  def jm_isOverXYMaxVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
        if (JR.call(JR.get(this, :velocityXBasicDecimal), :jm_getUnscaled, []) > JR.lget(f, :maxVelocity)) do
            throw({:jreturn, true})
        end
        if (JR.call(JR.get(this, :velocityXBasicDecimal), :jm_getUnscaled, []) < -JR.lget(f, :maxVelocity)) do
            throw({:jreturn, true})
        end
        if (JR.call(JR.get(this, :velocityYBasicDecimal), :jm_getUnscaled, []) > JR.lget(f, :maxVelocity)) do
            throw({:jreturn, true})
        end
        if (JR.call(JR.get(this, :velocityYBasicDecimal), :jm_getUnscaled, []) < -JR.lget(f, :maxVelocity)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
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
        BasicVelocityProperties.jm_setVelocityi(this, JR.lget(f, :magnitude), JR.lget(f, :angle), JR.lget(f, :otherAngle))
        JR.call(this, :jm_limitXYToForwardAndReverseMaxVelocity, [])
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
        BasicVelocityProperties.jm_addVelocityi(this, JR.lget(f, :magnitude), JR.lget(f, :angle), JR.lget(f, :otherAngle))
        JR.call(this, :jm_limitXYToForwardAndReverseMaxVelocity, [])
    end)
  end
end


