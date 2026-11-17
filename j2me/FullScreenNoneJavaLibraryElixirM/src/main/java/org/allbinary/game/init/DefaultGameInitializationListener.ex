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
# package org.allbinary.game.init

defmodule DefaultGameInitializationListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :swtJOGLProcessor, nil)
    JR.put(this, :firstTime, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :swtJOGLProcessor, SWTJOGLProcessor.jm_getInstance())
        JR.put(this, :firstTime, true)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :gameInitializedEventHandler, GameInitializedEventHandler.jm_getInstance())
        JR.call(JR.lget(f, :gameInitializedEventHandler), :jm_removeAllListeners, [])
        JR.call(JR.lget(f, :gameInitializedEventHandler), :jm_addListenerInterface, [this])
    end)
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
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onGameInitialized(this, p_gameInitializedEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInitializedEvent, p_gameInitializedEvent)
        JR.lset(f, :ON_GAME_INITIALIZED, "onGameInitialized")
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :START), this, JR.lget(f, :ON_GAME_INITIALIZED)])
            JR.jwhile(fn -> !JR.call(JR.get(this, :swtJOGLProcessor), :jm_isHolderCreated, []) end, fn ->
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :UPDATE), this, JR.lget(f, :ON_GAME_INITIALIZED)])
                J.Thread.jm_sleep(20)
            end)
            JR.call(FeatureResourceInitializationUtil.jm_getInstance(), :jm_init, [JR.call(JR.lget(f, :gameInitializedEvent), :jm_getLevel, [])])
            if JR.get(this, :firstTime) do
                JR.put(this, :firstTime, false)
            else
                JR.call(JR.get(this, :swtJOGLProcessor), :jm_onSurfaceChanged, [])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.lget(f, :ON_GAME_INITIALIZED), JR.lget(f, :e)])
        end
    end)
  end
end


