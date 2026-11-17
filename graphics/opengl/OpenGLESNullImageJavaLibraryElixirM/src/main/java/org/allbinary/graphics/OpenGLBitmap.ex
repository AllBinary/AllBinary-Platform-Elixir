# Generated Code Do Not Modify
# package org.allbinary.graphics

defmodule OpenGLBitmap do
  def jsuper(), do: PlatformBitmapBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :bitmap, nil)
        
    nil
  end


  def jinit(this, p_bitmap) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :bitmap, p_bitmap)
      PlatformBitmapBase.jinit(this)
      jinitfields(this)
        JR.put(this, :bitmap, JR.lget(f, :bitmap))
    end)
  end

  def jnew(p_bitmap) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_bitmap)
    this
  end


  def jm_getPixels(this, p_pixels, p_offset, p_stride, p_x, p_y, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pixels, p_pixels)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        nil
    end)
  end


  def jm_setPixels(this, p_pixels, p_offset, p_stride, p_x, p_y, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pixels, p_pixels)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        nil
    end)
  end


  def jm_recycle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


