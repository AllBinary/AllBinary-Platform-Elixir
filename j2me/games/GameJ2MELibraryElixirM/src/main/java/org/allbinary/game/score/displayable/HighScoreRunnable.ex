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
# package org.allbinary.game.score.displayable

defmodule HighScoreRunnable do
  def jsuper(), do: ARunnable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :highScoresCanvas, nil)
        
    nil
  end


  def jinit(this, p_highScoresCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresCanvas, p_highScoresCanvas)
      ARunnable.jinit(this)
      jinitfields(this)
        JR.put(this, :highScoresCanvas, JR.lget(f, :highScoresCanvas))
    end)
  end

  def jnew(p_highScoresCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_highScoresCanvas)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.lset(f, :highScoresCanvas, JR.get(this, :highScoresCanvas))
        try do
            JR.lset(f, :isHTML, J2MEUtil.jm_isHTML())
            if !JR.lget(f, :isHTML) do
                JR.jwhile(fn -> !JR.get(JR.lget(f, :highScoresCanvas), :hasPainted) end, fn ->
                    nil
                end)
                JR.put(JR.lget(f, :highScoresCanvas), :hasPainted, false)
            end
            JR.lset(f, :stringMaker, StringMaker.jnew())
            JR.lset(f, :systemWrapper, ABSystemWrapper.jm_getInstance())
            JR.lset(f, :currentTimeMillis, JR.call(JR.lget(f, :systemWrapper), :jm_currentTimeMillis, []))
            JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, ["HighScoresCanvas - Request repaint to be sure: "]), :jm_appendlong, [JR.lget(f, :currentTimeMillis)]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :RUN)])
            JR.call(JR.get(JR.lget(f, :highScoresCanvas), :repaintBehavior), :jm_onChangeRepaint, [JR.lget(f, :highScoresCanvas)])
            if !JR.lget(f, :isHTML) do
                JR.jwhile(fn -> !JR.get(JR.lget(f, :highScoresCanvas), :hasPainted) end, fn ->
                    nil
                end)
            end
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, ["HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "]), :jm_appendlong, [JR.lget(f, :currentTimeMillis)]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :RUN)])
            JR.call(JR.lget(f, :highScoresCanvas), :jm_executeUpdate, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end
end


