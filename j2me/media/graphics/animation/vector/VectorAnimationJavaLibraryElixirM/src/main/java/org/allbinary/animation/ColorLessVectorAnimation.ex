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

defmodule ColorLessVectorAnimation do
  def jsuper(), do: VectorAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_currentPoints, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        VectorAnimation.jinit(this, JR.lget(f, :currentPoints), JR.get(BasicColorFactory.jm_getInstance(), :WHITE), JR.lget(f, :animationBehavior))
        ColorLessVectorAnimation.jinitfields(this)
    end)
  end

  def jnew(p_currentPoints, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_currentPoints, p_animationBehavior)
    this
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(this, :jm_paintVectors, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end
end


