# Generated Code Do Not Modify
# package org.allbinary.animation

defmodule NullIndexedAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        NullIndexedAnimation.jinitfields(this)
    end)
  end

  def jnew(p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationBehavior)
    this
  end


  def jm_getAnimationSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


