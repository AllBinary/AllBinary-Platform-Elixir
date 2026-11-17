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
# package org.allbinary.game.midlet

defmodule DemoGameMidletEventListener do
  def jsuper(), do: JObject


  def jm_onDemoStart(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "onDemoStart")})
    end)
  end


  def jm_onGameStart(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "onGameStart")})
    end)
  end


  def jm_onDemoGameMidletEvent(this, p_demoGameMidletEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :demoGameMidletEvent, p_demoGameMidletEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "onDemoGameMidletEvent")})
    end)
  end
end


