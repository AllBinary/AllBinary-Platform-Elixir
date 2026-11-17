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

defmodule GameKeyFromMotionGestureEventListener do
  def jsuper(), do: CompleteMotionGestureInputEventListener

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :previousGameKeyEvent, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :previousGameKeyEvent, GameKeyEvent.jstatic_NONE())
    nil
  end

  def jinit(this) do
    CompleteMotionGestureInputEventListener.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
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


  def jm_onCompleteMotionGestureInputEvent(this, p_completeMotionGestureInputEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :completeMotionGestureInputEvent, p_completeMotionGestureInputEvent)
        try do
            JR.lset(f, :gameKeyCompleteMotionGestureInputEvent, JR.lget(f, :completeMotionGestureInputEvent))
            JR.lset(f, :gameKeyEvent, JR.call(JR.lget(f, :gameKeyCompleteMotionGestureInputEvent), :jm_getGameKeyEvent, []))
            if (JR.lget(f, :gameKeyEvent) != JR.get(this, :previousGameKeyEvent)) do
                if (JR.get(this, :previousGameKeyEvent) != GameKeyEvent.jstatic_NONE()) do
                    JR.call(UpGameKeyEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :previousGameKeyEvent)])
                end
                JR.put(this, :previousGameKeyEvent, JR.lget(f, :gameKeyEvent))
                if ((JR.lget(f, :gameKeyEvent) != nil) && (JR.lget(f, :gameKeyEvent) != GameKeyEvent.jstatic_NONE())) do
                    JR.call(DownGameKeyEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "onCompleteMotionGestureInputEvent", JR.lget(f, :e)])
        end
    end)
  end
end


