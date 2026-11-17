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
# package org.allbinary.game.ag.layer.pickup.points

defmodule PointsLayer do
  def jsuper(), do: AllBinaryLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :points, 0)
        
    nil
  end


  def jinit(this, p_points) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        AllBinaryLayer.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 0, 0), ViewPosition.jm_getInstanceD())
        PointsLayer.jinitfields(this)
        JR.put(this, :points, JR.lget(f, :points))
    end)
  end

  def jnew(p_points) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_points)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_visit(this, p_scoreableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
        JR.call(JR.lget(f, :scoreableInterface), :jm_addPoints, [JR.get(this, :points)])
    end)
  end
end


