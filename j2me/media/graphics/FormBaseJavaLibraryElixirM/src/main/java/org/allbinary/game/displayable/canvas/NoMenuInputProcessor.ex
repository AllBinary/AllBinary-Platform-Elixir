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
# package org.allbinary.game.displayable.canvas

defmodule NoMenuInputProcessor do
  def jsuper(), do: BasicMenuInputProcessor
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> NoMenuInputProcessor.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

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
        throw({:jreturn, NoMenuInputProcessor.jstatic_SINGLETON()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        BasicMenuInputProcessor.jinit(this, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []), -1, NullCanvas.jstatic_NULL_CANVAS())
        NoMenuInputProcessor.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_onDownGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_onUpGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_onMotionGestureEvent(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        nil
    end)
  end
end


