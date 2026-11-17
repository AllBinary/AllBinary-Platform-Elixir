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
# package org.allbinary.game.score

defmodule HighScoresHelper2 do
  def jsuper(), do: HighScoresHelperBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :selectedHighScores, nil)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstanceAt(0, 0))
        JR.put(this, :selectedHighScores, NullHighScoresSingletonFactory.jm_getInstance())
    nil
  end

  def jinit(this) do
    HighScoresHelperBase.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setSelectedHighScores(this, p_selectedHighScores) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :selectedHighScores, p_selectedHighScores)
        JR.put(this, :selectedHighScores, JR.lget(f, :selectedHighScores))
    end)
  end


  def jm_getSelectedHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :selectedHighScores)})
    end)
  end


  def jm_setHighScoresArray(this, p_highScoresArrayP) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresArrayP, p_highScoresArrayP)
        HighScoresHelperBase.jm_setHighScoresArray(this, JR.lget(f, :highScoresArrayP))
        JR.call(JR.get(this, :circularIndexUtil), :jm_setSize, [JR.alength(JR.get(this, :highScoresArrayP))])
        JR.call(this, :jm_selectHighScores, [])
    end)
  end


  def jm_selectHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.alength(JR.get(this, :highScoresArrayP)) == 0) do
            JR.call(this, :jm_setSelectedHighScores, [NullHighScoresSingletonFactory.jm_getInstance()])
            throw({:jreturn, nil})
        end
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
        JR.lset(f, :highScores, JR.aget(JR.get(this, :highScoresArrayP), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])))
        JR.lset(f, :index, 0)
        JR.jwhile(fn -> ((JR.call(JR.lget(f, :highScores), :jm_getTotal, []) < 1) && (JR.lget(f, :index) < JR.alength(JR.get(this, :highScoresArrayP)))) end, fn ->
            JR.lset(f, :highScores, JR.aget(JR.get(this, :highScoresArrayP), JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])))
            JR.lpostinc(f, :index, 1)
        end)
        JR.call(this, :jm_setSelectedHighScores, [JR.lget(f, :highScores)])
    end)
  end
end


