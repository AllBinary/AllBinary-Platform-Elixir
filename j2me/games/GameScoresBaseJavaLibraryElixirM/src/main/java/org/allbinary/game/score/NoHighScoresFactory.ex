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

defmodule NoHighScoresFactory do
  def jsuper(), do: HighScoresBase
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> NoHighScoresFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :NO_HIGH_SCORES, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :NO_HIGH_SCORES, JR.anew(0, nil))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NoHighScoresFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      HighScoresBase.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_fetchHighScores(this, p_gameInfo, p_highScoresResultsListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :highScoresResultsListener, p_highScoresResultsListener)
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Getting No HighScores", this, "fetchHighScores"])
        JR.call(JR.lget(f, :highScoresResultsListener), :jm_setHighScoresArray, [JR.get(this, :NO_HIGH_SCORES)])
    end)
  end


  def jm_createHighScoresHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, HighScoresHelperBase.jnew()})
    end)
  end
end


