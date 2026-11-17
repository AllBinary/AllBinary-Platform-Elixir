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
# package org.allbinary.game.configuration.persistance

defmodule GamePersistanceSingleton do
  def jsuper(), do: KeyValuePersistance
def jstatic_GAME_PERSISTANCE(), do: JR.static_get(__MODULE__, :GAME_PERSISTANCE, fn -> GamePersistanceSingleton.jnew() end)
  def jstatic_set_GAME_PERSISTANCE(value), do: JR.static_put(__MODULE__, :GAME_PERSISTANCE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GamePersistanceSingleton.jstatic_GAME_PERSISTANCE()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        KeyValuePersistance.jinit(this, JR.get(GamePersistanceStrings.jm_getInstance(), :SAVED_GAME_RECORD_ID))
        GamePersistanceSingleton.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


