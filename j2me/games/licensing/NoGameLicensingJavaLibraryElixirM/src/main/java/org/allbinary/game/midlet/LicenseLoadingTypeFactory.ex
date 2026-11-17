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
# package org.allbinary.game.midlet

defmodule LicenseLoadingTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LicenseLoadingTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :INITIAL_LOADING, nil)
    JR.put(this, :GAME_START, nil)
    JR.put(this, :LOGIN, nil)
    JR.put(this, :OTHER, nil)
        JR.put(this, :INITIAL_LOADING, LicenseLoadingType.jnew("Initial Loading"))
        JR.put(this, :GAME_START, LicenseLoadingType.jnew("Game Start"))
        JR.put(this, :LOGIN, LicenseLoadingType.jnew("Login"))
        JR.put(this, :OTHER, LicenseLoadingType.jnew("Other/Usually The First Non Demo Level"))
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


  def jm_getIntance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LicenseLoadingTypeFactory.jstatic_instance()})
    end)
  end
end


