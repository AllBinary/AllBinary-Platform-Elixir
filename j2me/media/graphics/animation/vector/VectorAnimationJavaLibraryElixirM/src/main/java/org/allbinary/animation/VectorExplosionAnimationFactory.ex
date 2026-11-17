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
# package org.allbinary.animation

defmodule VectorExplosionAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :vectorExplosionGenerator, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :animationBehaviorFactory, nil)
        JR.put(this, :vectorExplosionGenerator, VectorExplosionGenerator.jm_getInstance())
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        
    nil
  end


  def jinit(this, p_basicColor, p_animationBehaviorFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :animationBehaviorFactory, p_animationBehaviorFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :animationBehaviorFactory, JR.lget(f, :animationBehaviorFactory))
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end

  def jnew(p_basicColor, p_animationBehaviorFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_basicColor, p_animationBehaviorFactory)
    this
  end


  def jm_getInstanceAnimation(this, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        JR.lset(f, :vectorRotationAnimationInterface, JR.lget(f, :animationInterface))
        JR.lset(f, :frame, JR.call(JR.lget(f, :vectorRotationAnimationInterface), :jm_getFrame, []))
        JR.lset(f, :framePoints, JR.call(JR.lget(f, :vectorRotationAnimationInterface), :jm_getPoints, [JR.lget(f, :frame)]))
        JR.lset(f, :points, JR.call(JR.get(this, :vectorExplosionGenerator), :jm_getInstance, [JR.lget(f, :framePoints), 6, JR.get(JR.get(this, :vectorExplosionGenerator), :ROTATION)]))
        throw({:jreturn, VectorRotationAnimation.jnew(JR.lget(f, :points), JR.call(this, :jm_getBasicColorP, []), JR.call(JR.get(this, :animationBehaviorFactory), :jm_getOrCreateInstance, []))})
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColor)})
    end)
  end
end


