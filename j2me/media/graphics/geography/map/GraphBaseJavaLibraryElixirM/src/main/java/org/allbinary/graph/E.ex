# Generated Code Do Not Modify
# package org.allbinary.graph

defmodule E do
  def jsuper(), do: JObject
def jstatic_e(), do: JR.static_get(__MODULE__, :e, fn -> E.jnew() end)
  def jstatic_set_e(value), do: JR.static_put(__MODULE__, :e, value)

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


  def jm_newInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, E.jstatic_e()})
    end)
  end
end


