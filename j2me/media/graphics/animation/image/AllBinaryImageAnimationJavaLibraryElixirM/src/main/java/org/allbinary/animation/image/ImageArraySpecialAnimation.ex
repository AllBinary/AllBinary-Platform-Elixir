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

defmodule ImageArraySpecialAnimation do
  def jsuper(), do: ImageArrayAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :loopCount, 0)
    JR.put(this, :loopCountTotal, 0)
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(270))
        JR.put(this, :loopCount, 0)
        JR.put(this, :loopCountTotal, 1)
    nil
  end


  def jinit(this, p_imageArray, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        ImageArrayAnimation.jinit(this, JR.lget(f, :imageArray), JR.lget(f, :animationBehavior))
        ImageArraySpecialAnimation.jinitfields(this)
        JR.call(this, :jm_reset, [])
    end)
  end

  def jnew(p_imageArray, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_imageArray, p_animationBehavior)
    this
  end


  def jm_getLoopCount(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :loopCount)})
    end)
  end


  def jm_setLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [(JR.call(JR.get(this, :circularIndexUtil), :jm_getSize, []) - 1)])
    end)
  end


  def jm_reset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setFrame, [(JR.call(this, :jm_getSize, []) - 1)])
        JR.put(this, :loopCount, 0)
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getFrame, []) > 0) do
            if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
                JR.call(this, :jm_previousFrame, [])
                if (JR.call(this, :jm_getFrame, []) == 0) do
                    JR.postinc(this, :loopCount, 1)
                end
            end
        end
    end)
  end


  def jm_isComplete(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if ((JR.get(this, :loopCount) < JR.get(this, :loopCountTotal)) || (JR.call(this, :jm_getFrame, []) != 0)) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
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
        JR.lset(f, :x, (JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_getLastHalfWidth, []) - (Bitwise.bsr(JR.call(JR.call(this, :jm_getImage, [JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])]), :jm_getWidth, []), 1))))
        JR.lset(f, :y, 5)
        ImageArrayAnimation.jm_paintXY(this, JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y))
    end)
  end
end


