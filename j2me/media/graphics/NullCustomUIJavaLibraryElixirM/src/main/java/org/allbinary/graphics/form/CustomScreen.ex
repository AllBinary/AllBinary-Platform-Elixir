# Generated Code Do Not Modify
# package org.allbinary.graphics.form

defmodule CustomScreen do
  def jsuper(), do: CustomDisplayable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    CustomDisplayable.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


