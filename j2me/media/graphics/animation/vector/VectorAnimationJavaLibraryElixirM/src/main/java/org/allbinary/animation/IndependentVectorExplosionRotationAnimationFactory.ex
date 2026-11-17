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

defmodule IndependentVectorExplosionRotationAnimationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :framePoints, nil)
    JR.put(this, :vectorInfo, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :vectorAnimationFactoryInterface, nil)
    JR.put(this, :vectorExplosionGenerator, nil)
        JR.put(this, :framePoints, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY_ARRAY))
        
        
        
        JR.put(this, :vectorExplosionGenerator, VectorExplosionGenerator.jm_getInstance())
    nil
  end


  def jinit(this, p_vectorInfo, p_basicColor, p_vectorAnimationFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :vectorInfo, p_vectorInfo)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :vectorAnimationFactoryInterface, p_vectorAnimationFactoryInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :vectorInfo, JR.lget(f, :vectorInfo))
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
        JR.put(this, :vectorAnimationFactoryInterface, JR.lget(f, :vectorAnimationFactoryInterface))
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew(p_vectorInfo, p_basicColor, p_vectorAnimationFactoryInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_vectorInfo, p_basicColor, p_vectorAnimationFactoryInterface)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :framePoints, JR.call(VectorRotationGenerator.jm_getInstance(), :jm_getInstance, [JR.get(this, :vectorInfo)]))
    end)
  end


  def jm_getInstanceAnimation(this, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        JR.lset(f, :frame, 0)
        if (JR.lget(f, :animationInterface) != nil) do
            JR.lset(f, :rotationAnimationInterface, JR.lget(f, :animationInterface))
            JR.lset(f, :frame, JR.call(JR.lget(f, :rotationAnimationInterface), :jm_getFrame, []))
        end
        JR.lset(f, :points, JR.call(JR.get(this, :vectorExplosionGenerator), :jm_getInstance, [JR.aget(JR.get(this, :framePoints), JR.lget(f, :frame)), 6, JR.get(JR.get(this, :vectorExplosionGenerator), :ROTATION)]))
        throw({:jreturn, JR.call(JR.get(this, :vectorAnimationFactoryInterface), :jm_getInstance, [JR.lget(f, :points), JR.get(this, :basicColor)])})
    end)
  end
end


