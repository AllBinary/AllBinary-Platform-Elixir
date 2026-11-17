# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

#PlatformNullImageJavaLibrary
defmodule PlatformImage do
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


  def jm_getImage(this, p_graphicsSurface2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphicsSurface2, p_graphicsSurface2)
        throw({:jreturn, NullImage.jstatic_NULL_IMAGE()})
    end)
  end


  def jm_getSurfaceWidth(this, p_graphicsSurface2, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphicsSurface2, p_graphicsSurface2)
      JR.lset(f, :width, p_width)
        throw({:jreturn, JR.lget(f, :width)})
    end)
  end


  def jm_getSurfaceHeight(this, p_graphicsSurface2, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphicsSurface2, p_graphicsSurface2)
      JR.lset(f, :height, p_height)
        throw({:jreturn, JR.lget(f, :height)})
    end)
  end


  def jm_getWidth(this, p_image, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :width, p_width)
        throw({:jreturn, JR.lget(f, :width)})
    end)
  end


  def jm_getHeight(this, p_image, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :height, p_height)
        throw({:jreturn, JR.lget(f, :height)})
    end)
  end


  def jm_getGraphics(this, p_graphicsSurface, p_width, p_height, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphicsSurface, p_graphicsSurface)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :image, p_image)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_drawImage(this, p_image, p_x, p_y, p_anchor, p_g2, p_g) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :anchor, p_anchor)
      JR.lset(f, :g2, p_g2)
      JR.lset(f, :g, p_g)
        nil
    end)
  end


  def jm_drawRegion(this, p_image, p_x_src, p_y_src, p_width, p_height, p_transform, p_x_dst, p_y_dst, p_anchor, p_g) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :x_src, p_x_src)
      JR.lset(f, :y_src, p_y_src)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :transform, p_transform)
      JR.lset(f, :x_dst, p_x_dst)
      JR.lset(f, :y_dst, p_y_dst)
      JR.lset(f, :anchor, p_anchor)
      JR.lset(f, :g, p_g)
        nil
    end)
  end


  def jm_getRGB(this, p_argb, p_offset, p_scanlength, p_x, p_y, p_width, p_height, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :argb, p_argb)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :scanlength, p_scanlength)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :image, p_image)
        nil
    end)
  end


  def jm_setRGB(this, p_argb, p_offset, p_scanlength, p_x, p_y, p_width, p_height, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :argb, p_argb)
      JR.lset(f, :offset, p_offset)
      JR.lset(f, :scanlength, p_scanlength)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :image, p_image)
        nil
    end)
  end


  def jm_getData(this, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY)})
    end)
  end
end


