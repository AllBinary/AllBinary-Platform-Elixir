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
# package org.allbinary.game.ag.layer.hud.basic.notification

defmodule GameNotification do
  def jsuper(), do: JObject
def jstatic_NULL_GAME_NOTIFICATION_EVENT(), do: JR.static_get(__MODULE__, :NULL_GAME_NOTIFICATION_EVENT, fn -> GameNotificationEvent.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), 0, JR.get(BasicColorFactory.jm_getInstance(), :RED), JR.get(BooleanFactory.jm_getInstance(), :FALSE)) end)
  def jstatic_set_NULL_GAME_NOTIFICATION_EVENT(value), do: JR.static_put(__MODULE__, :NULL_GAME_NOTIFICATION_EVENT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :stringList, nil)
    JR.put(this, :timeList, nil)
    JR.put(this, :colorList, nil)
        JR.put(this, :stringList, BasicArrayListD.jnew())
        JR.put(this, :timeList, BasicArrayListD.jnew())
        JR.put(this, :colorList, BasicArrayListD.jnew())
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


  def jm_add(this, p_string, p_seconds, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
      JR.lset(f, :seconds, p_seconds)
      JR.lset(f, :basicColor, p_basicColor)
        if !JR.call(JR.get(this, :stringList), :jm_contains, [JR.lget(f, :string)]) do
            JR.call(JR.get(this, :stringList), :jm_add, [JR.lget(f, :string)])
            JR.call(JR.get(this, :timeList), :jm_add, [JR.lget(f, :seconds)])
            JR.call(JR.get(this, :colorList), :jm_add, [JR.lget(f, :basicColor)])
        end
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :stringList), :jm_clear, [])
        JR.call(JR.get(this, :timeList), :jm_clear, [])
        JR.call(JR.get(this, :colorList), :jm_clear, [])
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :stringList), :jm_size, [])})
    end)
  end
end


