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

defmodule StartIntermissionProcessor do
  def jsuper(), do: Processor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :gameCanvas, nil)
    JR.put(this, :WAIT, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        JR.put(this, :WAIT, 5000)
    nil
  end


  def jinit(this, p_gameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvas, p_gameCanvas)
      Processor.jinit(this)
      jinitfields(this)
        JR.put(this, :gameCanvas, JR.lget(f, :gameCanvas))
    end)
  end

  def jnew(p_gameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameCanvas)
    this
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getStartIntermissionInterface, []), :jm_getTimeDelayHelper, []), :jm_isElapsedTNT, [JR.get(this, :WAIT)]) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Intermission End", this, JR.get(JR.get(this, :commonStrings), :PROCESS)])
            JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getStartIntermissionInterface, []), :jm_setEnabled, [false])
        end
    end)
  end
end


