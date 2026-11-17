# Generated Code Do Not Modify
# package org.allbinary.physics.movement

defmodule PreciseConstantVelocityMovement do
  def jsuper(), do: BasicConstantVelocityMovement

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :accumulatedX, 0)
    JR.put(this, :accumulatedY, 0)
    JR.put(this, :accumulatedZ, 0)
    JR.put(this, :factorValue, 0)
        JR.put(this, :accumulatedX, 0)
        JR.put(this, :accumulatedY, 0)
        JR.put(this, :accumulatedZ, 0)
        JR.put(this, :factorValue, JR.get(ScaleFactorFactory.jm_getInstance(), :DEFAULT_SCALE_VALUE))
    nil
  end


  def jinit(this, p_basicDecimal, p_velocityProperties) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicDecimal, p_basicDecimal)
      JR.lset(f, :velocityProperties, p_velocityProperties)
        BasicConstantVelocityMovement.jinit(this, JR.lget(f, :basicDecimal), JR.lget(f, :velocityProperties))
        PreciseConstantVelocityMovement.jinitfields(this)
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
        JR.lset(f, :mathUtil, MathUtil.jm_getInstance())
        JR.lset(f, :velocityProperties, JR.call(this, :jm_getVelocityProperties, []))
        JR.put(this, :accumulatedX, JR.int32(((JR.get(this, :accumulatedX) + JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityXBasicDecimalP, []), :jm_getUnscaled, [])))))
        JR.put(this, :accumulatedY, JR.int32(((JR.get(this, :accumulatedY) + JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityYBasicDecimalP, []), :jm_getUnscaled, [])))))
        JR.put(this, :accumulatedZ, JR.int32(((JR.get(this, :accumulatedZ) + JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityZBasicDecimalP, []), :jm_getUnscaled, [])))))
        JR.call(JR.lget(f, :layer), :jm_moveDXYZ, [div(JR.get(this, :accumulatedX), JR.get(this, :factorValue)), div(JR.get(this, :accumulatedY), JR.get(this, :factorValue)), div(JR.get(this, :accumulatedZ), JR.get(this, :factorValue))])
        if (JR.call(JR.lget(f, :mathUtil), :jm_abs, [JR.get(this, :accumulatedX)]) > JR.get(this, :factorValue)) do
            JR.put(this, :accumulatedX, 0)
        end
        if (JR.call(JR.lget(f, :mathUtil), :jm_abs, [JR.get(this, :accumulatedY)]) > JR.get(this, :factorValue)) do
            JR.put(this, :accumulatedY, 0)
        end
        if (JR.call(JR.lget(f, :mathUtil), :jm_abs, [JR.get(this, :accumulatedZ)]) > JR.get(this, :factorValue)) do
            JR.put(this, :accumulatedZ, 0)
        end
    end)
  end
end


