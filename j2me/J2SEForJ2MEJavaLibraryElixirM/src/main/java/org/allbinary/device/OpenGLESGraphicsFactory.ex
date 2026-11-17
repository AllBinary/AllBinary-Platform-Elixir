# Generated Code Do Not Modify
# package org.allbinary.device

defmodule OpenGLESGraphicsFactory do
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


  def jm_getOpenGLESGraphicsInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, OpenGLESNullGraphicsFactory.jm_getInstance()})
    end)
  end
end


