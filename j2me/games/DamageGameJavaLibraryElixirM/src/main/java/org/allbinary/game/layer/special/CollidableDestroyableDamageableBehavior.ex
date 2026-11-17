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
# package org.allbinary.game.layer.special

defmodule CollidableDestroyableDamageableBehavior do
  def jsuper(), do: CollidableBaseBehavior

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :damageUtil, nil)
        JR.put(this, :damageUtil, DamageUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_collidable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :collidable, p_collidable)
        CollidableBaseBehavior.jinit(this, JR.lget(f, :collidable))
        CollidableDestroyableDamageableBehavior.jinitfields(this)
    end)
  end

  def jnew(p_collidable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_collidable)
    this
  end


  def jm_isCollision(this, p_ownerLayer, p_collisionLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collisionLayer, p_collisionLayer)
        if (JR.aget(JR.call(JR.lget(f, :ownerLayer), :jm_getGroupInterface, []), 0) != JR.aget(JR.call(JR.lget(f, :collisionLayer), :jm_getGroupInterface, []), 0)) do
            throw({:jreturn, CollidableBaseBehavior.jm_isCollision(this, JR.lget(f, :ownerLayer), JR.lget(f, :collisionLayer))})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_collide(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        JR.lset(f, :ownerCollidableDestroyableDamageableLayer, JR.lget(f, :ownerLayer))
        JR.lset(f, :collidableDestroyableDamageableLayer, JR.lget(f, :collidableInterfaceCompositeInterface))
        JR.call(JR.lget(f, :ownerCollidableDestroyableDamageableLayer), :jm_damage, [JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getDamage, [0]), 0])
    end)
  end


  def jm_isCollisionInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        ForcedLogUtil.jm_log("No Longer Used", this)
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
        ForcedLogUtil.jm_log("No Longer Used", this)
    end)
  end
end


