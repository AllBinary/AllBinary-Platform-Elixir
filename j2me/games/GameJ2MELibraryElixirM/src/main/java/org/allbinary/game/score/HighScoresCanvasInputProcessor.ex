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
# package org.allbinary.game.score

defmodule HighScoresCanvasInputProcessor do
  def jsuper(), do: PlayerGameInput

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :highScoresCanvas, nil)
        
    nil
  end


  def jinit(this, p_highScoresCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresCanvas, p_highScoresCanvas)
        PlayerGameInput.jinit(this, BasicArrayListD.jnew(), BasicArrayListD.jnew(), -1)
        HighScoresCanvasInputProcessor.jinitfields(this)
        JR.put(this, :highScoresCanvas, JR.lget(f, :highScoresCanvas))
    end)
  end

  def jnew(p_highScoresCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_highScoresCanvas)
    this
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


  def jm_onPressGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        PlayerGameInput.jm_onPressGameKeyEvent(this, JR.lget(f, :gameKeyEvent))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_onDownGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        PlayerGameInput.jm_onDownGameKeyEvent(this, JR.lget(f, :gameKeyEvent))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_onUpGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        PlayerGameInput.jm_onUpGameKeyEvent(this, JR.lget(f, :gameKeyEvent))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_getHighScoresCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :highScoresCanvas)})
    end)
  end
end


