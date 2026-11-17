# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.thread

defmodule PooledThread do
  def jsuper(), do: J.Thread

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :threadObjectUtil, nil)
    JR.put(this, :threadPool, nil)
    JR.put(this, :INTERRUPT_EXCEPTION, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :threadObjectUtil, ThreadObjectUtil.jm_getInstance())
        
        JR.put(this, :INTERRUPT_EXCEPTION, "Exit InterruptedException")
    nil
  end


  def jinit(this, p_threadPool) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :threadPool, p_threadPool)
        J.Thread.jinit(this, JR.call(JR.lget(f, :threadPool), :jm_createName, []))
        PooledThread.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :threadPool, JR.lget(f, :threadPool))
    end)
  end

  def jnew(p_threadPool) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_threadPool)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :threadPool), :jm_threadStarted, [])
        JR.jwhile(fn -> true end, fn ->
            JR.lset(f, :task2, JR.get(JR.get(this, :threadObjectUtil), :NULL_PRIORITY_RUNNABLE))
            try do
                JR.lset(f, :task2, JR.call(JR.get(this, :threadPool), :jm_getTask, []))
                JR.put(JR.get(this, :threadPool), :runningTask, true)
                JR.call(JR.get(this, :threadPool), :jm_startTask, [JR.lget(f, :task2)])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :ex, jexception)
                JR.lset(f, :logUtil, LogUtil.jm_getInstance())
                JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(this, :INTERRUPT_EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN)])
                throw(:jbreak)
            end
            if (JR.lget(f, :task2) == JR.get(JR.get(this, :threadObjectUtil), :NULL_PRIORITY_RUNNABLE)) do
                throw(:jbreak)
            end
            try do
                JR.call(JR.lget(f, :task2), :jm_run, [])
                JR.call(JR.get(this, :threadPool), :jm_completedTask, [JR.lget(f, :task2)])
                JR.put(JR.get(this, :threadPool), :runningTask, false)
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.lset(f, :logUtil, LogUtil.jm_getInstance())
                JR.call(JR.lget(f, :logUtil), :jm_put, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :EXCEPTION_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :task2)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
            end
        end)
        JR.call(JR.get(this, :threadPool), :jm_threadStopped, [])
    end)
  end
end


