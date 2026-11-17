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

defmodule SaveHighScoreRunnable do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :progressCanvas, nil)
    JR.put(this, :isLast, false)
    JR.put(this, :textBox, nil)
        JR.put(this, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        
        
    nil
  end


  def jinit(this, p_isLast, p_textBox) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :isLast, p_isLast)
      JR.lset(f, :textBox, p_textBox)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :isLast, JR.lget(f, :isLast))
        JR.put(this, :textBox, JR.lget(f, :textBox))
    end)
  end

  def jnew(p_isLast, p_textBox) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_isLast, p_textBox)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        try do
            if JR.get(this, :isLast) do
                JR.call(JR.get(this, :textBox), :jm_submit, [])
            else
                JR.call(JR.get(this, :textBox), :jm_saveHighScore, [])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "run", JR.lget(f, :e)])
            JR.call(JR.get(this, :progressCanvas), :jm_end, [])
        end
    end)
  end
end


