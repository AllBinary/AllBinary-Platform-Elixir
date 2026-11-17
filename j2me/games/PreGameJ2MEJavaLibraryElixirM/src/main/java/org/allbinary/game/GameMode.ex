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
# package org.allbinary.game

defmodule GameMode do
  def jsuper(), do: JObject
def jstatic_NONE(), do: JR.static_get(__MODULE__, :NONE, fn -> GameMode.jnew(JR.get(StringUtil.jm_getInstance(), :NULL_STRING)) end)
  def jstatic_set_NONE(value), do: JR.static_put(__MODULE__, :NONE, value)
def jstatic_SERVER(), do: JR.static_get(__MODULE__, :SERVER, fn -> GameMode.jnew("Server") end)
  def jstatic_set_SERVER(value), do: JR.static_put(__MODULE__, :SERVER, value)
def jstatic_CLIENT(), do: JR.static_get(__MODULE__, :CLIENT, fn -> GameMode.jnew("Client") end)
  def jstatic_set_CLIENT(value), do: JR.static_put(__MODULE__, :CLIENT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end


  def jinit(this, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setName, [JR.lget(f, :name)])
    end)
  end

  def jnew(p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name)
    this
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


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getName, [])})
    end)
  end
end


