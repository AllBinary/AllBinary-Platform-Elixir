# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

defmodule AnalogLocationInputFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AnalogLocationInputFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AnalogLocationInputFactory.jstatic_instance()})
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


  def jm_addPlayer(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        JR.lset(f, :analogLocationInput, AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT())
        if (JR.lget(f, :playerInputId) < JR.call(JR.get(this, :list), :jm_size, [])) do
            JR.lset(f, :analogLocationInput, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :playerInputId)]))
        end
        if (JR.lget(f, :analogLocationInput) == AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT()) do
            JR.lset(f, :analogLocationInput, AnalogLocationInput.jnew(JR.lget(f, :playerInputId)))
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :analogLocationInput)])
        end
    end)
  end


  def jm_getInstanceForPlayer(this, p_playerInputId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :playerInputId)])})
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :list)})
    end)
  end
end


