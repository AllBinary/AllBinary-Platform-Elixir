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

defmodule CaptionIndexedAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
    JR.put(this, :movieIndexedAnimationInterface, nil)
    JR.put(this, :captionDx, 0)
    JR.put(this, :captionDy, 0)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :time, 0)
    JR.put(this, :END_EVENT, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :player, nil)
        
        
        
        
        
        
        
        
        
        
    nil
  end


  def jinit(this, p_animationInterface, p_movieIndexedAnimationInterface, p_player, p_captionDx, p_captionDy, p_dx, p_dy, p_time, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :movieIndexedAnimationInterface, p_movieIndexedAnimationInterface)
      JR.lset(f, :player, p_player)
      JR.lset(f, :captionDx, p_captionDx)
      JR.lset(f, :captionDy, p_captionDy)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :time, p_time)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        CaptionIndexedAnimation.jinitfields(this)
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :movieIndexedAnimationInterface, JR.lget(f, :movieIndexedAnimationInterface))
        JR.put(this, :captionDx, JR.lget(f, :captionDx))
        JR.put(this, :captionDy, JR.lget(f, :captionDy))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
        JR.put(this, :time, JR.lget(f, :time))
        JR.put(this, :END_EVENT, AllBinaryEventObject.jnew(this))
        JR.lset(f, :timePerFrame, div(JR.get(this, :time), JR.call(this, :jm_getSize, [])))
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(JR.lget(f, :timePerFrame)))
        JR.put(this, :player, JR.lget(f, :player))
        JR.call(JR.get(this, :player), :jm_start, [])
    end)
  end

  def jnew(p_animationInterface, p_movieIndexedAnimationInterface, p_player, p_captionDx, p_captionDy, p_dx, p_dy, p_time, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_movieIndexedAnimationInterface, p_player, p_captionDx, p_captionDy, p_dx, p_dy, p_time, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
            JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_nextFrame, [])
        end
        if JR.call(this, :jm_isLastFrame, []) do
            JR.call(AnimationEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :END_EVENT)])
        end
    end)
  end


  def jm_isLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_getFrame, []) == JR.int32(JR.call(this, :jm_getSize, []) - 1)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_previousFrame, [])
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_setFrame, [JR.lget(f, :index)])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_getFrame, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_getSize, [])})
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
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)), JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy))])
        JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.int32(JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)) + JR.get(this, :dx)), JR.int32(JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy)) + JR.get(this, :dy))])
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
        JR.call(JR.get(this, :movieIndexedAnimationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), JR.int32(JR.int32(JR.lget(f, :x) + JR.get(this, :captionDx)) + JR.get(this, :dx)), JR.int32(JR.int32(JR.lget(f, :y) + JR.get(this, :captionDy)) + JR.get(this, :dy)), JR.lget(f, :z)])
    end)
  end
end


