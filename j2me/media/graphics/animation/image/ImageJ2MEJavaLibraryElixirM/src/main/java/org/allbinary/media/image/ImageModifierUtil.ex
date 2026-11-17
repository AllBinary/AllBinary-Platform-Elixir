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
# package org.allbinary.media.image

defmodule ImageModifierUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageModifierUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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


  def jm_getInstanceOrCreate() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ImageModifierUtil.jstatic_instance()})
    end)
  end


  def jm_setColor(this, p_unusedOriginalImage, p_image, p_imageIndex, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :unusedOriginalImage, p_unusedOriginalImage)
      JR.lset(f, :image, p_image)
      JR.lset(f, :imageIndex, p_imageIndex)
      JR.lset(f, :basicColor, p_basicColor)
        nil
    end)
  end


  def jm_changeColor(this, p_unusedOriginalImage, p_image, p_imageIndex, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :unusedOriginalImage, p_unusedOriginalImage)
      JR.lset(f, :image, p_image)
      JR.lset(f, :imageIndex, p_imageIndex)
      JR.lset(f, :basicColor, p_basicColor)
        nil
    end)
  end


  def jm_setAlpha(this, p_originalImage, p_image, p_imageIndex, p_alphaInt) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :originalImage, p_originalImage)
      JR.lset(f, :image, p_image)
      JR.lset(f, :imageIndex, p_imageIndex)
      JR.lset(f, :alphaInt, p_alphaInt)
        nil
    end)
  end


  def jm_getImageArray(this, p_originalImageArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :originalImageArray, p_originalImageArray)
        throw({:jreturn, JR.lget(f, :originalImageArray)})
    end)
  end


  def jm_handleImage(this, p_imageArray, p_index, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :index, p_index)
      JR.lset(f, :image, p_image)
        nil
    end)
  end


  def jm_reset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


