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

defmodule DamageWeaponLayer do
  def jsuper(), do: WeaponLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_name, p_remoteInfo, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition, p_username, p_actorSessionId, p_id, p_multiPlayerType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :remoteInfo, p_remoteInfo)
      JR.lset(f, :movement, p_movement)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :destroyedAnimationInterface, p_destroyedAnimationInterface)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :viewPosition, p_viewPosition)
      JR.lset(f, :username, p_username)
      JR.lset(f, :actorSessionId, p_actorSessionId)
      JR.lset(f, :id, p_id)
      JR.lset(f, :multiPlayerType, p_multiPlayerType)
        WeaponLayer.jinit(this, JR.lget(f, :name), JR.lget(f, :remoteInfo), JR.lget(f, :multiPlayerType), JR.lget(f, :movement), JR.lget(f, :animationInterface), JR.lget(f, :destroyedAnimationInterface), JR.lget(f, :rectangle), JR.lget(f, :viewPosition))
        DamageWeaponLayer.jinitfields(this)
        JR.call(this, :jm_setCollidableInferface, [CollidableDamageWeaponBehavior.jnew(true)])
    end)
  end

  def jnew(p_name, p_remoteInfo, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition, p_username, p_actorSessionId, p_id, p_multiPlayerType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_remoteInfo, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition, p_username, p_actorSessionId, p_id, p_multiPlayerType)
    this
  end
end


