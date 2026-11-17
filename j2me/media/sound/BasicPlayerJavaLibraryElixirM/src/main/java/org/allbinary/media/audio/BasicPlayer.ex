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
# package org.allbinary.media.audio

#BasicPlayerJavaLibrary
defmodule BasicPlayer do
  def jsuper(), do: JObject
def jstatic_CONTROL_TYPE(), do: JR.static_get(__MODULE__, :CONTROL_TYPE, fn -> "ToneControl" end)
  def jstatic_set_CONTROL_TYPE(value), do: JR.static_put(__MODULE__, :CONTROL_TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :listenersList, nil)
    JR.put(this, :stateP, 0)
    JR.put(this, :loopCountP, 0)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :listenersList, BasicArrayListD.jnew())
        JR.put(this, :stateP, 0)
        JR.put(this, :loopCountP, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setLoopCount, [0])
        JR.call(this, :jm_setState, [Player.jstatic_UNREALIZED()])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getContentType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_getControl(this, p_controlType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :controlType, p_controlType)
        throw({:jreturn, NullControl.jnew()})
    end)
  end


  def jm_getControls(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.anew(0, nil)})
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_addPlayerListener(this, p_playerListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerListener, p_playerListener)
        if !JR.call(JR.get(this, :listenersList), :jm_contains, [JR.lget(f, :playerListener)]) do
            JR.call(JR.get(this, :listenersList), :jm_add, [JR.lget(f, :playerListener)])
        end
    end)
  end


  def jm_removePlayerListener(this, p_playerListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerListener, p_playerListener)
        JR.call(JR.get(this, :listenersList), :jm_remove, [JR.lget(f, :playerListener)])
    end)
  end


  def jm_getState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :stateP)})
    end)
  end


  def jm_setState(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        JR.put(this, :stateP, JR.lget(f, :state))
    end)
  end


  def jm_getDuration(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getMediaTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_deallocate(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_prefetch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_realize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setLoopCount(this, p_count) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :count, p_count)
        JR.put(this, :loopCountP, JR.lget(f, :count))
    end)
  end


  def jm_getLoopCount(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :loopCountP)})
    end)
  end


  def jm_setMediaTime(this, p_now) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :now, p_now)
        throw({:jreturn, 0})
    end)
  end


  def jm_start(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setState, [Player.jstatic_STARTED()])
    end)
  end


  def jm_stop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setState, [Player.jstatic_PREFETCHED()])
    end)
  end


  def jm_setVolume(this, p_leftVolume, p_rightVolume) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :leftVolume, p_leftVolume)
      JR.lset(f, :rightVolume, p_rightVolume)
        nil
    end)
  end
end


