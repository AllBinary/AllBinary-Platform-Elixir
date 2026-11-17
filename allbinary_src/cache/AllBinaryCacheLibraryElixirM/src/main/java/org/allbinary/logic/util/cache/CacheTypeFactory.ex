# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

defmodule CacheTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CacheTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NO_CACHE, nil)
    JR.put(this, :CACHE, nil)
    JR.put(this, :SET, nil)
    JR.put(this, :CACHE_VECTOR, nil)
        JR.put(this, :NO_CACHE, CacheType.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)))
        JR.put(this, :CACHE, CacheType.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)))
        JR.put(this, :SET, CacheType.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), "Set"))
        JR.put(this, :CACHE_VECTOR, CacheType.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)))
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
        throw({:jreturn, CacheTypeFactory.jstatic_instance()})
    end)
  end
end


