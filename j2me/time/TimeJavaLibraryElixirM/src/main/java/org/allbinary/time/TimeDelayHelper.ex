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

defmodule TimeDelayHelper do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :startTime, 0)
    JR.put(this, :elapsedTimeAtPause, 0)
    JR.put(this, :delay, 0)
        JR.put(this, :startTime, -1)
        JR.put(this, :elapsedTimeAtPause, J.Long.jstatic_MIN_VALUE())
        
    nil
  end


  def jinit(this, p_delay) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :delay, p_delay)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :delay, JR.lget(f, :delay))
        JR.call(this, :jm_setStartTimeTNT, [])
    end)
  end

  def jnew(p_delay) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_delay)
    this
  end


  def jm_isTimeTNT(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :currentTime, :os.system_time(:millisecond))
        if (JR.int64(JR.lget(f, :currentTime) - JR.get(this, :startTime)) > JR.get(this, :delay)) do
            JR.put(this, :startTime, JR.lget(f, :currentTime))
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isTimeSinceTNT(this, p_delay) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :delay, p_delay)
        JR.lset(f, :currentTime, :os.system_time(:millisecond))
        if (JR.int64(JR.lget(f, :currentTime) - JR.get(this, :startTime)) > JR.lget(f, :delay)) do
            JR.put(this, :startTime, JR.lget(f, :currentTime))
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isTime(this, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTime, p_currentTime)
        if (JR.int64(JR.lget(f, :currentTime) - JR.get(this, :startTime)) > JR.get(this, :delay)) do
            JR.put(this, :startTime, JR.lget(f, :currentTime))
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isTimeWithoutReset(this, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTime, p_currentTime)
        if (JR.int64(JR.lget(f, :currentTime) - JR.get(this, :startTime)) > JR.get(this, :delay)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_isTimeSince(this, p_delay, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :delay, p_delay)
      JR.lset(f, :currentTime, p_currentTime)
        if (JR.int64(JR.lget(f, :currentTime) - JR.get(this, :startTime)) > JR.get(this, :delay)) do
            JR.put(this, :startTime, JR.lget(f, :currentTime))
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_getElapsedTNT(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int64(:os.system_time(:millisecond) - JR.get(this, :startTime))})
    end)
  end


  def jm_getElapsed(this, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTime, p_currentTime)
        throw({:jreturn, JR.int64(JR.lget(f, :currentTime) - JR.get(this, :startTime))})
    end)
  end


  def jm_isElapsed(this, p_currentTime, p_time) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTime, p_currentTime)
      JR.lset(f, :time, p_time)
        if (JR.call(this, :jm_getElapsed, [JR.lget(f, :currentTime)]) > JR.lget(f, :time)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_isElapsedTNT(this, p_time) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :time, p_time)
        if (JR.call(this, :jm_getElapsedTNT, []) > JR.lget(f, :time)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_setStartTime(this, p_startTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :startTime, p_startTime)
        JR.put(this, :startTime, JR.lget(f, :startTime))
    end)
  end


  def jm_getStartTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startTime)})
    end)
  end


  def jm_setStartTimeTNT(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :startTime, :os.system_time(:millisecond))
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :elapsedTimeAtPause, JR.call(this, :jm_getElapsedTNT, []))
        JR.put(this, :startTime, J.Long.jstatic_MAX_VALUE())
    end)
  end


  def jm_resume(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :elapsedTimeAtPause) != J.Long.jstatic_MIN_VALUE()) do
            JR.put(this, :startTime, JR.int64(:os.system_time(:millisecond) + JR.get(this, :elapsedTimeAtPause)))
            JR.put(this, :elapsedTimeAtPause, J.Long.jstatic_MIN_VALUE())
            JR.call(this, :jm_setStartTimeTNT, [])
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_toStringAt(this, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTime, p_currentTime)
        JR.lset(f, :elapsed, JR.call(this, :jm_getElapsed, [JR.lget(f, :currentTime)]))
        if (JR.lget(f, :elapsed) > 0) do
            JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
            JR.lset(f, :elapsedAsString, JR.str(JR.lget(f, :elapsed)))
            throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.lget(f, :commonLabels), :START)]), :jm_appendlong, [JR.get(this, :startTime)]), :jm_append, [JR.get(JR.lget(f, :commonLabels), :CURRENT)]), :jm_appendlong, [JR.lget(f, :currentTime)]), :jm_append, [JR.get(JR.lget(f, :commonLabels), :ELAPSED)]), :jm_append, [JR.lget(f, :elapsedAsString)]), :jm_toString, [])})
        else
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :currentTime, :os.system_time(:millisecond))
        JR.lset(f, :elapsed, JR.call(this, :jm_getElapsed, [JR.lget(f, :currentTime)]))
        if (JR.lget(f, :elapsed) > 0) do
            JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
            JR.lset(f, :elapsedAsString, JR.str(JR.lget(f, :elapsed)))
            throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.lget(f, :commonLabels), :START)]), :jm_appendlong, [JR.get(this, :startTime)]), :jm_append, [JR.get(JR.lget(f, :commonLabels), :CURRENT)]), :jm_appendlong, [JR.lget(f, :currentTime)]), :jm_append, [JR.get(JR.lget(f, :commonLabels), :ELAPSED)]), :jm_append, [JR.lget(f, :elapsedAsString)]), :jm_toString, [])})
        else
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end
end


