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

defmodule DemoRunnable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :demoGameMidlet, nil)
    JR.put(this, :startDemoGameMidletEvent, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_demoGameMidlet) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :demoGameMidlet, p_demoGameMidlet)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :demoGameMidlet, JR.lget(f, :demoGameMidlet))
        JR.put(this, :startDemoGameMidletEvent, DemoGameMidletEvent.jnew(JR.get(this, :demoGameMidlet), JR.get(DemoGameMidletStateFactory.jm_getInstance(), :START_DEMO)))
    end)
  end

  def jnew(p_demoGameMidlet) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_demoGameMidlet)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, ["GameCanvasRunnableInterface"]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.call(JR.get(this, :demoGameMidlet), :jm_commandAction, [JR.get(MyCommandsFactory.jm_getInstance(), :SET_DISPLAYABLE), ProgressCanvasFactory.jm_getInstance()])
            JR.call(JR.get(this, :demoGameMidlet), :jm_setGameCanvasRunnableInterface, [JR.call(JR.get(this, :demoGameMidlet), :jm_createDemoGameCanvasRunnableInterface, [])])
            JR.call(JR.get(this, :demoGameMidlet), :jm_demoSetup, [])
            JR.call(DemoGameMidletEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :startDemoGameMidletEvent)])
            JR.call(JR.get(this, :demoGameMidlet), :jm_startGameCanvasRunnableInterface, [])
            JR.call(JR.get(this, :demoGameMidlet), :jm_postDemoSetup, [])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end
end


