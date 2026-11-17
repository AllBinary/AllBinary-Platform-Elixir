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
# package org.allbinary.game.health

defmodule HealthBarTwodAnimation do
  def jsuper(), do: HealthBarAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_layerInterface, p_location) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :location, p_location)
        HealthBarAnimation.jinit(this, JR.lget(f, :layerInterface), JR.lget(f, :location))
        HealthBarTwodAnimation.jinitfields(this)
    end)
  end

  def jnew(p_layerInterface, p_location) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterface, p_location)
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
        JR.lset(f, :ax, JR.call(JR.call(JR.get(this, :allbinaryLayer), :jm_getViewPosition, []), :jm_getX, []))
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.get(this, :basicColor), JR.get(this, :colorP)])
        JR.call(JR.lget(f, :graphics), :jm_fillRect, [JR.lget(f, :ax), (JR.call(this, :jm_getY, []) - 1), JR.get(this, :x2), JR.get(this, :thickness)])
    end)
  end
end


