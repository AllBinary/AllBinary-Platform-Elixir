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

defmodule AdjustedVectorAnimation do
  def jsuper(), do: VectorAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        
        
    nil
  end


  def jinit(this, p_currentPoints, p_basicColor, p_dx, p_dy, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        VectorAnimation.jinit(this, JR.lget(f, :currentPoints), JR.lget(f, :basicColor), JR.lget(f, :animationBehavior))
        AdjustedVectorAnimation.jinitfields(this)
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_currentPoints, p_basicColor, p_dx, p_dy, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_currentPoints, p_basicColor, p_dx, p_dy, p_animationBehavior)
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
        VectorAnimation.jm_paintXY(this, JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :dx)), JR.int32(JR.lget(f, :y) + JR.get(this, :dy)))
    end)
  end
end


