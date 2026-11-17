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

defmodule GameInfoData do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameInfoData.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :GAME_TYPE, nil)
    JR.put(this, :GAME_MODE, nil)
    JR.put(this, :PLAYER_TYPE, nil)
    JR.put(this, :HIGHEST_LEVEL, nil)
    JR.put(this, :CURRENT_LEVEL, nil)
    JR.put(this, :SOFTWARE_INFORMATION, nil)
        JR.put(this, :GAME_TYPE, "GAME_TYPE")
        JR.put(this, :GAME_MODE, "GAME_MODE")
        JR.put(this, :PLAYER_TYPE, "PLAYER_TYPE")
        JR.put(this, :HIGHEST_LEVEL, "HIGHEST_LEVEL")
        JR.put(this, :CURRENT_LEVEL, "CURRENT_LEVEL")
        JR.put(this, :SOFTWARE_INFORMATION, "SOFTWARE_INFORMATION")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInfoData.jstatic_instance()})
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


