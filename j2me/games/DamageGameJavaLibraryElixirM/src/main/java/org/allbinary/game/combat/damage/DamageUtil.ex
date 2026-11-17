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

defmodule DamageUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DamageUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :COLLIDE, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :COLLIDE, "collide")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DamageUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_process(this, p_damageableInterface, p_damageableInterface2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damageableInterface, p_damageableInterface)
      JR.lset(f, :damageableInterface2, p_damageableInterface2)
        JR.call(JR.lget(f, :damageableInterface), :jm_damage, [JR.call(JR.lget(f, :damageableInterface2), :jm_getDamage, [0]), 0])
    end)
  end


  def jm_debugDamage(this, p_collidableInterfaceCompositeInterface1, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableInterfaceCompositeInterface1, p_collidableInterfaceCompositeInterface1)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        JR.lset(f, :collidableDestroyableDamageableLayer, JR.lget(f, :collidableInterfaceCompositeInterface))
        JR.lset(f, :damage, JR.call(JR.lget(f, :collidableDestroyableDamageableLayer), :jm_getDamage, [0]))
        if (JR.lget(f, :damage) > 20000) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Collision "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :collidableInterfaceCompositeInterface1), :jm_toString, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" with: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :collidableInterfaceCompositeInterface), :jm_toString, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" damage: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :damage)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), JR.lget(f, :collidableInterfaceCompositeInterface1), JR.get(this, :COLLIDE)])
        end
    end)
  end
end


