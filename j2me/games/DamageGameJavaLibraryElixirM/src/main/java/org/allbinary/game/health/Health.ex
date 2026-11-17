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
# package org.allbinary.game.health

defmodule Health do
  def jsuper(), do: JObject
def jstatic_NULL_HEALTH(), do: JR.static_get(__MODULE__, :NULL_HEALTH, fn -> Health.jnew(0) end)
  def jstatic_set_NULL_HEALTH(value), do: JR.static_put(__MODULE__, :NULL_HEALTH, value)
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "Health Resource" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)
def jstatic_HEALTH_LABEL(), do: JR.static_get(__MODULE__, :HEALTH_LABEL, fn -> "Health: " end)
  def jstatic_set_HEALTH_LABEL(value), do: JR.static_put(__MODULE__, :HEALTH_LABEL, value)
def jstatic_MAX_HEALTH_LABEL(), do: JR.static_get(__MODULE__, :MAX_HEALTH_LABEL, fn -> " Max: " end)
  def jstatic_set_MAX_HEALTH_LABEL(value), do: JR.static_put(__MODULE__, :MAX_HEALTH_LABEL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :health, 0)
    JR.put(this, :maxHealth, 0)
    JR.put(this, :healthListenerInterface, nil)
        JR.put(this, :health, 0)
        JR.put(this, :maxHealth, 0)
        JR.put(this, :healthListenerInterface, NullHealthListener.jstatic_NULL_HEALTH_LISTENER())
    nil
  end


  def jinit(this, p_maxHealth) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :maxHealth, p_maxHealth)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setMaxHealth, [JR.lget(f, :maxHealth)])
        JR.call(this, :jm_setHealth, [JR.lget(f, :maxHealth)])
    end)
  end

  def jnew(p_maxHealth) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_maxHealth)
    this
  end


  def jm_heal(this, p_ahealth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ahealth, p_ahealth)
        JR.lset(f, :newHealth, JR.int32(JR.call(this, :jm_getHealth, []) + JR.lget(f, :ahealth)))
        if (JR.lget(f, :newHealth) > JR.call(this, :jm_getMaxHealth, [])) do
            JR.call(this, :jm_setHealth, [JR.call(this, :jm_getMaxHealth, [])])
        else
            JR.call(this, :jm_setHealth, [JR.lget(f, :newHealth)])
        end
    end)
  end


  def jm_healMax(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setHealth, [JR.call(this, :jm_getMaxHealth, [])])
    end)
  end


  def jm_isDamaged(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getHealth, []) != JR.call(this, :jm_getMaxHealth, [])) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_damage(this, p_ahealth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ahealth, p_ahealth)
        if (JR.lget(f, :ahealth) < 0) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["******* Trying to heal when damaging. Damage: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :ahealth)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_toString, [])])
            ForcedLogUtil.jm_log(JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this)
            throw({:jreturn, nil})
        end
        JR.lset(f, :health, JR.int32(JR.call(this, :jm_getHealth, []) - JR.lget(f, :ahealth)))
        JR.call(this, :jm_setHealth, [JR.lget(f, :health)])
    end)
  end


  def jm_isAlive(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getHealth, []) <= 0) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end


  def jm_getMaxHealth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxHealth)})
    end)
  end


  def jm_setMaxHealth(this, p_maxHealth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxHealth, p_maxHealth)
        JR.put(this, :maxHealth, JR.lget(f, :maxHealth))
    end)
  end


  def jm_setHealth(this, p_health) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :health, p_health)
        if (JR.lget(f, :health) > JR.call(this, :jm_getMaxHealth, [])) do
            JR.put(this, :health, JR.call(this, :jm_getMaxHealth, []))
        else
            if (JR.lget(f, :health) < 0) do
            JR.put(this, :health, 0)
        else
            JR.put(this, :health, JR.lget(f, :health))
        end
        end
        if (JR.get(this, :healthListenerInterface) != nil) do
            JR.call(JR.get(this, :healthListenerInterface), :jm_onHealthChange, [])
        end
    end)
  end


  def jm_getHealth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :health)})
    end)
  end


  def jm_addListener(this, p_healthGraphic) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :healthGraphic, p_healthGraphic)
        JR.put(this, :healthListenerInterface, JR.lget(f, :healthGraphic))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [Health.jstatic_HEALTH_LABEL()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :health)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [Health.jstatic_MAX_HEALTH_LABEL()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :maxHealth)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


