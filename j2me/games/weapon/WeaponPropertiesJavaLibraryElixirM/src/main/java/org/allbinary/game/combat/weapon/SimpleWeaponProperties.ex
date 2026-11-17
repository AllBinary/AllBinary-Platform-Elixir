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
# package org.allbinary.game.combat.weapon

defmodule SimpleWeaponProperties do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :damage, 0)
    JR.put(this, :dissipation, 0)
    JR.put(this, :range, 0)
        JR.put(this, :damage, 0)
        JR.put(this, :dissipation, 0)
        JR.put(this, :range, 0)
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


  def jm_set(this, p_simpleWeaponProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :simpleWeaponProperties, p_simpleWeaponProperties)
        JR.call(this, :jm_setDamage, [JR.call(JR.lget(f, :simpleWeaponProperties), :jm_getDamage, [])])
        JR.call(this, :jm_setDissipation, [JR.call(JR.lget(f, :simpleWeaponProperties), :jm_getDissipation, [])])
        JR.call(this, :jm_setRange, [JR.call(JR.lget(f, :simpleWeaponProperties), :jm_getRange, [])])
    end)
  end


  def jm_setDamage(this, p_damage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
        JR.put(this, :damage, JR.lget(f, :damage))
    end)
  end


  def jm_getDamage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :damage)})
    end)
  end


  def jm_setDissipation(this, p_dissipation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dissipation, p_dissipation)
        JR.put(this, :dissipation, JR.lget(f, :dissipation))
    end)
  end


  def jm_getDissipation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dissipation)})
    end)
  end


  def jm_getRange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :range)})
    end)
  end


  def jm_setRange(this, p_range) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :range, p_range)
        JR.put(this, :range, JR.lget(f, :range))
    end)
  end
end


