# Generated Code Do Not Modify
# package org.allbinary.graphics.form

defmodule ScreenInfo do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ScreenInfo.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SMALL_WIDTH, 0)
    JR.put(this, :SMALL_HEIGHT, 0)
    JR.put(this, :MEDIUM_WIDTH, 0)
    JR.put(this, :MEDIUM_HEIGHT, 0)
        JR.put(this, :SMALL_WIDTH, 320)
        JR.put(this, :SMALL_HEIGHT, 240)
        JR.put(this, :MEDIUM_WIDTH, 800)
        JR.put(this, :MEDIUM_HEIGHT, 600)
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
        throw({:jreturn, ScreenInfo.jstatic_instance()})
    end)
  end
end


