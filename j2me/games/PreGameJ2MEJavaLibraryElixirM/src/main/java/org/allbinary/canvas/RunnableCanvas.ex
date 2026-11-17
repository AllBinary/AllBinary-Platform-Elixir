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
# package org.allbinary.canvas

defmodule RunnableCanvas do
  def jsuper(), do: MyCanvas

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :nullUtil, nil)
    JR.put(this, :stdUtil, nil)
    JR.put(this, :systemWrapper, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :thread, nil)
    JR.put(this, :currentThread, nil)
    JR.put(this, :running, false)
    JR.put(this, :loopTimeHelper, nil)
    JR.put(this, :runnableCanvasRefreshHelper, nil)
    JR.put(this, :commonLabels, nil)
    JR.put(this, :threadObjectUtil, nil)
    JR.put(this, :SET_RUNNING, nil)
    JR.put(this, :IS_RUNNING, nil)
    JR.put(this, :THREAD, nil)
    JR.put(this, :NOT_EQUAL, nil)
    JR.put(this, :PAUSE_SLEEP, nil)
    JR.put(this, :START_PAUSE, nil)
    JR.put(this, :END_PAUSE, nil)
    JR.put(this, :PROCESS_LOOP_SLEEP, nil)
    JR.put(this, :pauseWait, 0)
    JR.put(this, :notified, false)
        JR.put(this, :nullUtil, NullUtil.jm_getInstance())
        JR.put(this, :stdUtil, StdUtil.jm_getInstance())
        JR.put(this, :systemWrapper, ABSystemWrapper.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :thread, NullThread.jstatic_NULL_THREAD())
        JR.put(this, :currentThread, NullThread.jstatic_NULL_THREAD())
        JR.put(this, :running, false)
        JR.put(this, :loopTimeHelper, TimeDelayHelper.jnew(JR.get(NullWaitGameRunnable.jm_getInstance(), :WAIT)))
        JR.put(this, :runnableCanvasRefreshHelper, Processor.jm_getInstance())
        JR.put(this, :commonLabels, CommonLabels.jm_getInstance())
        JR.put(this, :threadObjectUtil, ThreadObjectUtil.jm_getInstance())
        JR.put(this, :SET_RUNNING, "setRunning")
        JR.put(this, :IS_RUNNING, "isRunning")
        JR.put(this, :THREAD, "Thread: ")
        JR.put(this, :NOT_EQUAL, " != ")
        JR.put(this, :PAUSE_SLEEP, "pause sleep")
        JR.put(this, :START_PAUSE, "start pause - game thread sleep at: ")
        JR.put(this, :END_PAUSE, "end pause - game thread sleep at: ")
        JR.put(this, :PROCESS_LOOP_SLEEP, "processLoopSleep")
        JR.put(this, :pauseWait, 0)
        JR.put(this, :notified, false)
    nil
  end


  def jinit(this, p_commandListener, p_childNameList, p_hasParam) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :childNameList, p_childNameList)
      JR.lset(f, :hasParam, p_hasParam)
        MyCanvas.jinit(this, JR.get(CommonStrings.jm_getInstance(), :UNKNOWN), JR.lget(f, :childNameList))
        RunnableCanvas.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["RunnableCanvas delay: "]), :jm_appendint, [JR.int32(JR.get(JR.get(this, :loopTimeHelper), :delay))]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :runnableCanvasRefreshHelper, RunnableCanvasRefreshHelper.jnew(this))
        if (JR.lget(f, :commandListener) != nil) do
            JR.call(this, :jm_initCommands, [JR.lget(f, :commandListener)])
        else
            if JR.lget(f, :hasParam) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["commandListener was null", this, "initCommands"])
        end
        end
    end)
  end

  def jnew(p_commandListener, p_childNameList, p_hasParam) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_childNameList, p_hasParam)
    this
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this, "initCommands"])
    end)
  end


  def jm_isMainCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getCustomCommandListener, []) != nil) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_setThread(this, p_thread) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :thread, p_thread)
        JR.put(this, :thread, JR.lget(f, :thread))
    end)
  end


  def jm_setRunning(this, p_running) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :running, p_running)
        JR.put(this, :running, JR.lget(f, :running))
        if !JR.get(this, :running) do
            JR.put(this, :thread, NullThread.jstatic_NULL_THREAD())
            (
                JR.call(JR.get(this, :threadObjectUtil), :jm_notifyObject, [this])
            )
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :IS_RUNNING)]), :jm_appendboolean, [JR.get(this, :running)]), :jm_toString, []), this, JR.get(this, :SET_RUNNING)])
    end)
  end


  def jm_isRunning(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :thread) == JR.get(this, :currentThread)) do
            throw({:jreturn, JR.get(this, :running)})
        else
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :THREAD)])
            if (JR.get(this, :thread) != nil) do
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :thread), :jm_toString, [])])
            end
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :NOT_EQUAL)])
            if (JR.get(this, :currentThread) != nil) do
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :currentThread)])])
            end
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(this, :IS_RUNNING)])
            throw({:jreturn, false})
        end
    end)
  end


  def jm_getLoopTimeHelperP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :loopTimeHelper)})
    end)
  end


  def jm_setWait(this, p_wait) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :wait, p_wait)
        JR.put(JR.get(this, :loopTimeHelper), :delay, JR.lget(f, :wait))
        JR.put(this, :pauseWait, JR.int64(JR.lget(f, :wait) * 3))
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["setWait - delay: "]), :jm_appendint, [JR.int32(JR.get(JR.get(this, :loopTimeHelper), :delay))]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
    end)
  end


  def jm_getWait(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(JR.get(this, :loopTimeHelper), :delay)})
    end)
  end


  def jm_setCurrentThread(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :currentThread, J.Thread.jm_currentThread())
    end)
  end


  def jm_setCurrentThreadFake(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :currentThread, JR.get(this, :thread))
    end)
  end


  def jm_showNotify(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(this, :jm_stopWaiting, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "showNotify", JR.lget(f, :e)])
        end
    end)
  end


  def jm_stopWaiting(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :notified, true)
        (
            JR.call(JR.get(this, :threadObjectUtil), :jm_notifyObject, [this])
        )
        JR.call(this, :jm_repaint, [])
    end)
  end


  def jm_waitOnNotify(this, p_wait) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :wait, p_wait)
        if !JR.get(this, :notified) do
            if (JR.lget(f, :wait) > 0) do
                JR.call(JR.get(this, :threadObjectUtil), :jm_waitObjectFor, [this, JR.lget(f, :wait)])
            else
                JR.call(JR.get(this, :threadObjectUtil), :jm_waitObject, [this])
            end
        end
    end)
  end


  def jm_processSleep(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        J.Thread.jm_sleep(JR.get(this, :pauseWait))
    end)
  end


  def jm_isPausable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_processGameSleep(this, p_sleep) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sleep, p_sleep)
        J.Thread.jm_sleep(JR.lget(f, :sleep))
    end)
  end


  def jm_processLoopSleep(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :runnableCanvasRefreshHelper), :jm_process, [])
        if JR.call(this, :jm_isPaused, []) do
            JR.lset(f, :stringMaker, StringMaker.jnew())
            if (JR.call(this, :jm_isRunning, []) && !JR.call(this, :jm_isSingleThread, [])) do
                JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                JR.lset(f, :currentTimeMillis, JR.call(JR.get(this, :systemWrapper), :jm_currentTimeMillis, []))
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :START_PAUSE)]), :jm_appendlong, [JR.lget(f, :currentTimeMillis)]), :jm_append, [JR.get(this, :PAUSE_SLEEP)]), :jm_appendlong, [JR.get(this, :pauseWait)]), :jm_toString, []), this, JR.get(this, :PROCESS_LOOP_SLEEP)])
                JR.jwhile(fn -> ((JR.call(this, :jm_isPaused, []) && JR.call(this, :jm_isRunning, [])) && !JR.call(this, :jm_isSingleThread, [])) end, fn ->
                    JR.call(this, :jm_processSleep, [])
                    if !JR.call(this, :jm_isPausable, []) do
                        JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
                        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :END_PAUSE)]), :jm_appendlong, [JR.lget(f, :currentTimeMillis)]), :jm_toString, []), this, JR.get(this, :PROCESS_LOOP_SLEEP)])
                        throw({:jreturn, nil})
                    end
                end)
            end
        end
        JR.lset(f, :elapsedTime, JR.call(JR.get(this, :loopTimeHelper), :jm_getElapsedTNT, []))
        JR.lset(f, :wait, JR.get(JR.get(this, :loopTimeHelper), :delay))
        if (JR.lget(f, :elapsedTime) > JR.lget(f, :wait)) do
            JR.lset(f, :elapsedTime, JR.lget(f, :wait))
        else
            JR.call(this, :jm_processGameSleep, [JR.int64(JR.lget(f, :wait) - JR.lget(f, :elapsedTime))])
        end
    end)
  end


  def jm_isSingleThread(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setCurrentThread, [])
    end)
  end


  def jm_end2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end
end


