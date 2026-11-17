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
# package org.allbinary.game.init

defmodule BasicBuildGameInitializerFactory do
  def jsuper(), do: JObject
def jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(), do: JR.static_get(__MODULE__, :NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, fn -> BasicBuildGameInitializerFactory.jnew() end)
  def jstatic_set_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(value), do: JR.static_put(__MODULE__, :NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, value)

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


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION()})
    end)
  end
end


