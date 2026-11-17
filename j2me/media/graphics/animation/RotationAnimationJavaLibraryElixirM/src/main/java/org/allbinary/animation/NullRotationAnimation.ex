# Generated Code Do Not Modify
# package org.allbinary.animation

defmodule NullRotationAnimation do
  def jsuper(), do: RotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_createTotalAngle(p_angleInfo, p_totalAngle, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        throw({:jreturn, NullRotationAnimation.jnew(JR.lget(f, :angleInfo), CircularIndexUtil.jm_createInstance((JR.lget(f, :totalAngle) / JR.call(JR.call(JR.lget(f, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, []))), JR.lget(f, :animationBehavior))})
    end)
  end


  def jm_createQuarter(p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationBehavior, p_animationBehavior)
        throw({:jreturn, NullRotationAnimation.jnew(AngleInfo.jm_getInstance(JR.get(AngleFactory.jm_getInstance(), :QUARTER_TOTAL_ANGLE)), CircularIndexUtil.jm_createInstance(4), JR.lget(f, :animationBehavior))})
    end)
  end


  def jinit(this, p_angleInfo, p_circularIndexUtil, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :circularIndexUtil, p_circularIndexUtil)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        RotationAnimation.jinit(this, JR.lget(f, :angleInfo), JR.lget(f, :circularIndexUtil), JR.lget(f, :animationBehavior))
        NullRotationAnimation.jinitfields(this)
    end)
  end

  def jnew(p_angleInfo, p_circularIndexUtil, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_angleInfo, p_circularIndexUtil, p_animationBehavior)
    this
  end


  def jm_getAnimationSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


