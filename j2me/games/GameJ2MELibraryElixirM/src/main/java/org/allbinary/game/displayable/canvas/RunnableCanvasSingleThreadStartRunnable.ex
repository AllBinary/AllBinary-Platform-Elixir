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
# package org.allbinary.game.displayable.canvas

defmodule RunnableCanvasSingleThreadStartRunnable do
  def jsuper(), do: GameRunnable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :runnableCanvas, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_demoCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :demoCanvas, p_demoCanvas)
      GameRunnable.jinit(this)
      jinitfields(this)
        JR.put(this, :runnableCanvas, JR.lget(f, :demoCanvas))
    end)
  end

  def jnew(p_demoCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_demoCanvas)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :runnableCanvas), :jm_run, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end


  def jm_processLoopSleep(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :runnableCanvas), :jm_processLoopSleep, [])
    end)
  end
end


