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
# package org.allbinary.input.motion.gesture.observer

defmodule ReleaseControlledMotionGestureListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :currentMotionGesture, nil)
    JR.put(this, :isMouseGestureOccurring, false)
    JR.put(this, :motionGestureCollection, nil)
    JR.put(this, :signed, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :currentMotionGesture, JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION))
        JR.put(this, :isMouseGestureOccurring, false)
        JR.put(this, :motionGestureCollection, BasicArrayListD.jnew())
        
    nil
  end


  def jinit(this, p_signed) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :signed, p_signed)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :signed, JR.lget(f, :signed))
    end)
  end

  def jnew(p_signed) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_signed)
    this
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
    end)
  end


  def jm_onUpMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onDownMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onLeftMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onRightMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onDiagonalDownRightMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onDiagonalDownLeftMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onDiagonalUpRightMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onDiagonalUpLeftMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
    end)
  end


  def jm_onPressedMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        JR.put(this, :isMouseGestureOccurring, true)
        JR.put(this, :currentMotionGesture, JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION))
        JR.call(this, :jm_onMotionGestureEvent, [JR.lget(f, :ev)])
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


  def jm_released(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        try do
            if (JR.get(this, :isMouseGestureOccurring) == false) do
                throw({:jreturn, nil})
            end
            JR.put(this, :isMouseGestureOccurring, false)
            JR.call(JR.get(this, :signed), :jm_onMotionGestureCompleted, [JR.get(this, :motionGestureCollection)])
            JR.call(JR.get(this, :motionGestureCollection), :jm_clear, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :EXCEPTION_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(JR.lget(f, :ev), :jm_getMotionGesture, [])])]), :jm_toString, []), this, "release", JR.lget(f, :e)])
        end
    end)
  end


  def jm_onMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
        if (JR.get(this, :isMouseGestureOccurring) == false) do
            throw({:jreturn, nil})
        end
        JR.lset(f, :motionGestureInput, JR.call(JR.lget(f, :ev), :jm_getMotionGesture, []))
        if (JR.lget(f, :motionGestureInput) == JR.get(TouchMotionGestureFactory.jm_getInstance(), :PRESSED)) do
            JR.call(this, :jm_onPressedMotionGestureEvent, [JR.lget(f, :ev)])
        else
            if (JR.lget(f, :motionGestureInput) == JR.get(TouchMotionGestureFactory.jm_getInstance(), :RELEASED)) do
            JR.call(this, :jm_released, [JR.lget(f, :ev)])
        else
            if (JR.get(this, :currentMotionGesture) != JR.lget(f, :motionGestureInput)) do
                JR.put(this, :currentMotionGesture, JR.lget(f, :motionGestureInput))
                JR.call(JR.get(this, :motionGestureCollection), :jm_add, [JR.call(JR.lget(f, :ev), :jm_getMotionGesture, [])])
            end
        end
        end
    end)
  end
end


