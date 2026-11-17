# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

defmodule RepaintRunnable do
  def jsuper(), do: ARunnable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :canvas, nil)
        
    nil
  end


  def jinit(this, p_canvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :canvas, p_canvas)
      ARunnable.jinit(this)
      jinitfields(this)
        JR.put(this, :canvas, JR.lget(f, :canvas))
    end)
  end

  def jnew(p_canvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_canvas)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :canvas), :jm_repaint, [])
            JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_process, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.lset(f, :logUtil, LogUtil.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end
end


