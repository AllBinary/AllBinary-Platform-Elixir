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

defmodule AllBinaryAdjustedSpriteRotationAnimation do
  def jsuper(), do: AllBinarySpriteRotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        
        
    nil
  end


  def jinit(this, p_sprite, p_image, p_dx, p_dy, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :sprite, p_sprite)
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        AllBinarySpriteRotationAnimation.jinit(this, JR.lget(f, :sprite), JR.lget(f, :image), JR.lget(f, :animationBehavior))
        AllBinaryAdjustedSpriteRotationAnimation.jinitfields(this)
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_sprite, p_image, p_dx, p_dy, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_sprite, p_image, p_dx, p_dy, p_animationBehavior)
    this
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
        JR.call(this, :jm_paint, [JR.lget(f, :g)])
    end)
  end
end


