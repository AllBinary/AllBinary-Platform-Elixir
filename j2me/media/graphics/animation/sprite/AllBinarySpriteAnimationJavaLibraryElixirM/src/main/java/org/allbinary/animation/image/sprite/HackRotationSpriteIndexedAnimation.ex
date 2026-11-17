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

defmodule HackRotationSpriteIndexedAnimation do
  def jsuper(), do: RotationAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :sprite, nil)
    JR.put(this, :image, nil)
        
        
    nil
  end


  def jinit(this, p_sprite, p_image, p_angleInfo, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :sprite, p_sprite)
      JR.lset(f, :image, p_image)
      JR.lset(f, :angleInfo, p_angleInfo)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        RotationAnimation.jinit(this, JR.lget(f, :angleInfo), CircularIndexUtil.jm_createInstance((360 / JR.call(JR.call(JR.lget(f, :angleInfo), :jm_getAngleIncrementInfo, []), :jm_getAngleIncrement, []))), JR.lget(f, :animationBehavior))
        HackRotationSpriteIndexedAnimation.jinitfields(this)
        JR.put(this, :sprite, JR.lget(f, :sprite))
        JR.put(this, :image, JR.lget(f, :image))
    end)
  end

  def jnew(p_sprite, p_image, p_angleInfo, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_sprite, p_image, p_angleInfo, p_animationBehavior)
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


  def jm_paintFrame(this, p_g, p_frame, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :g, p_g)
      JR.lset(f, :frame, p_frame)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(this, :jm_setFrame, [JR.lget(f, :frame)])
        JR.call(this, :jm_paintXY, [JR.lget(f, :g), JR.lget(f, :x), JR.lget(f, :y)])
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
        JR.call(JR.get(this, :sprite), :jm_setPosition, [JR.lget(f, :x), JR.lget(f, :y)])
        JR.call(this, :jm_paint, [JR.lget(f, :g)])
    end)
  end


  def jm_paint(this, p_g) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :g, p_g)
        JR.call(JR.get(this, :sprite), :jm_paint, [JR.lget(f, :g)])
    end)
  end


  def jm_nextRotation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :sprite), :jm_nextFrame, [])
    end)
  end


  def jm_previousRotation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :sprite), :jm_prevFrame, [])
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :sprite), :jm_getRawFrameCount, [])})
    end)
  end


  def jm_setFrame(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
        JR.call(JR.get(this, :sprite), :jm_setFrame, [JR.lget(f, :frame)])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :sprite), :jm_getFrame, [])})
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
end


