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
# package org.allbinary.game.health

defmodule HealthInterface do
  def jsuper(), do: JObject


  def jm_isAlive(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isAlive")})
    end)
  end


  def jm_damage(this, p_ahealth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ahealth, p_ahealth)
      throw({:jexception, JR.exception("AbstractMethodError", "damage")})
    end)
  end


  def jm_heal(this, p_ahealth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ahealth, p_ahealth)
      throw({:jexception, JR.exception("AbstractMethodError", "heal")})
    end)
  end


  def jm_healMax(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "healMax")})
    end)
  end


  def jm_getMaxHealth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getMaxHealth")})
    end)
  end


  def jm_setMaxHealth(this, p_maxHealth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxHealth, p_maxHealth)
      throw({:jexception, JR.exception("AbstractMethodError", "setMaxHealth")})
    end)
  end


  def jm_getHealth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getHealth")})
    end)
  end


  def jm_addListener(this, p_healthListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :healthListenerInterface, p_healthListenerInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "addListener")})
    end)
  end
end


