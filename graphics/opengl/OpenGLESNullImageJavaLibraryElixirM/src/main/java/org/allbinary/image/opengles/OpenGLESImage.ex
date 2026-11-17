#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.image.opengles

#OpenGLESNullImageJavaLibrary
defmodule OpenGLESImage do
  def jsuper(), do: Image
def jstatic_NULL_OPENGL_IMAGE(), do: JR.static_get(__MODULE__, :NULL_OPENGL_IMAGE, fn -> OpenGLESImage.jnew(NullImage.jstatic_NULL_IMAGE(), PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY(), PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY()) end)
  def jstatic_set_NULL_OPENGL_IMAGE(value), do: JR.static_put(__MODULE__, :NULL_OPENGL_IMAGE, value)
def jstatic_texture2dList(), do: JR.static_get(__MODULE__, :texture2dList, fn -> BasicArrayListD.jnew() end)
  def jstatic_set_texture2dList(value), do: JR.static_put(__MODULE__, :texture2dList, value)
def jstatic_TYPE(), do: JR.static_get(__MODULE__, :TYPE, fn -> 4 end)
  def jstatic_set_TYPE(value), do: JR.static_put(__MODULE__, :TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :textureFactory, nil)
    JR.put(this, :openGLBitmap, nil)
    JR.put(this, :openGLESImageProperties, nil)
    JR.put(this, :imageProcessor, nil)
    JR.put(this, :openGLESImageTranslate, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        JR.put(this, :openGLESImageProperties, OpenGLESImageProperties.jnew())
        JR.put(this, :imageProcessor, OpenGLESImageProcessor.jm_getInstance())
        JR.put(this, :openGLESImageTranslate, OpenGLESImageTranslate.jm_getInstance())
    nil
  end


  def jinit(this, p_image, p_bitmapFactory, p_textureFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :bitmapFactory, p_bitmapFactory)
      JR.lset(f, :textureFactory, p_textureFactory)
      Image.jinit(this)
      jinitfields(this)
        JR.put(this, :openGLBitmap, JR.call(JR.lget(f, :bitmapFactory), :jm_createBitmap, [JR.lget(f, :image)]))
        JR.put(this, :textureFactory, JR.lget(f, :textureFactory))
    end)
  end

  def jnew(p_image, p_bitmapFactory, p_textureFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_image, p_bitmapFactory, p_textureFactory)
    this
  end


  def jm_set(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_initTexture(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        throw({:jreturn, false})
    end)
  end


  def jm_drawRegion(this, p_gl, p_viewHeight, p_x_src, p_y_src, p_width, p_height, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :viewHeight, p_viewHeight)
      JR.lset(f, :x_src, p_x_src)
      JR.lset(f, :y_src, p_y_src)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        nil
    end)
  end


  def jm_draw(this, p_gl, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        nil
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, OpenGLESImage.jstatic_TYPE()})
    end)
  end
end


