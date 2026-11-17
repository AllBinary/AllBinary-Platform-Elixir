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
# package org.allbinary.animation.special

defmodule SpecialAnimation do
  def jsuper(), do: IndexedAnimation
def jstatic_NULL_SPECIAL_ANIMATION(), do: JR.static_get(__MODULE__, :NULL_SPECIAL_ANIMATION, fn -> SpecialAnimation.jnew(IndexedAnimationBehavior.jnew(1, 250)) end)
  def jstatic_set_NULL_SPECIAL_ANIMATION(value), do: JR.static_put(__MODULE__, :NULL_SPECIAL_ANIMATION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SpecialAnimation.jstatic_NULL_SPECIAL_ANIMATION()})
    end)
  end


  def jinit(this, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        SpecialAnimation.jinitfields(this)
    end)
  end

  def jnew(p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :indexedAnimationBehavior, (JR.get(this, :animationBehaviorP)))
        JR.postinc(JR.lget(f, :indexedAnimationBehavior), :loopIndex, 1)
    end)
  end


  def jm_setLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_isComplete(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


