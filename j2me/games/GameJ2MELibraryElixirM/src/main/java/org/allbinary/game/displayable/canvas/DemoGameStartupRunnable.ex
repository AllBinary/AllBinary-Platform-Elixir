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

defmodule DemoGameStartupRunnable do
  def jsuper(), do: ABRunnable
def jstatic_TYPE(), do: JR.static_get(__MODULE__, :TYPE, fn -> 4 end)
  def jstatic_set_TYPE(value), do: JR.static_put(__MODULE__, :TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :demoCanvas, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_demoCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :demoCanvas, p_demoCanvas)
      ABRunnable.jinit(this)
      jinitfields(this)
        JR.put(this, :demoCanvas, JR.lget(f, :demoCanvas))
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
            JR.call(this, :jm_setRunning, [true])
            JR.call(JR.get(this, :demoCanvas), :jm_stopGameDemo, [])
            JR.call(JR.get(this, :demoCanvas), :jm_create, [])
            JR.call(JR.get(this, :demoCanvas), :jm_start, [])
            JR.call(this, :jm_setRunning, [false])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(this, :jm_setRunning, [false])
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, DemoGameStartupRunnable.jstatic_TYPE()})
    end)
  end
end


