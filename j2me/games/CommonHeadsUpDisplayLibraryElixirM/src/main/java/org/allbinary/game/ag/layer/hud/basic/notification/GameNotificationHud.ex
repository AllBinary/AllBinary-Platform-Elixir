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

defmodule GameNotificationHud do
  def jsuper(), do: BasicHud
def jstatic_NULL_GAME_NOTIFICATION(), do: JR.static_get(__MODULE__, :NULL_GAME_NOTIFICATION, fn -> GameNotificationHud.jnew(JR.get(BasicHudFactory.jm_getInstance(), :TOPCENTER), JR.get(BasicHudFactory.jm_getInstance(), :HORIZONTAL), 0, JR.get(BasicColorFactory.jm_getInstance(), :RED)) end)
  def jstatic_set_NULL_GAME_NOTIFICATION(value), do: JR.static_put(__MODULE__, :NULL_GAME_NOTIFICATION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :METHOD_NAME, nil)
    JR.put(this, :lastGameNotificationEvent, nil)
        JR.put(this, :METHOD_NAME, "onGameNotificationEvent")
        JR.put(this, :lastGameNotificationEvent, GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT())
    nil
  end


  def jinit(this, p_location, p_direction, p_bufferZone, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :location, p_location)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :bufferZone, p_bufferZone)
      JR.lset(f, :basicColor, p_basicColor)
        BasicHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), JR.lget(f, :bufferZone), JR.lget(f, :basicColor))
        GameNotificationHud.jinitfields(this)
    end)
  end

  def jnew(p_location, p_direction, p_bufferZone, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_location, p_direction, p_bufferZone, p_basicColor)
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


  def jm_onGameNotificationEvent(this, p_gameNotificationEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameNotificationEvent, p_gameNotificationEvent)
        if (JR.get(this, :lastGameNotificationEvent) != JR.lget(f, :gameNotificationEvent)) do
            JR.put(this, :lastGameNotificationEvent, JR.lget(f, :gameNotificationEvent))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :gameNotificationEvent), :jm_getString, []), this, JR.get(this, :METHOD_NAME)])
        end
        JR.call(this, :jm_add, [JR.call(JR.lget(f, :gameNotificationEvent), :jm_getString, []), JR.call(JR.lget(f, :gameNotificationEvent), :jm_getSeconds, []), JR.call(JR.lget(f, :gameNotificationEvent), :jm_getBasicColorP, []), JR.call(JR.lget(f, :gameNotificationEvent), :jm_getPermanent, [])])
    end)
  end


  def jm_add(this, p_string, p_seconds, p_basicColor, p_permanent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
      JR.lset(f, :seconds, p_seconds)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :permanent, p_permanent)
        nil
    end)
  end


  def jm_processTick(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


