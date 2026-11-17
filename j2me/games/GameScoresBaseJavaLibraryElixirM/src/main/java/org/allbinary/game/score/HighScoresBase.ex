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

defmodule HighScoresBase do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
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


  def jm_fetchHighScores(this, p_gameInfo, p_highScoresResultsListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :highScoresResultsListener, p_highScoresResultsListener)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_fetchHighScoresPreload(this, p_gameInfo, p_highScoresResultsListener, p_preload) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :highScoresResultsListener, p_highScoresResultsListener)
      JR.lset(f, :preload, p_preload)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_createHighScoresHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


