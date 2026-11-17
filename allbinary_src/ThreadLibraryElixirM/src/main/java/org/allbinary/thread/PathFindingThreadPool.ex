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

#This is mainly for network communications.
defmodule PathFindingThreadPool do
  def jsuper(), do: ThreadPool
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PathFindingThreadPool.jnew("PathFinding", 1, 1) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, PathFindingThreadPool.jstatic_instance()})
    end)
  end


  def jinit(this, p_poolName, p_numThreads, p_priority) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :poolName, p_poolName)
      JR.lset(f, :numThreads, p_numThreads)
      JR.lset(f, :priority, p_priority)
        ThreadPool.jinit(this, JR.lget(f, :poolName), JR.lget(f, :numThreads), ThreadPool.jstatic_NORMAL_PRIORITY())
        PathFindingThreadPool.jinitfields(this)
    end)
  end

  def jnew(p_poolName, p_numThreads, p_priority) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_poolName, p_numThreads, p_priority)
    this
  end


  def jm_runTaskWithPriority(this, p_task) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :task, p_task)
        ThreadPool.jm_runTaskWithPriority(this, JR.lget(f, :task))
    end)
  end


  def jm_runTask(this, p_task) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :task, p_task)
        ThreadPool.jm_runTask(this, JR.lget(f, :task))
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
end


