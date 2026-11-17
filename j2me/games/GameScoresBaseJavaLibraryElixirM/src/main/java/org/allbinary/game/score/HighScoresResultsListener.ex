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

defmodule HighScoresResultsListener do
  def jsuper(), do: JObject


  def jm_setHighScoresArray(this, p_highScoresArrayP) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresArrayP, p_highScoresArrayP)
      throw({:jexception, JR.exception("AbstractMethodError", "setHighScoresArray")})
    end)
  end
end


