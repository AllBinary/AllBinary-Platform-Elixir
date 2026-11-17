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
# package org.allbinary.game.configuration.event

defmodule ChangedGameFeatureListener do
  def jsuper(), do: BaseChangedGameFeatureListener
def jstatic_gameFeatureListener(), do: JR.static_get(__MODULE__, :gameFeatureListener, fn -> ChangedGameFeatureListener.jnew() end)
  def jstatic_set_gameFeatureListener(value), do: JR.static_put(__MODULE__, :gameFeatureListener, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    BaseChangedGameFeatureListener.jinit(this)
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
        throw({:jreturn, ChangedGameFeatureListener.jstatic_gameFeatureListener()})
    end)
  end


  def jm_isChangedGameConfiguration(this, p_gameConfiguration) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameConfiguration, p_gameConfiguration)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :gameConfiguration)])})
    end)
  end
end


