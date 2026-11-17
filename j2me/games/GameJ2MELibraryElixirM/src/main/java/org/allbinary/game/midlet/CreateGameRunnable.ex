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
# package org.allbinary.game.midlet

defmodule CreateGameRunnable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :demoGameMidlet, nil)
    JR.put(this, :hashtable, nil)
    JR.put(this, :startGameMidletEvent, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        
    nil
  end


  def jinit(this, p_demoGameMidlet, p_hashtable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :demoGameMidlet, p_demoGameMidlet)
      JR.lset(f, :hashtable, p_hashtable)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :demoGameMidlet, JR.lget(f, :demoGameMidlet))
        JR.put(this, :hashtable, JR.lget(f, :hashtable))
        JR.put(this, :startGameMidletEvent, DemoGameMidletEvent.jnew(this, JR.get(DemoGameMidletStateFactory.jm_getInstance(), :START_GAME)))
    end)
  end

  def jnew(p_demoGameMidlet, p_hashtable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_demoGameMidlet, p_hashtable)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
            JR.call(JR.get(this, :demoGameMidlet), :jm_commandAction, [JR.get(MyCommandsFactory.jm_getInstance(), :SET_DISPLAYABLE), JR.lget(f, :progressCanvas)])
            JR.call(JR.get(this, :demoGameMidlet), :jm_stopGameCanvasRunnableInterface, [])
            JR.call(JR.get(this, :demoGameMidlet), :jm_setGameCanvasRunnableInterface, [JR.call(JR.get(this, :demoGameMidlet), :jm_createGameCanvasRunnableInterface, [])])
            JR.call(JR.call(JR.get(this, :demoGameMidlet), :jm_getGameCanvasRunnableInterface, []), :jm_setLoadStateHashtable, [JR.get(this, :hashtable)])
            JR.call(JR.get(this, :demoGameMidlet), :jm_startGameCanvasRunnableInterface, [])
            JR.call(DemoGameMidletEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :startGameMidletEvent)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end
end


