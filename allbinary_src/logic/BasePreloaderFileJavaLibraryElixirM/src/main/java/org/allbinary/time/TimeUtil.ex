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
# package org.allbinary.time

defmodule TimeUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TimeUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)
def jstatic_calendar(), do: JR.static_get(__MODULE__, :calendar, fn -> J.Calendar.jm_getInstance() end)
  def jstatic_set_calendar(value), do: JR.static_put(__MODULE__, :calendar, value)

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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TimeUtil.jstatic_instance()})
    end)
  end


  def jm_setCalendar(this, p_calendar, p_yearString, p_monthString, p_dayString, p_hourString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :calendar, p_calendar)
      JR.lset(f, :yearString, p_yearString)
      JR.lset(f, :monthString, p_monthString)
      JR.lset(f, :dayString, p_dayString)
      JR.lset(f, :hourString, p_hourString)
        JR.lset(f, :year, JR.call(JR.lget(f, :yearString), :jm_intValue, []))
        JR.lset(f, :month, JR.call(JR.lget(f, :monthString), :jm_intValue, []))
        JR.lset(f, :day, JR.call(JR.lget(f, :dayString), :jm_intValue, []))
        JR.lset(f, :hour, JR.call(JR.lget(f, :hourString), :jm_intValue, []))
        JR.call(JR.lget(f, :calendar), :jm_set, [JR.lget(f, :year), JR.lget(f, :month), JR.lget(f, :day), JR.lget(f, :hour), 0])
    end)
  end


  def jm_setCalendarWithTime(this, p_calendar, p_yearString, p_monthString, p_dayString, p_hourString, p_minuteString, p_secondString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :calendar, p_calendar)
      JR.lset(f, :yearString, p_yearString)
      JR.lset(f, :monthString, p_monthString)
      JR.lset(f, :dayString, p_dayString)
      JR.lset(f, :hourString, p_hourString)
      JR.lset(f, :minuteString, p_minuteString)
      JR.lset(f, :secondString, p_secondString)
        JR.lset(f, :year, JR.call(JR.lget(f, :yearString), :jm_intValue, []))
        JR.lset(f, :month, JR.call(JR.lget(f, :monthString), :jm_intValue, []))
        JR.lset(f, :day, JR.call(JR.lget(f, :dayString), :jm_intValue, []))
        JR.lset(f, :hour, JR.call(JR.lget(f, :hourString), :jm_intValue, []))
        JR.lset(f, :minute, JR.call(JR.lget(f, :minuteString), :jm_intValue, []))
        JR.lset(f, :second, JR.call(JR.lget(f, :secondString), :jm_intValue, []))
        JR.call(JR.lget(f, :calendar), :jm_set, [JR.lget(f, :year), JR.lget(f, :month), JR.lget(f, :day), JR.lget(f, :hour), JR.lget(f, :minute), JR.lget(f, :second)])
    end)
  end


  def jm_setExpirationCalendar(this, p_calendar, p_yearsString, p_monthsString, p_daysString, p_hoursString, p_minutesString, p_secondsString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :calendar, p_calendar)
      JR.lset(f, :yearsString, p_yearsString)
      JR.lset(f, :monthsString, p_monthsString)
      JR.lset(f, :daysString, p_daysString)
      JR.lset(f, :hoursString, p_hoursString)
      JR.lset(f, :minutesString, p_minutesString)
      JR.lset(f, :secondsString, p_secondsString)
        JR.lset(f, :year, (JR.call(JR.lget(f, :calendar), :jm_get, [J.Calendar.jstatic_YEAR()]) + JR.call(JR.lget(f, :yearsString), :jm_intValue, [])))
        JR.lset(f, :month, (JR.call(JR.lget(f, :calendar), :jm_get, [J.Calendar.jstatic_MONTH()]) + JR.call(JR.lget(f, :monthsString), :jm_intValue, [])))
        JR.lset(f, :day, (JR.call(JR.lget(f, :calendar), :jm_get, [J.Calendar.jstatic_DAY_OF_MONTH()]) + JR.call(JR.lget(f, :daysString), :jm_intValue, [])))
        JR.lset(f, :hour, (JR.call(JR.lget(f, :calendar), :jm_get, [J.Calendar.jstatic_HOUR()]) + JR.call(JR.lget(f, :hoursString), :jm_intValue, [])))
        JR.lset(f, :minute, (JR.call(JR.lget(f, :calendar), :jm_get, [J.Calendar.jstatic_MINUTE()]) + JR.call(JR.lget(f, :minutesString), :jm_intValue, [])))
        JR.lset(f, :second, (JR.call(JR.lget(f, :calendar), :jm_get, [J.Calendar.jstatic_SECOND()]) + JR.call(JR.lget(f, :secondsString), :jm_intValue, [])))
        JR.call(JR.lget(f, :calendar), :jm_set, [JR.lget(f, :year), JR.lget(f, :month), JR.lget(f, :day), JR.lget(f, :hour), JR.lget(f, :minute), JR.lget(f, :second)])
    end)
  end


  def jm_getTotalTime(this, p_yearString, p_monthString, p_dayString, p_hourString, p_minuteString, p_secondString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :yearString, p_yearString)
      JR.lset(f, :monthString, p_monthString)
      JR.lset(f, :dayString, p_dayString)
      JR.lset(f, :hourString, p_hourString)
      JR.lset(f, :minuteString, p_minuteString)
      JR.lset(f, :secondString, p_secondString)
        JR.lset(f, :time, JR.call(TimeUtil.jstatic_calendar(), :jm_getTimeInMillis, []))
        JR.call(this, :jm_setExpirationCalendar, [TimeUtil.jstatic_calendar(), JR.lget(f, :yearString), JR.lget(f, :monthString), JR.lget(f, :dayString), JR.lget(f, :hourString), JR.lget(f, :minuteString), JR.lget(f, :secondString)])
        JR.lset(f, :timeDelta, JR.call(TimeUtil.jstatic_calendar(), :jm_getTimeInMillis, []))
        throw({:jreturn, JR.int64(JR.lget(f, :timeDelta) - JR.lget(f, :time))})
    end)
  end
end


