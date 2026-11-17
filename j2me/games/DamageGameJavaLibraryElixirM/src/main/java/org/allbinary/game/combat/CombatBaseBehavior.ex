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
# package org.allbinary.game.combat

defmodule CombatBaseBehavior do
  def jsuper(), do: JObject
def jstatic_NULL_COMBAT_BEHAVIOR(), do: JR.static_get(__MODULE__, :NULL_COMBAT_BEHAVIOR, fn -> CombatBaseBehavior.jnew(DamageableBaseBehavior.jm_getInstance(), DestroyableBaseBehavior.jm_getInstance()) end)
  def jstatic_set_NULL_COMBAT_BEHAVIOR(value), do: JR.static_put(__MODULE__, :NULL_COMBAT_BEHAVIOR, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :damageableBaseBehavior, nil)
    JR.put(this, :destroyableBaseBehavior, nil)
    JR.put(this, :readyForExplosion, false)
        
        
        JR.put(this, :readyForExplosion, false)
    nil
  end


  def jinit(this, p_damageableBaseBehavior, p_destroyableBaseBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :damageableBaseBehavior, p_damageableBaseBehavior)
      JR.lset(f, :destroyableBaseBehavior, p_destroyableBaseBehavior)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :damageableBaseBehavior, JR.lget(f, :damageableBaseBehavior))
        JR.put(this, :destroyableBaseBehavior, JR.lget(f, :destroyableBaseBehavior))
    end)
  end

  def jnew(p_damageableBaseBehavior, p_destroyableBaseBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_damageableBaseBehavior, p_destroyableBaseBehavior)
    this
  end


  def jm_getDamageableBaseBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :damageableBaseBehavior)})
    end)
  end


  def jm_getDestroyableBaseBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :destroyableBaseBehavior)})
    end)
  end


  def jm_isReadyForExplosion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :readyForExplosion)})
    end)
  end


  def jm_setReadyForExplosion(this, p_readyForExplosion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :readyForExplosion, p_readyForExplosion)
        JR.put(this, :readyForExplosion, JR.lget(f, :readyForExplosion))
    end)
  end
end


