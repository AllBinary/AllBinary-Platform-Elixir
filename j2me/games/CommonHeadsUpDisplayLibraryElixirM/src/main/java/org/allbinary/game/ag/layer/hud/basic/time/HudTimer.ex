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
# package org.allbinary.game.ag.layer.hud.basic.time

defmodule HudTimer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :startTime, 0)
    JR.put(this, :hundredthTime, 0)
    JR.put(this, :maxTime, 0)
    JR.put(this, :modifier, 0)
    JR.put(this, :hundrethsString, nil)
    JR.put(this, :totalDigits, 0)
    JR.put(this, :primitiveLongUtil, nil)
    JR.put(this, :MAX, nil)
    JR.put(this, :gameTickTimeDelayHelper, nil)
        JR.put(this, :startTime, -1)
        JR.put(this, :hundredthTime, 0)
        
        JR.put(this, :modifier, 0)
        JR.put(this, :hundrethsString, JR.get(PrimitiveLongSingleton.jm_getInstance(), :ZERO))
        JR.put(this, :totalDigits, 1)
        
        JR.put(this, :MAX, JR.afrom([?L, ?O, ?L]))
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_maxTime) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxTime, p_maxTime)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :primitiveLongUtil, PrimitiveLongUtil.jm_createPowerOfTen(JR.lget(f, :maxTime)))
        JR.put(this, :maxTime, JR.lget(f, :maxTime))
    end)
  end

  def jnew(p_maxTime) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_maxTime)
    this
  end


  def jm_start(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :hundredthTime, 0)
        JR.put(this, :startTime, JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime))
    end)
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hundredthTime)})
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :lastLowerTime, JR.get(this, :hundredthTime))
        JR.lset(f, :currentTime, ((((JR.get(this, :modifier) + JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime))) - JR.get(this, :startTime))))
        if (JR.lget(f, :currentTime) < 0) do
            JR.lset(f, :currentTime, 0)
        end
        JR.put(this, :hundredthTime, div(JR.lget(f, :currentTime), 100))
        if (JR.get(this, :hundredthTime) >= JR.get(this, :maxTime)) do
            if (JR.get(this, :startTime) > 0) do
                JR.put(this, :hundrethsString, JR.get(this, :MAX))
            end
        else
            if (JR.lget(f, :lastLowerTime) != JR.get(this, :hundredthTime)) do
            JR.put(this, :hundrethsString, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCharArray, [JR.int32(JR.get(this, :hundredthTime))]))
            JR.put(this, :totalDigits, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCurrentTotalDigits, []))
        end
        end
    end)
  end


  def jm_reduce(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :modifier, JR.int64(JR.get(this, :modifier) - JR.lget(f, :value)))
    end)
  end


  def jm_add(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :modifier, JR.int64(JR.get(this, :modifier) + JR.lget(f, :value)))
    end)
  end


  def jm_getTimeChars(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hundrethsString)})
    end)
  end


  def jm_getCurrentTotalDigits(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalDigits)})
    end)
  end
end


