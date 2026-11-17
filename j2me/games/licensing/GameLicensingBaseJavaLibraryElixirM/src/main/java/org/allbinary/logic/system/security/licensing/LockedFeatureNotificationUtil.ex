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
# package org.allbinary.logic.system.security.licensing

defmodule LockedFeatureNotificationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LockedFeatureNotificationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameNotificationEvent, nil)
        JR.put(this, :gameNotificationEvent, GameNotificationEvent.jnew(this, JR.get(LicenseStrings.jm_getInstance(), :LOCKED), JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [3]), JR.get(BasicColorFactory.jm_getInstance(), :RED), JR.get(BooleanFactory.jm_getInstance(), :FALSE)))
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LockedFeatureNotificationUtil.jstatic_instance()})
    end)
  end


  def jm_fire(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [ErrorSound.jm_getInstance()])
        JR.call(GameNotificationEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :gameNotificationEvent)])
    end)
  end


  def jm_fireWithColor(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [ErrorSound.jm_getInstance()])
        JR.call(JR.get(this, :gameNotificationEvent), :jm_setBasicColorP, [JR.lget(f, :basicColor)])
        JR.call(GameNotificationEventHandler.jm_getInstance(), :jm_fireEvent, [JR.get(this, :gameNotificationEvent)])
    end)
  end
end


