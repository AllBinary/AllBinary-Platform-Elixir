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

defmodule ReleaseTouchInputToGameKeyEventAction do
  def jsuper(), do: GameKeyCompleteMotionGestureInputEvent
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NONE, nil)
        JR.put(this, :NONE, JR.get(GameKeyFactory.jm_getInstance(), :NONE))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (ReleaseTouchInputToGameKeyEventAction.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            ReleaseTouchInputToGameKeyEventAction.jstatic_set_instance(ReleaseTouchInputToGameKeyEventAction.jnew())
        end
        throw({:jreturn, ReleaseTouchInputToGameKeyEventAction.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        GameKeyCompleteMotionGestureInputEvent.jinit(this, "Release Action", JR.get(TouchMotionGestureFactory.jm_getInstance(), :RELEASED), JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_getInputMapping, []))
        ReleaseTouchInputToGameKeyEventAction.jinitfields(this)
        try do
            JR.call(this, :jm_setGameKey, [JR.get(this, :NONE)])
            JR.call(this, :jm_setGameKeyEvent, [JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(this, :NONE)])])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


