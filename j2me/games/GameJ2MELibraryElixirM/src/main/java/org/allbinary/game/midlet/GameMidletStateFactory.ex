# Generated Code Do Not Modify
# package org.allbinary.game.midlet

defmodule GameMidletStateFactory do
  def jsuper(), do: JObject
def jstatic_INSTANCE(), do: JR.static_get(__MODULE__, :INSTANCE, fn -> GameMidletStateFactory.jnew() end)
  def jstatic_set_INSTANCE(value), do: JR.static_put(__MODULE__, :INSTANCE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :currentGameState, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :currentGameState, JR.get(GameStateFactory.jm_getInstance(), :NO_GAME_STATE))
    nil
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameMidletStateFactory.jstatic_INSTANCE()})
    end)
  end


  def jm_getCurrentGameState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentGameState)})
    end)
  end


  def jm_setCurrentGameState(this, p_currentGameState) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentGameState, p_currentGameState)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :CURRENT)]), :jm_append, [" GameState: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :currentGameState)])]), :jm_toString, []), this, "setCurrentGameState"])
        JR.put(this, :currentGameState, JR.lget(f, :currentGameState))
    end)
  end
end


