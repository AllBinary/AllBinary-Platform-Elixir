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
# package org.allbinary.game.ag.layer.pickup.life

defmodule LifeLayer do
  def jsuper(), do: AllBinaryLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        AllBinaryLayer.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 0, 0), ViewPosition.jm_getInstanceD())
        LifeLayer.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
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


  def jm_visit(this, p_lifeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lifeInterface, p_lifeInterface)
        JR.call(JR.lget(f, :lifeInterface), :jm_add, [JR.int16(1)])
    end)
  end
end


