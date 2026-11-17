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
# package org.allbinary.game.input

defmodule TextNotificationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TextNotificationUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :TWO, nil)
    JR.put(this, :FALSE, nil)
    JR.put(this, :gameNotificationEventHandler, nil)
        JR.put(this, :TWO, JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [2]))
        JR.put(this, :FALSE, JR.get(BooleanFactory.jm_getInstance(), :FALSE))
        JR.put(this, :gameNotificationEventHandler, GameNotificationEventHandler.jm_getInstance())
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
        throw({:jreturn, TextNotificationUtil.jstatic_instance()})
    end)
  end


  def jm_fireError(this, p_message) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :message, p_message)
        JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [ErrorSound.jm_getInstance()])
        JR.call(this, :jm_fire, [JR.lget(f, :message)])
    end)
  end


  def jm_fireNew(this, p_message) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :message, p_message)
        JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [SelectSound.jm_getInstance()])
        JR.call(this, :jm_fire, [JR.lget(f, :message)])
    end)
  end


  def jm_fireSuccess(this, p_message) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :message, p_message)
        JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [SelectSound.jm_getInstance()])
        JR.call(this, :jm_fire, [JR.lget(f, :message)])
    end)
  end


  def jm_fire(this, p_message) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :message, p_message)
        JR.lset(f, :gameNotificationEvent, GameNotificationEvent.jnew(this, JR.lget(f, :message), JR.get(this, :TWO), JR.get(BasicColorFactory.jm_getInstance(), :RED), JR.get(this, :FALSE)))
        JR.call(JR.get(this, :gameNotificationEventHandler), :jm_fireEvent, [JR.lget(f, :gameNotificationEvent)])
    end)
  end
end


