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
# package org.allbinary.logic.math

defmodule Orientation do
  def jsuper(), do: JObject
def jstatic_NONE(), do: JR.static_get(__MODULE__, :NONE, fn -> Orientation.jnew(0, 0, 0) end)
  def jstatic_set_NONE(value), do: JR.static_put(__MODULE__, :NONE, value)
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> Orientation.jnew(0, 0, 0) end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :yaw, nil)
    JR.put(this, :pitch, nil)
    JR.put(this, :roll, nil)
        JR.put(this, :yaw, BasicDecimal.jnew(0))
        JR.put(this, :pitch, BasicDecimal.jnew(0))
        JR.put(this, :roll, BasicDecimal.jnew(0))
    nil
  end


  def jm_getInstance(p_yaw, p_pitch, p_roll) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :yaw, p_yaw)
      JR.lset(f, :pitch, p_pitch)
      JR.lset(f, :roll, p_roll)
        JR.call(JR.get(Orientation.jstatic_SINGLETON(), :yaw), :jm_setint, [JR.lget(f, :yaw)])
        JR.call(JR.get(Orientation.jstatic_SINGLETON(), :pitch), :jm_setint, [JR.lget(f, :pitch)])
        JR.call(JR.get(Orientation.jstatic_SINGLETON(), :roll), :jm_setint, [JR.lget(f, :roll)])
        throw({:jreturn, Orientation.jstatic_SINGLETON()})
    end)
  end


  def jinit(this, p_yaw, p_pitch, p_roll) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :yaw, p_yaw)
      JR.lset(f, :pitch, p_pitch)
      JR.lset(f, :roll, p_roll)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :yaw), :jm_setint, [JR.lget(f, :yaw)])
        JR.call(JR.get(this, :pitch), :jm_setint, [JR.lget(f, :pitch)])
        JR.call(JR.get(this, :roll), :jm_setint, [JR.lget(f, :roll)])
    end)
  end

  def jnew(p_yaw, p_pitch, p_roll) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_yaw, p_pitch, p_roll)
    this
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Y: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :yaw), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" P: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :pitch), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" R: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :roll), :jm_toString, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


