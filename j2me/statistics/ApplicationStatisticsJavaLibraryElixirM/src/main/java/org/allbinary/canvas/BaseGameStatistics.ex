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
# package org.allbinary.canvas

defmodule BaseGameStatistics do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :updateDelayHelper, nil)
    JR.put(this, :totalRefreshes, 0)
    JR.put(this, :totalFrames, 0)
    JR.put(this, :gameTickTimeDelayHelper, nil)
    JR.put(this, :DEFAULT_SCALE_FACTOR, 0)
    JR.put(this, :NOT, nil)
    JR.put(this, :EMPTY_STRING, nil)
    JR.put(this, :STRING_ARRAY, nil)
    JR.put(this, :SPACE_CHAR, 0)
    JR.put(this, :PLUS_CHAR, 0)
    JR.put(this, :X_CHAR, 0)
    JR.put(this, :CHAR_ARRAY, nil)
    JR.put(this, :primitiveLongSingleton, nil)
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(J.Integer.jstatic_MAX_VALUE()))
        JR.put(this, :updateDelayHelper, TimeDelayHelper.jnew(2000))
        JR.put(this, :totalRefreshes, 0)
        JR.put(this, :totalFrames, 0)
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
        JR.put(this, :DEFAULT_SCALE_FACTOR, JR.get(ScaleFactorFactory.jm_getInstance(), :DEFAULT_SCALE_FACTOR))
        JR.put(this, :NOT, "Not enough Time to Calculate")
        JR.put(this, :EMPTY_STRING, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :STRING_ARRAY, JR.afrom([" Total Time: ", JR.get(this, :EMPTY_STRING), " Total Frames: ", JR.get(this, :EMPTY_STRING), " Frames/10 Sec: ", JR.get(this, :EMPTY_STRING), " Total Paints: ", JR.get(this, :EMPTY_STRING), " Paints/10 Sec: ", JR.get(this, :EMPTY_STRING)]))
        JR.put(this, :SPACE_CHAR, ?\s)
        JR.put(this, :PLUS_CHAR, ?+)
        JR.put(this, :X_CHAR, ?X)
        JR.put(this, :CHAR_ARRAY, JR.afrom([JR.afrom([?F, ?r, ?a, ?m, ?e, ?s, ?/, ?1, ?0, ?\s, ?S, ?e, ?c, ?:]), JR.afrom([?X, ?X]), JR.afrom([?P, ?a, ?i, ?n, ?t, ?s, ?/, ?1, ?0, ?\s, ?S, ?e, ?c, ?:]), JR.afrom([?X, ?X])]))
        JR.put(this, :primitiveLongSingleton, PrimitiveLongSingleton.jm_getInstance())
    nil
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
        JR.call(JR.get(this, :timeDelayHelper), :jm_setStartTimeTNT, [])
        JR.put(this, :totalRefreshes, 0)
        JR.put(this, :totalFrames, 0)
    end)
  end


  def jm_add(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        nil
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.postinc(this, :totalFrames, 1)
    end)
  end


  def jm_nextRefresh(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.postinc(this, :totalRefreshes, 1)
    end)
  end


  def jm_getRefreshRate(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :elapsed, JR.call(JR.get(this, :timeDelayHelper), :jm_getElapsed, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]))
        if (JR.lget(f, :elapsed) > 1) do
            JR.lset(f, :time, JR.int16((div(JR.get(this, :totalRefreshes), (Bitwise.bsr(JR.lget(f, :elapsed), JR.get(this, :DEFAULT_SCALE_FACTOR)))))))
            throw({:jreturn, JR.lget(f, :time)})
        else
            throw({:jreturn, 0})
        end
    end)
  end


  def jm_getTimeDelayHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :timeDelayHelper)})
    end)
  end


  def jm_to2DCharArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :totalTime, JR.call(JR.get(this, :timeDelayHelper), :jm_getElapsed, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]))
        JR.lset(f, :totalTime, (Bitwise.bsr(JR.lget(f, :totalTime), JR.get(this, :DEFAULT_SCALE_FACTOR))))
        if ((JR.lget(f, :totalTime) > 0) && JR.call(JR.get(this, :updateDelayHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)])) do
            JR.lset(f, :framesPerSec, JR.int32((div(JR.get(this, :totalFrames), JR.lget(f, :totalTime)))))
            if (JR.lget(f, :framesPerSec) < 10) do
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 1), 0, JR.get(this, :SPACE_CHAR))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 1), 1, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), JR.lget(f, :framesPerSec)))
            else
                if (JR.lget(f, :framesPerSec) < 100) do
                JR.lset(f, :tens, div(JR.lget(f, :framesPerSec), 10))
                JR.lset(f, :removeTens, JR.int32(JR.lget(f, :tens) * 10))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 1), 0, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), JR.lget(f, :tens)))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 1), 1, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), JR.int32(JR.lget(f, :framesPerSec) - JR.lget(f, :removeTens))))
            else
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 1), 0, JR.get(this, :PLUS_CHAR))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 1), 1, JR.get(this, :PLUS_CHAR))
            end
            end
            JR.lset(f, :refreshesPerSec, JR.int32((div(JR.get(this, :totalRefreshes), JR.lget(f, :totalTime)))))
            if (JR.lget(f, :refreshesPerSec) < 10) do
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 3), 0, JR.get(this, :X_CHAR))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 3), 1, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), JR.lget(f, :refreshesPerSec)))
            else
                if (JR.lget(f, :refreshesPerSec) < 100) do
                JR.lset(f, :tens, div(JR.lget(f, :refreshesPerSec), 10))
                JR.lset(f, :removeTens, JR.int32(JR.lget(f, :tens) * 10))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 3), 0, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), div(JR.lget(f, :refreshesPerSec), 10)))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 3), 1, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), JR.int32(JR.lget(f, :refreshesPerSec) - JR.lget(f, :removeTens))))
            else
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 3), 0, JR.get(this, :PLUS_CHAR))
                JR.aset(JR.aget(JR.get(this, :CHAR_ARRAY), 3), 1, JR.get(this, :PLUS_CHAR))
            end
            end
        end
        throw({:jreturn, JR.get(this, :CHAR_ARRAY)})
    end)
  end


  def jm_toStringArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :totalTime, JR.call(JR.get(this, :timeDelayHelper), :jm_getElapsed, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]))
        JR.lset(f, :totalTime, (div(JR.lget(f, :totalTime), 10000)))
        if (JR.lget(f, :totalTime) > 0) do
            JR.aset(JR.get(this, :STRING_ARRAY), 1, JR.str(JR.lget(f, :totalTime)))
            JR.aset(JR.get(this, :STRING_ARRAY), 3, JR.str(JR.get(this, :totalFrames)))
            JR.aset(JR.get(this, :STRING_ARRAY), 5, JR.str(div(JR.get(this, :totalFrames), JR.lget(f, :totalTime))))
            JR.aset(JR.get(this, :STRING_ARRAY), 7, JR.str(JR.get(this, :totalRefreshes)))
            JR.aset(JR.get(this, :STRING_ARRAY), 9, JR.str(div(JR.get(this, :totalRefreshes), JR.lget(f, :totalTime))))
        else
            JR.lset(f, :string, JR.get(this, :EMPTY_STRING))
            JR.aset(JR.get(this, :STRING_ARRAY), 1, JR.lget(f, :string))
            JR.aset(JR.get(this, :STRING_ARRAY), 3, JR.lget(f, :string))
            JR.aset(JR.get(this, :STRING_ARRAY), 5, JR.lget(f, :string))
            JR.aset(JR.get(this, :STRING_ARRAY), 7, JR.lget(f, :string))
            JR.aset(JR.get(this, :STRING_ARRAY), 9, JR.lget(f, :string))
        end
        throw({:jreturn, JR.get(this, :STRING_ARRAY)})
    end)
  end


  def jm_toStringAt(this, p_totalTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :totalTime, p_totalTime)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.aget(JR.get(this, :STRING_ARRAY), 0)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.lget(f, :totalTime)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.aget(JR.get(this, :STRING_ARRAY), 2)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.get(this, :totalFrames)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.aget(JR.get(this, :STRING_ARRAY), 4)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [div(JR.get(this, :totalFrames), JR.lget(f, :totalTime))])
        if (JR.get(this, :totalRefreshes) > 0) do
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.aget(JR.get(this, :STRING_ARRAY), 6)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.get(this, :totalRefreshes)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.aget(JR.get(this, :STRING_ARRAY), 8)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [div(JR.get(this, :totalRefreshes), JR.lget(f, :totalTime))])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :NEW_LINE)])
        end
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :totalTime, JR.call(JR.get(this, :timeDelayHelper), :jm_getElapsed, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]))
        JR.lset(f, :totalTime, (div(JR.lget(f, :totalTime), 1000)))
        if (JR.lget(f, :totalTime) > 0) do
            throw({:jreturn, JR.call(this, :jm_toStringAt, [JR.lget(f, :totalTime)])})
        else
            throw({:jreturn, JR.get(this, :NOT)})
        end
    end)
  end
end


