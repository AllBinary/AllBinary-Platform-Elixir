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
# package org.allbinary.game.input.motion.action

defmodule GameKeyCompleteMotionGestureInputEvent do
  def jsuper(), do: CompleteMotionGestureInputEvent

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameKey, nil)
    JR.put(this, :gameKeyEvent, nil)
        JR.put(this, :gameKey, GameKey.jstatic_NULL_GAME_KEY())
        JR.put(this, :gameKeyEvent, GameKeyEvent.jstatic_NONE())
    nil
  end


  def jinit(this, p_name, p_motionGestureInput, p_inputToGameKeyMapping) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :motionGestureInput, p_motionGestureInput)
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        CompleteMotionGestureInputEvent.jinit(this, JR.lget(f, :name), JR.lget(f, :motionGestureInput))
        GameKeyCompleteMotionGestureInputEvent.jinitfields(this)
    end)
  end

  def jnew(p_name, p_motionGestureInput, p_inputToGameKeyMapping) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_motionGestureInput, p_inputToGameKeyMapping)
    this
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.put(this, :gameKeyEvent, JR.lget(f, :gameKeyEvent))
    end)
  end


  def jm_getGameKeyEvent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameKeyEvent)})
    end)
  end


  def jm_setGameKey(this, p_gameKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
        JR.put(this, :gameKey, JR.lget(f, :gameKey))
    end)
  end


  def jm_getGameKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameKey)})
    end)
  end
end


