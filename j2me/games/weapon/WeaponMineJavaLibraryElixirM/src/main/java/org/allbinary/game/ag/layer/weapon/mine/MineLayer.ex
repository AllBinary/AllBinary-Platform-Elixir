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

defmodule MineLayer do
  def jsuper(), do: SimpleWeaponLayer
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "MineLayer" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :viewPositionEventHandler, nil)
        JR.put(this, :viewPositionEventHandler, ViewPositionEventHandler.jm_getInstance())
    nil
  end


  def jinit(this, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :viewPosition, p_viewPosition)
        SimpleWeaponLayer.jinit(this, MineLayer.jstatic_NAME(), RemoteInfo.jstatic_REMOTE_INFO(), -1, JR.call(NoMovementFactory.jm_getInstance(), :jm_getMovmentInstance, []), JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(MineWeaponResources.jm_getInstance(), :RESOURCE)]), :jm_getInstance, [0]), SimpleWeaponLayer.jm_createDestroyed(), Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 10, 10), JR.lget(f, :viewPosition))
        MineLayer.jinitfields(this)
    end)
  end

  def jnew(p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_viewPosition)
    this
  end


  def jm_initXYZ(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.call(this, :jm_setPosition, [JR.int32(JR.lget(f, :x) + 5), JR.int32(JR.lget(f, :y) + 5), JR.lget(f, :z)])
        JR.call(JR.get(this, :viewPositionEventHandler), :jm_addListener, [this])
        JR.call(SecondaryPlayerQueueFactory.jm_getInstance(), :jm_add, [DropWeaponSound.jm_getInstance()])
    end)
  end


  def jm_damage(this, p_damage, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
      JR.lset(f, :damageType, p_damageType)
        JR.put(this, :totalDamage, (JR.call(this, :jm_getInitDamage, []) + 1))
    end)
  end


  def jm_getDamage(this, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damageType, p_damageType)
        SimpleWeaponLayer.jm_getDamage(this, JR.lget(f, :damageType))
        throw({:jreturn, JR.call(this, :jm_getInitDamage, [])})
    end)
  end


  def jm_setDestroyed(this, p_destroyed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :destroyed, p_destroyed)
        SimpleWeaponLayer.jm_setDestroyed(this, JR.lget(f, :destroyed))
        if JR.call(this, :jm_isDestroyed, []) do
            JR.call(JR.get(this, :viewPositionEventHandler), :jm_removeListener, [this])
        end
    end)
  end
end


