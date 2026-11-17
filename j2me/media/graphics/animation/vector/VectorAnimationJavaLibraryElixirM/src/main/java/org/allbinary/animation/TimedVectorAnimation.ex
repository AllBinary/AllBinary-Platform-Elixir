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

defmodule TimedVectorAnimation do
  def jsuper(), do: VectorAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeElapsedHelper, nil)
        JR.put(this, :timeElapsedHelper, TimeDelayHelper.jnew(200))
    nil
  end


  def jinit(this, p_currentPoints, p_basicColor, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        VectorAnimation.jinit(this, JR.lget(f, :currentPoints), JR.lget(f, :basicColor), JR.lget(f, :animationBehavior))
        TimedVectorAnimation.jinitfields(this)
    end)
  end

  def jnew(p_currentPoints, p_basicColor, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_currentPoints, p_basicColor, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :timeElapsedHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
            VectorAnimation.jm_nextFrame(this)
        end
    end)
  end
end


