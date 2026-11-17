# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.game

defmodule ChallengerInterface do
  def jsuper(), do: JObject


  def jm_setWinner(this, p_isWinner) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isWinner, p_isWinner)
      throw({:jexception, JR.exception("AbstractMethodError", "setWinner")})
    end)
  end
end


