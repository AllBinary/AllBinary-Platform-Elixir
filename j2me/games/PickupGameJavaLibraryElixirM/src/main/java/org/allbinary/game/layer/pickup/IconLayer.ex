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
# package org.allbinary.game.layer.pickup

defmodule IconLayer do
  def jsuper(), do: AllBinaryLayer
def jstatic_NULL_ICON_LAYER(), do: JR.static_get(__MODULE__, :NULL_ICON_LAYER, fn -> IconLayer.jnew(JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]), 0, 0) end)
  def jstatic_set_NULL_ICON_LAYER(value), do: JR.static_put(__MODULE__, :NULL_ICON_LAYER, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
        
    nil
  end


  def jinit(this, p_animationInterface, p_width, p_height) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        AllBinaryLayer.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), JR.lget(f, :width), JR.lget(f, :height)), ViewPosition.jm_getInstanceD())
        IconLayer.jinitfields(this)
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
    end)
  end

  def jnew(p_animationInterface, p_width, p_height) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_width, p_height)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.get(this, :x), JR.get(this, :y)])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), JR.get(this, :x), JR.get(this, :y), JR.get(this, :z)])
    end)
  end


  def jm_getAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationInterface)})
    end)
  end
end


