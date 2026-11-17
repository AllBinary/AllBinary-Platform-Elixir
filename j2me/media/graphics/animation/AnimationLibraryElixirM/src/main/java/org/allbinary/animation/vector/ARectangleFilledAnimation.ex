# Generated Code Do Not Modify
# package org.allbinary.animation.vector

defmodule ARectangleFilledAnimation do
  def jsuper(), do: RectangleFilledAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
        JR.put(this, :x, 0)
        JR.put(this, :y, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        RectangleFilledAnimation.jinit(this, 0, 0, JR.get(BasicColorFactory.jm_getInstance(), :BLACK))
        ARectangleFilledAnimation.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_paintXY(this, p_graphics, p_unusedX, p_unusedY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :unusedX, p_unusedX)
      JR.lset(f, :unusedY, p_unusedY)
        RectangleFilledAnimation.jm_paintXY(this, JR.lget(f, :graphics), JR.get(this, :x), JR.get(this, :y))
    end)
  end
end


