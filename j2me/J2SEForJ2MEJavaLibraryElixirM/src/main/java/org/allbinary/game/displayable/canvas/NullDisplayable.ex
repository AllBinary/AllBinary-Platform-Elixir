# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

#J2SEForJ2ME
defmodule NullDisplayable do
  def jsuper(), do: Canvas
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> NullDisplayable.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :baseGameStatistics, nil)
        JR.put(this, :baseGameStatistics, GameStatisticsFactory.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NullDisplayable.jstatic_SINGLETON()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Canvas.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :baseGameStatistics), :jm_nextRefresh, [])
    end)
  end
end


