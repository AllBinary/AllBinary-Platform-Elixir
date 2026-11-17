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
# package org.allbinary.game.input.mapping

defmodule MotionInputMappingEventListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onInputMappingEvent(this, p_inputMappingEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputMappingEvent, p_inputMappingEvent)
        JR.call(GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance(), :jm_updateAll, [])
        JR.call(BasicTouchInputFactory.jm_getInstance(), :jm_updateAll, [JR.call(JR.lget(f, :inputMappingEvent), :jm_getInputToGameKeyMapping, [])])
    end)
  end
end


