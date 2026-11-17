# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.image

#ImageCacheBaseJavaLibrary - J2ME
defmodule ImageFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageFactory.jnew() end)
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ImageFactory.jstatic_instance()})
    end)
  end


  def jm_createImageUrl(this, p_url) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :url, p_url)
        throw({:jreturn, Image.jm_createImage(JR.lget(f, :url))})
    end)
  end


  def jm_createImage(this, p_caller, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :caller, p_caller)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jreturn, JR.call(MIDPUtil.jm_getInstance(), :jm_createImageWH, [JR.lget(f, :width), JR.lget(f, :height)])})
    end)
  end


  def jm_createImageFromInputStream(this, p_key, p_inputStream) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
      JR.lset(f, :inputStream, p_inputStream)
        JR.lset(f, :image, JR.call(MIDPUtil.jm_getInstance(), :jm_createImageFromInputStream, [JR.lget(f, :inputStream)]))
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end


  def jm_createImageFromInputStream(this, p_inputStream) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
        throw({:jreturn, JR.call(MIDPUtil.jm_getInstance(), :jm_createImageFromInputStream, [JR.lget(f, :inputStream)])})
    end)
  end
end


