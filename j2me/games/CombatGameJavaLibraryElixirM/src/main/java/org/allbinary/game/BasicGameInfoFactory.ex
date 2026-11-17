# Generated Code Do Not Modify
# package org.allbinary.game

defmodule BasicGameInfoFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> BasicGameInfoFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :currentReleaseIndex, 0)
    JR.put(this, :currentDestroyIndex, 0)
    JR.put(this, :total, 0)
        JR.put(this, :currentReleaseIndex, 0)
        JR.put(this, :currentDestroyIndex, 0)
        JR.put(this, :total, 0)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, BasicGameInfoFactory.jstatic_SINGLETON()})
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


  def jm_init(this, p_total) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :total, p_total)
        JR.put(this, :currentReleaseIndex, 0)
        JR.put(this, :currentDestroyIndex, 0)
        JR.put(this, :total, JR.lget(f, :total))
    end)
  end


  def jm_isPeaked(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :currentDestroyIndex) >= JR.get(this, :total)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_howManyLeft(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int32(JR.get(this, :total) - JR.get(this, :currentDestroyIndex))})
    end)
  end
end


