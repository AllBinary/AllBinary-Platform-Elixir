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
# package org.allbinary.graphics

defmodule ScreenListenerHandler do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ScreenListenerHandler.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :screenListenerInterface, nil)
        JR.put(this, :screenListenerInterface, ScreenEmptyListener.jnew())
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
        throw({:jreturn, ScreenListenerHandler.jstatic_instance()})
    end)
  end


  def jm_setListener(this, p_screenListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :screenListenerInterface, p_screenListenerInterface)
        JR.put(this, :screenListenerInterface, JR.lget(f, :screenListenerInterface))
    end)
  end


  def jm_fireWithState(this, p_isFullScreen) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isFullScreen, p_isFullScreen)
        JR.call(JR.get(this, :screenListenerInterface), :jm_onFullScreen, [JR.lget(f, :isFullScreen)])
    end)
  end


  def jm_fire(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :screenListenerInterface), :jm_onFullScreenDisplay, [])
    end)
  end
end


