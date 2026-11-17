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
# package org.allbinary.game.score

defmodule HighScoresHelperBase do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :highScoresArrayP, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :highScoresArrayP, JR.get(LastFetchHighScoresFactory.jm_getInstance(), :highScoresArray))
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setHighScoresArray(this, p_highScoresArrayP) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresArrayP, p_highScoresArrayP)
        if (JR.lget(f, :highScoresArrayP) != nil) do
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.lget(f, :commonStrings), :START)]), :jm_appendint, [JR.alength(JR.lget(f, :highScoresArrayP))]), :jm_toString, []), this, "setHighScoresArray"])
        else
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :START), this, "setHighScoresArray"])
        end
        JR.put(this, :highScoresArrayP, JR.lget(f, :highScoresArrayP))
    end)
  end


  def jm_getNextHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, NullHighScoresSingletonFactory.jm_getInstance()})
    end)
  end


  def jm_isAnyHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_setSelectedHighScores(this, p_selectedHighScores) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :selectedHighScores, p_selectedHighScores)
        nil
    end)
  end


  def jm_getSelectedHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, NullHighScoresSingletonFactory.jm_getInstance()})
    end)
  end


  def jm_getHighScoresArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :highScoresArrayP)})
    end)
  end


  def jm_selectHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


