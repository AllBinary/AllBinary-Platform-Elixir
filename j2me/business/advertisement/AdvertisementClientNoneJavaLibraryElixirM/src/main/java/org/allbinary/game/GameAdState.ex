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

defmodule GameAdState do
  def jsuper(), do: GameAdStateBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_adConfiguration) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :adConfiguration, p_adConfiguration)
        GameAdStateBase.jinit(this, JR.lget(f, :adConfiguration))
        GameAdState.jinitfields(this)
        JR.call(VirtualKeyboardEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
    end)
  end

  def jnew(p_adConfiguration) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_adConfiguration)
    this
  end


  def jm_onVirtualKeyboardEvent(this, p_virtualKeyboardEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :virtualKeyboardEvent, p_virtualKeyboardEvent)
        nil
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        GameAdStateBase.jm_onEvent(this, JR.lget(f, :eventObject))
    end)
  end
end


