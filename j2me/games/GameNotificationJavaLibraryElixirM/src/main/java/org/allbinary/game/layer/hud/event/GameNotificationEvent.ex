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
# package org.allbinary.game.layer.hud.event

defmodule GameNotificationEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :string, nil)
    JR.put(this, :seconds, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :removeable, nil)
        JR.put(this, :string, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :BLACK))
        
    nil
  end


  def jinit(this, p_anyType, p_string, p_seconds, p_basicColor, p_permanent) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :string, p_string)
      JR.lset(f, :seconds, p_seconds)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :permanent, p_permanent)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        GameNotificationEvent.jinitfields(this)
        JR.call(this, :jm_setString, [JR.lget(f, :string)])
        JR.put(this, :seconds, JR.lget(f, :seconds))
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
        JR.put(this, :removeable, JR.lget(f, :permanent))
    end)
  end

  def jnew(p_anyType, p_string, p_seconds, p_basicColor, p_permanent) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType, p_string, p_seconds, p_basicColor, p_permanent)
    this
  end


  def jm_getString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :string)})
    end)
  end


  def jm_getSeconds(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :seconds)})
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColor)})
    end)
  end


  def jm_getPermanent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :removeable)})
    end)
  end


  def jm_setString(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        JR.put(this, :string, JR.lget(f, :string))
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end
end


