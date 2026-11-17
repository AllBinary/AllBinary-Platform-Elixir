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
# package org.allbinary.game.input.event

defmodule GameKeyEventFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :TOUCH_BUTTON_SOURCE_ID, 0)
    JR.put(this, :MOTION_GESTURE_SOURCE_ID, 0)
    JR.put(this, :MAX_SOURCES, 0)
    JR.put(this, :ARRAY, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :TOUCH_BUTTON_SOURCE_ID, 2)
        JR.put(this, :MOTION_GESTURE_SOURCE_ID, 3)
        JR.put(this, :MAX_SOURCES, 4)
        JR.put(this, :ARRAY, JR.anew_of(JR.get(this, :MAX_SOURCES), fn -> JR.anew(JR.get(InputFactory.jm_getInstance(), :MAX), nil) end))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameKeyEventFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameKeyEventFactory.jstatic_set_instance(GameKeyEventFactory.jnew())
        end
        throw({:jreturn, GameKeyEventFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :nullUtil, NullUtil.jm_getInstance())
        JR.lset(f, :size, JR.get(InputFactory.jm_getInstance(), :MAX))
        JR.lset(f, :index, JR.get(this, :MAX_SOURCES))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :index2, JR.lget(f, :size))
            JR.jfor(fn -> (JR.lpreinc(f, :index2, -1) >= 0) end, fn -> nil end, fn ->
                JR.aset(JR.aget(JR.get(this, :ARRAY), JR.lget(f, :index)), JR.lget(f, :index2), GameKeyEvent.jm_createEvent(JR.get(JR.lget(f, :nullUtil), :NULL_OBJECT), JR.lget(f, :index), JR.lget(f, :index2)))
            end)
        end)
    end)
  end


  def jm_getInstanceForKey(this, p_anyType, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :key, p_key)
        JR.lset(f, :gameKeyEvent, JR.aget(JR.aget(JR.get(this, :ARRAY), JR.call(JR.lget(f, :anyType), :jm_getSourceId, [])), JR.lget(f, :key)))
        throw({:jreturn, JR.lget(f, :gameKeyEvent)})
    end)
  end


  def jm_getInstanceForInput(this, p_anyType, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :input, p_input)
        JR.lset(f, :gameKeyEvent, JR.aget(JR.aget(JR.get(this, :ARRAY), JR.call(JR.lget(f, :anyType), :jm_getSourceId, [])), JR.call(JR.lget(f, :input), :jm_getId, [])))
        throw({:jreturn, JR.lget(f, :gameKeyEvent)})
    end)
  end
end


