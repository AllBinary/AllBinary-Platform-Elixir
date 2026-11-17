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

defmodule PopupMenuInputProcessor do
  def jsuper(), do: BasicMenuInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :rectangleCollisionUtil, nil)
    JR.put(this, :CLICK_DELAY, 0)
    JR.put(this, :clickTimeHelper, nil)
    JR.put(this, :rectangle, nil)
        JR.put(this, :rectangleCollisionUtil, RectangleCollisionUtil.jm_getInstance())
        JR.put(this, :CLICK_DELAY, 120)
        JR.put(this, :clickTimeHelper, TimeDelayHelper.jnew(JR.get(this, :CLICK_DELAY)))
        
    nil
  end


  def jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_rectangle) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :playerInputId, p_playerInputId)
      JR.lset(f, :gameCanvas, p_gameCanvas)
      JR.lset(f, :rectangle, p_rectangle)
        BasicMenuInputProcessor.jinit(this, JR.lget(f, :gameKeyEventList), JR.lget(f, :playerInputId), JR.lget(f, :gameCanvas))
        PopupMenuInputProcessor.jinitfields(this)
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
    end)
  end

  def jnew(p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_rectangle) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_rectangle)
    this
  end


  def jm_init(this, p_rectangle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
    end)
  end


  def jm_processInput(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        if (JR.lget(f, :key) == Canvas.jstatic_KEY_STAR()) do
            JR.lset(f, :gameCanvas, JR.call(this, :jm_getCanvas, []))
            JR.call(JR.lget(f, :gameCanvas), :jm_toggleMenu, [])
            throw({:jreturn, 1})
        end
        throw({:jreturn, 0})
    end)
  end


  def jm_processInputList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :motionInputsIndex, JR.call(this, :jm_processMotionInputs, []))
            JR.lset(f, :list, JR.call(this, :jm_getGameKeyEventList, []))
            JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.lset(f, :key, 0)
            JR.lset(f, :gameKeyEvent, nil)
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :gameKeyEvent, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                if (JR.lget(f, :gameKeyEvent) != nil) do
                    JR.lset(f, :key, JR.call(JR.lget(f, :gameKeyEvent), :jm_getKey, []))
                    if (JR.call(this, :jm_processInput, [JR.lget(f, :key)]) == 1) do
                        throw(:jbreak)
                    end
                end
            end)
            JR.call(this, :jm_clear, [])
            if ((JR.lget(f, :size) > 0) || (JR.lget(f, :motionInputsIndex) >= 0)) do
                throw({:jreturn, 1})
            else
                throw({:jreturn, -1})
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(GameInputStrings.jm_getInstance(), :PROCESS_INPUT), JR.lget(f, :e)])
            throw({:jreturn, -1})
        end
    end)
  end


  def jm_processMotionInputs(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :lastIndex, JR.int32(JR.call(JR.get(this, :motionGestureEventList), :jm_size, []) - 1))
        if (JR.lget(f, :lastIndex) >= 0) do
            JR.lset(f, :motionGestureEvent, JR.aget(JR.get(JR.get(this, :motionGestureEventList), :objectArray), JR.lget(f, :lastIndex)))
            JR.call(this, :jm_processMotionInput, [JR.lget(f, :motionGestureEvent)])
        end
        JR.call(JR.get(this, :motionGestureEventList), :jm_clear, [])
        throw({:jreturn, JR.lget(f, :lastIndex)})
    end)
  end


  def jm_processMotionInput(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        if (JR.lget(f, :motionGestureEvent) == nil) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Exception: Bug", this, JR.get(JR.get(this, :gameInputStrings), :PROCESS_MOTION_INPUT)])
            throw({:jreturn, nil})
        end
        JR.lset(f, :touchMotionGestureFactory, TouchMotionGestureFactory.jm_getInstance())
        JR.lset(f, :motionGestureInput, JR.call(JR.lget(f, :motionGestureEvent), :jm_getMotionGesture, []))
        if (JR.lget(f, :motionGestureInput) == JR.get(JR.lget(f, :touchMotionGestureFactory), :RELEASED)) do
            JR.lset(f, :point, JR.call(JR.lget(f, :motionGestureEvent), :jm_getCurrentPoint, []))
            JR.lset(f, :rectPoint, JR.call(JR.get(this, :rectangle), :jm_getPoint, []))
            if JR.call(JR.get(this, :rectangleCollisionUtil), :jm_isInside, [JR.call(JR.lget(f, :rectPoint), :jm_getX, []), JR.call(JR.lget(f, :rectPoint), :jm_getY, []), (JR.call(JR.get(this, :rectangle), :jm_getMaxX, []) + 20), JR.call(JR.get(this, :rectangle), :jm_getMaxY, []), JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, [])]) do
                if JR.call(JR.get(this, :clickTimeHelper), :jm_isTimeTNT, []) do
                    JR.lset(f, :gameCanvas, JR.call(this, :jm_getCanvas, []))
                    JR.call(JR.lget(f, :gameCanvas), :jm_toggleMenu, [])
                end
            end
        end
    end)
  end
end


