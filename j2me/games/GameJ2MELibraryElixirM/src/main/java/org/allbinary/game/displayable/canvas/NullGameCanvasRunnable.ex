# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

defmodule NullGameCanvasRunnable do
  def jsuper(), do: JObject
def jstatic_NULL_GAME_CANVAS_RUNNABLE(), do: JR.static_get(__MODULE__, :NULL_GAME_CANVAS_RUNNABLE, fn -> NullGameCanvasRunnable.jnew() end)
  def jstatic_set_NULL_GAME_CANVAS_RUNNABLE(value), do: JR.static_put(__MODULE__, :NULL_GAME_CANVAS_RUNNABLE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameStateFactory, nil)
        JR.put(this, :gameStateFactory, GameStateFactory.jm_getInstance())
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getTitle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_isPaused(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_isHighScoreSubmitted(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_setHighScoreSubmitted(this, p_highScoreSubmitted) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoreSubmitted, p_highScoreSubmitted)
        nil
    end)
  end


  def jm_processGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_isGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        nil
    end)
  end


  def jm_getCurrentStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StdUtil.jm_getInstance(), :NULL_TABLE)})
    end)
  end


  def jm_getLoadStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StdUtil.jm_getInstance(), :NULL_TABLE)})
    end)
  end


  def jm_setLoadStateHashtable(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        nil
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end


  def jm_setGameState(this, p_gameState) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameState, p_gameState)
        nil
    end)
  end


  def jm_getGameState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(JR.get(this, :gameStateFactory), :NO_GAME_STATE)})
    end)
  end


  def jm_itemStateChanged(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        nil
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


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_isRunning(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_setRunning(this, p_isRunning) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isRunning, p_isRunning)
        nil
    end)
  end


  def jm_setThread(this, p_thread) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :thread, p_thread)
        nil
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


