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
# package org.allbinary.animation

defmodule IndexedAnimation do
  def jsuper(), do: Animation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :animationBehaviorP, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
    nil
  end


  def jinit(this, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationBehavior, p_animationBehavior)
      Animation.jinit(this)
      jinitfields(this)
        JR.put(this, :animationBehaviorP, JR.lget(f, :animationBehavior))
    end)
  end

  def jnew(p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationBehavior)
    this
  end


  def jm_getAnimationBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationBehaviorP)})
    end)
  end


  def jm_reset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :animationBehaviorP), :jm_reset, [])
        JR.call(this, :jm_setFrame, [0])
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        nil
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getAnimationSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_isLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getFrame, []) == JR.int32(JR.call(this, :jm_getSize, []) - 1)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
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


  def jm_setState(this, p_indexedAnimation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :indexedAnimation, p_indexedAnimation)
        JR.call(this, :jm_setFrame, [JR.call(JR.lget(f, :indexedAnimation), :jm_getFrame, [])])
        JR.call(this, :jm_setDx, [JR.call(JR.lget(f, :indexedAnimation), :jm_getDx, [])])
        JR.call(this, :jm_setDy, [JR.call(JR.lget(f, :indexedAnimation), :jm_getDy, [])])
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


