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
# package org.allbinary.animation.vector

defmodule RectangleAdjustedAnimation do
  def jsuper(), do: Animation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
    JR.put(this, :offsetX, 0)
    JR.put(this, :offsetY, 0)
        
        
        
        
    nil
  end


  def jinit(this, p_width, p_height, p_offsetX, p_offsetY, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :offsetX, p_offsetX)
      JR.lset(f, :offsetY, p_offsetY)
      JR.lset(f, :basicColor, p_basicColor)
      Animation.jinit(this)
      jinitfields(this)
        JR.put(this, :width, JR.lget(f, :width))
        JR.put(this, :height, JR.lget(f, :height))
        JR.put(this, :offsetX, JR.lget(f, :offsetX))
        JR.put(this, :offsetY, JR.lget(f, :offsetY))
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end

  def jnew(p_width, p_height, p_offsetX, p_offsetY, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_width, p_height, p_offsetX, p_offsetY, p_basicColor)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, []), JR.call(this, :jm_getColor, [])])
        JR.call(JR.lget(f, :graphics), :jm_drawRect, [JR.int32(JR.lget(f, :x) + JR.get(this, :offsetX)), JR.int32(JR.lget(f, :y) + JR.get(this, :offsetY)), JR.get(this, :width), JR.get(this, :height)])
    end)
  end


  def jm_setWidth(this, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
        JR.put(this, :width, JR.lget(f, :width))
    end)
  end


  def jm_setHeight(this, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :height, p_height)
        JR.put(this, :height, JR.lget(f, :height))
    end)
  end


  def jm_setOffsetX(this, p_offsetX) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :offsetX, p_offsetX)
        JR.put(this, :offsetX, JR.lget(f, :offsetX))
    end)
  end


  def jm_setOffsetY(this, p_offsetY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :offsetY, p_offsetY)
        JR.put(this, :offsetY, JR.lget(f, :offsetY))
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Animation.jm_getBasicColorP(this)})
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        Animation.jm_setBasicColorP(this, JR.lget(f, :basicColor))
    end)
  end
end


