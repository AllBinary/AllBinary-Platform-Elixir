# Generated Code Do Not Modify
# package org.allbinary.game.collision

defmodule CollisionProcessor do
  def jsuper(), do: JObject

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


  def jm_isCollision(this, p_myLayer, p_myLayer2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :myLayer, p_myLayer)
      JR.lset(f, :myLayer2, p_myLayer2)
        throw({:jreturn, false})
    end)
  end
end


