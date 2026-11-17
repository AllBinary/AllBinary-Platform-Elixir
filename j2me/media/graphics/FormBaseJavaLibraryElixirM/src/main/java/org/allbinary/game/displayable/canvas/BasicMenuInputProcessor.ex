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

defmodule BasicMenuInputProcessor do
  def jsuper(), do: PlayerGameInput

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :motionGestureEventList, nil)
    JR.put(this, :canvas, nil)
        JR.put(this, :motionGestureEventList, BasicArrayListD.jnew())
        JR.put(this, :canvas, NullCanvas.jstatic_NULL_CANVAS())
    nil
  end


  def jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :playerInputId, p_playerInputId)
      JR.lset(f, :gameCanvas, p_gameCanvas)
        PlayerGameInput.jinit(this, JR.lget(f, :gameKeyEventList), BasicArrayListD.jnew(), JR.lget(f, :playerInputId))
        BasicMenuInputProcessor.jinitfields(this)
        JR.put(this, :canvas, JR.lget(f, :gameCanvas))
    end)
  end

  def jnew(p_gameKeyEventList, p_playerInputId, p_gameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas)
    this
  end


  def jm_onMotionGestureEvent(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        JR.call(JR.get(this, :motionGestureEventList), :jm_add, [JR.lget(f, :motionGestureEvent)])
    end)
  end


  def jm_onScrolledMotionGestureEvent(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        nil
    end)
  end


  def jm_setCanvas(this, p_canvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
        JR.put(this, :canvas, JR.lget(f, :canvas))
    end)
  end


  def jm_getCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :canvas)})
    end)
  end


  def jm_processInputList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end
end


