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

defmodule LeftToRightImageAnimation do
  def jsuper(), do: ImageSegmentAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :currentWidth, 0)
    JR.put(this, :anchor, 0)
        
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_image, p_sequenceArray, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :sequenceArray, p_sequenceArray)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageSegmentAnimation.jinit(this, JR.lget(f, :image), JR.lget(f, :sequenceArray), JR.lget(f, :animationBehavior))
        LeftToRightImageAnimation.jinitfields(this)
        JR.put(this, :currentWidth, 0)
        if (JR.aget(JR.call(this, :jm_getSequence, []), 0) == -1) do
            JR.call(this, :jm_setFrame, [(JR.call(this, :jm_getSize, []) - 1)])
        end
    end)
  end

  def jnew(p_image, p_sequenceArray, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_sequenceArray, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.aget(JR.call(this, :jm_getSequence, []), 0) == -1) do
            ImageSegmentAnimation.jm_previousFrame(this)
        else
            ImageSegmentAnimation.jm_nextFrame(this)
        end
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.aget(JR.call(this, :jm_getSequence, []), 0) == -1) do
            ImageSegmentAnimation.jm_nextFrame(this)
        else
            ImageSegmentAnimation.jm_previousFrame(this)
        end
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
        JR.put(this, :currentWidth, ((JR.call(this, :jm_getDrawWidth, []) * JR.call(this, :jm_getFrame, [])) / JR.call(this, :jm_getSize, [])))
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
        JR.call(JR.lget(f, :graphics), :jm_drawRegion, [JR.call(this, :jm_getImage, []), JR.call(this, :jm_getStartX, []), JR.call(this, :jm_getStartY, []), JR.get(this, :currentWidth), JR.call(this, :jm_getDrawHeight, []), Sprite.jstatic_TRANS_NONE(), JR.lget(f, :x), JR.lget(f, :y), JR.get(this, :anchor)])
    end)
  end
end


