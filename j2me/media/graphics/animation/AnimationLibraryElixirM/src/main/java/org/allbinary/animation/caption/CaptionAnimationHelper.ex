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

defmodule CaptionAnimationHelper do
  def jsuper(), do: CaptionAnimationHelperBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeHelper, nil)
    JR.put(this, :textAnimation, nil)
    JR.put(this, :captionAnimation, nil)
    JR.put(this, :animation, nil)
        JR.put(this, :timeHelper, TimeDelayHelper.jnew(620))
        JR.put(this, :textAnimation, TextAnimation.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), AnimationBehavior.jm_getInstance()))
        
        JR.put(this, :animation, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
    nil
  end


  def jinit(this, p_captionAnimation, p_captionDx, p_captionDy, p_dx, p_dy) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :captionAnimation, p_captionAnimation)
      JR.lset(f, :captionDx, p_captionDx)
      JR.lset(f, :captionDy, p_captionDy)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      CaptionAnimationHelperBase.jinit(this)
      jinitfields(this)
        JR.put(this, :captionAnimation, CaptionAnimation.jnew(JR.lget(f, :captionAnimation), JR.get(this, :textAnimation), JR.lget(f, :captionDx), JR.lget(f, :captionDy), JR.lget(f, :dx), JR.lget(f, :dy)))
    end)
  end

  def jnew(p_captionAnimation, p_captionDx, p_captionDy, p_dx, p_dy) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_captionAnimation, p_captionDx, p_captionDy, p_dx, p_dy)
    this
  end


  def jm_isShowing(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :animation) == JR.get(this, :captionAnimation)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_tick(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :timeHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
            JR.put(this, :animation, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
        end
    end)
  end


  def jm_update(this, p_message, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :message, p_message)
      JR.lset(f, :basicColor, p_basicColor)
        JR.call(JR.get(this, :textAnimation), :jm_setBasicColorP, [JR.lget(f, :basicColor)])
        JR.call(JR.get(this, :textAnimation), :jm_setText, [JR.lget(f, :message)])
        JR.put(this, :animation, JR.get(this, :captionAnimation))
        JR.call(JR.get(this, :timeHelper), :jm_setStartTimeTNT, [])
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
        JR.call(JR.get(this, :animation), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end
end


