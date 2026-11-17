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

defmodule BasicHighScoresGameInfoFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> BasicHighScoresGameInfoFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :MULTI_PLAYER_SERVER, nil)
    JR.put(this, :SINGLE_PLAYER_SERVER, nil)
        JR.put(this, :MULTI_PLAYER_SERVER, GameInfo.jnew(JR.get(GameTypeFactory.jm_getInstance(), :MULTI_PLAYER), GameMode.jstatic_SERVER(), JR.get(PlayerTypesFactory.jm_getInstance(), :PLAYER_TYPE_ONE), 0, 0))
        JR.put(this, :SINGLE_PLAYER_SERVER, GameInfo.jnew(JR.get(GameTypeFactory.jm_getInstance(), :SINGLE_PLAYER), GameMode.jstatic_SERVER(), JR.get(PlayerTypesFactory.jm_getInstance(), :PLAYER_TYPE_ONE), 0, 0))
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
        throw({:jreturn, BasicHighScoresGameInfoFactory.jstatic_SINGLETON()})
    end)
  end
end


