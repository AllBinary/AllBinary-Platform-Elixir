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
# package org.allbinary.thread

defmodule ThreadPool do
  def jsuper(), do: JObject
def jstatic_ROOT_NAME(), do: JR.static_get(__MODULE__, :ROOT_NAME, fn -> "-PooledThread-" end)
  def jstatic_set_ROOT_NAME(value), do: JR.static_put(__MODULE__, :ROOT_NAME, value)
def jstatic_NORMAL_PRIORITY(), do: JR.static_get(__MODULE__, :NORMAL_PRIORITY, fn -> J.Thread.jstatic_NORM_PRIORITY() end)
  def jstatic_set_NORMAL_PRIORITY(value), do: JR.static_put(__MODULE__, :NORMAL_PRIORITY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :NULL_RUNNABLE, nil)
    JR.put(this, :threadPoolStrings, nil)
    JR.put(this, :threadObjectUtil, nil)
    JR.put(this, :poolName, nil)
    JR.put(this, :priority, 0)
    JR.put(this, :isAlive, false)
    JR.put(this, :taskQueue, nil)
    JR.put(this, :threadID, 0)
    JR.put(this, :numThreads, 0)
    JR.put(this, :runningTask, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :NULL_RUNNABLE, NullRunnable.jm_getInstance())
        JR.put(this, :threadPoolStrings, ThreadPoolStrings.jm_getInstance())
        JR.put(this, :threadObjectUtil, ThreadObjectUtil.jm_getInstance())
        
        
        JR.put(this, :isAlive, false)
        JR.put(this, :taskQueue, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
        JR.put(this, :threadID, 0)
        
        JR.put(this, :runningTask, false)
    nil
  end


  def jinit(this, p_poolName, p_numThreads, p_priority) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :poolName, p_poolName)
      JR.lset(f, :numThreads, p_numThreads)
      JR.lset(f, :priority, p_priority)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :poolName, JR.lget(f, :poolName))
        JR.put(this, :priority, JR.lget(f, :priority))
        JR.put(this, :numThreads, JR.lget(f, :numThreads))
    end)
  end

  def jnew(p_poolName, p_numThreads, p_priority) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_poolName, p_numThreads, p_priority)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if !JR.get(this, :isAlive) do
            JR.put(this, :isAlive, true)
            JR.put(this, :taskQueue, BasicArrayListD.jnew())
            JR.lset(f, :pooledThread, nil)
            JR.lset(f, :i, 0)
            JR.jfor(fn -> (JR.lget(f, :i) < JR.get(this, :numThreads)) end, fn -> JR.lpostinc(f, :i, 1) end, fn ->
                JR.lset(f, :pooledThread, PooledThread.jnew(this))
                JR.call(JR.lget(f, :pooledThread), :jm_setPriority, [JR.get(this, :priority)])
                JR.call(JR.lget(f, :pooledThread), :jm_start, [])
            end)
        end
    end)
  end


  def jm_runAPriorityTask(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_runTaskWithPriority(this, p_task) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :task, p_task)
        (
            if !JR.get(this, :isAlive) do
                JR.call(this, :jm_init, [])
            end
            if (JR.lget(f, :task) != nil) do
                JR.lset(f, :size, JR.call(JR.get(this, :taskQueue), :jm_size, []))
                JR.lset(f, :runnable, nil)
                JR.lset(f, :lowerPriorityRunnable, JR.get(JR.get(this, :threadObjectUtil), :NULL_PRIORITY_RUNNABLE))
                JR.lset(f, :index, 0)
                JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                    JR.lset(f, :runnable, JR.call(JR.get(this, :taskQueue), :jm_get, [JR.lget(f, :index)]))
                    if (JR.call(JR.lget(f, :runnable), :jm_getPriority, []) > JR.call(JR.lget(f, :task), :jm_getPriority, [])) do
                        JR.lset(f, :lowerPriorityRunnable, JR.lget(f, :runnable))
                        throw(:jbreak)
                    end
                end)
                if (JR.lget(f, :lowerPriorityRunnable) == JR.get(JR.get(this, :threadObjectUtil), :NULL_PRIORITY_RUNNABLE)) do
                    JR.call(JR.get(this, :taskQueue), :jm_add, [JR.lget(f, :task)])
                else
                    JR.lset(f, :index, JR.call(JR.get(this, :taskQueue), :jm_indexOf, [JR.lget(f, :lowerPriorityRunnable)]))
                    JR.call(JR.get(this, :taskQueue), :jm_addAt, [JR.lget(f, :index), JR.lget(f, :task)])
                end
                JR.call(this, :jm_notify, [])
            end
        )
    end)
  end


  def jm_runTask(this, p_task) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :task, p_task)
        (
            if !JR.get(this, :isAlive) do
                JR.call(this, :jm_init, [])
            end
            if (JR.lget(f, :task) != nil) do
                JR.call(JR.get(this, :taskQueue), :jm_add, [JR.lget(f, :task)])
                JR.call(this, :jm_notify, [])
            end
        )
    end)
  end


  def jm_getTask(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            JR.jwhile(fn -> (JR.call(JR.get(this, :taskQueue), :jm_size, []) == 0) end, fn ->
                if !JR.get(this, :isAlive) do
                    throw({:jreturn, JR.get(this, :NULL_RUNNABLE)})
                end
                JR.call(this, :jm_wait, [])
            end)
            JR.lset(f, :runnable, JR.call(JR.get(this, :taskQueue), :jm_removeAt, [0]))
            throw({:jreturn, JR.lget(f, :runnable)})
        )
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            if JR.get(this, :isAlive) do
                JR.call(JR.get(this, :taskQueue), :jm_clear, [])
            end
        )
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            if JR.get(this, :isAlive) do
                JR.put(this, :isAlive, false)
                JR.call(JR.get(this, :taskQueue), :jm_clear, [])
            end
        )
    end)
  end


  def jm_join(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            JR.put(this, :isAlive, false)
            JR.call(JR.get(this, :taskQueue), :jm_clear, [])
            JR.call(this, :jm_notifyAll, [])
        )
    end)
  end


  def jm_isBusy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if !JR.get(this, :isAlive) do
            throw({:jreturn, false})
        end
        if (JR.call(JR.get(this, :taskQueue), :jm_size, []) > 0) do
            throw({:jreturn, true})
        end
        if JR.get(this, :runningTask) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_threadStarted(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_threadStopped(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :numThreads) == 1) do
            JR.put(this, :isAlive, false)
            JR.call(JR.get(this, :taskQueue), :jm_clear, [])
        end
    end)
  end


  def jm_startTask(this, p_task) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :task, p_task)
        nil
    end)
  end


  def jm_completedTask(this, p_task) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :task, p_task)
        nil
    end)
  end


  def jm_createName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :poolName)]), :jm_append, [ThreadPool.jstatic_ROOT_NAME()]), :jm_appendint, [JR.postinc(this, :threadID, 1)]), :jm_toString, [])})
    end)
  end
end


