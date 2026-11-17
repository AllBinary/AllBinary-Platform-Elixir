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

defmodule MainFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MainFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :FULL_SCREEN, nil)
    JR.put(this, :TITLE_BAR, nil)
    JR.put(this, :STATIC, nil)
    JR.put(this, :LOAD_ONDEMAND, nil)
    JR.put(this, :LOAD_ALL, nil)
        JR.put(this, :FULL_SCREEN, Feature.jnew("Full Screen"))
        JR.put(this, :TITLE_BAR, Feature.jnew("Title Bar"))
        JR.put(this, :STATIC, Feature.jnew("Static Dependent Feature"))
        JR.put(this, :LOAD_ONDEMAND, Feature.jnew("Load OnDemand"))
        JR.put(this, :LOAD_ALL, Feature.jnew("Load All"))
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
        throw({:jreturn, MainFeatureFactory.jstatic_instance()})
    end)
  end
end


