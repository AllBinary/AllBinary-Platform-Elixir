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

defmodule CollidableCharacterNoDamageBehavior do
  def jsuper(), do: CollidableDestroyableDamageableBehavior

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_collidable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :collidable, p_collidable)
        CollidableDestroyableDamageableBehavior.jinit(this, JR.lget(f, :collidable))
        CollidableCharacterNoDamageBehavior.jinitfields(this)
    end)
  end

  def jnew(p_collidable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_collidable)
    this
  end


  def jm_collide(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        JR.lset(f, :collisionTypeFactory, CollisionTypeFactory.jm_getInstance())
        JR.lset(f, :collisionType, JR.call(JR.call(JR.lget(f, :collidableInterfaceCompositeInterface), :jm_getCollidableInferface, []), :jm_getCollisionTypeWith, [JR.lget(f, :ownerLayer)]))
        if (JR.lget(f, :collisionType) == JR.get(JR.lget(f, :collisionTypeFactory), :PICKUP)) do
            JR.lset(f, :collidableDestroyableDamageableLayer, JR.lget(f, :ownerLayer))
            JR.call(JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getPickupBehavior, []), :jm_doPickupLayer, [JR.lget(f, :collidableInterfaceCompositeInterface)])
        else
            nil
        end
    end)
  end


  def jm_collideInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
    end)
  end
end


