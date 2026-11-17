# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.view

defmodule NullEmulatorView do
  def jsuper(), do: JObject
def jstatic_NULL_EMULATOR_VIEW(), do: JR.static_get(__MODULE__, :NULL_EMULATOR_VIEW, fn -> NullEmulatorView.jnew() end)
  def jstatic_set_NULL_EMULATOR_VIEW(value), do: JR.static_put(__MODULE__, :NULL_EMULATOR_VIEW, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_setMidlet(this, p_midlet) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midlet, p_midlet)
        nil
    end)
  end


  def jm_onEmulatorInitComplete(this, p_midletActivity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midletActivity, p_midletActivity)
        nil
    end)
  end


  def jm_onSetDisplayable(this, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayable, p_displayable)
        nil
    end)
  end
end


