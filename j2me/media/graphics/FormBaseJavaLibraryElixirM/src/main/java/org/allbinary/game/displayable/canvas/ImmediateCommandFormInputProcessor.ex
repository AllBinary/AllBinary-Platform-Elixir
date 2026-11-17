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

defmodule ImmediateCommandFormInputProcessor do
  def jsuper(), do: CommandFormInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeHelper, nil)
    JR.put(this, :gameCommandCanvas, nil)
        JR.put(this, :timeHelper, TimeDelayHelper.jnew(25))
        
    nil
  end


  def jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCommandCanvas, p_form) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :playerInputId, p_playerInputId)
      JR.lset(f, :gameCommandCanvas, p_gameCommandCanvas)
      JR.lset(f, :form, p_form)
        CommandFormInputProcessor.jinit(this, JR.lget(f, :gameKeyEventList), JR.lget(f, :playerInputId), JR.lget(f, :gameCommandCanvas), JR.lget(f, :form))
        ImmediateCommandFormInputProcessor.jinitfields(this)
        JR.put(this, :gameCommandCanvas, JR.lget(f, :gameCommandCanvas))
    end)
  end

  def jnew(p_gameKeyEventList, p_playerInputId, p_gameCommandCanvas, p_form) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCommandCanvas, p_form)
    this
  end


  def jm_onPressGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        try do
            CommandFormInputProcessor.jm_onPressGameKeyEvent(this, JR.lget(f, :gameKeyEvent))
            if JR.call(JR.get(this, :timeHelper), :jm_isTimeTNT, []) do
                JR.call(this, :jm_processInputList, [])
                JR.call(JR.get(JR.get(this, :gameCommandCanvas), :repaintBehavior), :jm_onChangeRepaint, [JR.call(this, :jm_getCanvas, [])])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :ON_PRESS_GAME_KEY), JR.lget(f, :e)])
        end
    end)
  end


  def jm_onDownGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        try do
            CommandFormInputProcessor.jm_onDownGameKeyEvent(this, JR.lget(f, :gameKeyEvent))
            if JR.call(JR.get(this, :timeHelper), :jm_isTimeTNT, []) do
                JR.call(this, :jm_processInputList, [])
                JR.call(JR.get(JR.get(this, :gameCommandCanvas), :repaintBehavior), :jm_onChangeRepaint, [JR.call(this, :jm_getCanvas, [])])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :ON_DOWN_GAME_KEY), JR.lget(f, :e)])
        end
    end)
  end


  def jm_onUpGameKeyEvent(this, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        try do
            CommandFormInputProcessor.jm_onUpGameKeyEvent(this, JR.lget(f, :gameKeyEvent))
            if JR.call(JR.get(this, :timeHelper), :jm_isTimeTNT, []) do
                JR.call(this, :jm_processInputList, [])
                JR.call(JR.get(JR.get(this, :gameCommandCanvas), :repaintBehavior), :jm_onChangeRepaint, [JR.call(this, :jm_getCanvas, [])])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :ON_UP_GAME_KEY), JR.lget(f, :e)])
        end
    end)
  end


  def jm_onMotionGestureEvent(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        try do
            CommandFormInputProcessor.jm_onMotionGestureEvent(this, JR.lget(f, :motionGestureEvent))
            if JR.call(JR.get(this, :timeHelper), :jm_isTimeTNT, []) do
                JR.call(this, :jm_processInputList, [])
                JR.call(JR.get(JR.get(this, :gameCommandCanvas), :repaintBehavior), :jm_onChangeRepaint, [JR.call(this, :jm_getCanvas, [])])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "onMotionGestureEvent", JR.lget(f, :e)])
        end
    end)
  end
end


