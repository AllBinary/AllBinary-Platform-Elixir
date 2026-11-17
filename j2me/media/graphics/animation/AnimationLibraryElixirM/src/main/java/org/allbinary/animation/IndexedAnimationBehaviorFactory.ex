# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

defmodule IndexedAnimationBehaviorFactory do
  def jsuper(), do: AnimationBehaviorFactory

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :frameDelayTime, 0)
    JR.put(this, :loopTotal, 0)
        
        
    nil
  end


  def jinit(this, p_loopTotal, p_frameDelayTime) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :loopTotal, p_loopTotal)
      JR.lset(f, :frameDelayTime, p_frameDelayTime)
      AnimationBehaviorFactory.jinit(this)
      jinitfields(this)
        JR.put(this, :loopTotal, JR.lget(f, :loopTotal))
        JR.put(this, :frameDelayTime, JR.lget(f, :frameDelayTime))
    end)
  end

  def jnew(p_loopTotal, p_frameDelayTime) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_loopTotal, p_frameDelayTime)
    this
  end


  def jm_getOrCreateInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, IndexedAnimationBehavior.jnew(JR.get(this, :loopTotal), JR.get(this, :frameDelayTime))})
    end)
  end
end


