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

defmodule GameKeyCompleteMotionGestureInputEventFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> GameKeyCompleteMotionGestureInputEventFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :eventList, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :eventList, BasicArrayListD.jnew())
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameKeyCompleteMotionGestureInputEventFactory.jstatic_SINGLETON()})
    end)
  end


  def jm_add(this, p_gameKeyCompleteMotionGestureInputEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyCompleteMotionGestureInputEvent, p_gameKeyCompleteMotionGestureInputEvent)
        JR.call(JR.get(this, :eventList), :jm_add, [JR.lget(f, :gameKeyCompleteMotionGestureInputEvent)])
    end)
  end


  def jm_updateAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_appendint, [JR.call(JR.get(this, :eventList), :jm_size, [])]), :jm_toString, []), this, "updateAll"])
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :eventList), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :gameKeyCompleteMotionGestureInputEvent, JR.aget(JR.get(JR.get(this, :eventList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :gameKeyCompleteMotionGestureInputEvent), :jm_update, [])
        end)
    end)
  end
end


