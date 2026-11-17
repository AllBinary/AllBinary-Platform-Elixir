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

defmodule HighScoresHelperBaseInterface do
  def jsuper(), do: JObject


  def jm_setSelectedHighScores(this, p_selectedHighScores) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :selectedHighScores, p_selectedHighScores)
      throw({:jexception, JR.exception("AbstractMethodError", "setSelectedHighScores")})
    end)
  end


  def jm_getHighScoresArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getHighScoresArray")})
    end)
  end


  def jm_getSelectedHighScores(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getSelectedHighScores")})
    end)
  end
end


