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
# package org.allbinary.game.configuration.event

defmodule BaseChangedGameFeatureListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :gameFeatureUtil, nil)
    JR.put(this, :list, nil)
    JR.put(this, :changed, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :gameFeatureUtil, GameFeatureUtil.jm_getInstance())
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :changed, true)
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


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(CommonStrings.jm_getInstance(), :NOT_IMPLEMENTED), this)
    end)
  end


  def jm_onGameFeatureChange(this, p_gameFeatureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeatureEvent, p_gameFeatureEvent)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameFeatureUtil), :GAME_FEATURE_CHANGED)]), :jm_append, [JR.call(JR.lget(f, :gameFeatureEvent), :jm_getWhatChanged, [])]), :jm_toString, []), this, JR.get(JR.get(this, :gameFeatureUtil), :ON_GAME_FEATURE_CHANGE)])
        JR.call(JR.get(this, :list), :jm_add, [JR.call(JR.lget(f, :gameFeatureEvent), :jm_getGameOption, [])])
        JR.call(this, :jm_setChanged, [true])
    end)
  end


  def jm_add(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :gameFeature)])
    end)
  end


  def jm_remove(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :gameFeature)])
    end)
  end


  def jm_setChanged(this, p_initialized) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initialized, p_initialized)
        JR.put(this, :changed, JR.lget(f, :initialized))
        if !JR.call(this, :jm_isChanged, []) do
            JR.call(JR.get(this, :list), :jm_clear, [])
        end
    end)
  end


  def jm_isChangedFeature(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        JR.lset(f, :isChanged, JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :gameFeature)]))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["GameFeature: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :gameFeature)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" isFeature: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.lget(f, :gameFeature)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" isChanged: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.lget(f, :isChanged)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "isChanged"])
        throw({:jreturn, JR.lget(f, :isChanged)})
    end)
  end


  def jm_isChanged(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :changed)})
    end)
  end
end


