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
# package org.allbinary.animation.image.sprite

defmodule AdjustedSpriteIndexedAnimation do
  def jsuper(), do: SpriteIndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        
        
    nil
  end


  def jinit(this, p_sprite, p_image, p_basicColorArray, p_dx, p_dy, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :sprite, p_sprite)
      JR.lset(f, :image, p_image)
      JR.lset(f, :basicColorArray, p_basicColorArray)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        SpriteIndexedAnimation.jinit(this, JR.lget(f, :sprite), JR.lget(f, :image), JR.lget(f, :basicColorArray), JR.lget(f, :animationBehavior))
        AdjustedSpriteIndexedAnimation.jinitfields(this)
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_sprite, p_image, p_basicColorArray, p_dx, p_dy, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_sprite, p_image, p_basicColorArray, p_dx, p_dy, p_animationBehavior)
    this
  end


  def jm_paintFrame(this, p_graphics, p_frame, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :frame, p_frame)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(this, :jm_setFrame, [JR.lget(f, :frame)])
        JR.call(JR.get(this, :sprite), :jm_setPosition, [JR.int32(JR.lget(f, :x) + JR.get(this, :dx)), JR.int32(JR.lget(f, :y) + JR.get(this, :dy))])
        SpriteIndexedAnimation.jm_paint(this, JR.lget(f, :graphics))
    end)
  end


  def jm_paintXY(this, p_g, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :g, p_g)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :sprite), :jm_setPosition, [JR.int32(JR.lget(f, :x) + JR.get(this, :dx)), JR.int32(JR.lget(f, :y) + JR.get(this, :dy))])
        SpriteIndexedAnimation.jm_paint(this, JR.lget(f, :g))
    end)
  end


  def jm_paint(this, p_g) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :g, p_g)
        JR.call(JR.get(this, :sprite), :jm_setPosition, [JR.get(this, :dx), JR.get(this, :dy)])
        SpriteIndexedAnimation.jm_paint(this, JR.lget(f, :g))
    end)
  end
end


