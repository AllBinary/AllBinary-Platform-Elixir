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
# package org.allbinary.game.part.weapon

defmodule BasicWeaponPartCircularPool do
  def jsuper(), do: JObject
def jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL(), do: JR.static_get(__MODULE__, :NULL_BASIC_WEAPON_PART_CIRCULAR_POOL, fn -> BasicWeaponPartCircularPool.jnew() end)
  def jstatic_set_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL(value), do: JR.static_put(__MODULE__, :NULL_BASIC_WEAPON_PART_CIRCULAR_POOL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicWeaponPart, nil)
        JR.put(this, :basicWeaponPart, BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART())
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


  def jm_init(this, p_basicWeaponPartFactoryInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicWeaponPartFactoryInterface, p_basicWeaponPartFactoryInterface)
        JR.put(this, :basicWeaponPart, JR.call(JR.lget(f, :basicWeaponPartFactoryInterface), :jm_getInstance, []))
    end)
  end


  def jm_getInstance(this, p_sourceLayerInterface, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
      JR.lset(f, :relativeRelationship, p_relativeRelationship)
        JR.call(JR.get(this, :basicWeaponPart), :jm_init, [JR.lget(f, :sourceLayerInterface), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface), JR.lget(f, :relativeRelationship)])
        throw({:jreturn, JR.get(this, :basicWeaponPart)})
    end)
  end
end


