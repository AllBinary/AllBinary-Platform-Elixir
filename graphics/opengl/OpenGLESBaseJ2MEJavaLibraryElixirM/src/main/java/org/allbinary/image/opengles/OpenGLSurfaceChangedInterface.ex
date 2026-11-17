# Generated Code Do Not Modify
# package org.allbinary.image.opengles

defmodule OpenGLSurfaceChangedInterface do
  def jsuper(), do: JObject


  def jm_set(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      throw({:jexception, JR.exception("AbstractMethodError", "set")})
    end)
  end
end


