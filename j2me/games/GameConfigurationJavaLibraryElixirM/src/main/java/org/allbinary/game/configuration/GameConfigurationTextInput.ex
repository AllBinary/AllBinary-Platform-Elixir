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

defmodule GameConfigurationTextInput do
  def jsuper(), do: JObject
def jstatic_hashtable(), do: JR.static_get(__MODULE__, :hashtable, fn -> JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []) end)
  def jstatic_set_hashtable(value), do: JR.static_put(__MODULE__, :hashtable, value)
def jstatic_SIMULATOR_IP(), do: JR.static_get(__MODULE__, :SIMULATOR_IP, fn -> GameConfigurationTextInput.jnew("IP: ", "192.168.1.3") end)
  def jstatic_set_SIMULATOR_IP(value), do: JR.static_put(__MODULE__, :SIMULATOR_IP, value)
def jstatic_SIMULATOR_PORT(), do: JR.static_get(__MODULE__, :SIMULATOR_PORT, fn -> GameConfigurationTextInput.jnew("Port: ", "8010") end)
  def jstatic_set_SIMULATOR_PORT(value), do: JR.static_put(__MODULE__, :SIMULATOR_PORT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :label, nil)
    JR.put(this, :text, nil)
        JR.put(this, :label, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :text, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_label, p_text) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
      JR.lset(f, :text, p_text)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setText, [JR.lget(f, :text)])
        JR.call(this, :jm_setLabel, [JR.lget(f, :label)])
        JR.call(GameConfigurationTextInput.jstatic_hashtable(), :jm_put, [JR.call(this, :jm_getLabel, []), this])
    end)
  end

  def jnew(p_label, p_text) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_label, p_text)
    this
  end


  def jm_update(p_textField) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :textField, p_textField)
        JR.lset(f, :anyType, JR.call(JR.lget(f, :textField), :jm_getLabel, []))
        JR.lset(f, :gameConfigurationTextInput, JR.call(GameConfigurationTextInput.jstatic_hashtable(), :jm_get, [JR.lget(f, :anyType)]))
        JR.call(JR.lget(f, :gameConfigurationTextInput), :jm_setText, [JR.call(JR.lget(f, :textField), :jm_getString, [])])
    end)
  end


  def jm_setText(this, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
        JR.put(this, :text, JR.lget(f, :text))
    end)
  end


  def jm_getText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :text)})
    end)
  end


  def jm_setLabel(this, p_label) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :label, p_label)
        JR.put(this, :label, JR.lget(f, :label))
    end)
  end


  def jm_getLabel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :label)})
    end)
  end


  def jm_getHashtable() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameConfigurationTextInput.jstatic_hashtable()})
    end)
  end
end


