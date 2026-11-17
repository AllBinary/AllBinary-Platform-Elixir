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

defmodule ImageBaseRotationAnimation do
  def jsuper(), do: RotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :image, nil)
    JR.put(this, :anchor, 0)
        
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_image, p_angleInfo, p_totalAngle, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        RotationAnimation.jinit(this, JR.lget(f, :angleInfo), CircularIndexUtil.jm_createInstance((JR.lget(f, :totalAngle) / JR.call(JR.call(JR.lget(f, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, []))), JR.lget(f, :animationBehavior))
        ImageBaseRotationAnimation.jinitfields(this)
        JR.put(this, :image, JR.lget(f, :image))
    end)
  end

  def jnew(p_image, p_angleInfo, p_totalAngle, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_angleInfo, p_totalAngle, p_animationBehavior)
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
        JR.call(JR.lget(f, :graphics), :jm_drawImage, [JR.get(this, :image), JR.lget(f, :x), JR.lget(f, :y), JR.get(this, :anchor)])
    end)
  end


  def jm_getImage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :image)})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :image), :jm_getWidth, [])})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :image), :jm_getHeight, [])})
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


