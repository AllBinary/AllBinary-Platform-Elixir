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
# package org.allbinary.game.configuration

defmodule GameConfiguration do
  def jsuper(), do: JObject
def jstatic_MIN_VALUE(), do: JR.static_get(__MODULE__, :MIN_VALUE, fn -> J.Integer.jstatic_MIN_VALUE() end)
  def jstatic_set_MIN_VALUE(value), do: JR.static_put(__MODULE__, :MIN_VALUE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :defaultValue, nil)
    JR.put(this, :value, nil)
    JR.put(this, :minValue, nil)
    JR.put(this, :maxValue, nil)
    JR.put(this, :modifiable, nil)
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :defaultValue, JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [0]))
        JR.put(this, :value, GameConfiguration.jstatic_MIN_VALUE())
        JR.put(this, :minValue, JR.get(this, :defaultValue))
        JR.put(this, :maxValue, JR.get(this, :defaultValue))
        JR.put(this, :modifiable, JR.get(BooleanFactory.jm_getInstance(), :TRUE))
    nil
  end


  def jinit(this, p_name, p_defaultValue, p_minValue, p_maxValue) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :defaultValue, p_defaultValue)
      JR.lset(f, :minValue, p_minValue)
      JR.lset(f, :maxValue, p_maxValue)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setName, [JR.lget(f, :name)])
        JR.call(this, :jm_setDefaultValue, [JR.lget(f, :defaultValue)])
        JR.put(this, :value, JR.call(this, :jm_getDefaultValue, []))
        JR.call(this, :jm_setMinValue, [JR.lget(f, :minValue)])
        JR.call(this, :jm_setMaxValue, [JR.lget(f, :maxValue)])
        JR.call(JR.call(GameConfigurationSingleton.jm_getInstance(), :jm_getHashtable, []), :jm_put, [JR.call(this, :jm_getName, []), this])
    end)
  end

  def jnew(p_name, p_defaultValue, p_minValue, p_maxValue) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_defaultValue, p_minValue, p_maxValue)
    this
  end


  def jm_setValue(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        if (JR.get(this, :value) != JR.lget(f, :value)) do
            JR.lset(f, :oldValue, JR.get(this, :value))
            JR.put(this, :value, JR.lget(f, :value))
            JR.call(GameFeatureEventHandler.jm_getInstance(), :jm_fireEvent, [GameFeatureEvent.jnew(this, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :name)]), :jm_append, [" value: from: "]), :jm_appendint, [JR.int32(JR.call(JR.lget(f, :oldValue), :jm_intValue, []))]), :jm_append, [" to "]), :jm_appendint, [JR.int32(JR.call(JR.get(this, :value), :jm_intValue, []))]), :jm_toString, []))])
        end
    end)
  end


  def jm_getValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end


  def jm_setMaxValue(this, p_maxValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxValue, p_maxValue)
        JR.put(this, :maxValue, JR.lget(f, :maxValue))
    end)
  end


  def jm_getMaxValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxValue)})
    end)
  end


  def jm_setMinValue(this, p_minValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :minValue, p_minValue)
        JR.put(this, :minValue, JR.lget(f, :minValue))
    end)
  end


  def jm_getMinValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :minValue)})
    end)
  end


  def jm_setName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_setDefaultValue(this, p_defaultValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :defaultValue, p_defaultValue)
        JR.put(this, :defaultValue, JR.lget(f, :defaultValue))
    end)
  end


  def jm_getDefaultValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :defaultValue)})
    end)
  end


  def jm_setDefault(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setValue, [JR.call(this, :jm_getDefaultValue, [])])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Name: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :name)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Min: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(this, :jm_getMinValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Max: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(this, :jm_getMaxValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Value: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(this, :jm_getValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Default: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.int32(JR.call(JR.call(this, :jm_getDefaultValue, []), :jm_intValue, []))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Modifiable: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.call(this, :jm_isModifiable, []), :jm_booleanValue, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_setModifiable(this, p_modifiable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :modifiable, p_modifiable)
        JR.put(this, :modifiable, JR.lget(f, :modifiable))
    end)
  end


  def jm_isModifiable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :modifiable)})
    end)
  end
end


