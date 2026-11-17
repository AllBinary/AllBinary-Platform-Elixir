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

defmodule IntermissionFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> IntermissionFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :START_LEVEL_INTERMISSION_GAME_STATE, nil)
    JR.put(this, :WAIT_LEVEL_INTERMISSION_GAME_STATE, nil)
    JR.put(this, :SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE, nil)
    JR.put(this, :SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE, nil)
        JR.put(this, :START_LEVEL_INTERMISSION_GAME_STATE, JR.call(GameStateFactory.jm_getInstance(), :jm_createGameState, ["START_LEVEL_INTERMISSION_GAME_STATE"]))
        JR.put(this, :WAIT_LEVEL_INTERMISSION_GAME_STATE, JR.call(GameStateFactory.jm_getInstance(), :jm_createGameState, ["WAIT_LEVEL_INTERMISSION_GAME_STATE"]))
        JR.put(this, :SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE, JR.call(GameStateFactory.jm_getInstance(), :jm_createGameState, ["SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"]))
        JR.put(this, :SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE, JR.call(GameStateFactory.jm_getInstance(), :jm_createGameState, ["SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"]))
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
        throw({:jreturn, IntermissionFactory.jstatic_instance()})
    end)
  end
end


