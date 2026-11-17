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

defmodule ThreadFactoryUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ThreadFactoryUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
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
        throw({:jreturn, ThreadFactoryUtil.jstatic_instance()})
    end)
  end


  def jm_getInstanceGameCanvasRunnable(this, p_runnable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :runnable, p_runnable)
        throw({:jreturn, JR.call(this, :jm_getInstanceType, [JR.lget(f, :runnable), JR.call(JR.lget(f, :runnable), :jm_getType, [])])})
    end)
  end


  def jm_getInstanceForRunnable(this, p_runnable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :runnable, p_runnable)
        throw({:jreturn, JR.call(this, :jm_getInstanceType, [JR.lget(f, :runnable), JR.call(JR.lget(f, :runnable), :jm_getType, [])])})
    end)
  end


  def jm_getInstanceType(this, p_runnable, p_type) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :runnable, p_runnable)
      JR.lset(f, :type, p_type)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        if J2MEUtil.jm_isHTML() do
            if ((JR.lget(f, :type) == DemoCanvas.jstatic_TYPE()) || (JR.lget(f, :type) == AllBinaryGameCanvas.jstatic_TYPE())) do
                JR.lset(f, :demoGameSingleThreadStartRunnable, RunnableCanvasSingleThreadStartRunnable.jnew(JR.lget(f, :runnable)))
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :runnable)])]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR))
                JR.lset(f, :primaryThreadPool, PrimaryThreadPool.jm_getInstance())
                JR.call(JR.lget(f, :primaryThreadPool), :jm_runTask, [JR.lget(f, :demoGameSingleThreadStartRunnable)])
            else
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Using Pseudo Thread for Runnable under PlayN/HTML5: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :runnable)])]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR))
                JR.lset(f, :primaryThreadPool, PrimaryThreadPool.jm_getInstance())
                JR.call(JR.lget(f, :primaryThreadPool), :jm_runTask, [JR.lget(f, :runnable)])
            end
        end
        JR.lset(f, :thread, J.Thread.jnew(JR.lget(f, :runnable), JR.call(JR.lget(f, :runnable), :jm_toString, [])))
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :thread), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR)])
        throw({:jreturn, JR.lget(f, :thread)})
    end)
  end


  def jm_start(this, p_thread) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :thread, p_thread)
        JR.call(JR.lget(f, :thread), :jm_start, [])
    end)
  end
end


