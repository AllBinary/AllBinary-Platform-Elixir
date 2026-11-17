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

defmodule SimpleWeaponLayer do
  def jsuper(), do: WeaponLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_createDestroyed() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_getProcedural, [JR.get(ExplosionResources.jm_getInstance(), :THIRD_EXPLOSION_RESOURCE)]), :jm_getInstanceAnimation, [JR.call(NullIndexedAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0])])})
    end)
  end


  def jinit(this, p_name, p_remoteInfo, p_multiPlayerType, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :remoteInfo, p_remoteInfo)
      JR.lset(f, :multiPlayerType, p_multiPlayerType)
      JR.lset(f, :movement, p_movement)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :destroyedAnimationInterface, p_destroyedAnimationInterface)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :viewPosition, p_viewPosition)
        WeaponLayer.jinit(this, JR.lget(f, :name), JR.lget(f, :remoteInfo), JR.lget(f, :multiPlayerType), JR.lget(f, :movement), JR.lget(f, :animationInterface), JR.lget(f, :destroyedAnimationInterface), JR.lget(f, :rectangle), JR.lget(f, :viewPosition))
        SimpleWeaponLayer.jinitfields(this)
        JR.call(this, :jm_setCollidableInferface, [CollidableWeaponBehavior.jnew(true)])
    end)
  end

  def jnew(p_name, p_remoteInfo, p_multiPlayerType, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_remoteInfo, p_multiPlayerType, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition)
    this
  end
end


