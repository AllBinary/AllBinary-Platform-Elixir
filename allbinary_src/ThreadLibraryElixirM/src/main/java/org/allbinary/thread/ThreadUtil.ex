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

defmodule ThreadUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ThreadUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :JOIN, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :JOIN, "join")
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ThreadUtil.jstatic_instance()})
    end)
  end


  def jm_isRunning(this, p_thread) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :thread, p_thread)
        if ((JR.lget(f, :thread) != nil) && JR.call(JR.lget(f, :thread), :jm_isAlive, [])) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_join(this, p_thread) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :thread, p_thread)
        if JR.call(ThreadUtil.jm_getInstance(), :jm_isRunning, [JR.lget(f, :thread)]) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Waiting for Thread To Join/End", this, JR.get(this, :JOIN)])
            JR.call(JR.lget(f, :thread), :jm_join, [])
        end
    end)
  end
end


