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
# package org.allbinary.game.displayable

defmodule GameLevelDisplayChangeEventListenersFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameLevelDisplayChangeEventListenersFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
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
        throw({:jreturn, GameLevelDisplayChangeEventListenersFactory.jstatic_instance()})
    end)
  end


  def jm_add(this, p_displayChangeEventListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayChangeEventListener, p_displayChangeEventListener)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :displayChangeEventListener)])
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_addListenerInterface, [JR.lget(f, :displayChangeEventListener)])
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :displayChangeEventHandler, DisplayChangeEventHandler.jm_getInstance())
        JR.lset(f, :displayChangeEventListener, nil)
        JR.lset(f, :index, JR.call(JR.get(this, :list), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :displayChangeEventListener, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :displayChangeEventHandler), :jm_removeListener, [JR.lget(f, :displayChangeEventListener)])
        end)
        JR.call(JR.get(this, :list), :jm_clear, [])
    end)
  end
end


