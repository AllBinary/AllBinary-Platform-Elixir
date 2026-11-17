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

defmodule RunnableCanvasRefreshHelper do
  def jsuper(), do: Processor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :runnableCanvas, nil)
        
    nil
  end


  def jinit(this, p_runnableCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :runnableCanvas, p_runnableCanvas)
      Processor.jinit(this)
      jinitfields(this)
        JR.put(this, :runnableCanvas, JR.lget(f, :runnableCanvas))
    end)
  end

  def jnew(p_runnableCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_runnableCanvas)
    this
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :runnableCanvas), :jm_repaint, [])
    end)
  end
end


