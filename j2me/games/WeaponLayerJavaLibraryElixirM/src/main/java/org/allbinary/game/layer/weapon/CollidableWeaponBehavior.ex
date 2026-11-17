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
# package org.allbinary.game.layer.weapon

defmodule CollidableWeaponBehavior do
  def jsuper(), do: CollidableDestroyableDamageableBehavior
def jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR(), do: JR.static_get(__MODULE__, :NULL_COLLIDABLE_WEAPON_BEHAVIOR, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_COLLIDABLE_WEAPON_BEHAVIOR(value), do: JR.static_put(__MODULE__, :NULL_COLLIDABLE_WEAPON_BEHAVIOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :collided, false)
    JR.put(this, :collisionHelper, nil)
        JR.put(this, :collided, false)
        
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            CollidableWeaponBehavior.jstatic_set_NULL_COLLIDABLE_WEAPON_BEHAVIOR(CollidableWeaponBehavior.jnew(false))
        end
        throw({:jreturn, CollidableWeaponBehavior.jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR()})
    end)
  end


  def jinit(this, p_collidable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :collidable, p_collidable)
        CollidableDestroyableDamageableBehavior.jinit(this, JR.lget(f, :collidable))
        CollidableWeaponBehavior.jinitfields(this)
        JR.call(this, :jm_setCollided, [false])
        JR.call(this, :jm_setCollidable, [true])
        JR.put(this, :collisionHelper, CollidableHelperFactory.jm_getInstance())
    end)
  end

  def jnew(p_collidable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_collidable)
    this
  end


  def jm_init(this, p_sourceLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
        JR.call(this, :jm_setCollided, [false])
        JR.call(JR.get(this, :collisionHelper), :jm_setOwnerLayerInterface, [JR.lget(f, :sourceLayerInterface)])
    end)
  end


  def jm_isCollision(this, p_ownerLayer, p_collisionLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collisionLayer, p_collisionLayer)
        if JR.call(JR.get(this, :collisionHelper), :jm_isCollidable, [JR.lget(f, :collisionLayer)]) do
            if (JR.aget(JR.call(JR.lget(f, :ownerLayer), :jm_getGroupInterface, []), 0) != JR.aget(JR.call(JR.lget(f, :collisionLayer), :jm_getGroupInterface, []), 0)) do
                throw({:jreturn, CollidableDestroyableDamageableBehavior.jm_isCollision(this, JR.lget(f, :ownerLayer), JR.lget(f, :collisionLayer))})
            end
        end
        throw({:jreturn, false})
    end)
  end


  def jm_collide(this, p_ownerLayer, p_collisionLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collisionLayer, p_collisionLayer)
        CollidableDestroyableDamageableBehavior.jm_collide(this, JR.lget(f, :ownerLayer), JR.lget(f, :collisionLayer))
        JR.put(this, :collided, true)
    end)
  end


  def jm_isCollisionInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        if JR.call(JR.get(this, :collisionHelper), :jm_isCollidable, [JR.lget(f, :collidableInterfaceCompositeInterface)]) do
            JR.lset(f, :layerInterface, JR.lget(f, :collidableInterfaceCompositeInterface))
            if (JR.aget(JR.call(JR.lget(f, :ownerLayer), :jm_getGroupInterface, []), 0) != JR.aget(JR.call(JR.lget(f, :layerInterface), :jm_getGroupInterface, []), 0)) do
                if JR.call(JR.get(this, :layerCollisionUtil), :jm_isCollision, [JR.lget(f, :ownerLayer), JR.lget(f, :layerInterface)]) do
                    throw({:jreturn, true})
                end
            end
        end
        throw({:jreturn, false})
    end)
  end


  def jm_collideInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        JR.lset(f, :ownerDamageableInterface, JR.lget(f, :ownerLayer))
        JR.lset(f, :damageableInterface, JR.lget(f, :collidableInterfaceCompositeInterface))
        JR.call(JR.get(this, :damageUtil), :jm_process, [JR.lget(f, :ownerDamageableInterface), JR.lget(f, :damageableInterface)])
        JR.put(this, :collided, true)
    end)
  end


  def jm_getCollisionTypeWith(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        throw({:jreturn, JR.get(CollisionTypeFactory.jm_getInstance(), :COLLISION)})
    end)
  end


  def jm_isCollided(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :collided)})
    end)
  end


  def jm_setCollided(this, p_collided) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collided, p_collided)
        JR.put(this, :collided, JR.lget(f, :collided))
    end)
  end
end


