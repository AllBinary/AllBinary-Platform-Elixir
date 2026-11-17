# Generated Code Do Not Modify
# package org.allbinary.game.configuration.feature

defmodule MultiPlayerGameFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MultiPlayerGameFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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
        throw({:jreturn, MultiPlayerGameFeatureFactory.jstatic_instance()})
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


  def jm_addCommands(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        JR.lset(f, :canvas, JR.lget(f, :anyType))
        JR.call(JR.lget(f, :canvas), :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :QUIT_COMMAND)])
    end)
  end
end


