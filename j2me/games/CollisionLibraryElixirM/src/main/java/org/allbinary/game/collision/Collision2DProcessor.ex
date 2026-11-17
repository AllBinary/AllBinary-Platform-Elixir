# Generated Code Do Not Modify
# package org.allbinary.game.collision

defmodule Collision2DProcessor do
  def jsuper(), do: CollisionProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    CollisionProcessor.jinit(this)
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
        if ((((JR.call(JR.lget(f, :myLayer2), :jm_getXP, []) >= JR.call(JR.lget(f, :myLayer), :jm_getX2, [])) || (JR.call(JR.lget(f, :myLayer2), :jm_getYP, []) >= JR.call(JR.lget(f, :myLayer), :jm_getY2, []))) || (JR.call(JR.lget(f, :myLayer2), :jm_getX2, []) <= JR.call(JR.lget(f, :myLayer), :jm_getXP, []))) || (JR.call(JR.lget(f, :myLayer2), :jm_getY2, []) <= JR.call(JR.lget(f, :myLayer), :jm_getYP, []))) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
    end)
  end
end


