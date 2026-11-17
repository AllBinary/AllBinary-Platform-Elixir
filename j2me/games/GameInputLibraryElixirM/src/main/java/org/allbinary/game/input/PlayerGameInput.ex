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
# package org.allbinary.game.input

defmodule PlayerGameInput do
  def jsuper(), do: GameInput

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameInputStrings, nil)
    JR.put(this, :playerInputId, 0)
        JR.put(this, :gameInputStrings, GameInputStrings.jm_getInstance())
        
    nil
  end


  def jinit(this, p_gameKeyEventList, p_removalGameKeyEventList, p_playerInputId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :removalGameKeyEventList, p_removalGameKeyEventList)
      JR.lset(f, :playerInputId, p_playerInputId)
        GameInput.jinit(this, JR.lget(f, :gameKeyEventList), JR.lget(f, :removalGameKeyEventList))
        PlayerGameInput.jinitfields(this)
        JR.put(this, :playerInputId, JR.lget(f, :playerInputId))
    end)
  end

  def jnew(p_gameKeyEventList, p_removalGameKeyEventList, p_playerInputId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_removalGameKeyEventList, p_playerInputId)
    this
  end


  def jm_onPressGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.call(this, :jm_add, [JR.lget(f, :gameKeyEvent)])
        JR.call(this, :jm_addForRemoval, [JR.lget(f, :gameKeyEvent)])
    end)
  end


  def jm_onDownGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.call(this, :jm_add, [JR.lget(f, :gameKeyEvent)])
    end)
  end


  def jm_onDownKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.call(this, :jm_add, [JR.lget(f, :gameKeyEvent)])
        JR.call(this, :jm_addForRemoval, [JR.lget(f, :gameKeyEvent)])
    end)
  end


  def jm_onDownKey(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(JR.lget(f, :gameKeyEvent), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :ON_DOWN_GAME_KEY))
    end)
  end


  def jm_onUpGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.call(this, :jm_addForRemoval, [JR.lget(f, :gameKeyEvent)])
    end)
  end


  def jm_onUpKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_getPlayerInputId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :playerInputId)})
    end)
  end
end


