# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

defmodule PoolTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PoolTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :VECTOR_POOL, nil)
        JR.put(this, :VECTOR_POOL, PoolType.jnew(JR.get(CacheTypeFactory.jm_getInstance(), :NO_CACHE)))
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
        throw({:jreturn, PoolTypeFactory.jstatic_instance()})
    end)
  end
end


