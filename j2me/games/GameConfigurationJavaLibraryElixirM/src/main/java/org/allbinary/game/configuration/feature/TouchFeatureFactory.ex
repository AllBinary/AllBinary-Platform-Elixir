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
# package org.allbinary.game.configuration.feature

defmodule TouchFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TouchFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :TOUCH_ENABLED, nil)
    JR.put(this, :SHOW_SCREEN_BUTTONS, nil)
    JR.put(this, :AUTO_HIDE_SHOW_SCREEN_BUTTONS, nil)
    JR.put(this, :HIDE_SCREEN_BUTTONS, nil)
        JR.put(this, :TOUCH_ENABLED, TouchFeature.jnew("Touch Enabled"))
        JR.put(this, :SHOW_SCREEN_BUTTONS, TouchFeature.jnew("Show"))
        JR.put(this, :AUTO_HIDE_SHOW_SCREEN_BUTTONS, TouchFeature.jnew("Auto Hide (One Level)"))
        JR.put(this, :HIDE_SCREEN_BUTTONS, TouchFeature.jnew("Hide"))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TouchFeatureFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


