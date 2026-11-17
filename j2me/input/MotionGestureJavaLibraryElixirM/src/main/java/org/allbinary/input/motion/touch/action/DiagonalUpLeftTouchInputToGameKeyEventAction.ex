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
# package org.allbinary.input.motion.touch.action

defmodule DiagonalUpLeftTouchInputToGameKeyEventAction do
  def jsuper(), do: GameKeyCompleteMotionGestureInputEvent
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_set_instance(DiagonalUpLeftTouchInputToGameKeyEventAction.jnew())
        end
        throw({:jreturn, DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        GameKeyCompleteMotionGestureInputEvent.jinit(this, "Diagonal Up Left Action", JR.get(TouchMotionGestureFactory.jm_getInstance(), :DIAGONAL_UP_LEFT), JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_getInputMapping, []))
        DiagonalUpLeftTouchInputToGameKeyEventAction.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


