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
# package org.allbinary.game.combat.weapon

defmodule WeaponProperties do
  def jsuper(), do: SimpleWeaponProperties
def jstatic_NULL_WEAPON_PROPERTIES(), do: JR.static_get(__MODULE__, :NULL_WEAPON_PROPERTIES, fn -> WeaponProperties.jnew(0, 0, 0, 0, JR.int16(0)) end)
  def jstatic_set_NULL_WEAPON_PROPERTIES(value), do: JR.static_put(__MODULE__, :NULL_WEAPON_PROPERTIES, value)
def jstatic_messageSent(), do: JR.static_get(__MODULE__, :messageSent, fn -> false end)
  def jstatic_set_messageSent(value), do: JR.static_put(__MODULE__, :messageSent, value)
def jstatic_DAMAGE(), do: JR.static_get(__MODULE__, :DAMAGE, fn -> "Damage: " end)
  def jstatic_set_DAMAGE(value), do: JR.static_put(__MODULE__, :DAMAGE, value)
def jstatic_RANGE(), do: JR.static_get(__MODULE__, :RANGE, fn -> "Range: " end)
  def jstatic_set_RANGE(value), do: JR.static_put(__MODULE__, :RANGE, value)
def jstatic_RELOAD(), do: JR.static_get(__MODULE__, :RELOAD, fn -> "Reload: " end)
  def jstatic_set_RELOAD(value), do: JR.static_put(__MODULE__, :RELOAD, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :reloadTime, 0)
    JR.put(this, :targetingTime, 0)
    JR.put(this, :speed, nil)
    JR.put(this, :MAX, 0)
    JR.put(this, :ZERO, 0)
        JR.put(this, :reloadTime, 0)
        JR.put(this, :targetingTime, 0)
        JR.put(this, :speed, BasicDecimal.jstatic_ZERO_BIGDECIMAL())
        JR.put(this, :MAX, 10240)
        JR.put(this, :ZERO, 0)
    nil
  end


  def jinit(this, p_reloadTime, p_targetingTime, p_speed, p_damage, p_dissipation) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :reloadTime, p_reloadTime)
      JR.lset(f, :targetingTime, p_targetingTime)
      JR.lset(f, :speed, p_speed)
      JR.lset(f, :damage, p_damage)
      JR.lset(f, :dissipation, p_dissipation)
      SimpleWeaponProperties.jinit(this)
      jinitfields(this)
        if (((JR.lget(f, :speed) < JR.get(this, :MAX)) && (JR.lget(f, :speed) != 0)) && !WeaponProperties.jstatic_messageSent()) do
            JR.lset(f, :MESSAGE, "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ")
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :MESSAGE)]), :jm_appendlong, [JR.lget(f, :speed)]), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR))
            WeaponProperties.jstatic_set_messageSent(true)
        end
        JR.call(this, :jm_setReloadTime, [JR.lget(f, :reloadTime)])
        JR.call(this, :jm_setTargetingTime, [JR.lget(f, :targetingTime)])
        JR.call(this, :jm_setDamage, [JR.lget(f, :damage)])
        JR.call(this, :jm_setDissipation, [JR.lget(f, :dissipation)])
        JR.call(this, :jm_setSpeed, [BasicDecimal.jnew(JR.lget(f, :speed))])
        if (JR.lget(f, :dissipation) != JR.get(this, :ZERO)) do
            JR.lset(f, :unscaledDamage, (JR.call(JR.get(this, :speed), :jm_getUnscaled, []) * JR.lget(f, :damage)))
            JR.lset(f, :scaledDissipation, (JR.lget(f, :dissipation) * JR.call(JR.get(this, :speed), :jm_getScaledFactorValue, [])))
            JR.lset(f, :value, (div(JR.lget(f, :unscaledDamage), JR.lget(f, :scaledDissipation))))
            JR.call(this, :jm_setRange, [div(JR.int32((JR.int64(JR.lget(f, :value) * 9))), 10)])
        end
    end)
  end

  def jnew(p_reloadTime, p_targetingTime, p_speed, p_damage, p_dissipation) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_reloadTime, p_targetingTime, p_speed, p_damage, p_dissipation)
    this
  end


  def jm_setReloadTime(this, p_reloadTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :reloadTime, p_reloadTime)
        JR.put(this, :reloadTime, JR.lget(f, :reloadTime))
    end)
  end


  def jm_getReloadTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :reloadTime)})
    end)
  end


  def jm_setTargetingTime(this, p_targetingTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :targetingTime, p_targetingTime)
        JR.put(this, :targetingTime, JR.lget(f, :targetingTime))
    end)
  end


  def jm_getTargetingTime(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :targetingTime)})
    end)
  end


  def jm_getSpeed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :speed)})
    end)
  end


  def jm_setSpeed(this, p_speed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :speed, p_speed)
        JR.put(this, :speed, JR.lget(f, :speed))
    end)
  end


  def jm_getDamageI(this, p_range) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :range, p_range)
        throw({:jreturn, (JR.call(this, :jm_getDamage, []) - ((((JR.call(this, :jm_getDissipation, []) * JR.lget(f, :range))) / JR.call(JR.get(this, :speed), :jm_getScaled, []))))})
    end)
  end


  def jm_toStringArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, 0)
        JR.lset(f, :stringArray, JR.anew(3, nil))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.aset(JR.lget(f, :stringArray), JR.lpostinc(f, :index, 1), JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [WeaponProperties.jstatic_DAMAGE()]), :jm_appendint, [JR.int32(JR.call(this, :jm_getDamage, []))]), :jm_toString, []))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.aset(JR.lget(f, :stringArray), JR.lpostinc(f, :index, 1), JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [WeaponProperties.jstatic_RANGE()]), :jm_appendint, [JR.int32(JR.call(this, :jm_getRange, []))]), :jm_toString, []))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.aset(JR.lget(f, :stringArray), JR.lpostinc(f, :index, 1), JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [WeaponProperties.jstatic_RELOAD()]), :jm_appendlong, [JR.call(this, :jm_getReloadTime, [])]), :jm_toString, []))
        throw({:jreturn, JR.lget(f, :stringArray)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [WeaponProperties.jstatic_DAMAGE()]), :jm_appendint, [JR.int32(JR.call(this, :jm_getDamage, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [WeaponProperties.jstatic_RANGE()]), :jm_appendint, [JR.int32(JR.call(this, :jm_getRange, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [WeaponProperties.jstatic_RELOAD()]), :jm_appendlong, [JR.call(this, :jm_getReloadTime, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


