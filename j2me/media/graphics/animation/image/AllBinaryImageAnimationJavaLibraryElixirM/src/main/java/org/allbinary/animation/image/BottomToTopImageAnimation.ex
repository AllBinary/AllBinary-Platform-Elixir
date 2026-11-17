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
# package org.allbinary.animation.image

defmodule BottomToTopImageAnimation do
  def jsuper(), do: ImageSegmentAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :startHeight, 0)
    JR.put(this, :currentHeight, 0)
    JR.put(this, :anchor, 0)
        JR.put(this, :startHeight, 0)
        JR.put(this, :currentHeight, 0)
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_image, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageSegmentAnimation.jinit(this, JR.lget(f, :image), PrimitiveIntUtil.jm_getArrayInstance(), JR.lget(f, :animationBehavior))
        BottomToTopImageAnimation.jinitfields(this)
        JR.call(this, :jm_setFrame, [(JR.call(this, :jm_getSize, []) - 1)])
    end)
  end

  def jnew(p_image, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ImageSegmentAnimation.jm_previousFrame(this)
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ImageSegmentAnimation.jm_nextFrame(this)
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        ImageSegmentAnimation.jm_setFrame(this, JR.lget(f, :index))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :startHeight, ((JR.call(this, :jm_getDrawHeight, []) * JR.call(this, :jm_getFrame, [])) / JR.call(this, :jm_getSize, [])))
        JR.put(this, :currentHeight, (JR.call(this, :jm_getDrawHeight, []) - JR.get(this, :startHeight)))
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
        JR.call(JR.lget(f, :graphics), :jm_drawRegion, [JR.call(this, :jm_getImage, []), JR.call(this, :jm_getStartX, []), JR.get(this, :startHeight), JR.call(this, :jm_getDrawWidth, []), JR.get(this, :currentHeight), Sprite.jstatic_TRANS_NONE(), JR.lget(f, :x), JR.int32(JR.lget(f, :y) + JR.get(this, :startHeight)), JR.get(this, :anchor)])
    end)
  end
end


