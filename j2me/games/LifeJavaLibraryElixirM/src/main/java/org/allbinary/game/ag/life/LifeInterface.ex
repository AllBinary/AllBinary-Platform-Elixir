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
# package org.allbinary.game.ag.life

defmodule LifeInterface do
  def jsuper(), do: JObject


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "get")})
    end)
  end


  def jm_set(this, p_lives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
      throw({:jexception, JR.exception("AbstractMethodError", "set")})
    end)
  end


  def jm_reset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "reset")})
    end)
  end


  def jm_add(this, p_lives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
      throw({:jexception, JR.exception("AbstractMethodError", "add")})
    end)
  end


  def jm_deaths(this, p_lives) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lives, p_lives)
      throw({:jexception, JR.exception("AbstractMethodError", "deaths")})
    end)
  end


  def jm_getMaxlives(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getMaxlives")})
    end)
  end


  def jm_isAlive(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isAlive")})
    end)
  end
end


