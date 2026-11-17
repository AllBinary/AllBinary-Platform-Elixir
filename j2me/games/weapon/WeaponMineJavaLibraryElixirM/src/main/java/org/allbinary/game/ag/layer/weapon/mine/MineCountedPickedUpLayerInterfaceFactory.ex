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
# package org.allbinary.game.ag.layer.weapon.mine

defmodule MineCountedPickedUpLayerInterfaceFactory do
  def jsuper(), do: CountedPickedUpLayerInterfaceFactory
def jstatic_pickedUpLayerInterfaceFactoryInterface(), do: JR.static_get(__MODULE__, :pickedUpLayerInterfaceFactoryInterface, fn -> CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY() end)
  def jstatic_set_pickedUpLayerInterfaceFactoryInterface(value), do: JR.static_put(__MODULE__, :pickedUpLayerInterfaceFactoryInterface, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :weaponLayerCircularStaticPool, nil)
    JR.put(this, :weaponProperties, nil)
    JR.put(this, :smallIntegerSingletonFactory, nil)
        JR.put(this, :weaponLayerCircularStaticPool, MineLayerCircularStaticPool.jm_getInstance())
        JR.put(this, :weaponProperties, WeaponProperties.jnew(-1, -1, 0, 8000, JR.int16(10)))
        JR.put(this, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
    nil
  end


  def jm_init() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        MineCountedPickedUpLayerInterfaceFactory.jstatic_set_pickedUpLayerInterfaceFactoryInterface(MineCountedPickedUpLayerInterfaceFactory.jnew())
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        CountedPickedUpLayerInterfaceFactory.jinit(this, JR.get(PickedUpLayerTypeFactory.jm_getInstance(), :MINE), IconLayerFactory.jm_getInstance(JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(MineWeaponResources.jm_getInstance(), :DROP_ICON_RESOURCE)]), :jm_getInstance, [0]), 10, 10), JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(MineWeaponResources.jm_getInstance(), :DROP_RESOURCE)]), :jm_getInstance, [0]))
        MineCountedPickedUpLayerInterfaceFactory.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface()})
    end)
  end


  def jm_getTotal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 3})
    end)
  end


  def jm_getNextInstance(this, p_hashtable, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.lset(f, :sourceLayerInterface, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.call(JR.get(this, :smallIntegerSingletonFactory), :jm_getAt, [0])]))
        JR.lset(f, :angle, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.call(JR.get(this, :smallIntegerSingletonFactory), :jm_getAt, [1])]))
        JR.lset(f, :scoreableInterface, JR.lget(f, :sourceLayerInterface))
        throw({:jreturn, JR.call(JR.get(this, :weaponLayerCircularStaticPool), :jm_getInstanceWeaponLayer, [JR.lget(f, :sourceLayerInterface), JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z), JR.int32(JR.call(JR.lget(f, :angle), :jm_intValue, [])), 0, JR.get(this, :weaponProperties), JR.lget(f, :scoreableInterface)])})
    end)
  end
end


