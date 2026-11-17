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

defmodule ScoreableInterface do
  def jsuper(), do: JObject


  def jm_getPoints(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getPoints")})
    end)
  end


  def jm_addPoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      throw({:jexception, JR.exception("AbstractMethodError", "addPoints")})
    end)
  end


  def jm_removePoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
      throw({:jexception, JR.exception("AbstractMethodError", "removePoints")})
    end)
  end
end


