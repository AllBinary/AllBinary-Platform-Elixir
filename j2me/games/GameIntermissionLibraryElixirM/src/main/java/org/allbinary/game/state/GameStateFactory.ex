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
# package org.allbinary.game.state

defmodule GameStateFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :index, 0)
    JR.put(this, :NO_GAME_STATE, nil)
    JR.put(this, :PLAYING_GAME_STATE, nil)
    JR.put(this, :SHOW_END_RESULT_GAME_STATE, nil)
    JR.put(this, :SHOW_HIGH_SCORE_GAME_STATE, nil)
        JR.put(this, :index, 0)
        JR.put(this, :NO_GAME_STATE, JR.call(this, :jm_createGameState, ["NO_GAME_STATE"]))
        JR.put(this, :PLAYING_GAME_STATE, JR.call(this, :jm_createGameState, ["PLAYING_GAME_STATE"]))
        JR.put(this, :SHOW_END_RESULT_GAME_STATE, JR.call(this, :jm_createGameState, ["SHOW_END_RESULT_GAME_STATE"]))
        JR.put(this, :SHOW_HIGH_SCORE_GAME_STATE, JR.call(this, :jm_createGameState, ["SHOW_HIGH_SCORE_GAME_STATE"]))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameStateFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameStateFactory.jstatic_set_instance(GameStateFactory.jnew())
        end
        throw({:jreturn, GameStateFactory.jstatic_instance()})
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


  def jm_createGameState(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        throw({:jreturn, GameState.jnew(JR.lget(f, :name), JR.postinc(this, :index, 1))})
    end)
  end
end


