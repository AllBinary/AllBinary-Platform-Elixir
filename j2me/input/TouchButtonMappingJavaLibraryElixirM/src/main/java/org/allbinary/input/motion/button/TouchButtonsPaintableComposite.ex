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
# package org.allbinary.input.motion.button

defmodule TouchButtonsPaintableComposite do
  def jsuper(), do: ProcessPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :inputMappingInterface, nil)
    JR.put(this, :touchButtonsPaintable, nil)
    JR.put(this, :timeHelper, nil)
    JR.put(this, :released, false)
    JR.put(this, :METHOD_NAME, nil)
    JR.put(this, :RELEASE, nil)
    JR.put(this, :FAST_REPEAT, nil)
    JR.put(this, :IGNORE, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        JR.put(this, :timeHelper, TimeDelayHelper.jnew(250))
        JR.put(this, :released, true)
        JR.put(this, :METHOD_NAME, "onCompleteMotionGestureInputEvent")
        JR.put(this, :RELEASE, "Ignoring: MotionGestureInput Release")
        JR.put(this, :FAST_REPEAT, "Ignoring: MotionGestureInput Repeated To Quickly")
        JR.put(this, :IGNORE, "Ignoring: Until Released")
    nil
  end


  def jinit(this, p_inputMappingInterface, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :inputMappingInterface, p_inputMappingInterface)
      JR.lset(f, :basicColor, p_basicColor)
      ProcessPaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :inputMappingInterface, JR.lget(f, :inputMappingInterface))
        JR.call(CompleteMotionGestureInputEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
        JR.put(this, :touchButtonsPaintable, TouchButtonsMappingPaintable.jnew(JR.lget(f, :basicColor)))
    end)
  end

  def jnew(p_inputMappingInterface, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_inputMappingInterface, p_basicColor)
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
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "onCompleteMotionGestureInputEvent"])
            JR.lset(f, :touchMotionGestureFactory, TouchMotionGestureFactory.jm_getInstance())
            JR.lset(f, :gameKeyCompleteMotionGestureInputEvent, JR.lget(f, :completeMotionGestureInputEvent))
            JR.lset(f, :gameKey, JR.call(JR.lget(f, :gameKeyCompleteMotionGestureInputEvent), :jm_getGameKey, []))
            JR.lset(f, :motionGestureInput, JR.call(JR.lget(f, :completeMotionGestureInputEvent), :jm_getMotionGestureInput, []))
            if (JR.lget(f, :motionGestureInput) == JR.get(JR.lget(f, :touchMotionGestureFactory), :RELEASED)) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(this, :RELEASE), this, JR.get(this, :METHOD_NAME)])
                JR.put(this, :released, true)
                throw({:jreturn, nil})
            end
            if ((JR.lget(f, :motionGestureInput) == JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION)) && !JR.call(JR.get(this, :timeHelper), :jm_isTimeTNT, [])) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(this, :FAST_REPEAT), this, JR.get(this, :METHOD_NAME)])
                throw({:jreturn, nil})
            end
            if !JR.get(this, :released) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(this, :IGNORE), this, JR.get(this, :METHOD_NAME)])
                throw({:jreturn, nil})
            end
            JR.put(this, :released, false)
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["GameKey: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :gameKey)])]), :jm_append, [" MotionGestureInput: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :motionGestureInput)])]), :jm_toString, []), this, JR.get(this, :METHOD_NAME)])
            JR.call(JR.get(this, :inputMappingInterface), :jm_processInputMapping, [JR.lget(f, :gameKey), JR.lget(f, :motionGestureInput)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(this, :METHOD_NAME), JR.lget(f, :e)])
        end
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(CompleteMotionGestureInputEventHandler.jm_getInstance(), :jm_removeListener, [this])
    end)
  end
end


