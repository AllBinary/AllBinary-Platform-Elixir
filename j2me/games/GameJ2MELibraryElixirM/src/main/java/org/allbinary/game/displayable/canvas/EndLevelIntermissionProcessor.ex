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

defmodule EndLevelIntermissionProcessor do
  def jsuper(), do: Processor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameCanvas, nil)
        
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
        JR.call(JR.get(this, :gameCanvas), :jm_processEndLevelIntermissionGameState, [])
    end)
  end
end


