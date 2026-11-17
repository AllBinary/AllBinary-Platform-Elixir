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

defmodule TweenedImageAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :image, nil)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :totalFrames, 0)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :anchor, 0)
        
        
        
        
        
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_image, p_dx, p_dy, p_totalFrames, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :totalFrames, p_totalFrames)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        TweenedImageAnimation.jinitfields(this)
        JR.put(this, :image, JR.lget(f, :image))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
        JR.put(this, :totalFrames, JR.lget(f, :totalFrames))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.get(this, :totalFrames)))
    end)
  end

  def jnew(p_image, p_dx, p_dy, p_totalFrames, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_dx, p_dy, p_totalFrames, p_animationBehavior)
    this
  end


  def jm_getAnimationSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getSize, [])})
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_previous, [])
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [JR.lget(f, :index)])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalFrames)})
    end)
  end


  def jm_setSequence(this, p_sequence) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sequence, p_sequence)
        nil
    end)
  end


  def jm_getSequence(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, PrimitiveIntUtil.jm_getArrayInstance()})
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
        JR.lset(f, :frame, JR.call(this, :jm_getFrame, []))
        JR.lset(f, :currentX, JR.int32(JR.get(this, :dx) * JR.lget(f, :frame)))
        JR.lset(f, :currentY, JR.int32(JR.get(this, :dy) * JR.lget(f, :frame)))
        JR.call(JR.lget(f, :graphics), :jm_drawImage, [JR.get(this, :image), JR.int32(JR.lget(f, :x) + JR.lget(f, :currentX)), JR.int32(JR.lget(f, :y) + JR.lget(f, :currentY)), JR.get(this, :anchor)])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(DisposalUtil.jm_getInstance(), :jm_disposeImage, [JR.get(this, :image)])
    end)
  end


  def jm_finalize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(DisposalUtil.jm_getInstance(), :jm_disposeImage, [JR.get(this, :image)])
    end)
  end
end


