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

defmodule DragVelocityBehavior do
  def jsuper(), do: VelocityBehaviorBase
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DragVelocityBehavior.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    VelocityBehaviorBase.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_reduce(this, p_velocityProperties, p_nominator, p_denominator) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :velocityProperties, p_velocityProperties)
      JR.lset(f, :nominator, p_nominator)
      JR.lset(f, :denominator, p_denominator)
        if (JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityXBasicDecimalP, []), :jm_getUnscaled, []) != 0) do
            JR.lset(f, :basicDecimal, JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityXBasicDecimalP, []))
            JR.call(JR.lget(f, :basicDecimal), :jm_multiplyint, [JR.lget(f, :nominator)])
            JR.call(JR.lget(f, :basicDecimal), :jm_divideint, [JR.lget(f, :denominator)])
        end
        if (JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityYBasicDecimalP, []), :jm_getUnscaled, []) != 0) do
            JR.lset(f, :basicDecimal, JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityYBasicDecimalP, []))
            JR.call(JR.lget(f, :basicDecimal), :jm_multiplyint, [JR.lget(f, :nominator)])
            JR.call(JR.lget(f, :basicDecimal), :jm_divideint, [JR.lget(f, :denominator)])
        end
    end)
  end


  def jm_reduceX(this, p_velocityProperties, p_nominator, p_denominator) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :velocityProperties, p_velocityProperties)
      JR.lset(f, :nominator, p_nominator)
      JR.lset(f, :denominator, p_denominator)
        JR.lset(f, :basicDecimal, JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityXBasicDecimalP, []))
        if (JR.call(JR.lget(f, :basicDecimal), :jm_getUnscaled, []) != 0) do
            JR.call(JR.lget(f, :basicDecimal), :jm_multiplyint, [JR.lget(f, :nominator)])
            JR.call(JR.lget(f, :basicDecimal), :jm_divideint, [JR.lget(f, :denominator)])
        end
    end)
  end


  def jm_reduceY(this, p_velocityProperties, p_nominator, p_denominator) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :velocityProperties, p_velocityProperties)
      JR.lset(f, :nominator, p_nominator)
      JR.lset(f, :denominator, p_denominator)
        if (JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityYBasicDecimalP, []), :jm_getUnscaled, []) != 0) do
            JR.lset(f, :basicDecimal, JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityYBasicDecimalP, []))
            JR.call(JR.lget(f, :basicDecimal), :jm_multiplyint, [JR.lget(f, :nominator)])
            JR.call(JR.lget(f, :basicDecimal), :jm_divideint, [JR.lget(f, :denominator)])
        end
    end)
  end
end


