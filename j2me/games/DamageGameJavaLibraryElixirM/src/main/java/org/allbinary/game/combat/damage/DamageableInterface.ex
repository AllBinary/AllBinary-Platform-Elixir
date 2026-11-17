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
# package org.allbinary.game.combat.damage

defmodule DamageableInterface do
  def jsuper(), do: JObject


  def jm_damage(this, p_damage, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
      JR.lset(f, :damageType, p_damageType)
      throw({:jexception, JR.exception("AbstractMethodError", "damage")})
    end)
  end


  def jm_getDamage(this, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damageType, p_damageType)
      throw({:jexception, JR.exception("AbstractMethodError", "getDamage")})
    end)
  end
end


