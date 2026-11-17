# Generated Code Do Not Modify
# package org.allbinary.thread

defmodule ThreadObjectUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ThreadObjectUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_PRIORITY_RUNNABLE, nil)
        JR.put(this, :NULL_PRIORITY_RUNNABLE, NullPriorityRunnable.jnew())
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
        throw({:jreturn, ThreadObjectUtil.jstatic_instance()})
    end)
  end


  def jm_notifyObject(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(JR.lget(f, :anyType), :jm_notify, [])
    end)
  end


  def jm_waitObject(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(JR.lget(f, :anyType), :jm_wait, [])
    end)
  end


  def jm_waitObjectFor(this, p_anyType, p_delay) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :delay, p_delay)
        JR.call(TsUtil.jm_getInstance(), :jm_waitFor, [JR.lget(f, :anyType), JR.lget(f, :delay)])
    end)
  end


  def jm_processThread(this, p_runnable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :runnable, p_runnable)
        JR.lset(f, :thread, J.Thread.jnew(JR.lget(f, :runnable)))
        JR.call(JR.lget(f, :thread), :jm_start, [])
    end)
  end
end


