# Generated Code Do Not Modify
# package org.allbinary.graphics

defmodule OpenGLBitmapFactory do
  def jsuper(), do: PlatformBitmapBaseFactory
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OpenGLBitmapFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ARGB_8888, nil)
        JR.put(this, :ARGB_8888, OpenGLBitmapConfig.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)))
    nil
  end

  def jinit(this) do
    PlatformBitmapBaseFactory.jinit(this)
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
        throw({:jreturn, OpenGLBitmapFactory.jstatic_instance()})
    end)
  end


  def jm_createBitmap(this, p_width, p_height, p_config) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :config, p_config)
        throw({:jreturn, OpenGLBitmap.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT))})
    end)
  end


  def jm_decodeStream(this, p_inputStream) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
        throw({:jreturn, OpenGLBitmap.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT))})
    end)
  end


  def jm_createBitmap(this, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
        throw({:jreturn, OpenGLBitmap.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT))})
    end)
  end
end


