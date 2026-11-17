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
# package org.allbinary.game.ag.layer.hud.basic

defmodule PlayerGameNotificationHud do
  def jsuper(), do: GameNotificationHud

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameTickTimeDelayHelper, nil)
    JR.put(this, :EMPTY_STRING, nil)
    JR.put(this, :displayInfo, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :gameNotification, nil)
    JR.put(this, :permanentGameNotification, nil)
    JR.put(this, :setAndRemoveProcessor, nil)
    JR.put(this, :nextUnremoveableProcessor, nil)
    JR.put(this, :processor, nil)
    JR.put(this, :PERMANENT_GAME_NOTIFICATION, nil)
    JR.put(this, :lastString, nil)
    JR.put(this, :string, nil)
    JR.put(this, :point, nil)
    JR.put(this, :width, 0)
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
        JR.put(this, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(0))
        
        JR.put(this, :gameNotification, GameNotification.jnew())
        JR.put(this, :permanentGameNotification, GameNotification.jnew())
        JR.put(this, :setAndRemoveProcessor, SetAndRemoveProcessor.jnew(this))
        JR.put(this, :nextUnremoveableProcessor, NextUnremoveableProcessor.jnew(this))
        JR.put(this, :processor, Processor.jm_getInstance())
        JR.put(this, :PERMANENT_GAME_NOTIFICATION, "Permanent Game Notification: ")
        JR.put(this, :lastString, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :string, JR.get(this, :EMPTY_STRING))
        JR.put(this, :point, CustomGPoint.jstatic_NULL_CUSTOM_POINT())
        JR.put(this, :width, 0)
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
        GameNotificationHud.jinit(this, JR.lget(f, :location), JR.lget(f, :direction), JR.lget(f, :bufferZone), JR.lget(f, :basicColor))
        PlayerGameNotificationHud.jinitfields(this)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(0))
        JR.lset(f, :gameNotificationEventHandler, GameNotificationEventHandler.jm_getInstance())
        JR.call(JR.lget(f, :gameNotificationEventHandler), :jm_removeAllListeners, [])
        JR.call(JR.lget(f, :gameNotificationEventHandler), :jm_addListenerInterface, [this])
    end)
  end

  def jnew(p_location, p_direction, p_bufferZone, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_location, p_direction, p_bufferZone, p_basicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        try do
            GameNotificationHud.jm_updateMeasurement(this, JR.lget(f, :graphics))
            JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
            JR.put(this, :width, JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :string)]))
            JR.call(JR.get(this, :processor), :jm_process, [])
            JR.put(this, :processor, Processor.jm_getInstance())
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :logUtil, LogUtil.jm_getInstance())
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :UPDATE), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getPoint(this, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.put(this, :point, CustomGPoint.jm_getInstance3(0, 0))
        JR.call(JR.get(this, :point), :jm_setX, [JR.lget(f, :x)])
        JR.call(JR.get(this, :point), :jm_setY, [JR.lget(f, :y)])
        throw({:jreturn, JR.get(this, :point)})
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
        if JR.call(JR.lget(f, :permanent), :jm_booleanValue, []) do
            if (JR.get(this, :lastString) != JR.lget(f, :string)) do
                JR.put(this, :lastString, JR.lget(f, :string))
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :PERMANENT_GAME_NOTIFICATION)]), :jm_append, [JR.lget(f, :string)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :ADD)])
            end
            JR.call(JR.get(this, :permanentGameNotification), :jm_add, [JR.lget(f, :string), JR.lget(f, :seconds), JR.lget(f, :basicColor)])
            JR.call(JR.get(this, :circularIndexUtil), :jm_setSize, [JR.call(JR.get(this, :permanentGameNotification), :jm_getSize, [])])
        else
            JR.call(JR.get(this, :gameNotification), :jm_add, [JR.lget(f, :string), JR.lget(f, :seconds), JR.lget(f, :basicColor)])
        end
    end)
  end


  def jm_processTick(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
            JR.lset(f, :gameAdState, JR.call(GameAdStateFactory.jm_getInstance(), :jm_getCurrentInstance, []))
            if JR.call(JR.lget(f, :gameAdState), :jm_isShowingAtLocation, [JR.call(this, :jm_getLocation, [])]) do
                JR.put(this, :offsetY, -54)
            else
                JR.put(this, :offsetY, 0)
            end
            if (JR.call(JR.get(this, :gameNotification), :jm_getSize, []) > 0) do
                JR.call(this, :jm_setAndRemove, [])
            else
                if (JR.call(JR.get(this, :permanentGameNotification), :jm_getSize, []) > 0) do
                JR.call(this, :jm_setNextUnremoveable, [])
            else
                JR.put(this, :string, JR.get(this, :EMPTY_STRING))
            end
            end
        end
    end)
  end


  def jm_setAndRemove(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :string, JR.call(JR.get(JR.get(this, :gameNotification), :stringList), :jm_removeAt, [0]))
        JR.put(this, :processor, JR.get(this, :setAndRemoveProcessor))
    end)
  end


  def jm_setAndRemoveProcess(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setX, [Bitwise.bsr(((JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []) - JR.get(this, :width))), 1)])
        JR.call(JR.get(this, :point), :jm_setX, [JR.call(this, :jm_getX, [])])
        JR.call(JR.get(this, :point), :jm_setY, [JR.call(this, :jm_getY, [])])
        JR.lset(f, :time, JR.call(JR.get(JR.get(this, :gameNotification), :timeList), :jm_removeAt, [0]))
        JR.lset(f, :iTime, (JR.call(JR.lget(f, :time), :jm_intValue, []) * 1000))
        if (JR.lget(f, :iTime) == 0) do
            JR.lset(f, :iTime, 500)
        end
        JR.put(JR.get(this, :timeDelayHelper), :delay, JR.lget(f, :iTime))
        JR.call(this, :jm_setBasicColorP, [JR.call(JR.get(JR.get(this, :gameNotification), :colorList), :jm_removeAt, [0])])
    end)
  end


  def jm_setNextUnremoveable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.put(this, :string, JR.aget(JR.get(JR.get(JR.get(this, :permanentGameNotification), :stringList), :objectArray), JR.lget(f, :index)))
        JR.put(this, :processor, JR.get(this, :nextUnremoveableProcessor))
    end)
  end


  def jm_setNextUnremoveableProcess(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.call(this, :jm_setX, [Bitwise.bsr(((JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []) - JR.get(this, :width))), 1)])
        JR.call(JR.get(this, :point), :jm_setX, [JR.call(this, :jm_getX, [])])
        JR.call(JR.get(this, :point), :jm_setY, [JR.call(this, :jm_getY, [])])
        JR.lset(f, :time, JR.aget(JR.get(JR.get(JR.get(this, :permanentGameNotification), :timeList), :objectArray), JR.lget(f, :index)))
        JR.put(JR.get(this, :timeDelayHelper), :delay, (JR.call(JR.lget(f, :time), :jm_intValue, []) * 1000))
        JR.call(this, :jm_setBasicColorP, [JR.aget(JR.get(JR.get(JR.get(this, :permanentGameNotification), :colorList), :objectArray), JR.lget(f, :index))])
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameNotification), :jm_clear, [])
        JR.call(JR.get(this, :permanentGameNotification), :jm_clear, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        GameNotificationHud.jm_paintString(this, JR.lget(f, :graphics), JR.get(this, :string))
    end)
  end
end


