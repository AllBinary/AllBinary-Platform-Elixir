# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.shader

defmodule OpenGLObject3dProcessor do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
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


  def jm_process(this, p_gl, p_object3d) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :object3d, p_object3d)
        nil
    end)
  end


  def jm_process(this, p_gl, p_object3d, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :object3d, p_object3d)
      JR.lset(f, :index, p_index)
        nil
    end)
  end
end


