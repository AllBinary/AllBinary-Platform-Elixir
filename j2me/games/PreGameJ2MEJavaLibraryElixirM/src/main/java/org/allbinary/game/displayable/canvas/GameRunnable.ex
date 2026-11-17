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

defmodule GameRunnable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :WAIT, 0)
    JR.put(this, :FAST, 0)
    JR.put(this, :waitInMillis, 0)
        JR.put(this, :WAIT, 240)
        JR.put(this, :FAST, 60)
        JR.put(this, :waitInMillis, JR.get(this, :WAIT))
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_process, [])
    end)
  end


  def jm_processLoopSleep(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        J.Thread.jm_sleep(JR.get(this, :waitInMillis))
    end)
  end
end


