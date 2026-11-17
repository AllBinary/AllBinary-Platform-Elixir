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
# package org.allbinary.animation.caption

defmodule CaptionAnimation do
  def jsuper(), do: Animation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
    JR.put(this, :overlayAnimationInterface, nil)
    JR.put(this, :captionDx, 0)
    JR.put(this, :captionDy, 0)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        
        
        
        
        
        
    nil
  end


  def jinit(this, p_animationInterface, p_overlayAnimationInterface, p_captionDx, p_captionDy, p_dx, p_dy) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :overlayAnimationInterface, p_overlayAnimationInterface)
      JR.lset(f, :captionDx, p_captionDx)
      JR.lset(f, :captionDy, p_captionDy)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      Animation.jinit(this)
      jinitfields(this)
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :overlayAnimationInterface, JR.lget(f, :overlayAnimationInterface))
        JR.put(this, :captionDx, JR.lget(f, :captionDx))
        JR.put(this, :captionDy, JR.lget(f, :captionDy))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_animationInterface, p_overlayAnimationInterface, p_captionDx, p_captionDy, p_dx, p_dy) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_overlayAnimationInterface, p_captionDx, p_captionDy, p_dx, p_dy)
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
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)), JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy))])
        JR.call(JR.get(this, :overlayAnimationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.int32(JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)) + JR.get(this, :dx)), JR.int32(JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy)) + JR.get(this, :dy))])
    end)
  end


  def jm_paintThreedXYZ(this, p_graphics, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.call(JR.get(this, :animationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)), JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy)), JR.lget(f, :z)])
        JR.call(JR.get(this, :overlayAnimationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), JR.int32(JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)) + JR.get(this, :dx)), JR.int32(JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy)) + JR.get(this, :dy)), JR.lget(f, :z)])
    end)
  end
end


