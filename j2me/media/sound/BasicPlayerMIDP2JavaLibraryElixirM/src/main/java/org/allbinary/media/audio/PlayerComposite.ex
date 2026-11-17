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

#BasicPlayerMIDP2
defmodule PlayerComposite do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :player, nil)
    JR.put(this, :timeElapsedHelper, nil)
    JR.put(this, :gameTickTimeDelayHelper, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        JR.put(this, :timeElapsedHelper, TimeDelayHelper.jnew(0))
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_player, p_repeatTime) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :player, p_player)
      JR.lset(f, :repeatTime, p_repeatTime)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :player, JR.lget(f, :player))
        JR.put(JR.get(this, :timeElapsedHelper), :delay, JR.lget(f, :repeatTime))
    end)
  end

  def jnew(p_player, p_repeatTime) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_player, p_repeatTime)
    this
  end


  def jm_addPlayerListener(this, p_playerListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerListener, p_playerListener)
        JR.call(JR.get(this, :player), :jm_addPlayerListener, [JR.lget(f, :playerListener)])
    end)
  end


  def jm_removePlayerListener(this, p_playerListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerListener, p_playerListener)
        JR.call(JR.get(this, :player), :jm_removePlayerListener, [JR.lget(f, :playerListener)])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :player), :jm_close, [])
    end)
  end


  def jm_deallocate(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :player), :jm_deallocate, [])
    end)
  end


  def jm_getContentType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :player), :jm_getContentType, [])})
    end)
  end


  def jm_getDuration(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :player), :jm_getDuration, [])})
    end)
  end


  def jm_getMediaTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :player), :jm_getMediaTime, [])})
    end)
  end


  def jm_getTimeBase(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call((JR.get(this, :player)), :jm_getTimeBase, [])})
    end)
  end


  def jm_setTimeBase(this, p_timeBase) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :timeBase, p_timeBase)
        JR.call((JR.get(this, :player)), :jm_setTimeBase, [JR.lget(f, :timeBase)])
    end)
  end


  def jm_prefetch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :player), :jm_prefetch, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "prefetch", JR.lget(f, :e)])
        end
    end)
  end


  def jm_realize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :player), :jm_realize, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "realize", JR.lget(f, :e)])
        end
    end)
  end


  def jm_getState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :player), :jm_getState, [])})
    end)
  end


  def jm_setLoopCount(this, p_count) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :count, p_count)
        JR.call(JR.get(this, :player), :jm_setLoopCount, [JR.lget(f, :count)])
    end)
  end


  def jm_setMediaTime(this, p_now) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :now, p_now)
        try do
            throw({:jreturn, JR.call(JR.get(this, :player), :jm_setMediaTime, [JR.lget(f, :now)])})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "setMediaTime", JR.lget(f, :e)])
            throw({:jreturn, -1})
        end
    end)
  end


  def jm_start(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            if JR.call(JR.get(this, :timeElapsedHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
                JR.call(JR.get(this, :player), :jm_start, [])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :START_METHOD_NAME), JR.lget(f, :e)])
        end
    end)
  end


  def jm_stop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :player), :jm_stop, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "stop", JR.lget(f, :e)])
        end
    end)
  end


  def jm_getControl(this, p_controlType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :controlType, p_controlType)
        throw({:jreturn, JR.call(JR.get(this, :player), :jm_getControl, [JR.lget(f, :controlType)])})
    end)
  end


  def jm_getControls(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_setVolume(this, p_leftVolume, p_rightVolume) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :leftVolume, p_leftVolume)
      JR.lset(f, :rightVolume, p_rightVolume)
        JR.lset(f, :controllable2, (JR.get(this, :player)))
        JR.call(JR.lget(f, :controllable2), :jm_setVolume, [JR.lget(f, :leftVolume), JR.lget(f, :rightVolume)])
    end)
  end


  def jm_getPlayerP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :player)})
    end)
  end
end


