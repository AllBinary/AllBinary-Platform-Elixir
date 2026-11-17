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

defmodule HighScoresInterface do
  def jsuper(), do: JObject


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getList")})
    end)
  end


  def jm_addHighScore(this, p_newHighScore) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newHighScore, p_newHighScore)
      throw({:jexception, JR.exception("AbstractMethodError", "addHighScore")})
    end)
  end


  def jm_getTotal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getTotal")})
    end)
  end


  def jm_isBestScore(this, p_newHighScore) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newHighScore, p_newHighScore)
      throw({:jexception, JR.exception("AbstractMethodError", "isBestScore")})
    end)
  end
end


